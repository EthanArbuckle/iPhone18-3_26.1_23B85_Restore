uint64_t mem_write(bio_st *a1, const char *a2, int a3)
{
  init = a1->init;
  *&a1->init = init & 0xFFFFFFF0;
  if (a3 < 1)
  {
    return 0;
  }

  if ((init & 0x200) != 0)
  {
    ERR_put_error(17, 0, 116, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio_mem.cc", 126);
    return 0xFFFFFFFFLL;
  }

  else if (BUF_MEM_append(*&a1->num, a2, a3))
  {
    return a3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

size_t mem_read(bio_st *a1, char *__dst, int a3)
{
  v3 = a1->init & 0xFFFFFFF0;
  *&a1->init = v3;
  if (a3 < 1)
  {
    return 0;
  }

  v5 = *&a1->num;
  v6 = *v5;
  if (*v5 >= a3)
  {
    flags = a3;
  }

  else
  {
    flags = v6;
  }

  if (flags >= 1)
  {
    memcpy(__dst, v5[1], flags);
    v8 = *v5;
    v9 = *v5 - flags;
    *v5 = v9;
    if ((a1->init & 0x200) != 0)
    {
      v5[1] += flags;
      return flags;
    }

    if (v8 != flags)
    {
      memmove(v5[1], (v5[1] + flags), v9);
    }

    return flags;
  }

  if (v6)
  {
    return 0;
  }

  flags = a1->flags;
  if (flags)
  {
    a1->init = v3 | 9;
    return flags;
  }

  return flags;
}

size_t mem_gets(bio_st *a1, char *a2, int a3)
{
  v3 = a1->init & 0xFFFFFFF0;
  *&a1->init = v3;
  v4 = (a3 - 1);
  if (a3 < 1)
  {
    return 0;
  }

  v6 = *&a1->num;
  v7 = *v6;
  if (*v6 >= v4)
  {
    flags = v4;
  }

  else
  {
    flags = v7;
  }

  if (!flags)
  {
    goto LABEL_21;
  }

  v10 = *(v6 + 8);
  v11 = memchr(v10, 10, flags);
  if (v11)
  {
    v12 = v11 - v10 + 1;
  }

  else
  {
    v12 = flags;
  }

  if (v12 < 1)
  {
    goto LABEL_19;
  }

  if (v7 >= v12)
  {
    flags = v12;
  }

  else
  {
    flags = v7;
  }

  if (flags >= 1)
  {
    memcpy(a2, v10, flags);
    v13 = *v6;
    v14 = *v6 - flags;
    *v6 = v14;
    if ((a1->init & 0x200) != 0)
    {
      *(v6 + 8) += flags;
    }

    else if (v13 != flags)
    {
      memmove(*(v6 + 8), (*(v6 + 8) + flags), v14);
    }

    goto LABEL_21;
  }

  if (v7)
  {
LABEL_19:
    flags = 0;
LABEL_21:
    a2[flags] = 0;
    return flags;
  }

  flags = a1->flags;
  if (!flags)
  {
    goto LABEL_21;
  }

  a1->init = v3 | 9;
  if ((flags & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  return flags;
}

uint64_t mem_ctrl(bio_st *a1, int a2, int a3, void *a4)
{
  result = 0;
  v6 = *&a1->num;
  if (a2 <= 9)
  {
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 == 8)
        {
          return SHIDWORD(a1->cb_arg);
        }

        if (a2 == 9)
        {
          HIDWORD(a1->cb_arg) = a3;
          return 1;
        }

        return result;
      }

      if (a4)
      {
        *a4 = v6[1];
      }

      return *v6;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        return *v6 == 0;
      }

      return result;
    }

    v7 = v6[1];
    if (v7)
    {
      v8 = v6[2];
      if ((a1->init & 0x200) != 0)
      {
        v16 = &v7[*v6 - v8];
        *v6 = v8;
        v6[1] = v16;
        return 1;
      }

      else
      {
        if (v8)
        {
          bzero(v7, v8);
        }

        *v6 = 0;
        return 1;
      }
    }

    return 1;
  }

  if (a2 <= 113)
  {
    if (a2 != 10)
    {
      return a2 == 11;
    }

    return *v6;
  }

  switch(a2)
  {
    case 114:
      if (HIDWORD(a1->cb_arg) && LODWORD(a1->cb_arg) && v6)
      {
        v9 = a1;
        v10 = a3;
        v11 = a4;
        if ((a1->init & 0x200) != 0)
        {
          v6[1] = 0;
        }

        else
        {
          v12 = v6[1];
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
        }

        v18 = *(v6 - 1);
        v17 = v6 - 1;
        v19 = v18 + 8;
        if (v18 != -8)
        {
          bzero(v17, v19);
        }

        free(v17);
        a1 = v9;
        a3 = v10;
        a4 = v11;
      }

      HIDWORD(a1->cb_arg) = a3;
      *&a1->num = a4;
      return 1;
    case 115:
      if (a4)
      {
        *a4 = v6;
      }

      return 1;
    case 130:
      a1->flags = a3;
      return 1;
  }

  return result;
}

uint64_t mem_new(bio_st *a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v2)
  {
    *v2 = 24;
    v2[2] = 0;
    v2[3] = 0;
    v2[1] = 0;
    a1->cb_arg = 0x100000001;
    a1->flags = -1;
    *&a1->num = v2 + 1;
    return 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

uint64_t mem_free(bio_st *a1)
{
  if (HIDWORD(a1->cb_arg))
  {
    if (LODWORD(a1->cb_arg))
    {
      v1 = *&a1->num;
      if (v1)
      {
        if ((a1->init & 0x200) != 0)
        {
          *(v1 + 8) = 0;
        }

        else
        {
          v3 = *(v1 + 8);
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
        }

        v8 = *(v1 - 8);
        v7 = (v1 - 8);
        v9 = v8 + 8;
        if (v8 != -8)
        {
          bzero(v7, v9);
        }

        free(v7);
        *&a1->num = 0;
      }
    }
  }

  return 1;
}

BOOL BN_parse_asn1_unsigned(unsigned __int8 **a1, BIGNUM *a2)
{
  v13 = 0;
  v12 = 0;
  if (cbs_get_any_asn1_element(a1, &v10, &v12, &v13, 0, 0, 0) && v12 == 2 && (v3 = v11, v11 >= v13) && (v4 = (v10 + v13), v5 = v11 - v13, v10 += v13, v11 -= v13, v3 != v13) && ((v7 = *v4, v5 == 1) || ((v8 = v7 == 0, *(v4 + 1) >= 0) ? (v9 = 1) : (v8 = 0, v9 = v7 != 255), !v8 && v9)))
  {
    if ((v7 & 0x80) != 0)
    {
      ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bn/bn_asn1.cc", 31);
      return 0;
    }

    else
    {
      return BN_bin2bn(v4, v5, a2) != 0;
    }
  }

  else
  {
    ERR_put_error(3, 0, 117, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bn/bn_asn1.cc", 26);
    return 0;
  }
}

uint64_t BN_marshal_asn1(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    if (!CBB_add_asn1(a1, v67, 2))
    {
      goto LABEL_82;
    }

    v6 = *(a2 + 8);
    if (v6 < 1)
    {
      if (!v6)
      {
LABEL_25:
        v68 = 0;
        if (!CBB_add_space(v67, &v68, 1))
        {
          goto LABEL_82;
        }

        *v68 = 0;
        v6 = *(a2 + 8);
LABEL_27:
        if (v6 < 1)
        {
          if (!v6)
          {
LABEL_49:
            v26 = 0;
            v68 = 0;
            if (!CBB_add_space(v67, &v68, 0))
            {
              goto LABEL_82;
            }

LABEL_50:
            v27 = a1;
            v28 = v68;
            v29 = *a2;
            v30 = 8 * *(a2 + 8);
            v31 = v30 - v26;
            if (v30 <= v26)
            {
              goto LABEL_68;
            }

            if (v31 < 8)
            {
              v32 = 0;
              v33 = v26;
              goto LABEL_64;
            }

            if (v31 >= 0x20)
            {
              v34 = v31 & 0xFFFFFFFFFFFFFFE0;
              v35 = (v29 + v26 + 16);
              v36 = 0uLL;
              v37 = v31 & 0xFFFFFFFFFFFFFFE0;
              v38 = 0uLL;
              do
              {
                v36 = vorrq_s8(v35[-1], v36);
                v38 = vorrq_s8(*v35, v38);
                v35 += 2;
                v37 -= 32;
              }

              while (v37);
              v39 = vorrq_s8(v38, v36);
              *v39.i8 = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
              v40 = v39.i64[0] | HIDWORD(v39.i64[0]) | ((v39.i64[0] | HIDWORD(v39.i64[0])) >> 16);
              v32 = v40 | BYTE1(v40);
              if (v31 == v34)
              {
                goto LABEL_67;
              }

              if ((v31 & 0x18) == 0)
              {
                v33 = v26 + v34;
LABEL_64:
                v46 = v33 - v30;
                v47 = &v29->i8[v33];
                do
                {
                  v48 = *v47++;
                  v32 |= v48;
                }

                while (!__CFADD__(v46++, 1));
                goto LABEL_67;
              }
            }

            else
            {
              v32 = 0;
              v34 = 0;
            }

            v33 = v26 + (v31 & 0xFFFFFFFFFFFFFFF8);
            v41 = v32;
            v42 = &v29->i8[v26 + v34];
            v43 = v34 - (v31 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v44 = *v42++;
              v41 = vorr_s8(v44, v41);
              v43 += 8;
            }

            while (v43);
            v45 = *&v41 | HIDWORD(*&v41) | ((*&v41 | HIDWORD(*&v41)) >> 16);
            v32 = v45 | BYTE1(v45);
            if (v31 != (v31 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_64;
            }

LABEL_67:
            if (!v32)
            {
LABEL_68:
              if (v30 >= v26)
              {
                v50 = v26;
              }

              else
              {
                v50 = 8 * *(a2 + 8);
              }

              if (!v50)
              {
LABEL_78:
                if (v30 < v26)
                {
                  bzero(v28, v26 - v50);
                  v27 = a1;
                }

                if (CBB_flush(v27))
                {
                  return 1;
                }

                goto LABEL_82;
              }

              if (v50 < 8 || &v68[v26 - v50] < &v29->i8[v50] && v29 < &v68[v26])
              {
                v51 = 0;
LABEL_76:
                v52 = v50 - v51;
                v53 = &v28[v26 + ~v51];
                v54 = &v29->i8[v51];
                do
                {
                  v55 = *v54++;
                  *v53-- = v55;
                  --v52;
                }

                while (v52);
                goto LABEL_78;
              }

              if (v50 >= 0x20)
              {
                v51 = v50 & 0x7FFFFFE0;
                v57 = v29 + 1;
                v58 = &v68[v26 - 16];
                v59 = v51;
                do
                {
                  v60 = vrev64q_s8(v57[-1]);
                  v61 = vrev64q_s8(*v57);
                  v58[-1] = vextq_s8(v61, v61, 8uLL);
                  *v58 = vextq_s8(v60, v60, 8uLL);
                  v57 += 2;
                  v58 -= 2;
                  v59 -= 32;
                }

                while (v59);
                if (v50 == v51)
                {
                  goto LABEL_78;
                }

                if ((v50 & 0x18) == 0)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                v51 = 0;
              }

              v62 = v51;
              v51 = v50 & 0x7FFFFFF8;
              v63 = &v29->i8[v62];
              v64 = &v28[v26 - v62 - 8];
              v65 = v62 - v51;
              do
              {
                v66 = *v63++;
                *v64-- = vrev64_s8(v66);
                v65 += 8;
              }

              while (v65);
              if (v50 == v51)
              {
                goto LABEL_78;
              }

              goto LABEL_76;
            }

LABEL_82:
            v2 = 118;
            v3 = 52;
            goto LABEL_83;
          }

          v16 = *a2;
        }

        else
        {
          v16 = *a2;
          while (!*(*a2 - 8 + 8 * v6))
          {
            v9 = __OFSUB__(v6--, 1);
            if ((v6 < 0) ^ v9 | (v6 == 0))
            {
              goto LABEL_49;
            }
          }
        }

        v17 = v6 - 1;
        v18 = v16->u64[v17];
        v19 = v18 != 0;
        v20 = HIDWORD(v18) != 0;
        if (HIDWORD(v18))
        {
          v18 >>= 32;
        }

        v21 = v18 >> 16 != 0;
        if (v18 >> 16)
        {
          v18 >>= 16;
        }

        v22 = v18 > 0xFF;
        if (v18 > 0xFF)
        {
          v18 >>= 8;
        }

        v23 = v18 > 0xF;
        if (v18 > 0xF)
        {
          v18 >>= 4;
        }

        v24 = v18 > 3;
        if (v18 > 3)
        {
          v18 >>= 2;
        }

        v25 = v19 | (v17 << 6) | (32 * v20) | (16 * v21) | (8 * v22) | (4 * v23) | (2 * v24);
        if (v18 > 1)
        {
          ++v25;
        }

        v26 = (v25 + 7) >> 3;
        v68 = 0;
        if (!CBB_add_space(v67, &v68, v26))
        {
          goto LABEL_82;
        }

        goto LABEL_50;
      }

      v7 = *a2;
      v8 = *(a2 + 8);
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      while (!*(*a2 - 8 + 8 * v8))
      {
        v9 = __OFSUB__(v8--, 1);
        if ((v8 < 0) ^ v9 | (v8 == 0))
        {
          goto LABEL_25;
        }
      }
    }

    v10 = v7->u64[v8 - 1];
    v11 = v10 != 0;
    if (HIDWORD(v10))
    {
      v10 >>= 32;
    }

    if (v10 >> 16)
    {
      v10 >>= 16;
    }

    if (v10 > 0xFF)
    {
      v10 >>= 8;
    }

    v12 = v10 > 0xF;
    if (v10 > 0xF)
    {
      v10 >>= 4;
    }

    v13 = v10 > 3;
    if (v10 > 3)
    {
      v10 >>= 2;
    }

    v14 = v10 > 1;
    v15 = v11 | (4 * v12) | (2 * v13);
    if (v14)
    {
      ++v15;
    }

    if ((v15 & 7) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v2 = 109;
  v3 = 41;
LABEL_83:
  ERR_put_error(3, 0, v2, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bn/bn_asn1.cc", v3);
  return 0;
}

BUF_MEM *BUF_MEM_new(void)
{
  v0 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v0)
  {
    *v0 = 24;
    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    *(v0 + 1) = 0;
    return (v0 + 8);
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

uint64_t BUF_MEM_reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) >= a2)
  {
    return 1;
  }

  if (a2 < 0xFFFFFFFFFFFFFFFDLL)
  {
    if (a2 >= 0xBFFFFFFFFFFFFFFDLL)
    {
      ERR_put_error(7, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/buf/buf.cc", 50);
      return 0;
    }

    else
    {
      v3 = (2 * (((a2 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
      result = OPENSSL_realloc(*(a1 + 8), v3);
      if (result)
      {
        *(a1 + 8) = result;
        *(a1 + 16) = v3;
        return 1;
      }
    }
  }

  else
  {
    ERR_put_error(7, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/buf/buf.cc", 44);
    return 0;
  }

  return result;
}

uint64_t BUF_MEM_append(unint64_t *a1, const void *a2, size_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *a1;
  v4 = *a1 + a3;
  if (__CFADD__(*a1, a3))
  {
    v5 = 87;
LABEL_5:
    ERR_put_error(7, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/buf/buf.cc", v5);
    return 0;
  }

  if (a1[2] >= v4)
  {
    v7 = a1;
    result = a1[1];
LABEL_12:
    memcpy((result + v3), a2, a3);
    *v7 = v4;
    return 1;
  }

  if (v4 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = 44;
    goto LABEL_5;
  }

  if (v4 >= 0xBFFFFFFFFFFFFFFDLL)
  {
    v5 = 50;
    goto LABEL_5;
  }

  v8 = a2;
  v9 = a3;
  v7 = a1;
  result = OPENSSL_realloc(a1[1], (2 * (((v4 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL);
  if (result)
  {
    v7[1] = result;
    v7[2] = (2 * (((v4 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
    v3 = *v7;
    a3 = v9;
    a2 = v8;
    goto LABEL_12;
  }

  return result;
}

uint64_t sk_X509_OBJECT_call_cmp_func(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t CBB_init(uint64_t a1, unint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a2 >= 0xFFFFFFFFFFFFFFF8)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v5 = malloc_type_malloc(a2 + 8, 0xB4E622C9uLL);
  if (v5)
  {
    *v5 = a2;
    v6 = v5 + 1;
LABEL_6:
    *(a1 + 8) = 0;
    *a1 = 0;
    *(a1 + 16) = v6;
    *(a1 + 24) = 0;
    *(a1 + 32) = a2;
    *(a1 + 40) = *(a1 + 40) & 0xFC | 1;
    return 1;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  result = 0;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_6;
  }

  return result;
}

void CBB_cleanup(uint64_t a1)
{
  if (!*(a1 + 8) && (*(a1 + 40) & 1) != 0)
  {
    v1 = *(a1 + 16);
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
}

uint64_t CBB_finish(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8))
  {
    ERR_put_error(14, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", 126);
    return 0;
  }

  result = CBB_flush(a1);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = 0;
      if (!a2)
      {
        return result;
      }

      v7 = a3;
      if (!a3)
      {
        return result;
      }
    }

    else
    {
      v7 = a3;
      if (!a2)
      {
        goto LABEL_11;
      }
    }

    *a2 = *(a1 + 16);
LABEL_11:
    if (v7)
    {
      *v7 = *(a1 + 24);
    }

    *(a1 + 16) = 0;
    return 1;
  }

  return result;
}

uint64_t CBB_flush(uint64_t *a1)
{
  v1 = (a1 + 2);
  v2 = (a1 + 2);
  if (*(a1 + 8))
  {
    v2 = *v1;
    if (!*v1)
    {
      return 0;
    }
  }

  if ((*(v2 + 24) & 2) != 0)
  {
    return 0;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  if (!CBB_flush(*a1))
  {
    goto LABEL_31;
  }

  v7 = v5 + v6;
  v8 = *(v3 + 24);
  if (v5 + v6 < v8)
  {
    goto LABEL_31;
  }

  v9 = *(v2 + 8);
  v10 = v9 - v7;
  if (v9 < v7)
  {
    goto LABEL_31;
  }

  if ((*(v3 + 33) & 1) == 0)
  {
    LODWORD(v11) = *(v3 + 32);
    goto LABEL_25;
  }

  if (v10 > 0xFFFFFFFE)
  {
    v13 = 220;
LABEL_30:
    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", v13);
    goto LABEL_31;
  }

  if (v10 >> 24)
  {
    v14 = -124;
    v15 = 4;
LABEL_22:
    v11 = v15;
    if (!cbb_buffer_reserve(v2, v15))
    {
LABEL_31:
      if (*(a1 + 8))
      {
        v1 = *v1;
      }

      result = 0;
      *(v1 + 24) |= 2u;
      goto LABEL_34;
    }

    v16 = *v2;
    *(v2 + 8) += v11;
    memmove((v16 + v7 + v11), (v16 + v7), v10);
    v8 = *(v3 + 24);
    goto LABEL_24;
  }

  if (v10 >> 16)
  {
    v14 = -125;
    v15 = 3;
    goto LABEL_22;
  }

  if (v10 > 0xFF)
  {
    v14 = -126;
    v15 = 2;
    goto LABEL_22;
  }

  if (v10 > 0x7F)
  {
    v14 = -127;
    v15 = 1;
    goto LABEL_22;
  }

  LODWORD(v11) = 0;
  v14 = v9 - v7;
  v10 = 0;
LABEL_24:
  v17 = *v2;
  *(v3 + 24) = v8 + 1;
  *(v17 + v8) = v14;
  *(v3 + 32) = v11;
LABEL_25:
  if (v11)
  {
    v18 = v11 - 1;
    do
    {
      *(*v2 + *(v3 + 24) + v18) = v10;
      v10 >>= 8;
      --v18;
    }

    while (v18 < *(v3 + 32));
  }

  if (v10)
  {
    v13 = 259;
    goto LABEL_30;
  }

  *(v3 + 16) = 0;
  result = 1;
LABEL_34:
  *a1 = 0;
  return result;
}

uint64_t CBB_add_u8_length_prefixed(uint64_t a1, uint64_t a2)
{
  result = CBB_flush(a1);
  if (result)
  {
    v5 = (a1 + 16);
    if (*(a1 + 8))
    {
      v5 = *v5;
    }

    v6 = v5[1];
    v7 = v6 + 1;
    if (v6 == -1)
    {
      v8 = 79;
LABEL_6:
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", v8);
LABEL_7:
      result = 0;
      *(v5 + 24) |= 2u;
      return result;
    }

    v9 = v5[2];
    if (v7 <= v9)
    {
      v10 = *v5;
      v11 = v5[1];
    }

    else
    {
      if ((v5[3] & 1) == 0)
      {
        v8 = 85;
        goto LABEL_6;
      }

      v12 = 2 * v9;
      if (2 * v9 <= v7)
      {
        v12 = v6 + 1;
      }

      if (v9 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = v6 + 1;
      }

      v10 = OPENSSL_realloc(*v5, v13);
      if (!v10)
      {
        goto LABEL_7;
      }

      *v5 = v10;
      v5[2] = v13;
      v11 = v5[1];
      v7 = v11 + 1;
    }

    v5[1] = v7;
    *(v10 + v11) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    result = 1;
    *(a2 + 8) = 1;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 32) = 1;
    *a1 = a2;
  }

  return result;
}

uint64_t CBB_add_u16_length_prefixed(uint64_t a1, uint64_t a2)
{
  result = CBB_flush(a1);
  if (result)
  {
    v5 = (a1 + 16);
    if (*(a1 + 8))
    {
      v5 = *v5;
    }

    v6 = v5[1];
    if (v6 > 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = 79;
LABEL_6:
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", v7);
LABEL_7:
      result = 0;
      *(v5 + 24) |= 2u;
      return result;
    }

    v8 = v6 + 2;
    v9 = v5[2];
    if (v6 + 2 <= v9)
    {
      v10 = *v5;
      v11 = v5[1];
    }

    else
    {
      if ((v5[3] & 1) == 0)
      {
        v7 = 85;
        goto LABEL_6;
      }

      v12 = 2 * v9;
      if (2 * v9 <= v8)
      {
        v12 = v6 + 2;
      }

      if (v9 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = v6 + 2;
      }

      v10 = OPENSSL_realloc(*v5, v13);
      if (!v10)
      {
        goto LABEL_7;
      }

      *v5 = v10;
      v5[2] = v13;
      v11 = v5[1];
      v8 = v11 + 2;
    }

    v5[1] = v8;
    *(v10 + v11) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    result = 1;
    *(a2 + 8) = 1;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 32) = 2;
    *a1 = a2;
  }

  return result;
}

uint64_t CBB_add_u24_length_prefixed(uint64_t a1, uint64_t a2)
{
  result = CBB_flush(a1);
  if (result)
  {
    v5 = (a1 + 16);
    if (*(a1 + 8))
    {
      v5 = *v5;
    }

    v6 = v5[1];
    if (v6 > 0xFFFFFFFFFFFFFFFCLL)
    {
      v7 = 79;
LABEL_6:
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", v7);
LABEL_7:
      result = 0;
      *(v5 + 24) |= 2u;
      return result;
    }

    v8 = v6 + 3;
    v9 = v5[2];
    if (v6 + 3 <= v9)
    {
      v10 = *v5;
      v11 = v5[1];
    }

    else
    {
      if ((v5[3] & 1) == 0)
      {
        v7 = 85;
        goto LABEL_6;
      }

      v12 = 2 * v9;
      if (2 * v9 <= v8)
      {
        v12 = v6 + 3;
      }

      if (v9 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = v6 + 3;
      }

      v10 = OPENSSL_realloc(*v5, v13);
      if (!v10)
      {
        goto LABEL_7;
      }

      *v5 = v10;
      v5[2] = v13;
      v11 = v5[1];
      v8 = v11 + 3;
    }

    v14 = v10 + v11;
    v5[1] = v8;
    v14[2] = 0;
    *v14 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    result = 1;
    *(a2 + 8) = 1;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 32) = 3;
    *a1 = a2;
  }

  return result;
}

uint64_t CBB_add_asn1(uint64_t a1, uint64_t a2, int a3)
{
  result = CBB_flush(a1);
  if (!result)
  {
    return result;
  }

  v7 = a3 & 0x1FFFFFFF;
  if (v7 < 0x1F)
  {
    v22 = 0;
    result = CBB_add_space(a1, &v22, 1);
    if (!result)
    {
      return result;
    }

    *v22 = HIBYTE(a3) & 0xE0 | a3;
    v13 = (a1 + 16);
    if (*(a1 + 8))
    {
LABEL_10:
      v13 = *v13;
    }

LABEL_11:
    v14 = v13[1];
    v15 = v14 + 1;
    if (v14 == -1)
    {
      v16 = 79;
LABEL_13:
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", v16);
LABEL_14:
      result = 0;
      *(v13 + 24) |= 2u;
      return result;
    }

    v17 = v13[2];
    if (v15 <= v17)
    {
      v18 = *v13;
      v19 = v13[1];
    }

    else
    {
      if ((v13[3] & 1) == 0)
      {
        v16 = 85;
        goto LABEL_13;
      }

      v20 = 2 * v17;
      if (2 * v17 <= v15)
      {
        v20 = v14 + 1;
      }

      if (v17 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = v14 + 1;
      }

      v18 = OPENSSL_realloc(*v13, v21);
      if (!v18)
      {
        goto LABEL_14;
      }

      *v13 = v18;
      v13[2] = v21;
      v19 = v13[1];
      v15 = v19 + 1;
    }

    v13[1] = v15;
    *(v18 + v19) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    result = 1;
    *(a2 + 8) = 1;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = 257;
    *a1 = a2;
    return result;
  }

  v22 = 0;
  result = CBB_add_space(a1, &v22, 1);
  if (result)
  {
    *v22 = HIBYTE(a3) | 0x1F;
    v8 = -7;
    v9 = -1;
    v10 = v7;
    do
    {
      v8 += 7;
      ++v9;
      v11 = v10 > 0x7F;
      v10 >>= 7;
    }

    while (v11);
    v12 = v9;
    while (1)
    {
      v22 = 0;
      result = CBB_add_space(a1, &v22, 1);
      if (!result)
      {
        break;
      }

      *v22 = (v7 >> v8) & 0x7F | ((v12-- != 0) << 7);
      v8 -= 7;
      if (v12 > v9)
      {
        v13 = (a1 + 16);
        if (!*(a1 + 8))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t CBB_add_space(uint64_t a1, void *a2, uint64_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    v7 = (a1 + 16);
    if (*(a1 + 8))
    {
      v7 = *v7;
      if (!v7)
      {
        return 0;
      }
    }

    v8 = v7[1];
    v9 = v8 + a3;
    if (__CFADD__(v8, a3))
    {
      v10 = 79;
LABEL_7:
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", v10);
LABEL_8:
      result = 0;
      *(v7 + 24) |= 2u;
      return result;
    }

    v11 = v7[2];
    if (v9 > v11)
    {
      if ((v7[3] & 1) == 0)
      {
        v10 = 85;
        goto LABEL_7;
      }

      v12 = 2 * v11;
      if (2 * v11 <= v9)
      {
        v12 = v9;
      }

      if (v11 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9;
      }

      v14 = OPENSSL_realloc(*v7, v13);
      if (!v14)
      {
        goto LABEL_8;
      }

      *v7 = v14;
      v7[2] = v13;
      v8 = v7[1];
    }

    if (a2)
    {
      *a2 = *v7 + v8;
    }

    v7[1] = v8 + a3;
    return 1;
  }

  return result;
}

uint64_t CBB_add_zeros(uint64_t a1, size_t a2)
{
  v4 = 0;
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

uint64_t CBB_reserve(uint64_t a1, void *a2, uint64_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    v7 = *(a1 + 8);
    v8 = (a1 + 16);
    if (v7)
    {
      v8 = *v8;
      if (!v8)
      {
        return 0;
      }
    }

    v9 = v8[1];
    v10 = __CFADD__(v9, a3);
    v11 = v9 + a3;
    if (v10)
    {
      v12 = 79;
LABEL_7:
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", v12);
LABEL_8:
      result = 0;
      *(v8 + 24) |= 2u;
      return result;
    }

    v13 = v8[2];
    if (v11 > v13)
    {
      if ((v8[3] & 1) == 0)
      {
        v12 = 85;
        goto LABEL_7;
      }

      v14 = 2 * v13;
      if (2 * v13 <= v11)
      {
        v14 = v11;
      }

      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = v11;
      }

      v16 = OPENSSL_realloc(*v8, v15);
      if (!v16)
      {
        goto LABEL_8;
      }

      *v8 = v16;
      v8[2] = v15;
    }

    if (a2)
    {
      *a2 = *v8 + v8[1];
    }

    return 1;
  }

  return result;
}

uint64_t cbb_buffer_reserve(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 8);
    v4 = __CFADD__(v3, a2);
    v5 = v3 + a2;
    if (v4)
    {
      v6 = 79;
LABEL_5:
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", v6);
LABEL_6:
      result = 0;
      *(v2 + 24) |= 2u;
      return result;
    }

    v7 = *(result + 16);
    if (v5 > v7)
    {
      if ((*(result + 24) & 1) == 0)
      {
        v6 = 85;
        goto LABEL_5;
      }

      v8 = 2 * v7;
      if (2 * v7 <= v5)
      {
        v8 = v5;
      }

      if (v7 >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = v5;
      }

      v10 = OPENSSL_realloc(*result, v9);
      if (!v10)
      {
        goto LABEL_6;
      }

      *v2 = v10;
      *(v2 + 16) = v9;
    }

    return 1;
  }

  return result;
}

uint64_t CBB_add_u16(uint64_t a1, __int16 a2)
{
  v4 = 0;
  result = CBB_add_space(a1, &v4, 2);
  if (result)
  {
    v4[1] = a2;
    *v4 = HIBYTE(a2);
    return 1;
  }

  return result;
}

uint64_t CBB_add_u24(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  result = CBB_add_space(a1, &v6, 3);
  if (result)
  {
    v6[2] = a2;
    v6[1] = BYTE1(a2);
    *v6 = BYTE2(a2);
    if (HIBYTE(a2))
    {
      v5 = a1 + 16;
      if (*(a1 + 8))
      {
        v5 = *v5;
      }

      result = 0;
      *(v5 + 24) |= 2u;
      *a1 = 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t CBB_add_u32(uint64_t a1, int a2)
{
  v4 = 0;
  result = CBB_add_space(a1, &v4, 4);
  if (result)
  {
    v4[3] = a2;
    v4[2] = BYTE1(a2);
    v4[1] = BYTE2(a2);
    *v4 = HIBYTE(a2);
    return 1;
  }

  return result;
}

uint64_t CBB_add_asn1_element(uint64_t a1, int a2, const void *a3, size_t a4)
{
  if (CBB_add_asn1(a1, v9, a2))
  {
    v10 = 0;
    if (CBB_add_space(v9, &v10, a4))
    {
      if (a4)
      {
        memcpy(v10, a3, a4);
      }

      if (CBB_flush(a1))
      {
        return 1;
      }
    }
  }

  v8 = a1 + 16;
  if (*(a1 + 8))
  {
    v8 = *v8;
  }

  result = 0;
  *(v8 + 24) |= 2u;
  *a1 = 0;
  return result;
}

uint64_t CBB_add_asn1_uint64_with_tag(uint64_t a1, unint64_t a2, int a3)
{
  if (!CBB_add_asn1(a1, v7, a3))
  {
    goto LABEL_54;
  }

  if (HIBYTE(a2))
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = 0;
      if (!CBB_add_space(v7, &v8, 1))
      {
        goto LABEL_54;
      }

      *v8 = 0;
      v8 = 0;
      if (!CBB_add_space(v7, &v8, 1))
      {
        goto LABEL_54;
      }
    }

    else
    {
      v8 = 0;
      if (!CBB_add_space(v7, &v8, 1))
      {
        goto LABEL_54;
      }
    }

    *v8 = HIBYTE(a2);
    goto LABEL_22;
  }

  if (HIWORD(a2))
  {
    if (a2 >> 55)
    {
      v8 = 0;
      if (!CBB_add_space(v7, &v8, 1))
      {
        goto LABEL_54;
      }

      *v8 = 0;
    }

LABEL_22:
    v8 = 0;
    if (!CBB_add_space(v7, &v8, 1))
    {
      goto LABEL_54;
    }

    *v8 = BYTE6(a2);
    goto LABEL_24;
  }

  if (a2 >> 40)
  {
    if (a2 >> 47)
    {
      v8 = 0;
      if (!CBB_add_space(v7, &v8, 1))
      {
        goto LABEL_54;
      }

      *v8 = 0;
    }

LABEL_24:
    v8 = 0;
    if (!CBB_add_space(v7, &v8, 1))
    {
      goto LABEL_54;
    }

    *v8 = BYTE5(a2);
    goto LABEL_26;
  }

  if (HIDWORD(a2))
  {
    if (a2 >> 39)
    {
      v8 = 0;
      if (!CBB_add_space(v7, &v8, 1))
      {
        goto LABEL_54;
      }

      *v8 = 0;
    }

LABEL_26:
    v8 = 0;
    if (!CBB_add_space(v7, &v8, 1))
    {
      goto LABEL_54;
    }

    *v8 = BYTE4(a2);
    goto LABEL_28;
  }

  if (a2 >> 24)
  {
    if (a2 >> 31)
    {
      v8 = 0;
      if (!CBB_add_space(v7, &v8, 1))
      {
        goto LABEL_54;
      }

      *v8 = 0;
    }

LABEL_28:
    v8 = 0;
    if (!CBB_add_space(v7, &v8, 1))
    {
      goto LABEL_54;
    }

    *v8 = BYTE3(a2);
    goto LABEL_30;
  }

  if (a2 >= 0x10000)
  {
    if (a2 >= 0x800000)
    {
      v8 = 0;
      if (!CBB_add_space(v7, &v8, 1))
      {
        goto LABEL_54;
      }

      *v8 = 0;
    }

LABEL_30:
    v8 = 0;
    if (!CBB_add_space(v7, &v8, 1))
    {
      goto LABEL_54;
    }

    *v8 = BYTE2(a2);
    goto LABEL_32;
  }

  if (a2 >= 0x100)
  {
    if (a2 >= 0x8000)
    {
      v8 = 0;
      if (!CBB_add_space(v7, &v8, 1))
      {
        goto LABEL_54;
      }

      *v8 = 0;
    }

LABEL_32:
    v8 = 0;
    if (!CBB_add_space(v7, &v8, 1))
    {
      goto LABEL_54;
    }

    *v8 = BYTE1(a2);
LABEL_34:
    v8 = 0;
    if (CBB_add_space(v7, &v8, 1))
    {
      *v8 = a2;
      return CBB_flush(a1);
    }

    goto LABEL_54;
  }

  if (a2)
  {
    if (a2 >= 0x80)
    {
      v8 = 0;
      if (!CBB_add_space(v7, &v8, 1))
      {
        goto LABEL_54;
      }

      *v8 = 0;
    }

    goto LABEL_34;
  }

  v8 = 0;
  if (CBB_add_space(v7, &v8, 1))
  {
    *v8 = 0;
    return CBB_flush(a1);
  }

LABEL_54:
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

uint64_t CBB_add_asn1_octet_string(uint64_t a1, const void *a2, size_t a3)
{
  if (CBB_add_asn1(a1, v8, 4))
  {
    v9 = 0;
    if (CBB_add_space(v8, &v9, a3))
    {
      if (a3)
      {
        memcpy(v9, a2, a3);
      }

      if (CBB_flush(a1))
      {
        return 1;
      }
    }
  }

  v7 = a1 + 16;
  if (*(a1 + 8))
  {
    v7 = *v7;
  }

  result = 0;
  *(v7 + 24) |= 2u;
  *a1 = 0;
  return result;
}

uint64_t CBB_add_asn1_BOOL(uint64_t a1, int a2)
{
  if (CBB_add_asn1(a1, v7, 1))
  {
    v8 = 0;
    if (CBB_add_space(v7, &v8, 1))
    {
      v4 = a2 ? -1 : 0;
      *v8 = v4;
      if (CBB_flush(a1))
      {
        return 1;
      }
    }
  }

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

uint64_t CBB_add_asn1_oid_from_text(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = CBB_flush(a1);
  if (!result)
  {
    return result;
  }

  v39 = 0;
  if (!a3)
  {
    return 0;
  }

  v7 = *a2 - 48;
  if (v7 > 9)
  {
    return 0;
  }

  v8 = a2 + 1;
  v9 = a3 - 1;
  v40 = a2 + 1;
  v41 = a3 - 1;
  if (a3 == 1)
  {
    return 0;
  }

  v10 = a3 - 1;
  do
  {
    v11 = *v8 - 48;
    if (v11 > 9)
    {
      break;
    }

    if (v10)
    {
      ++v8;
      v9 = v10 - 1;
      v40 = v8;
      v41 = v10 - 1;
      v12 = v10-- == 1;
      if (v7 - 0x199999999999999ALL < 0xE666666666666667)
      {
        return 0;
      }
    }

    else
    {
      v12 = 1;
      if (v7 - 0x199999999999999ALL < 0xE666666666666667)
      {
        return 0;
      }
    }

    v13 = 10 * v7;
    if (__CFADD__(v11, v13))
    {
      return 0;
    }

    v7 = v13 + v11;
  }

  while (!v12);
  v39 = v7;
  if (!v9)
  {
    return 0;
  }

  v40 = v8 + 1;
  v41 = v9 - 1;
  if (*v8 != 46 || v9 == 1)
  {
    return 0;
  }

  v15 = v8[1] - 48;
  if (v15 > 9)
  {
    return 0;
  }

  v16 = v8 + 2;
  v17 = v9 - 2;
  v40 = v16;
  v41 = v17;
  if (v17)
  {
    v18 = v17;
    do
    {
      v19 = *v16 - 48;
      if (v19 > 9)
      {
        break;
      }

      if (v18)
      {
        ++v16;
        v17 = v18 - 1;
        v40 = v16;
        v41 = v18 - 1;
        v20 = v18-- == 1;
      }

      else
      {
        v20 = 1;
      }

      if (v15 - 0x199999999999999ALL < 0xE666666666666667)
      {
        return 0;
      }

      v21 = 10 * v15;
      if (__CFADD__(v19, v21))
      {
        return 0;
      }

      v15 = v21 + v19;
    }

    while (!v20);
    if (v17)
    {
      v40 = v16 + 1;
      v41 = v17 - 1;
      if (v17 != 1)
      {
        v22 = 0;
        result = 0;
        if (*v16 != 46)
        {
          return result;
        }

        goto LABEL_35;
      }

      return 0;
    }
  }

  v22 = 1;
LABEL_35:
  if (v7 > 2)
  {
    return 0;
  }

  result = 0;
  v23 = v15 <= 0x27 || v7 == 2;
  if (v23 && v15 <= 0xFFFFFFFFFFFFFFAFLL)
  {
    v24 = v15 + 40 * v7;
    if (v24)
    {
      v25 = 0;
      v26 = v24;
      do
      {
        ++v25;
        v27 = v26 > 0x7F;
        v26 >>= 7;
      }

      while (v27);
    }

    else
    {
      v25 = 0;
    }

    if (v25 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v25;
    }

    v29 = v28 - 1;
    v30 = 7 * v28 - 7;
    while (1)
    {
      v42 = 0;
      result = CBB_add_space(a1, &v42, 1);
      if (!result)
      {
        break;
      }

      *v42 = (v24 >> v30) & 0x7F | ((v29-- != 0) << 7);
      v30 -= 7;
      if (v29 >= v28)
      {
        if (v22)
        {
          return 1;
        }

LABEL_56:
        result = CBS_get_u64_decimal(&v40, &v39);
        if (result)
        {
          v31 = v41;
          if (!v41 || (result = 0, v32 = *v40, ++v40, --v41, v31 != 1) && v32 == 46)
          {
            v33 = v39;
            if (v39)
            {
              v34 = 0;
              v35 = v39;
              do
              {
                ++v34;
                v27 = v35 > 0x7F;
                v35 >>= 7;
              }

              while (v27);
            }

            else
            {
              v34 = 0;
            }

            if (v34 <= 1)
            {
              v36 = 1;
            }

            else
            {
              v36 = v34;
            }

            v37 = v36 - 1;
            v38 = 7 * v36 - 7;
            while (1)
            {
              v42 = 0;
              result = CBB_add_space(a1, &v42, 1);
              if (!result)
              {
                break;
              }

              *v42 = (v33 >> v38) & 0x7F | ((v37-- != 0) << 7);
              v38 -= 7;
              if (v37 >= v36)
              {
                result = 1;
                if (v31)
                {
                  goto LABEL_56;
                }

                return result;
              }
            }
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t CBB_flush_asn1_set_of(uint64_t a1)
{
  result = CBB_flush(a1);
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v5 = *(a1 + 24);
    v6 = v5 + *(a1 + 32);
    v7 = (v6 + *v4);
    v8 = v4[1] - v6;
    v36 = v7;
    v37 = v8;
    if (!v8)
    {
      return 1;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v36 = *(a1 + 16);
    v37 = v5;
    if (!v5)
    {
      return 1;
    }
  }

  v9 = 0;
  v10 = 8;
  do
  {
    if (!cbs_get_any_asn1_element(&v36, 0, 0, 0, 0, 0, 0))
    {
      ERR_put_error(14, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", 670);
      return 0;
    }

    ++v9;
    v10 += 16;
  }

  while (v37);
  if (v9 < 2)
  {
    return 1;
  }

  if (v3)
  {
    v11 = v5 + *(a1 + 32);
    v5 = v4[1] - v11;
    v4 = (v11 + *v4);
  }

  if (v5)
  {
    if (v5 <= 0xFFFFFFFFFFFFFFF7)
    {
      v12 = malloc_type_malloc(v5 + 8, 0xB4E622C9uLL);
      if (v12)
      {
        *v12 = v5;
        v13 = (v12 + 1);
        memcpy(v12 + 1, v4, v5);
        if (!(v9 >> 60))
        {
          goto LABEL_24;
        }

LABEL_21:
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 231);
        result = 0;
        if (!v13)
        {
          return result;
        }

        goto LABEL_38;
      }
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v13 = 0;
    if (v9 >> 60)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v13 = 0;
    if (v9 >> 60)
    {
      goto LABEL_21;
    }
  }

LABEL_24:
  v14 = malloc_type_malloc(v10, 0xB4E622C9uLL);
  if (v14)
  {
    v15 = v14;
    v16 = v10 - 8;
    *v14 = v10 - 8;
    v17 = v14 + 1;
    bzero(v14 + 1, v16);
    if (!v13)
    {
      v30 = 0;
      v34 = *(v17 - 1);
      v31 = (v17 - 1);
      v33 = v34 + 8;
      if (v34 == -8)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v36 = v13;
    v37 = v5;
    v18 = v9;
    v19 = v17;
    do
    {
      any_asn1_element = cbs_get_any_asn1_element(&v36, v19, 0, 0, 0, 0, 0);
      if (!any_asn1_element)
      {
        LOBYTE(v9) = 0;
        v25 = any_asn1_element;
        v35 = *(v13 - 1);
        v26 = v13 - 8;
        v28 = v35 + 8;
        if (v35 != -8)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      }

      v19 += 2;
      --v18;
    }

    while (v18);
    qsort(v17, v9, 0x10uLL, compare_set_of_element);
    v21 = *(a1 + 16);
    if (*(a1 + 8))
    {
      v21 = (*v21 + *(a1 + 24) + *(a1 + 32));
    }

    v22 = 0;
    v23 = v15 + 2;
    do
    {
      while (!*v23)
      {
        v23 += 2;
        if (!--v9)
        {
          goto LABEL_35;
        }
      }

      memcpy(v21 + v22, *(v23 - 1), *v23);
      v24 = *v23;
      v23 += 2;
      v22 += v24;
      --v9;
    }

    while (v9);
LABEL_35:
    v25 = 1;
    v27 = *(v13 - 1);
    v26 = v13 - 8;
    v28 = v27 + 8;
    if (v27 != -8)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  result = 0;
  if (!v13)
  {
    return result;
  }

LABEL_38:
  v17 = 0;
  LOBYTE(v9) = 1;
  v25 = 0;
  v29 = *(v13 - 1);
  v26 = v13 - 8;
  v28 = v29 + 8;
  if (v29 != -8)
  {
LABEL_39:
    bzero(v26, v28);
  }

LABEL_40:
  free(v26);
  result = v25;
  if ((v9 & 1) == 0)
  {
    v30 = v25;
    v32 = *(v17 - 1);
    v31 = (v17 - 1);
    v33 = v32 + 8;
    if (v32 == -8)
    {
LABEL_43:
      free(v31);
      return v30;
    }

LABEL_42:
    bzero(v31, v33);
    goto LABEL_43;
  }

  return result;
}

uint64_t compare_set_of_element(const void **a1, const void **a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 >= v3)
  {
    v4 = a2[1];
  }

  else
  {
    v4 = a1[1];
  }

  if (v4)
  {
    result = memcmp(*a1, *a2, v4);
    if (v2 < v3)
    {
      LODWORD(v6) = -1;
    }

    else
    {
      LODWORD(v6) = 1;
    }

    if (v2 == v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v6;
    }

    if (!result)
    {
      return v6;
    }
  }

  else
  {
    if (v2 < v3)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (v2 == v3)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

BOOL CBS_strdup(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
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

  v9 = *a1;
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = 0;
    while (v9[v10])
    {
      if (v8 == ++v10)
      {
        v10 = v8;
        break;
      }
    }

    if (v10 == -1)
    {
      v13 = 523;
      goto LABEL_19;
    }

    if (v10 > 0xFFFFFFFFFFFFFFF6 || (v11 = v10 + 1, (v12 = malloc_type_malloc(v10 + 9, 0xB4E622C9uLL)) == 0))
    {
LABEL_13:
      v13 = 217;
LABEL_19:
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", v13);
      v14 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
    v11 = 1;
    v12 = malloc_type_malloc(9uLL, 0xB4E622C9uLL);
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  *v12 = v11;
  v14 = v12 + 1;
  if (v10)
  {
    memcpy(v12 + 1, v9, v10);
  }

  *(v14 + v10) = 0;
LABEL_20:
  *a2 = v14;
  return v14 != 0;
}

uint64_t CBS_get_u64_decimal(unsigned __int8 **a1, void *a2)
{
  v2 = a1[1];
  if (v2 && (v3 = **a1 - 48, v3 <= 9))
  {
    v5 = *a1 + 1;
    v6 = v2 - 1;
    *a1 = v5;
    a1[1] = v6;
    if (v6)
    {
      do
      {
        v7 = *v5 - 48;
        if (v7 > 9)
        {
          break;
        }

        if (v6)
        {
          ++v5;
          --v6;
          *a1 = v5;
          a1[1] = v6;
          v8 = v6 == 0;
          if ((v3 - 0x199999999999999ALL) < 0xE666666666666667)
          {
            return 0;
          }
        }

        else
        {
          v8 = 1;
          if ((v3 - 0x199999999999999ALL) < 0xE666666666666667)
          {
            return 0;
          }
        }

        v9 = 10 * v3;
        if (__CFADD__(v7, v9))
        {
          return 0;
        }

        v3 = v9 + v7;
      }

      while (!v8);
    }

    result = 1;
    *a2 = v3;
  }

  else
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t CBS_get_any_asn1(unsigned __int8 **a1, void *a2, _DWORD *a3)
{
  v8 = 0;
  result = cbs_get_any_asn1_element(a1, a2, a3, &v8, 0, 0, 0);
  if (result)
  {
    if (a2)
    {
      v5 = a2[1];
      v6 = v5 >= v8;
      v7 = v5 - v8;
      if (!v6)
      {
        return 0;
      }

      *a2 += v8;
      a2[1] = v7;
    }

    return 1;
  }

  return result;
}

uint64_t cbs_get_any_asn1_element(unsigned __int8 **a1, void *a2, _DWORD *a3, unint64_t *a4, _DWORD *a5, _DWORD *a6, int a7)
{
  v7 = *a1;
  v8 = a1[1];
  if (a7)
  {
    *a5 = 0;
    *a6 = 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = v7 + 1;
  v10 = *v7;
  v11 = v8 - 1;
  LODWORD(v12) = v10 & 0x1F;
  if (v12 == 31)
  {
    v13 = 0;
    while (v11)
    {
      if (v13 >> 57)
      {
        break;
      }

      v15 = *v9++;
      v14 = v15;
      if (!v13 && v14 == 128)
      {
        break;
      }

      v12 = v14 & 0x7F | (v13 << 7);
      --v11;
      v13 = v12;
      if ((v14 & 0x80) == 0)
      {
        if (v12 - 31 > 0x1FFFFFE0)
        {
          return 0;
        }

        goto LABEL_13;
      }
    }

    return 0;
  }

LABEL_13:
  v16 = v12 | (v10 << 24) & 0xE0000000;
  if ((v16 & 0xDFFFFFFF) == 0)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v16;
  }

  if (!v11)
  {
    return 0;
  }

  v18 = *v9;
  v17 = v9 + 1;
  v19 = (v11 - 1);
  v20 = v18;
  v21 = v8 - (v11 - 1);
  if ((v18 & 0x80000000) == 0)
  {
    v22 = v21 + v20;
    if (!a4)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v25 = v20 & 0x7F;
  if (a7 && (v16 & 0x20000000) != 0 && !v25)
  {
    if (a4)
    {
      *a4 = v21;
      v8 = a1[1];
    }

    *a5 = 1;
    *a6 = 1;
    v27 = v8 >= v21;
    v26 = &v8[-v21];
    if (!v27)
    {
      return 0;
    }

    *a1 = &v7[v21];
    a1[1] = v26;
    if (a2)
    {
      goto LABEL_23;
    }

    return 1;
  }

  v27 = (v25 - 5) >= 0xFFFFFFFC && v19 >= v25;
  if (!v27)
  {
    return 0;
  }

  v28 = 0;
  v29 = v25;
  do
  {
    v30 = *v17++;
    v28 = v30 | (v28 << 8);
    --v29;
  }

  while (v29);
  if (v28 > 0x7F)
  {
    if (v28 >> (8 * v25 - 8))
    {
      goto LABEL_47;
    }

    if (!a7)
    {
      return 0;
    }
  }

  else
  {
    if (!a7)
    {
      return 0;
    }

    *a5 = 1;
    if (v28 >> (8 * v25 - 8))
    {
      goto LABEL_47;
    }
  }

  *a5 = 1;
LABEL_47:
  v21 += v25;
  if (!__CFADD__(v28, v21))
  {
    v22 = v28 + v21;
    if (!a4)
    {
LABEL_20:
      v27 = v8 >= v22;
      v23 = &v8[-v22];
      if (!v27)
      {
        return 0;
      }

      *a1 = &v7[v22];
      a1[1] = v23;
      v21 = v22;
      if (a2)
      {
LABEL_23:
        *a2 = v7;
        a2[1] = v21;
        return 1;
      }

      return 1;
    }

LABEL_19:
    *a4 = v21;
    v8 = a1[1];
    goto LABEL_20;
  }

  return 0;
}

uint64_t CBS_get_asn1(unsigned __int8 **a1, void *a2, int a3)
{
  v14 = 0;
  v13 = 0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v12;
  }

  if (cbs_get_any_asn1_element(a1, v5, &v13, &v14, 0, 0, 0))
  {
    v6 = v13 == a3;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v12;
  }

  v9 = *(v8 + 1);
  v10 = v9 >= v14;
  v11 = v9 - v14;
  if (!v10)
  {
    return 0;
  }

  *v5 += v14;
  *(v8 + 1) = v11;
  return 1;
}

uint64_t CBS_get_asn1_element(unsigned __int8 **a1, uint64_t *a2, int a3)
{
  v6 = 0;
  if (!a2)
  {
    a2 = &v5;
  }

  LODWORD(result) = cbs_get_any_asn1_element(a1, a2, &v6, &v7, 0, 0, 0);
  if (v6 == a3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL CBS_peek_asn1_tag(unsigned __int8 **a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = **a1;
  LODWORD(v4) = v3 & 0x1F;
  if (v4 == 31)
  {
    v5 = 0;
    v6 = *a1 + 1;
    v7 = v2 - 1;
    while (v7)
    {
      if (v5 >> 57)
      {
        break;
      }

      v8 = *v6;
      if (!v5 && v8 == 128)
      {
        break;
      }

      v4 = v8 & 0x7F | (v5 << 7);
      ++v6;
      --v7;
      v5 = v4;
      if ((v8 & 0x80) == 0)
      {
        if (v4 - 31 > 0x1FFFFFE0)
        {
          return 0;
        }

        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  v9 = v4 | (v3 << 24) & 0xE0000000;
  v10 = (v9 & 0xDFFFFFFF) != 0;
  if ((v9 & 0xDFFFFFFF) == 0)
  {
    v9 = 0;
  }

  return v9 == a2 && v10;
}

BOOL CBS_get_asn1_uint64_with_tag(unsigned __int8 **a1, unint64_t *a2, int a3)
{
  v22 = 0;
  v21 = 0;
  if (!cbs_get_any_asn1_element(a1, &v19, &v21, &v22, 0, 0, 0))
  {
    return 0;
  }

  if (v21 != a3)
  {
    return 0;
  }

  v5 = v20;
  if (v20 < v22)
  {
    return 0;
  }

  v7 = (v19 + v22);
  v8 = v20 - v22;
  v19 += v22;
  v20 -= v22;
  if (v5 == v22)
  {
    return 0;
  }

  v9 = *v7;
  if (v8 == 1)
  {
    result = 0;
LABEL_20:
    if ((v9 & 0x80000000) == 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = ~v22 + v5;
      do
      {
        *a2 = v14 << 8;
        v16 = v7[v13] | (v14 << 8);
        *a2 = v16;
        v17 = v13 + 1;
        if (v15 == v13)
        {
          break;
        }

        v18 = HIWORD(v14);
        ++v13;
        v14 = v16;
      }

      while (!v18);
      return v17 >= v8;
    }

    return result;
  }

  v10 = v7[1];
  if (!*v7 && (v10 & 0x80000000) == 0)
  {
    return 0;
  }

  v12 = v9 == 255 && (v10 & 0x80u) != 0;
  result = 0;
  if (!v12)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL CBS_is_unsigned_asn1_integer(unsigned __int8 **a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 0;
  }

  v2 = **a1;
  v3 = v2 >> 7;
  if (v1 == 1)
  {
    return v3 == 0;
  }

  v5 = (*a1)[1];
  if (!**a1 && (v5 & 0x80000000) == 0)
  {
    return 0;
  }

  v7 = v2 != 255 || (v5 & 0x80u) == 0;
  return !v3 && v7;
}

uint64_t CBS_get_optional_asn1(unsigned __int8 **a1, void *a2, int *a3, int a4)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = **a1;
  LODWORD(v6) = v5 & 0x1F;
  if (v6 == 31)
  {
    v7 = 0;
    v8 = *a1 + 1;
    v9 = v4 - 1;
    while (v9)
    {
      if (v7 >> 57)
      {
        break;
      }

      v10 = *v8;
      if (!v7 && v10 == 128)
      {
        break;
      }

      v6 = v10 & 0x7F | (v7 << 7);
      ++v8;
      --v9;
      v7 = v6;
      if ((v10 & 0x80) == 0)
      {
        if (v6 - 31 > 0x1FFFFFE0)
        {
          break;
        }

        goto LABEL_11;
      }
    }

LABEL_17:
    v14 = 0;
    if (!a3)
    {
      return 1;
    }

LABEL_18:
    *a3 = v14;
    return 1;
  }

LABEL_11:
  v11 = v6 | (v5 << 24) & 0xE0000000;
  v12 = v11 & 0xDFFFFFFF;
  if ((v11 & 0xDFFFFFFF) == 0)
  {
    v11 = 0;
  }

  if (v12)
  {
    v13 = v11 == a4;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

  v17 = a3;
  v26 = 0;
  v25 = 0;
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = v24;
  }

  if (cbs_get_any_asn1_element(a1, v19, &v25, &v26, 0, 0, 0) && v25 == a4)
  {
    v20 = v24;
    if (a2)
    {
      v20 = a2;
    }

    v21 = *(v20 + 1);
    v22 = v21 >= v26;
    v23 = v21 - v26;
    if (v22)
    {
      *v19 += v26;
      *(v20 + 1) = v23;
      v14 = 1;
      a3 = v17;
      if (!v17)
      {
        return 1;
      }

      goto LABEL_18;
    }
  }

  return 0;
}

uint64_t CBS_get_optional_asn1_octet_string(unsigned __int8 **a1, void *a2, int *a3, int a4)
{
  v13 = 0;
  result = CBS_get_optional_asn1(a1, v14, &v13, a4);
  if (result)
  {
    v7 = v13;
    if (v13)
    {
      v17 = 0;
      v16 = 0;
      if (a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = v15;
      }

      if (!cbs_get_any_asn1_element(v14, v8, &v16, &v17, 0, 0, 0) || v16 != 4)
      {
        return 0;
      }

      v9 = v15;
      if (a2)
      {
        v9 = a2;
      }

      v10 = *(v9 + 1);
      v11 = v10 >= v17;
      v12 = v10 - v17;
      if (!v11)
      {
        return 0;
      }

      *v8 += v17;
      *(v9 + 1) = v12;
      if (v14[1])
      {
        return 0;
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }

    if (a3)
    {
      *a3 = v7;
    }

    return 1;
  }

  return result;
}

uint64_t CBS_get_optional_asn1_BOOL(unsigned __int8 **a1, int *a2, int a3, int a4)
{
  v10 = 0;
  result = CBS_get_optional_asn1(a1, v13, &v10, a3);
  if (result)
  {
    if (!v10)
    {
      *a2 = a4;
      return 1;
    }

    v15 = 0;
    v14 = 0;
    if (cbs_get_any_asn1_element(v13, &v11, &v14, &v15, 0, 0, 0) && v14 == 1 && (v7 = v12 - v15, v12 >= v15))
    {
      result = 0;
      v8 = (v11 + v15);
      v11 += v15;
      v12 -= v15;
      if (v7 == 1 && !v13[1])
      {
        v9 = *v8;
        if (v9)
        {
          if (v9 != 255)
          {
            return 0;
          }

          v9 = 1;
        }

        *a2 = v9;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CBS_asn1_bitstring_has_bit(unsigned __int8 **a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = **a1;
  if (v4 > 7 || **a1 && (v2 == 1 || (v2[v3 - 1] & ~(-1 << v4)) != 0))
  {
    return 0;
  }

  v5 = (a2 >> 3) + 1;
  if (v2 <= v5)
  {
    return 0;
  }

  else
  {
    return (v3[v5] >> (~a2 & 7)) & 1;
  }
}

uint64_t CBS_asn1_oid_to_text(unsigned __int8 **a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  memset(v21, 0, sizeof(v21));
  v3 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
  if (v3)
  {
    v4 = 0;
    *v3 = 32;
    BYTE8(v21[0]) = 0;
    *&v21[0] = 0;
    *&v21[1] = v3 + 1;
    *(&v21[1] + 8) = xmmword_273BA9E30;
    BYTE8(v21[2]) = 1;
    while (v2)
    {
      if (v4 >> 57)
      {
        break;
      }

      v7 = *v1++;
      v6 = v7;
      if (!v4 && v6 == 128)
      {
        break;
      }

      v5 = v6 & 0x7F | (v4 << 7);
      --v2;
      v4 = v5;
      if ((v6 & 0x80) == 0)
      {
        if (v5 < 0x50)
        {
          snprintf(__str, 0x18uLL, "%llu", v5 > 0x27);
          v11 = strlen(__str);
          __dst = 0;
          if (!CBB_add_space(v21, &__dst, v11))
          {
            break;
          }

          if (v11)
          {
            memcpy(__dst, __str, v11);
          }

          *__str = 0;
          if (!CBB_add_space(v21, __str, 1))
          {
            break;
          }

          **__str = 46;
          v12 = v5 - 40;
          if (v5 < 0x28)
          {
            v12 = v5;
          }

          snprintf(__str, 0x18uLL, "%llu", v12);
        }

        else
        {
          *__str = 0;
          if (!CBB_add_space(v21, __str, 2))
          {
            break;
          }

          **__str = 11826;
          snprintf(__str, 0x18uLL, "%llu", v5 - 80);
        }

        v13 = strlen(__str);
        __dst = 0;
        if (!CBB_add_space(v21, &__dst, v13))
        {
          break;
        }

        if (v13)
        {
          memcpy(__dst, __str, v13);
        }

        if (v2)
        {
          v14 = 0;
          for (i = 0; v2 != v14; i = v16)
          {
            if (i >> 57)
            {
              break;
            }

            v17 = v14[v1];
            if (!i && v17 == 128)
            {
              break;
            }

            v16 = v17 & 0x7F | (i << 7);
            if ((v17 & 0x80) == 0)
            {
              *__str = 0;
              if (!CBB_add_space(v21, __str, 1))
              {
                goto LABEL_10;
              }

              **__str = 46;
              snprintf(__str, 0x18uLL, "%llu", v16);
              v18 = strlen(__str);
              __dst = 0;
              if (!CBB_add_space(v21, &__dst, v18))
              {
                goto LABEL_10;
              }

              if (v18)
              {
                memcpy(__dst, __str, v18);
              }

              if (v2 - 1 == v14)
              {
                goto LABEL_44;
              }

              v16 = 0;
            }

            ++v14;
          }
        }

        else
        {
LABEL_44:
          v19 = 0;
          v20 = 0;
          *__str = 0;
          if (CBB_add_space(v21, __str, 1))
          {
            **__str = 0;
            if (CBB_finish(v21, &v20, &v19))
            {
              return v20;
            }
          }
        }

        break;
      }
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  }

LABEL_10:
  if (!BYTE8(v21[0]) && (BYTE8(v21[2]) & 1) != 0 && *&v21[1])
  {
    v9 = (*&v21[1] - 8);
    v8 = *(*&v21[1] - 8);
    if (v8 != -8)
    {
      bzero((*&v21[1] - 8), v8 + 8);
    }

    free(v9);
  }

  return 0;
}

uint64_t CBS_parse_rfc5280_time_internal(__int128 *a1, int a2, int a3, int *a4)
{
  v52 = *a1;
  if (a2)
  {
    if (!*(&v52 + 1))
    {
      return 0;
    }

    v4 = *v52;
    if (*(&v52 + 1) == 1 || (v4 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v6 = *(v52 + 1);
    if ((v6 - 58) < 0xFFFFFFF6 || *(&v52 + 1) == 2)
    {
      return 0;
    }

    result = 0;
    if (*(&v52 + 1) == 3)
    {
      return result;
    }

    v8 = *(v52 + 2);
    if ((v8 - 58) < 0xFFFFFFF6)
    {
      return result;
    }

    v9 = *(v52 + 3);
    if ((v9 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v10 = (v52 + 4);
    v11 = *(&v52 + 1) - 4;
    v12 = 10 * v8 + 100 * (v6 + 10 * v4 - 528) + v9 - 528;
    result = 0;
    if (*(&v52 + 1) == 4)
    {
      return result;
    }
  }

  else
  {
    if (!*(&v52 + 1))
    {
      return 0;
    }

    v13 = *v52;
    if (*(&v52 + 1) == 1 || (v13 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v15 = *(v52 + 1);
    if ((v15 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v16 = v15 + 10 * v13 - 528;
    v17 = v16 >= 0x32 ? 1900 : 2000;
    v12 = v17 + v16;
    if (v12 > 0x801)
    {
      return 0;
    }

    v10 = (v52 + 2);
    v11 = *(&v52 + 1) - 2;
    result = 0;
    if (*(&v52 + 1) == 2)
    {
      return result;
    }
  }

  if (v11 == 1)
  {
    return result;
  }

  v18 = *v10;
  if ((v18 - 58) < 0xFFFFFFF6)
  {
    return result;
  }

  v19 = v10[1];
  if ((v19 - 58) < 0xFFFFFFF6)
  {
    return 0;
  }

  result = 0;
  if (v11 == 2)
  {
    return result;
  }

  v20 = v19 + 10 * v18;
  if ((v20 - 541) < 0xFFFFFFF4)
  {
    return result;
  }

  result = 0;
  if (v11 == 3)
  {
    return result;
  }

  v21 = v10[2];
  if ((v21 - 58) < 0xFFFFFFF6)
  {
    return result;
  }

  v22 = v10[3];
  if ((v22 - 58) < 0xFFFFFFF6)
  {
    return 0;
  }

  v23 = v22 + 10 * v21 - 528;
  if (!v23)
  {
    return 0;
  }

  v24 = v20 - 528;
  if (((1 << v24) & 0x15AA) != 0)
  {
    result = 0;
    if (v11 == 4 || v23 > 0x1F)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (((1 << v24) & 0xA50) != 0)
  {
    result = 0;
    if (v11 == 4 || v23 > 0x1E)
    {
      return result;
    }

LABEL_45:
    result = 0;
    if (v11 == 5)
    {
      return result;
    }

    v25 = v10[4];
    if ((v25 - 58) < 0xFFFFFFF6)
    {
      return result;
    }

    v26 = v10[5];
    if ((v26 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v48 = v24;
    v49 = v23;
    v47 = v12;
    result = 0;
    if (v11 == 6)
    {
      return result;
    }

    v27 = v26 + 10 * v25 - 528;
    if (v27 > 0x17)
    {
      return result;
    }

    result = 0;
    if (v11 == 7)
    {
      return result;
    }

    v28 = v10[6];
    if ((v28 - 58) < 0xFFFFFFF6)
    {
      return result;
    }

    *&v52 = v10 + 8;
    *(&v52 + 1) = v11 - 8;
    v29 = v10[7];
    if ((v29 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v30 = v29 + 10 * v28 - 528;
    if (v30 > 0x3B)
    {
      return 0;
    }

    v53 = 0;
    two_digits = cbs_get_two_digits(&v52, &v53);
    result = 0;
    if (!two_digits)
    {
      return result;
    }

    v33 = v53;
    if (v53 > 59)
    {
      return result;
    }

    if (!*(&v52 + 1))
    {
      return 0;
    }

    v34 = *v52;
    v35 = *(&v52 + 1) - 1;
    *&v52 = v52 + 1;
    --*(&v52 + 1);
    if (v34 == 43)
    {
      v36 = 1;
    }

    else
    {
      result = 0;
      if (v34 == 90)
      {
LABEL_85:
        if (!v35)
        {
          if (!a4)
          {
            return 1;
          }

          a4[4] = v48 - 1;
          a4[5] = v47 - 1900;
          a4[2] = v27;
          a4[3] = v49;
          *a4 = v33;
          a4[1] = v30;
          if (!result)
          {
            return 1;
          }

          result = OPENSSL_gmtime_adj(a4, 0, result);
          if (result)
          {
            return 1;
          }

          return result;
        }

        return 0;
      }

      if (v34 != 45)
      {
        return result;
      }

      v36 = -1;
    }

    if (!a3)
    {
      return 0;
    }

    v51 = 0;
    if (!cbs_get_two_digits(&v52, &v51 + 1))
    {
      return 0;
    }

    v46 = HIDWORD(v51);
    if (SHIDWORD(v51) > 23 || !cbs_get_two_digits(&v52, &v51) || v51 >= 60)
    {
      return 0;
    }

    LODWORD(result) = (3600 * v46 + 60 * v51) * v36;
    v35 = *(&v52 + 1);
    goto LABEL_85;
  }

  v44 = (v12 & 3) == 0;
  v37 = v12;
  v38 = -1030792151 * v12;
  HIDWORD(v40) = v38;
  LODWORD(v40) = v38;
  v39 = v40 >> 2;
  v42 = v44 && v39 > 0x28F5C28;
  HIDWORD(v43) = v38;
  LODWORD(v43) = v38;
  result = 0;
  v44 = (v43 >> 4) >= 0xA3D70B && v42 == 0;
  if (v44)
  {
    if (v11 == 4)
    {
      return result;
    }

    v45 = v23 > 0x1C;
  }

  else
  {
    if (v11 == 4)
    {
      return result;
    }

    v45 = v23 > 0x1D;
  }

  v12 = v37;
  if (!v45)
  {
    goto LABEL_45;
  }

  return result;
}

uint64_t cbs_get_two_digits(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = (*a1)++;
  a1[1] = v2 - 1;
  v4 = *v3;
  if (v2 == 1 || (v4 - 58) < 0xFFFFFFF6)
  {
    return 0;
  }

  *a1 = v3 + 2;
  a1[1] = v2 - 2;
  v6 = v3[1];
  if ((v6 - 58) < 0xFFFFFFF6)
  {
    return 0;
  }

  *a2 = v6 + 10 * v4 - 528;
  return 1;
}

int8x16_t *CRYPTO_chacha_20(int8x16_t *result, int8x16_t *a2, unint64_t a3, int *a4, int *a5, int a6)
{
  v124 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a4;
    v7 = a4[1];
    v9 = a4[2];
    v8 = a4[3];
    v10 = a4[4];
    v11 = a4[5];
    v12 = a4[6];
    v13 = a4[7];
    v14 = *a5;
    v15 = a5[1];
    v16 = a5[2];
    v118 = *a5;
    v119 = v10;
    v116 = *a4;
    v117 = v15;
    do
    {
      v17 = 22;
      v18 = v6;
      v19 = 1634760805;
      v20 = a6;
      v21 = v10;
      v22 = v7;
      v23 = 857760878;
      v24 = v14;
      v25 = v11;
      v26 = v11;
      v27 = v9;
      v28 = 2036477234;
      v29 = v15;
      v30 = v12;
      v31 = v8;
      v32 = v8;
      v33 = 1797285236;
      v34 = v16;
      v35 = v13;
      do
      {
        v36 = v19 + v18;
        HIDWORD(v38) = v20 ^ v36;
        LODWORD(v38) = v20 ^ v36;
        v37 = v38 >> 16;
        v39 = v37 + v21;
        HIDWORD(v38) = v39 ^ v18;
        LODWORD(v38) = v39 ^ v18;
        v40 = v38 >> 20;
        v41 = v40 + v36;
        HIDWORD(v38) = v41 ^ v37;
        LODWORD(v38) = v41 ^ v37;
        v42 = v38 >> 24;
        v43 = v42 + v39;
        HIDWORD(v38) = v43 ^ v40;
        LODWORD(v38) = v43 ^ v40;
        v44 = v38 >> 25;
        v45 = v23 + v7;
        HIDWORD(v38) = v24 ^ v45;
        LODWORD(v38) = v24 ^ v45;
        v46 = v38 >> 16;
        v47 = v46 + v26;
        HIDWORD(v38) = v47 ^ v7;
        LODWORD(v38) = v47 ^ v7;
        v48 = v38 >> 20;
        v49 = v48 + v45;
        HIDWORD(v38) = v49 ^ v46;
        LODWORD(v38) = v49 ^ v46;
        v50 = v38 >> 24;
        v51 = v50 + v47;
        HIDWORD(v38) = v51 ^ v48;
        LODWORD(v38) = v51 ^ v48;
        v52 = v38 >> 25;
        v53 = v28 + v9;
        HIDWORD(v38) = v29 ^ v53;
        LODWORD(v38) = v29 ^ v53;
        v54 = v38 >> 16;
        v55 = v54 + v12;
        HIDWORD(v38) = v55 ^ v9;
        LODWORD(v38) = v55 ^ v9;
        v56 = v38 >> 20;
        v57 = v56 + v53;
        HIDWORD(v38) = v57 ^ v54;
        LODWORD(v38) = v57 ^ v54;
        v58 = v38 >> 24;
        v59 = v58 + v55;
        HIDWORD(v38) = v59 ^ v56;
        LODWORD(v38) = v59 ^ v56;
        v60 = v38 >> 25;
        v61 = v33 + v32;
        HIDWORD(v38) = v16 ^ v61;
        LODWORD(v38) = v16 ^ v61;
        v62 = v38 >> 16;
        v63 = v62 + v13;
        HIDWORD(v38) = v63 ^ v32;
        LODWORD(v38) = v63 ^ v32;
        v64 = v38 >> 20;
        v65 = v64 + v61;
        HIDWORD(v38) = v65 ^ v62;
        LODWORD(v38) = v65 ^ v62;
        v66 = v38 >> 24;
        v67 = v66 + v63;
        HIDWORD(v38) = v67 ^ v64;
        LODWORD(v38) = v67 ^ v64;
        v68 = v38 >> 25;
        v69 = v52 + v41;
        HIDWORD(v38) = v66 ^ v69;
        LODWORD(v38) = v66 ^ v69;
        v70 = v38 >> 16;
        v71 = v70 + v59;
        HIDWORD(v38) = v71 ^ v52;
        LODWORD(v38) = v71 ^ v52;
        v72 = v38 >> 20;
        v19 = v72 + v69;
        HIDWORD(v38) = v19 ^ v70;
        LODWORD(v38) = v19 ^ v70;
        LODWORD(v16) = v38 >> 24;
        LODWORD(v12) = v16 + v71;
        HIDWORD(v38) = v12 ^ v72;
        LODWORD(v38) = v12 ^ v72;
        LODWORD(v7) = v38 >> 25;
        v73 = v60 + v49;
        HIDWORD(v38) = v73 ^ v42;
        LODWORD(v38) = v73 ^ v42;
        v74 = v38 >> 16;
        v75 = v74 + v67;
        HIDWORD(v38) = v75 ^ v60;
        LODWORD(v38) = v75 ^ v60;
        v76 = v38 >> 20;
        v23 = v76 + v73;
        HIDWORD(v38) = v23 ^ v74;
        LODWORD(v38) = v23 ^ v74;
        v20 = v38 >> 24;
        LODWORD(v13) = v20 + v75;
        HIDWORD(v38) = v13 ^ v76;
        LODWORD(v38) = v13 ^ v76;
        LODWORD(v9) = v38 >> 25;
        v77 = v68 + v57;
        HIDWORD(v38) = v77 ^ v50;
        LODWORD(v38) = v77 ^ v50;
        v78 = v38 >> 16;
        v79 = v78 + v43;
        HIDWORD(v38) = v79 ^ v68;
        LODWORD(v38) = v79 ^ v68;
        v80 = v38 >> 20;
        v28 = v80 + v77;
        HIDWORD(v38) = v28 ^ v78;
        LODWORD(v38) = v28 ^ v78;
        v24 = v38 >> 24;
        v21 = v24 + v79;
        HIDWORD(v38) = v21 ^ v80;
        LODWORD(v38) = v21 ^ v80;
        v32 = v38 >> 25;
        v81 = v65 + v44;
        HIDWORD(v38) = v81 ^ v58;
        LODWORD(v38) = v81 ^ v58;
        v82 = v38 >> 16;
        v83 = v82 + v51;
        HIDWORD(v38) = v83 ^ v44;
        LODWORD(v38) = v83 ^ v44;
        v84 = v38 >> 20;
        v33 = v84 + v81;
        HIDWORD(v38) = v33 ^ v82;
        LODWORD(v38) = v33 ^ v82;
        v29 = v38 >> 24;
        v26 = v29 + v83;
        HIDWORD(v38) = v26 ^ v84;
        LODWORD(v38) = v26 ^ v84;
        v18 = v38 >> 25;
        v17 -= 2;
      }

      while (v17 > 2);
      v85 = 0;
      v120.i32[0] = v19 + 1634760805;
      v120.i32[1] = v23 + 857760878;
      if (a3 >= 0x40)
      {
        v86 = 64;
      }

      else
      {
        v86 = a3;
      }

      v120.i32[2] = v28 + 2036477234;
      v120.i32[3] = v33 + 1797285236;
      v6 = v116;
      v87 = v18 + v116;
      v88 = v7 + v22;
      v7 = v22;
      v89 = v9 + v27;
      v9 = v27;
      v8 = v31;
      v90 = v32 + v31;
      v121.i64[0] = __PAIR64__(v88, v87);
      v14 = v118;
      v10 = v119;
      v91 = v21 + v119;
      v11 = v25;
      v92 = v26 + v25;
      v93 = v12 + v30;
      v12 = v30;
      v94 = v13 + v35;
      v13 = v35;
      v121.i64[1] = __PAIR64__(v90, v89);
      v95 = v24 + v118;
      v15 = v117;
      v96 = v29 + v117;
      v97 = v16 + v34;
      v16 = v34;
      v122.i64[0] = __PAIR64__(v92, v91);
      v122.i64[1] = __PAIR64__(v94, v93);
      v123.i32[0] = v20 + a6;
      v123.i32[1] = v95;
      if (v86 <= 1)
      {
        v98 = 1;
      }

      else
      {
        v98 = v86;
      }

      v123.i64[1] = __PAIR64__(v97, v96);
      if (a3 >= 8 && (result - a2) >= 0x20)
      {
        if (a3 < 0x20)
        {
          v85 = 0;
LABEL_20:
          v101 = v85;
          v85 = v98 & 0x78;
          v102 = &a2->i8[v101];
          v103 = &v120.i8[v101];
          v104 = &result->i8[v101];
          v105 = v101 - v85;
          do
          {
            v106 = *v102++;
            v107 = v106;
            v108 = *v103++;
            *v104++ = veor_s8(v108, v107);
            v105 += 8;
          }

          while (v105);
          if (v86 == v85)
          {
            goto LABEL_3;
          }

          goto LABEL_23;
        }

        v85 = v98 & 0x60;
        v99 = veorq_s8(v121, a2[1]);
        *result = veorq_s8(v120, *a2);
        result[1] = v99;
        if (v85 != 32)
        {
          v100 = veorq_s8(v123, a2[3]);
          result[2] = veorq_s8(v122, a2[2]);
          result[3] = v100;
        }

        if (v86 == v85)
        {
          goto LABEL_3;
        }

        if ((v98 & 0x18) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_23:
      v109 = v98 - v85;
      v110 = &result->i8[v85];
      v111 = &v120.i8[v85];
      v112 = &a2->i8[v85];
      do
      {
        v114 = *v112++;
        v113 = v114;
        v115 = *v111++;
        *v110++ = v115 ^ v113;
        --v109;
      }

      while (v109);
LABEL_3:
      result = (result + v86);
      a2 = (a2 + v86);
      ++a6;
      a3 -= v86;
    }

    while (a3);
  }

  return result;
}

STACK *__cdecl NCONF_get_section(const CONF *conf, const char *section)
{
  meth_data = conf->meth_data;
  v8[0] = section;
  v8[1] = 0;
  v3 = (meth_data[1] + 8 * ((meth_data[5])(v8) % meth_data[2]));
  v4 = *v3;
  if (*v3)
  {
    if ((meth_data[4])(*v4, v8))
    {
      while (1)
      {
        v5 = v4;
        v4 = v4[1];
        if (!v4)
        {
          break;
        }

        if (!(meth_data[4])(*v4, v8))
        {
          v3 = (v5 + 1);
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (*v3)
      {
        v6 = **v3;
        if (v6)
        {
          return *(v6 + 8);
        }
      }
    }
  }

  return 0;
}

int CONF_parse_list(const char *list, int sep, int nospc, int (__cdecl *list_cb)(const char *, int, void *), void *arg)
{
  if (list)
  {
    v8 = list;
    if (nospc)
    {
      while (1)
      {
        v9 = *v8;
        if (!*v8)
        {
          break;
        }

        do
        {
          v11 = v9 == 32 || (v9 - 9) < 5;
          if (!v11)
          {
            break;
          }

          v12 = *++v8;
          v9 = v12;
        }

        while (v12);
        v13 = strchr(v8, sep);
        v14 = v13;
        v15 = v13 == v8 || v11;
        if (v15)
        {
          goto LABEL_26;
        }

        v16 = v13;
        if (!v13)
        {
          v16 = &v8[strlen(v8)];
        }

        v17 = v16 - v8 + 1;
        v18 = v16 - 1;
        do
        {
          v19 = *v18--;
          v20 = v19 - 14;
          --v17;
        }

        while (v19 == 32 || v20 > 0xFFFFFFFA);
        result = (list_cb)(v8, v17, arg);
        if (result < 1)
        {
          return result;
        }

LABEL_27:
        v8 = v14 + 1;
        if (!v14)
        {
          return 1;
        }
      }

      v14 = strchr(v8, sep);
LABEL_26:
      result = (list_cb)(0, 0, arg);
      if (result < 1)
      {
        return result;
      }

      goto LABEL_27;
    }

    do
    {
      v23 = strchr(v8, sep);
      v24 = v23;
      if (v23 == v8 || !*v8)
      {
        result = (list_cb)(0, 0, arg);
        if (result < 1)
        {
          return result;
        }
      }

      else
      {
        v25 = v23;
        if (!v23)
        {
          v25 = &v8[strlen(v8)];
        }

        result = (list_cb)(v8, v25 - v8, arg);
        if (result < 1)
        {
          return result;
        }
      }

      v8 = v24 + 1;
    }

    while (v24);
    return 1;
  }

  else
  {
    ERR_put_error(13, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/conf/conf.cc", 584);
    return 0;
  }
}

uint64_t BN_bn2cbb_padded(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v44 = 0;
  result = CBB_add_space(a1, &v44, a2);
  if (!result)
  {
    return result;
  }

  v6 = v44;
  v7 = *a3;
  v8 = 8 * *(a3 + 8);
  v9 = v8 - a2;
  if (v8 > a2)
  {
    if (v9 < 8)
    {
      v10 = 0;
      v11 = a2;
      goto LABEL_16;
    }

    if (v9 >= 0x20)
    {
      v12 = v9 & 0xFFFFFFFFFFFFFFE0;
      v13 = (v7 + a2 + 16);
      v14 = 0uLL;
      v15 = v9 & 0xFFFFFFFFFFFFFFE0;
      v16 = 0uLL;
      do
      {
        v14 = vorrq_s8(v13[-1], v14);
        v16 = vorrq_s8(*v13, v16);
        v13 += 2;
        v15 -= 32;
      }

      while (v15);
      v17 = vorrq_s8(v16, v14);
      *v17.i8 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
      v18 = v17.i64[0] | HIDWORD(v17.i64[0]) | ((v17.i64[0] | HIDWORD(v17.i64[0])) >> 16);
      v10 = v18 | BYTE1(v18);
      if (v9 == v12)
      {
        goto LABEL_19;
      }

      if ((v9 & 0x18) == 0)
      {
        v11 = v12 + a2;
LABEL_16:
        v24 = v11 - v8;
        v25 = &v7->i8[v11];
        do
        {
          v26 = *v25++;
          v10 |= v26;
        }

        while (!__CFADD__(v24++, 1));
        goto LABEL_19;
      }
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + a2;
    v19 = v10;
    v20 = &v7->i8[v12 + a2];
    v21 = v12 - (v9 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v22 = *v20++;
      v19 = vorr_s8(v22, v19);
      v21 += 8;
    }

    while (v21);
    v23 = *&v19 | HIDWORD(*&v19) | ((*&v19 | HIDWORD(*&v19)) >> 16);
    v10 = v23 | BYTE1(v23);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_16;
    }

LABEL_19:
    if (v10)
    {
      return 0;
    }
  }

  if (v8 >= a2)
  {
    v28 = a2;
  }

  else
  {
    v28 = 8 * *(a3 + 8);
  }

  if (!v28)
  {
    goto LABEL_32;
  }

  if (v28 < 8 || v44 + a2 - v28 < &v7->i8[v28] && v7 < (v44 + a2))
  {
    v29 = 0;
    goto LABEL_30;
  }

  if (v28 >= 0x20)
  {
    v29 = v28 & 0xFFFFFFFFFFFFFFE0;
    v34 = v7 + 1;
    v35 = (v44 + a2 - 16);
    v36 = v28 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v37 = vrev64q_s8(v34[-1]);
      v38 = vrev64q_s8(*v34);
      v35[-1] = vextq_s8(v38, v38, 8uLL);
      *v35 = vextq_s8(v37, v37, 8uLL);
      v34 += 2;
      v35 -= 2;
      v36 -= 32;
    }

    while (v36);
    if (v28 == v29)
    {
      goto LABEL_32;
    }

    if ((v28 & 0x18) == 0)
    {
LABEL_30:
      v30 = v28 - v29;
      v31 = &v6[~v29 + a2];
      v32 = &v7->i8[v29];
      do
      {
        v33 = *v32++;
        *v31-- = v33;
        --v30;
      }

      while (v30);
      goto LABEL_32;
    }
  }

  else
  {
    v29 = 0;
  }

  v39 = v29;
  v29 = v28 & 0xFFFFFFFFFFFFFFF8;
  v40 = &v7->i8[v39];
  v41 = &v6[a2 - v39 - 8];
  v42 = v39 - (v28 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v43 = *v40++;
    *v41-- = vrev64_s8(v43);
    v42 += 8;
  }

  while (v42);
  if (v28 != v29)
  {
    goto LABEL_30;
  }

LABEL_32:
  if (v8 < a2)
  {
    bzero(v6, a2 - v28);
  }

  return 1;
}

char *__cdecl BN_bn2hex(const BIGNUM *a)
{
  top = a->top;
  if (top < 1)
  {
LABEL_8:
    v3 = (16 * top) | 3;
    v5 = malloc_type_malloc(v3 + 8, 0xB4E622C9uLL);
    if (!v5)
    {
LABEL_7:
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }
  }

  else
  {
    v3 = 3;
    do
    {
      if (a->d[top - 1])
      {
        goto LABEL_8;
      }

      v4 = __OFSUB__(top--, 1);
    }

    while (!((top < 0) ^ v4 | (top == 0)));
    top = 0;
    v5 = malloc_type_malloc(0xBuLL, 0xB4E622C9uLL);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v7 = v5;
  *v5 = v3;
  result = v5 + 8;
  v8 = result;
  if (a->neg)
  {
    v8 = v7 + 9;
    v7[8] = 45;
  }

  v9 = a->top;
  if (v9)
  {
    d = a->d;
    if (v9 >= 4)
    {
      v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (d + 2);
      v14 = 0uLL;
      v15 = v9 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = 0uLL;
      do
      {
        v14 = vorrq_s8(v13[-1], v14);
        v16 = vorrq_s8(*v13, v16);
        v13 += 2;
        v15 -= 4;
      }

      while (v15);
      v17 = vorrq_s8(v16, v14);
      v12 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
      if (v11 == v9)
      {
LABEL_19:
        if (v12)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v18 = v9 - v11;
    v19 = &d[v11];
    do
    {
      v20 = *v19++;
      *&v12 |= v20;
      --v18;
    }

    while (v18);
    goto LABEL_19;
  }

LABEL_20:
  *v8++ = 48;
LABEL_21:
  if (top >= 1)
  {
    v21 = 0;
    v22 = top;
    while (1)
    {
      v23 = a->d[v22 - 1];
      if (v21 || HIBYTE(v23))
      {
        break;
      }

      v24 = HIWORD(v23);
      if (HIWORD(v23))
      {
        v28 = HIWORD(v23);
        goto LABEL_30;
      }

      v25 = v23 >> 40;
      if (v23 >> 40)
      {
        v26 = v23 >> 40;
LABEL_31:
        *v8 = hextable[v25 >> 4];
        v8[1] = hextable[v26 & 0xF];
        v8 += 2;
        v30 = a->d[v22 - 1];
        v31 = HIDWORD(v30);
        v32 = BYTE4(v30);
LABEL_32:
        *v8 = hextable[v32 >> 4];
        v8[1] = hextable[v31 & 0xF];
        v8 += 2;
        v33 = a->d[v22 - 1];
        v34 = v33 >> 24;
        v35 = BYTE3(v33);
LABEL_33:
        *v8 = hextable[v35 >> 4];
        v8[1] = hextable[v34 & 0xF];
        v8 += 2;
        v36 = a->d[v22 - 1];
        v37 = v36 >> 16;
        v38 = BYTE2(v36);
LABEL_34:
        *v8 = hextable[v38 >> 4];
        v8[1] = hextable[v37 & 0xF];
        v8 += 2;
        v39 = a->d[v22 - 1];
        v40 = v39 >> 8;
        v41 = BYTE1(v39);
LABEL_35:
        *v8 = hextable[v41 >> 4];
        v8[1] = hextable[v40 & 0xF];
        v8 += 2;
        v23 = LOBYTE(a->d[v22 - 1]);
LABEL_36:
        *v8 = hextable[v23 >> 4];
        v8[1] = hextable[v23 & 0xF];
        v8 += 2;
        v21 = 1;
        if (v22-- <= 1)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v32 = HIDWORD(v23);
        if (HIDWORD(v23))
        {
          v31 = HIDWORD(v23);
          goto LABEL_32;
        }

        v35 = v23 >> 24;
        if (v23 >> 24)
        {
          v34 = v23 >> 24;
          goto LABEL_33;
        }

        if (v23 >= 0x10000)
        {
          v38 = v23 >> 16;
          v37 = v23 >> 16;
          goto LABEL_34;
        }

        if (v23 >= 0x100)
        {
          v41 = v23 >> 8;
          v40 = v23 >> 8;
          goto LABEL_35;
        }

        if (v23)
        {
          goto LABEL_36;
        }

        v21 = 0;
        if (v22-- <= 1)
        {
          goto LABEL_48;
        }
      }
    }

    *v8 = hextable[v23 >> 60];
    v8[1] = hextable[HIBYTE(v23) & 0xF];
    v8 += 2;
    v27 = a->d[v22 - 1];
    v28 = HIWORD(v27);
    v24 = BYTE6(v27);
LABEL_30:
    *v8 = hextable[v24 >> 4];
    v8[1] = hextable[v28 & 0xF];
    v8 += 2;
    v29 = a->d[v22 - 1];
    v26 = v29 >> 40;
    v25 = BYTE5(v29);
    goto LABEL_31;
  }

LABEL_48:
  *v8 = 0;
  return result;
}

uint64_t bn_x2bn(bignum_st **a1, const char *a2, int (*a3)(bignum_st *, const char *, int), int (*a4)(int))
{
  if (!a2)
  {
    return 0;
  }

  result = *a2;
  if (*a2)
  {
    v8 = 0;
    v9 = result == 45 ? a2 + 1 : a2;
    v10 = result == 45;
    v11 = 1;
    do
    {
      if (a4(v9[v8]))
      {
        v12 = (v10 ^ 0x7FFFFFFF) == v8;
      }

      else
      {
        v12 = 1;
      }

      ++v8;
      --v11;
    }

    while (!v12);
    result = v10 - v11;
    if (a1)
    {
      v13 = *a1;
      if (*a1)
      {
        v13->neg = 0;
        v13->top = 0;
        if (a3(v13, v9, -v11))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v17 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
        if (!v17)
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          return 0;
        }

        *v17 = 24;
        *(v17 + 1) = 0;
        v13 = (v17 + 8);
        *(v17 + 2) = 0;
        *(v17 + 3) = 0x100000000;
        if (a3((v17 + 8), v9, -v11))
        {
LABEL_15:
          top = v13->top;
          if (top < 1)
          {
            result = v10 - v11;
            if (!top)
            {
              LODWORD(v10) = 0;
LABEL_47:
              v13->neg = v10;
LABEL_48:
              *a1 = v13;
              return result;
            }

            d = v13->d;
            v18 = top;
          }

          else
          {
            d = v13->d;
            result = v10 - v11;
            while (!v13->d[top - 1])
            {
              v16 = __OFSUB__(top--, 1);
              if ((top < 0) ^ v16 | (top == 0))
              {
                LODWORD(v10) = 0;
                v13->top = 0;
                goto LABEL_47;
              }
            }

            v13->top = top;
            v18 = top;
            if (top < 4)
            {
              v19 = 0;
              v25 = 0;
              goto LABEL_34;
            }
          }

          v19 = v18 & 0xFFFFFFFFFFFFFFFCLL;
          v20 = d + 1;
          v21 = 0uLL;
          v22 = v18 & 0xFFFFFFFFFFFFFFFCLL;
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
          v25 = vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
          if (v19 == v18)
          {
LABEL_36:
            if (!*&v25)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

LABEL_34:
          v26 = v18 - v19;
          v27 = &d->i64[v19];
          do
          {
            v28 = *v27++;
            *&v25 |= v28;
            --v26;
          }

          while (v26);
          goto LABEL_36;
        }
      }

      if (*a1)
      {
        return 0;
      }

      else
      {
        flags = v13->flags;
        if ((flags & 2) == 0)
        {
          v30 = v13->d;
          if (v13->d)
          {
            v32 = *(v30 - 1);
            v31 = v30 - 1;
            v33 = v32 + 8;
            if (v32 != -8)
            {
              bzero(v31, v33);
            }

            free(v31);
            flags = v13->flags;
          }
        }

        if (flags)
        {
          v35 = *&v13[-1].neg;
          p_neg = &v13[-1].neg;
          v36 = v35 + 8;
          if (v35 != -8)
          {
            bzero(p_neg, v36);
          }

          free(p_neg);
          return 0;
        }

        else
        {
          result = 0;
          v13->d = 0;
        }
      }
    }
  }

  return result;
}

uint64_t decode_hex(bignum_st *a1, const char *a2, int a3)
{
  if (a3 >= 0x20000000)
  {
    ERR_put_error(3, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bn/convert.cc", 77);
    return 0;
  }

  result = bn_expand(a1, 4 * a3);
  if (result)
  {
    if (a3 >= 1)
    {
      v7 = 0;
      d = a1->d;
      v9 = a3;
      v10 = ((a3 - 1) >> 4) + 1;
      while (1)
      {
        v11 = 0;
        if ((v9 & 0xFFFFFFF0) != 0)
        {
          v12 = 16;
        }

        else
        {
          v12 = v9;
        }

        v13 = v12 + 1;
        v14 = &a2[-v12];
        do
        {
          while (1)
          {
            v16 = v14[v9];
            if ((v16 - 58) <= 0xFFFFFFF5)
            {
              break;
            }

            v15 = -48;
LABEL_13:
            ++v14;
            v11 = (v15 + v16) | (16 * v11);
            if (--v13 <= 1)
            {
              goto LABEL_7;
            }
          }

          if ((v16 - 97) < 6)
          {
            v15 = -87;
            goto LABEL_13;
          }

          if ((v16 - 65) <= 5)
          {
            v15 = -55;
            goto LABEL_13;
          }

          ++v14;
          v11 *= 16;
          --v13;
        }

        while (v13 > 1);
LABEL_7:
        d[v7] = v11;
        v9 -= 16;
        if (++v7 == v10)
        {
          goto LABEL_22;
        }
      }
    }

    LODWORD(v10) = 0;
LABEL_22:
    a1->top = v10;
    return 1;
  }

  return result;
}

char *__cdecl BN_bn2dec(const BIGNUM *a)
{
  memset(v65, 0, sizeof(v65));
  v2 = malloc_type_malloc(0x18uLL, 0xB4E622C9uLL);
  if (!v2)
  {
    v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v8 = 65;
    v9 = 217;
LABEL_7:
    ERR_put_error(14, 0, v8, v7, v9);
    goto LABEL_8;
  }

  *v2 = 16;
  BYTE8(v65[0]) = 0;
  *&v65[0] = 0;
  *&v65[1] = v2 + 1;
  *(&v65[1] + 8) = xmmword_273BA3920;
  BYTE8(v65[2]) = 1;
  v66 = 0;
  if (!CBB_add_space(v65, &v66, 1))
  {
    goto LABEL_8;
  }

  *v66 = 0;
  top = a->top;
  if (!top)
  {
LABEL_25:
    v66 = 0;
    if (!CBB_add_space(v65, &v66, 1))
    {
      goto LABEL_8;
    }

    *v66 = 48;
    if (!a->neg)
    {
      goto LABEL_75;
    }

LABEL_27:
    v66 = 0;
    if (!CBB_add_space(v65, &v66, 1))
    {
      goto LABEL_8;
    }

    *v66 = 45;
    if (BYTE8(v65[0]))
    {
      goto LABEL_76;
    }

    goto LABEL_29;
  }

  d = a->d;
  if (top < 4)
  {
    v5 = 0;
    v6 = 0;
LABEL_19:
    v19 = top - v5;
    v20 = &d[v5];
    do
    {
      v21 = *v20++;
      *&v6 |= v21;
      --v19;
    }

    while (v19);
    goto LABEL_21;
  }

  v5 = top & 0xFFFFFFFFFFFFFFFCLL;
  v14 = (d + 2);
  v15 = 0uLL;
  v16 = top & 0xFFFFFFFFFFFFFFFCLL;
  v17 = 0uLL;
  do
  {
    v15 = vorrq_s8(v14[-1], v15);
    v17 = vorrq_s8(*v14, v17);
    v14 += 2;
    v16 -= 4;
  }

  while (v16);
  v18 = vorrq_s8(v17, v15);
  v6 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
  if (v5 != top)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (!*&v6)
  {
    goto LABEL_25;
  }

  result = BN_dup(a);
  if (!result)
  {
    goto LABEL_9;
  }

  v22 = result;
  v23 = *(result + 2);
  if (v23)
  {
    while (1)
    {
      v28 = v23;
      v29 = v22->d;
      if (v23 < 4)
      {
        break;
      }

      v30 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = v29 + 1;
      v33 = 0uLL;
      v34 = v28 & 0xFFFFFFFFFFFFFFFCLL;
      v35 = 0uLL;
      do
      {
        v33 = vorrq_s8(v32[-1], v33);
        v35 = vorrq_s8(*v32, v35);
        v32 += 2;
        v34 -= 4;
      }

      while (v34);
      v36 = vorrq_s8(v35, v33);
      v31 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
      if (v30 != v28)
      {
        goto LABEL_43;
      }

LABEL_45:
      if (!*&v31)
      {
        goto LABEL_74;
      }

      v40 = BN_div_word(v22, 0x8AC7230489E80000);
      if (v40 == -1)
      {
        goto LABEL_67;
      }

      v41 = v40;
      v42 = v22->top;
      if (!v42)
      {
        v46 = 0;
        if (v40)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      v43 = v22->d;
      if (v42 <= 3)
      {
        v44 = 0;
        v45 = 0;
LABEL_55:
        v52 = v42 - v44;
        v53 = &v43->i64[v44];
        do
        {
          v54 = *v53++;
          *&v45 |= v54;
          --v52;
        }

        while (v52);
        goto LABEL_57;
      }

      v44 = v42 & 0xFFFFFFFFFFFFFFFCLL;
      v47 = v43 + 1;
      v48 = 0uLL;
      v49 = v44;
      v50 = 0uLL;
      do
      {
        v48 = vorrq_s8(v47[-1], v48);
        v50 = vorrq_s8(*v47, v50);
        v47 += 2;
        v49 -= 4;
      }

      while (v49);
      v51 = vorrq_s8(v50, v48);
      v45 = vorr_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
      if (v44 != v42)
      {
        goto LABEL_55;
      }

LABEL_57:
      v46 = *&v45 != 0;
      if (v40)
      {
        goto LABEL_59;
      }

LABEL_58:
      v23 = v22->top;
      if (v46)
      {
LABEL_59:
        v55 = 0;
        while (1)
        {
          v66 = 0;
          if (!CBB_add_space(v65, &v66, 1))
          {
            break;
          }

          *v66 = (v41 % 0xA) | 0x30;
          v56 = v41 > 9 || v46;
          if (v55 <= 0x11)
          {
            ++v55;
            v41 /= 0xAuLL;
            if (v56)
            {
              continue;
            }
          }

          v23 = v22->top;
          goto LABEL_37;
        }

LABEL_67:
        flags = v22->flags;
        if ((flags & 2) == 0)
        {
          v58 = v22->d;
          if (v22->d)
          {
            v60 = *(v58 - 1);
            v59 = v58 - 1;
            v61 = v60 + 8;
            if (v60 != -8)
            {
              bzero(v59, v61);
            }

            free(v59);
            flags = v22->flags;
          }
        }

        if ((flags & 1) == 0)
        {
          result = 0;
          v22->d = 0;
          goto LABEL_9;
        }

        v63 = *&v22[-1].neg;
        p_neg = &v22[-1].neg;
        v64 = v63 + 8;
        if (v63 != -8)
        {
          bzero(p_neg, v64);
        }

        free(p_neg);
LABEL_8:
        result = 0;
        goto LABEL_9;
      }

LABEL_37:
      if (!v23)
      {
        goto LABEL_74;
      }
    }

    v30 = 0;
    v31 = 0;
LABEL_43:
    v37 = v28 - v30;
    v38 = &v29->i64[v30];
    do
    {
      v39 = *v38++;
      *&v31 |= v39;
      --v37;
    }

    while (v37);
    goto LABEL_45;
  }

LABEL_74:
  BN_free(v22);
  if (a->neg)
  {
    goto LABEL_27;
  }

LABEL_75:
  if (BYTE8(v65[0]))
  {
LABEL_76:
    v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc";
    v8 = 66;
    v9 = 126;
    goto LABEL_7;
  }

LABEL_29:
  if (!CBB_flush(v65))
  {
    goto LABEL_8;
  }

  result = *&v65[1];
  *&v65[1] = 0;
  if (*(&v65[1] + 1))
  {
    v24 = &result[*(&v65[1] + 1) - 1];
    if (v24 > result)
    {
      v25 = result + 1;
      do
      {
        v26 = *(v25 - 1);
        *(v25 - 1) = *v24;
        *v24-- = v26;
      }

      while (v25++ < v24);
    }
  }

LABEL_9:
  if (!BYTE8(v65[0]) && (BYTE8(v65[2]) & 1) != 0 && *&v65[1])
  {
    v11 = result;
    v13 = (*&v65[1] - 8);
    v12 = *(*&v65[1] - 8);
    if (v12 != -8)
    {
      bzero(v13, v12 + 8);
    }

    free(v13);
    return v11;
  }

  return result;
}

uint64_t decode_dec(bignum_st *a, const char *a2, unsigned int a3)
{
  if (a3 < 1)
  {
    return 1;
  }

  v5 = 0;
  if (a3 % 0x13)
  {
    LODWORD(result) = 19 - a3 % 0x13;
  }

  else
  {
    LODWORD(result) = 0;
  }

  v7 = a3;
  do
  {
    v8 = *a2++;
    v5 = v8 + 10 * v5 - 48;
    LODWORD(result) = result + 1;
    if (result == 19)
    {
      result = BN_mul_word(a, 0x8AC7230489E80000);
      if (!result)
      {
        return result;
      }

      v9 = BN_add_word(a, v5);
      result = 0;
      if (!v9)
      {
        return result;
      }

      v5 = 0;
    }

    --v7;
  }

  while (v7);
  return 1;
}

_BYTE *fe_tobytes(_BYTE *result, void *a2)
{
  v2 = *a2 - 0x7FFFFFFFFFFEDLL;
  v3 = a2[1] - -(v2 >> 51) - 0x7FFFFFFFFFFFFLL;
  v4 = a2[2] - -(v3 >> 51) - 0x7FFFFFFFFFFFFLL;
  v5 = a2[3] - -(v4 >> 51) - 0x7FFFFFFFFFFFFLL;
  v6 = v2 & 0x7FFFFFFFFFFFFLL;
  v7 = v3 & 0x7FFFFFFFFFFFFLL;
  v8 = v4 & 0x7FFFFFFFFFFFFLL;
  v9 = v5 & 0x7FFFFFFFFFFFFLL;
  v10 = a2[4] - -(v5 >> 51) - 0x7FFFFFFFFFFFFLL;
  if ((v10 & 0x7F8000000000000) != 0)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  v12 = (v11 & 0x7FFFFFFFFFFEDLL) + v6;
  result[1] = BYTE1(v12);
  result[2] = BYTE2(v12);
  result[3] = ((v11 & 0xFFFFFFED) + v6) >> 24;
  result[4] = BYTE4(v12);
  result[5] = BYTE5(v12);
  v13 = (v11 & 0x7FFFFFFFFFFFFLL) + v7 + (v12 >> 51);
  *result = v12;
  result[6] = BYTE6(v12) & 7 | (8 * (v11 + v7 + (v12 >> 51)));
  result[7] = v13 >> 5;
  result[8] = v13 >> 13;
  result[9] = v13 >> 21;
  result[10] = v13 >> 29;
  result[11] = v13 >> 37;
  v14 = v8 + (v11 & 0x7FFFFFFFFFFFFLL) + (v13 >> 51);
  result[12] = (v13 >> 45) & 0x3F | ((v8 + v11 + (v13 >> 51)) << 6);
  result[13] = v14 >> 2;
  result[14] = v14 >> 10;
  result[15] = v14 >> 18;
  result[16] = v14 >> 26;
  result[17] = v14 >> 34;
  result[18] = v14 >> 42;
  v15 = v9 + (v11 & 0x7FFFFFFFFFFFFLL) + (v14 >> 51);
  result[19] = ((v14 & 0x4000000000000) != 0) | (2 * (v9 + v11 + (v14 >> 51)));
  result[20] = v15 >> 7;
  result[21] = v15 >> 15;
  result[22] = v15 >> 23;
  result[23] = v15 >> 31;
  result[24] = v15 >> 39;
  v16 = v10 + v11 + (v15 >> 51);
  result[25] = (v15 >> 47) & 0xF | (16 * v16);
  result[26] = v16 >> 4;
  result[27] = v16 >> 12;
  result[28] = v16 >> 20;
  result[29] = v16 >> 28;
  result[30] = v16 >> 36;
  result[31] = (v16 >> 44) & 0x7F;
  return result;
}

uint64_t x25519_ge_add(unint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v6 = *(a2 + 32) + *(a2 + 72);
  v7 = vaddq_s64(*(a2 + 16), *(a2 + 56));
  *a1 = vaddq_s64(*a2, *(a2 + 40));
  *(a1 + 1) = v7;
  a1[4] = v6;
  v8 = *(a2 + 72) - *(a2 + 32) + 0xFFFFFFFFFFFFELL;
  v45 = vdupq_n_s64(0xFFFFFFFFFFFFEuLL);
  v9 = vaddq_s64(vsubq_s64(*(a2 + 56), *(a2 + 16)), v45);
  *(a1 + 5) = vaddq_s64(vsubq_s64(*(a2 + 40), *a2), xmmword_273BA9E40);
  v10 = a1 + 5;
  *(a1 + 7) = v9;
  a1[9] = v8;
  fe_mul_impl(v51, a1, a3);
  fe_mul_impl(v54, v10, a3 + 5);
  fe_mul_impl(&v46, a3 + 15, (a2 + 120));
  fe_mul_impl(v57, (a2 + 80), a3 + 10);
  v11 = *v51;
  v12 = v52;
  v13 = *v54;
  v14 = v55;
  v15 = vaddq_s64(vsubq_s64(v52, v55), v45);
  v16 = v57[0];
  v17 = v57[1];
  v18 = v57[2];
  v19 = v57[3];
  v20 = v57[4];
  v21 = v53;
  v22 = v56;
  v23 = v53 - v56 + 0xFFFFFFFFFFFFELL;
  *a1 = vaddq_s64(vsubq_s64(*v51, *v54), xmmword_273BA9E40);
  *(a1 + 1) = v15;
  a1[4] = v23;
  v24 = v22 + v21;
  *v10 = vaddq_s64(v13, v11);
  *(a1 + 7) = vaddq_s64(v14, v12);
  v25 = ((v16 >> 50) & 0x1FFF) + 2 * v17;
  v26 = (v25 >> 51) + 2 * v18;
  v27 = (v26 >> 51) + 2 * v19;
  v28 = (v27 >> 51) + 2 * v20;
  v29 = 2 * (v16 & 0x3FFFFFFFFFFFFLL) + 19 * (v28 >> 51);
  v30 = (v25 & 0x7FFFFFFFFFFFFLL) + (v29 >> 51);
  v29 &= 0x7FFFFFFFFFFFFuLL;
  v31 = v30 & 0x7FFFFFFFFFFFFLL;
  v32 = v46;
  v33 = v47;
  v34 = (v26 & 0x7FFFFFFFFFFFFLL) + (v30 >> 51);
  v35 = v27 & 0x7FFFFFFFFFFFFLL;
  v36 = v28 & 0x7FFFFFFFFFFFFLL;
  v37 = v46 + v29;
  v38 = v47 + v31;
  result = v48;
  v40 = v49;
  v41 = v48 + v34;
  v42 = v49 + v35;
  v43 = v50;
  v44 = v50 + v36;
  a1[9] = v24;
  a1[10] = v37;
  a1[11] = v38;
  a1[12] = v41;
  a1[13] = v42;
  a1[14] = v44;
  a1[15] = v29 - v32 + 0xFFFFFFFFFFFDALL;
  a1[16] = v31 - v33 + 0xFFFFFFFFFFFFELL;
  a1[17] = v34 - result + 0xFFFFFFFFFFFFELL;
  a1[18] = v35 - v40 + 0xFFFFFFFFFFFFELL;
  a1[19] = v36 - v43 + 0xFFFFFFFFFFFFELL;
  return result;
}

uint64_t ge_madd(unint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v6 = *(a2 + 32) + *(a2 + 72);
  v7 = vaddq_s64(*(a2 + 16), *(a2 + 56));
  *a1 = vaddq_s64(*a2, *(a2 + 40));
  *(a1 + 1) = v7;
  a1[4] = v6;
  v8 = *(a2 + 72) - *(a2 + 32) + 0xFFFFFFFFFFFFELL;
  v45 = vdupq_n_s64(0xFFFFFFFFFFFFEuLL);
  v9 = vaddq_s64(vsubq_s64(*(a2 + 56), *(a2 + 16)), v45);
  *(a1 + 5) = vaddq_s64(vsubq_s64(*(a2 + 40), *a2), xmmword_273BA9E40);
  v10 = a1 + 5;
  *(a1 + 7) = v9;
  a1[9] = v8;
  fe_mul_impl(v51, a1, a3);
  fe_mul_impl(v54, v10, a3 + 5);
  fe_mul_impl(&v46, a3 + 10, (a2 + 120));
  v11 = *v51;
  v12 = v52;
  v13 = *v54;
  v14 = v55;
  v15 = vaddq_s64(vsubq_s64(v52, v55), v45);
  v16 = *(a2 + 80);
  v17 = *(a2 + 88);
  v18 = *(a2 + 96);
  v19 = *(a2 + 104);
  v20 = *(a2 + 112);
  v21 = v53;
  v22 = v56;
  v23 = v53 - v56 + 0xFFFFFFFFFFFFELL;
  *a1 = vaddq_s64(vsubq_s64(*v51, *v54), xmmword_273BA9E40);
  *(a1 + 1) = v15;
  a1[4] = v23;
  v24 = v22 + v21;
  *v10 = vaddq_s64(v13, v11);
  *(a1 + 7) = vaddq_s64(v14, v12);
  v25 = ((v16 >> 50) & 0x1FFF) + 2 * v17;
  v26 = (v25 >> 51) + 2 * v18;
  v27 = (v26 >> 51) + 2 * v19;
  v28 = (v27 >> 51) + 2 * v20;
  v29 = 2 * (v16 & 0x3FFFFFFFFFFFFLL) + 19 * (v28 >> 51);
  v30 = (v25 & 0x7FFFFFFFFFFFFLL) + (v29 >> 51);
  v29 &= 0x7FFFFFFFFFFFFuLL;
  v31 = v30 & 0x7FFFFFFFFFFFFLL;
  v32 = v46;
  v33 = v47;
  v34 = (v26 & 0x7FFFFFFFFFFFFLL) + (v30 >> 51);
  v35 = v27 & 0x7FFFFFFFFFFFFLL;
  v36 = v28 & 0x7FFFFFFFFFFFFLL;
  v37 = v46 + v29;
  v38 = v47 + v31;
  result = v48;
  v40 = v49;
  v41 = v48 + v34;
  v42 = v49 + v35;
  v43 = v50;
  v44 = v50 + v36;
  a1[9] = v24;
  a1[10] = v37;
  a1[11] = v38;
  a1[12] = v41;
  a1[13] = v42;
  a1[14] = v44;
  a1[15] = v29 - v32 + 0xFFFFFFFFFFFDALL;
  a1[16] = v31 - v33 + 0xFFFFFFFFFFFFELL;
  a1[17] = v34 - result + 0xFFFFFFFFFFFFELL;
  a1[18] = v35 - v40 + 0xFFFFFFFFFFFFELL;
  a1[19] = v36 - v43 + 0xFFFFFFFFFFFFELL;
  return result;
}

uint64_t *x25519_ge_scalarmult_base(uint64_t a1, unsigned __int8 *a2)
{
  v3 = 0;
  v4 = 0;
  v63 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v61[0] = v5 & 0xF;
  v61[1] = v5 >> 4;
  v6 = a2[1];
  v61[2] = v6 & 0xF;
  v61[3] = v6 >> 4;
  v7 = a2[2];
  v61[4] = v7 & 0xF;
  v61[5] = v7 >> 4;
  v8 = a2[3];
  v61[6] = v8 & 0xF;
  v61[7] = v8 >> 4;
  v9 = a2[4];
  v61[8] = v9 & 0xF;
  v61[9] = v9 >> 4;
  v10 = a2[5];
  v61[10] = v10 & 0xF;
  v61[11] = v10 >> 4;
  v11 = a2[6];
  v61[12] = v11 & 0xF;
  v61[13] = v11 >> 4;
  v12 = a2[7];
  v61[14] = v12 & 0xF;
  v61[15] = v12 >> 4;
  v13 = a2[8];
  v61[16] = v13 & 0xF;
  v61[17] = v13 >> 4;
  v14 = a2[9];
  v61[18] = v14 & 0xF;
  v61[19] = v14 >> 4;
  v15 = a2[10];
  v61[20] = v15 & 0xF;
  v61[21] = v15 >> 4;
  v16 = a2[11];
  v61[22] = v16 & 0xF;
  v61[23] = v16 >> 4;
  v17 = a2[12];
  v61[24] = v17 & 0xF;
  v61[25] = v17 >> 4;
  v18 = a2[13];
  v61[26] = v18 & 0xF;
  v61[27] = v18 >> 4;
  v19 = a2[14];
  v61[28] = v19 & 0xF;
  v61[29] = v19 >> 4;
  v20 = a2[15];
  v61[30] = v20 & 0xF;
  v61[31] = v20 >> 4;
  v21 = a2[16];
  v61[32] = v21 & 0xF;
  v61[33] = v21 >> 4;
  v22 = a2[17];
  v61[34] = v22 & 0xF;
  v61[35] = v22 >> 4;
  v23 = a2[18];
  v61[36] = v23 & 0xF;
  v61[37] = v23 >> 4;
  v24 = a2[19];
  v61[38] = v24 & 0xF;
  v61[39] = v24 >> 4;
  v25 = a2[20];
  v61[40] = v25 & 0xF;
  v61[41] = v25 >> 4;
  v26 = a2[21];
  v61[42] = v26 & 0xF;
  v61[43] = v26 >> 4;
  v27 = a2[22];
  v61[44] = v27 & 0xF;
  v61[45] = v27 >> 4;
  v28 = a2[23];
  v61[46] = v28 & 0xF;
  v61[47] = v28 >> 4;
  v29 = a2[24];
  v61[48] = v29 & 0xF;
  v61[49] = v29 >> 4;
  v30 = a2[25];
  v61[50] = v30 & 0xF;
  v61[51] = v30 >> 4;
  v31 = a2[26];
  v61[52] = v31 & 0xF;
  v61[53] = v31 >> 4;
  v32 = a2[27];
  v61[54] = v32 & 0xF;
  v61[55] = v32 >> 4;
  v33 = a2[28];
  v61[56] = v33 & 0xF;
  v61[57] = v33 >> 4;
  v34 = a2[29];
  v61[58] = v34 & 0xF;
  v61[59] = v34 >> 4;
  v35 = a2[30];
  v61[60] = v35 & 0xF;
  v61[61] = v35 >> 4;
  v36 = a2[31];
  v61[62] = v36 & 0xF;
  v62 = v36 >> 4;
  do
  {
    v37 = v61[v3] + v4;
    v4 = (v37 + 8) << 24 >> 28;
    v61[v3++] = v37 - ((v37 + 8) & 0xF0);
  }

  while (v3 != 63);
  v38 = 0;
  v62 += v4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v39 = 1;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  v40 = (a1 + 80);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  do
  {
    table_select(v50, v38, v61[v39]);
    ge_madd(v51, a1, v50);
    fe_mul_impl(a1, v51, v54);
    fe_mul_impl((a1 + 40), v52, v53);
    fe_mul_impl((a1 + 80), v53, v54);
    fe_mul_impl((a1 + 120), v51, v52);
    ++v38;
    v41 = v39 >= 0x3E;
    v39 += 2;
  }

  while (!v41);
  v42 = *(a1 + 16);
  v55[0] = *a1;
  v55[1] = v42;
  v43 = *(a1 + 32);
  v44 = *(a1 + 56);
  v57[0] = *(a1 + 40);
  v57[1] = v44;
  v45 = *(a1 + 72);
  v56 = v43;
  v58 = v45;
  v46 = *(a1 + 96);
  v59[0] = *v40;
  v59[1] = v46;
  v60 = *(a1 + 112);
  ge_p2_dbl(v51, v55);
  fe_mul_impl(v55, v51, v54);
  fe_mul_impl(v57, v52, v53);
  fe_mul_impl(v59, v53, v54);
  ge_p2_dbl(v51, v55);
  fe_mul_impl(v55, v51, v54);
  fe_mul_impl(v57, v52, v53);
  fe_mul_impl(v59, v53, v54);
  ge_p2_dbl(v51, v55);
  fe_mul_impl(v55, v51, v54);
  fe_mul_impl(v57, v52, v53);
  fe_mul_impl(v59, v53, v54);
  ge_p2_dbl(v51, v55);
  fe_mul_impl(a1, v51, v54);
  fe_mul_impl((a1 + 40), v52, v53);
  fe_mul_impl((a1 + 80), v53, v54);
  fe_mul_impl((a1 + 120), v51, v52);
  v47 = 0;
  v48 = 0;
  do
  {
    table_select(v50, v47, v61[v48]);
    ge_madd(v51, a1, v50);
    fe_mul_impl(a1, v51, v54);
    fe_mul_impl((a1 + 40), v52, v53);
    fe_mul_impl((a1 + 80), v53, v54);
    result = fe_mul_impl((a1 + 120), v51, v52);
    ++v47;
    v41 = v48 >= 0x3E;
    v48 += 2;
  }

  while (!v41);
  return result;
}

unint64_t *table_select(unint64_t *result, int a2, int a3)
{
  memset(&v78[17], 0, 48);
  *&v78[80] = 0u;
  v3 = a3 >> 63;
  *&v78[65] = 0u;
  *&v78[1] = 0u;
  v78[0] = ((a3 - 1) & ~a3) < 0;
  v78[32] = v78[0];
  v4 = (a3 - 2 * ((a3 >> 31) & a3));
  v5 = vdupq_n_s8(((v4 ^ 1u) - 1) >> 63);
  v6 = (&k25519Precomp + 768 * a2);
  v7 = veorq_s8(vandq_s8(v6[1], v5), *&v78[16]);
  v8 = veorq_s8(vandq_s8(v6[2], v5), *&v78[32]);
  v9 = veorq_s8(vandq_s8(v6[3], v5), *&v78[48]);
  v10 = vdupq_n_s8(((v4 ^ 2u) - 1) >> 63);
  v11 = veorq_s8(vandq_s8(v6[6], v10), veorq_s8(vandq_s8(*v6, v5), *v78));
  v12 = veorq_s8(vandq_s8(v6[10], v10), veorq_s8(vandq_s8(v6[4], v5), *&v78[64]));
  v13 = veorq_s8(vandq_s8(v6[11], v10), veorq_s8(vandq_s8(v6[5], v5), *&v78[80]));
  v14 = vdupq_n_s8(((v4 ^ 3u) - 1) >> 63);
  v15 = veorq_s8(vandq_s8(v6[12], v14), v11);
  v16 = veorq_s8(vandq_s8(v6[13], v14), veorq_s8(vandq_s8(v6[7], v10), v7));
  v17 = veorq_s8(vandq_s8(v6[14], v14), veorq_s8(vandq_s8(v6[8], v10), v8));
  v18 = veorq_s8(vandq_s8(v6[15], v14), veorq_s8(vandq_s8(v6[9], v10), v9));
  v19 = vdupq_n_s8(((v4 ^ 4u) - 1) >> 63);
  v71 = vandq_s8(v6[17], v14);
  v72 = vandq_s8(v6[16], v14);
  v20 = vandq_s8(v6[18], v19);
  v21 = vandq_s8(v6[19], v19);
  v22 = vandq_s8(v6[20], v19);
  v23 = vandq_s8(v6[21], v19);
  v24 = vandq_s8(v6[22], v19);
  v25 = vandq_s8(v6[23], v19);
  v26 = vdupq_n_s8(((v4 ^ 5u) - 1) >> 63);
  v27 = vandq_s8(v6[24], v26);
  v28 = vandq_s8(v6[25], v26);
  v29 = vandq_s8(v6[26], v26);
  v30 = vandq_s8(v6[27], v26);
  v76 = vandq_s8(v6[29], v26);
  v77 = vandq_s8(v6[28], v26);
  v31 = vdupq_n_s8(((v4 ^ 6u) - 1) >> 63);
  v74 = vandq_s8(v6[35], v31);
  v75 = vandq_s8(v6[34], v31);
  v32 = vdupq_n_s8(((v4 ^ 7u) - 1) >> 63);
  v33 = vandq_s8(v6[36], v32);
  v34 = vandq_s8(v6[37], v32);
  v35 = vandq_s8(v6[38], v32);
  v36 = vandq_s8(v6[39], v32);
  v73 = vandq_s8(v6[40], v32);
  v37 = vandq_s8(v6[41], v32);
  v38 = vdupq_n_s8(((v4 ^ 8u) - 1) >> 63);
  v39 = vandq_s8(v6[42], v38);
  v40 = vandq_s8(v6[43], v38);
  v41 = vandq_s8(v6[44], v38);
  v42 = vandq_s8(v6[45], v38);
  v43 = vandq_s8(v6[46], v38);
  v44 = vandq_s8(v6[47], v38);
  *v78 = veorq_s8(v39, veorq_s8(v33, veorq_s8(vandq_s8(v6[30], v31), veorq_s8(v27, veorq_s8(v20, v15)))));
  *&v78[16] = veorq_s8(v40, veorq_s8(v34, veorq_s8(vandq_s8(v6[31], v31), veorq_s8(v28, veorq_s8(v21, v16)))));
  *&v78[32] = veorq_s8(v41, veorq_s8(v35, veorq_s8(vandq_s8(v6[32], v31), veorq_s8(v29, veorq_s8(v22, v17)))));
  *&v78[48] = veorq_s8(v42, veorq_s8(v36, veorq_s8(vandq_s8(v6[33], v31), veorq_s8(v30, veorq_s8(v23, v18)))));
  v45 = (v78[5] << 40) & 0xFFF8FFFFFFFFFFFFLL | ((v78[6] & 7) << 48) | *v78 | (v78[4] << 32);
  v46 = ((v78[12] & 0x3F) << 45) | (v78[11] << 37) | (v78[10] << 29) | (v78[9] << 21) | (v78[8] << 13) | (32 * v78[7]) | (v78[6] >> 3);
  v47 = ((*&v78[16] & 0x1FFFFFF) << 26) | (v78[15] << 18) | (v78[14] << 10) | (4 * v78[13]) | (v78[12] >> 6);
  v48 = (*&v78[16] >> 48);
  v49 = ((v48 & 0xFFFFFFF) << 23) | (v78[21] << 15) | (v78[20] << 7) | (*&v78[16] >> 25);
  v50 = (*&v78[28] << 20) | (v78[27] << 12) | (16 * v78[26]) | (v48 >> 28);
  v51 = (v78[37] << 40) & 0xFFF8FFFFFFFFFFFFLL | ((v78[38] & 7) << 48) | *&v78[32] | (v78[36] << 32);
  v52 = ((v78[44] & 0x3F) << 45) | (v78[43] << 37) | (v78[42] << 29) | (v78[41] << 21) | (v78[40] << 13) | (32 * v78[39]) | (v78[38] >> 3);
  v53 = ((*&v78[48] & 0x1FFFFFF) << 26) | (v78[47] << 18) | (v78[46] << 10) | (4 * v78[45]) | (v78[44] >> 6);
  v54 = ((*&v78[54] & 0xFFFFFFF) << 23) | (v78[53] << 15) | (v78[52] << 7) | (*&v78[48] >> 25);
  v55 = (*&v78[60] << 20) | (v78[59] << 12) | (16 * v78[58]) | (*&v78[54] >> 28);
  *&v78[64] = veorq_s8(v43, veorq_s8(v73, veorq_s8(v75, veorq_s8(v77, veorq_s8(v24, veorq_s8(v72, v12))))));
  v56 = (v78[69] << 40) & 0xFFF8FFFFFFFFFFFFLL | ((v78[70] & 7) << 48) | *&v78[64] | (v78[68] << 32);
  v57 = ((v78[76] & 0x3F) << 45) | (v78[75] << 37) | (v78[74] << 29) | (v78[73] << 21) | (v78[72] << 13) | (32 * v78[71]) | (v78[70] >> 3);
  *&v78[80] = veorq_s8(v44, veorq_s8(v37, veorq_s8(v74, veorq_s8(v76, veorq_s8(v25, veorq_s8(v71, v13))))));
  v58 = ((*&v78[80] & 0x1FFFFFF) << 26) | (v78[79] << 18) | (v78[78] << 10) | (4 * v78[77]) | (v78[76] >> 6);
  v59 = (*&v78[80] >> 48);
  v60 = ((v59 & 0xFFFFFFF) << 23) | (v78[85] << 15) | (v78[84] << 7) | (*&v78[80] >> 25);
  v61 = (*&v78[92] << 20) | (v78[91] << 12) | (16 * v78[90]) | (v59 >> 28);
  v62 = (v51 ^ v45) & v3;
  v63 = v62 ^ v45;
  v64 = v62 ^ v51;
  v65 = (v52 ^ v46) & v3;
  v66 = v65 ^ v46;
  v67 = v65 ^ v52;
  v68 = (v53 ^ v47) & v3;
  *result = v63;
  result[1] = v66;
  v69 = (v54 ^ v49) & v3;
  result[2] = v68 ^ v47;
  result[3] = v69 ^ v49;
  v70 = (v55 ^ v50) & v3;
  result[4] = v70 ^ v50;
  result[5] = v64;
  result[6] = v67;
  result[7] = v68 ^ v53;
  result[8] = v69 ^ v54;
  result[9] = v70 ^ v55;
  result[10] = (0xFFFFFFFFFFFDALL - v56) & v3 | v56 & ~v3;
  result[11] = (0xFFFFFFFFFFFFELL - v57) & v3 | v57 & ~v3;
  result[12] = (0xFFFFFFFFFFFFELL - v58) & v3 | v58 & ~v3;
  result[13] = (0xFFFFFFFFFFFFELL - v60) & v3 | v60 & ~v3;
  result[14] = (0xFFFFFFFFFFFFELL - v61) & v3 | v61 & ~v3;
  return result;
}

void *ge_p2_dbl(void *result, unint64_t *a2)
{
  v2 = a2[4];
  v3 = a2[5];
  v5 = a2[2];
  v4 = a2[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 * (38 * v2) + v5 * (38 * v4) + v7 * v7;
  v9 = v6 * (2 * v4) + v5 * v5 + *a2 * (2 * v2);
  v10 = v8 >> 51;
  v11 = (v6 * (2 * v5) + 19 * v2 * v2 + *a2 * (2 * v4)) >> 64;
  v12 = v6 * 2 * v5 + 19 * v2 * v2 + *a2 * 2 * v4;
  v13 = v6 * v6 + v4 * (38 * v2) + *a2 * (2 * v5);
  v14 = v5 * (38 * v2) + 19 * v4 * v4 + *a2 * (2 * v6);
  v15 = v14 + v10;
  v155 = v14 + v10;
  if (__CFADD__(v14, v10))
  {
    v16 = *(&v14 + 1) + 1;
  }

  else
  {
    v16 = (v5 * (38 * v2) + 19 * v4 * v4 + *a2 * (2 * v6)) >> 64;
  }

  *(&v18 + 1) = v16;
  *&v18 = v15;
  v17 = v18 >> 51;
  v19 = v13 + v17;
  v153 = v13 + v17;
  if (__CFADD__(v13, v17))
  {
    v20 = *(&v13 + 1) + 1;
  }

  else
  {
    v20 = (v6 * v6 + v4 * (38 * v2) + *a2 * (2 * v5)) >> 64;
  }

  *(&v22 + 1) = v20;
  *&v22 = v19;
  v21 = v22 >> 51;
  v23 = __CFADD__(v12, v21);
  v24 = v12 + v21;
  v158 = v24;
  if (v23)
  {
    ++v11;
  }

  *(&v26 + 1) = v11;
  *&v26 = v24;
  v25 = v26 >> 51;
  v151 = v9 + v25;
  if (__CFADD__(v9, v25))
  {
    v27 = *(&v9 + 1) + 1;
  }

  else
  {
    v27 = (v6 * (2 * v4) + v5 * v5 + *a2 * (2 * v2)) >> 64;
  }

  v149 = v27;
  v29 = a2[8];
  v28 = a2[9];
  v31 = a2[6];
  v30 = a2[7];
  v32 = v31 * (38 * v28) + v30 * (38 * v29);
  v145 = v32 + v3 * v3;
  v33 = v31 * (2 * v29) + v30 * v30 + v3 * (2 * v28);
  v34 = v31 * (2 * v30) + 19 * v28 * v28 + v3 * (2 * v29);
  v35 = v31 * v31 + v29 * (38 * v28) + v3 * (2 * v30);
  v36 = (v32 + v3 * v3) >> 51;
  v37 = (v30 * (38 * v28) + 19 * v29 * v29 + v3 * (2 * v31)) >> 64;
  v38 = v30 * 38 * v28 + 19 * v29 * v29 + v3 * 2 * v31;
  v39 = v38 + v36;
  if (__CFADD__(v38, v36))
  {
    ++v37;
  }

  *(&v41 + 1) = v37;
  *&v41 = v38 + v36;
  v40 = v41 >> 51;
  v42 = v35 + v40;
  v147 = v35 + v40;
  if (__CFADD__(v35, v40))
  {
    v43 = *(&v35 + 1) + 1;
  }

  else
  {
    v43 = (v31 * v31 + v29 * (38 * v28) + v3 * (2 * v30)) >> 64;
  }

  *(&v45 + 1) = v43;
  *&v45 = v42;
  v44 = v45 >> 51;
  v46 = v34 + v44;
  v152 = v34 + v44;
  if (__CFADD__(v34, v44))
  {
    v47 = *(&v34 + 1) + 1;
  }

  else
  {
    v47 = (v31 * (2 * v30) + 19 * v28 * v28 + v3 * (2 * v29)) >> 64;
  }

  *(&v49 + 1) = v47;
  *&v49 = v46;
  v48 = v49 >> 51;
  v144 = v33 + v48;
  if (__CFADD__(v33, v48))
  {
    v50 = *(&v33 + 1) + 1;
  }

  else
  {
    v50 = (v31 * (2 * v29) + v30 * v30 + v3 * (2 * v28)) >> 64;
  }

  v51 = a2[13];
  v52 = a2[14];
  v54 = a2[11];
  v53 = a2[12];
  v55 = a2[10];
  v142 = v54 * 38 * v52 + v53 * 38 * v51 + v55 * v55;
  v143 = v50;
  v56 = v54 * (38 * v52) + v53 * (38 * v51) + v55 * v55;
  v57 = v54 * (2 * v51) + v53 * v53 + v55 * (2 * v52);
  v58 = v54 * (2 * v53) + 19 * v52 * v52 + v55 * (2 * v51);
  v59 = v54 * v54 + v51 * (38 * v52) + v55 * (2 * v53);
  v61 = v53 * (38 * v52) + 19 * v51 * v51 + v55 * (2 * v54);
  v60 = *(&v61 + 1);
  v62 = v56 >> 51;
  v63 = v61 + v62;
  if (__CFADD__(v61, v62))
  {
    v60 = *(&v61 + 1) + 1;
  }

  *(&v65 + 1) = v60;
  *&v65 = v61 + v62;
  v64 = v65 >> 51;
  v66 = v59 + v64;
  if (__CFADD__(v59, v64))
  {
    v67 = *(&v59 + 1) + 1;
  }

  else
  {
    v67 = *(&v59 + 1);
  }

  *(&v69 + 1) = v67;
  *&v69 = v66;
  v68 = v69 >> 51;
  v141 = v58 + v68;
  if (__CFADD__(v58, v68))
  {
    v70 = *(&v58 + 1) + 1;
  }

  else
  {
    v70 = *(&v58 + 1);
  }

  *(&v72 + 1) = v70;
  *&v72 = v58 + v68;
  v71 = v72 >> 51;
  v73 = v57 + v71;
  if (__CFADD__(v57, v71))
  {
    v74 = *(&v57 + 1) + 1;
  }

  else
  {
    v74 = *(&v57 + 1);
  }

  v75 = v3 + v7;
  v76 = v31 + v6;
  v77 = v30 + v5;
  v78 = v29 + v4;
  v79 = 38 * (v28 + v2);
  v140 = v76 * v79 + v77 * 38 * v78 + v75 * v75;
  v80 = v76 * (2 * v78) + v77 * v77 + v75 * (2 * (v28 + v2));
  v81 = v76 * (2 * v77) + 19 * (v28 + v2) * (v28 + v2) + v75 * (2 * v78);
  v82 = v76 * v76 + v78 * v79 + v75 * (2 * v77);
  *(&v84 + 1) = v149;
  *&v84 = v151;
  v83 = v84 >> 51;
  *(&v84 + 1) = v143;
  *&v84 = v144;
  v85 = (v8 & 0x7FFFFFFFFFFFFLL) + 19 * v83;
  v86 = (v145 & 0x7FFFFFFFFFFFFLL) + 19 * (v84 >> 51);
  v87 = (v155 & 0x7FFFFFFFFFFFFLL) + (v85 >> 51);
  v88 = (v153 & 0x7FFFFFFFFFFFFLL) + (v87 >> 51);
  v89 = (v39 & 0x7FFFFFFFFFFFFLL) + (v86 >> 51);
  v90 = (v147 & 0x7FFFFFFFFFFFFLL) + (v89 >> 51);
  v91 = v73;
  *(&v84 + 1) = v74;
  *&v84 = v73;
  v92 = v84 >> 51;
  v93 = (v76 * v79 + v77 * (38 * v78) + v75 * v75) >> 51;
  v95 = v77 * v79 + 19 * v78 * v78 + v75 * (2 * v76);
  v94 = *(&v95 + 1);
  v96 = v95 + v93;
  if (__CFADD__(v95, v93))
  {
    v94 = *(&v95 + 1) + 1;
  }

  *(&v98 + 1) = v94;
  *&v98 = v95 + v93;
  v97 = v98 >> 51;
  v99 = (v142 & 0x7FFFFFFFFFFFFLL) + 19 * v92;
  v154 = (v63 & 0x7FFFFFFFFFFFFLL) + (v99 >> 51);
  v148 = v82 + v97;
  if (__CFADD__(v82, v97))
  {
    v100 = *(&v82 + 1) + 1;
  }

  else
  {
    v100 = *(&v82 + 1);
  }

  *(&v102 + 1) = v100;
  *&v102 = v82 + v97;
  v101 = v102 >> 51;
  v103 = (v66 & 0x7FFFFFFFFFFFFLL) + (((v63 & 0x7FFFFFFFFFFFFLL) + (v99 >> 51)) >> 51);
  v104 = v81 + v101;
  v150 = v81 + v101;
  if (__CFADD__(v81, v101))
  {
    v105 = *(&v81 + 1) + 1;
  }

  else
  {
    v105 = *(&v81 + 1);
  }

  *(&v107 + 1) = v105;
  *&v107 = v104;
  v106 = v107 >> 51;
  v108 = 2 * (v141 & 0x7FFFFFFFFFFFFLL);
  v156 = v108 + (v103 >> 50);
  v157 = (v66 & 0x7FFFFFFFFFFFFLL) + (((v63 & 0x7FFFFFFFFFFFFLL) + (v99 >> 51)) >> 51);
  v109 = v80 + v106;
  if (__CFADD__(v80, v106))
  {
    v110 = *(&v80 + 1) + 1;
  }

  else
  {
    v110 = *(&v80 + 1);
  }

  *(&v111 + 1) = v110;
  *&v111 = v109;
  v146 = 2 * (v91 & 0x7FFFFFFFFFFFFLL) + ((v108 + (v103 >> 50)) >> 51);
  v112 = v85 & 0x7FFFFFFFFFFFFLL;
  v113 = v89 & 0x7FFFFFFFFFFFFLL;
  v114 = (v86 & 0x7FFFFFFFFFFFFLL) + (v85 & 0x7FFFFFFFFFFFFLL);
  v115 = (v89 & 0x7FFFFFFFFFFFFLL) + (v87 & 0x7FFFFFFFFFFFFLL);
  v116 = v115 + (v114 >> 51);
  v117 = v90 + v88;
  v118 = (v152 & 0x7FFFFFFFFFFFFLL) + (v158 & 0x7FFFFFFFFFFFFLL);
  v119 = (v144 & 0x7FFFFFFFFFFFFLL) + (v151 & 0x7FFFFFFFFFFFFLL);
  v120 = (v86 & 0x7FFFFFFFFFFFFLL) - v112 + 0xFFFFFFFFFFFDALL;
  v121 = v113 - (v87 & 0x7FFFFFFFFFFFFLL) + 0xFFFFFFFFFFFFELL;
  v122 = v90 - v88 + 0xFFFFFFFFFFFFELL;
  v123 = (v152 & 0x7FFFFFFFFFFFFLL) - (v158 & 0x7FFFFFFFFFFFFLL) + 0xFFFFFFFFFFFFELL;
  v124 = (v144 & 0x7FFFFFFFFFFFFLL) - (v151 & 0x7FFFFFFFFFFFFLL) + 0xFFFFFFFFFFFFELL;
  v125 = v117 + (v116 >> 51);
  v126 = v118 + (v125 >> 51);
  v127 = v119 + (v126 >> 51);
  v128 = 2 * (v99 & 0x3FFFFFFFFFFFFLL) + 19 * (v146 >> 51);
  v129 = (v140 & 0x7FFFFFFFFFFFFLL) + 19 * (v111 >> 51);
  v130 = (v114 & 0x7FFFFFFFFFFFFLL) + 19 * (v127 >> 51);
  v131 = v121 + (v120 >> 51);
  v132 = v122 + (v131 >> 51);
  v133 = v123 + (v132 >> 51);
  v134 = v124 + (v133 >> 51);
  v135 = (v120 & 0x7FFFFFFFFFFFFLL) + 19 * (v134 >> 51);
  v136 = (v96 & 0x7FFFFFFFFFFFFLL) + (v129 >> 51);
  v137 = (v116 & 0x7FFFFFFFFFFFFLL) + (v130 >> 51);
  result[6] = v115;
  result[7] = v117;
  result[8] = v118;
  result[9] = v119;
  result[10] = v120;
  result[11] = v121;
  result[12] = v122;
  result[13] = v123;
  *result = (v129 & 0x7FFFFFFFFFFFFLL) + 0xFFFFFFFFFFFDALL - (v130 & 0x7FFFFFFFFFFFFLL);
  result[1] = (v136 & 0x7FFFFFFFFFFFFLL) - (v137 & 0x7FFFFFFFFFFFFLL) + 0xFFFFFFFFFFFFELL;
  result[2] = (v148 & 0x7FFFFFFFFFFFFLL) + (v136 >> 51) - ((v125 & 0x7FFFFFFFFFFFFLL) + (v137 >> 51)) + 0xFFFFFFFFFFFFELL;
  result[3] = (v150 & 0x7FFFFFFFFFFFFLL) - (v126 & 0x7FFFFFFFFFFFFLL) + 0xFFFFFFFFFFFFELL;
  result[4] = (v109 & 0x7FFFFFFFFFFFFLL) - (v127 & 0x7FFFFFFFFFFFFLL) + 0xFFFFFFFFFFFFELL;
  result[5] = v114;
  v138 = ((v99 >> 50) & 1 | (2 * (v154 & 0x3FFFFFFFFFFFFLL))) + (v128 >> 51);
  v139 = (v131 & 0x7FFFFFFFFFFFFLL) + (v135 >> 51);
  result[14] = v124;
  result[15] = (v128 & 0x7FFFFFFFFFFFFLL) - (v135 & 0x7FFFFFFFFFFFFLL) + 0xFFFFFFFFFFFDALL;
  result[16] = (v138 & 0x7FFFFFFFFFFFFLL) - (v139 & 0x7FFFFFFFFFFFFLL) + 0xFFFFFFFFFFFFELL;
  result[17] = ((v154 >> 50) & 1) - (v132 & 0x7FFFFFFFFFFFFLL) + 2 * (v157 & 0x3FFFFFFFFFFFFLL) - (v139 >> 51) + (v138 >> 51) + 0xFFFFFFFFFFFFELL;
  result[18] = (v156 & 0x7FFFFFFFFFFFFLL) - (v133 & 0x7FFFFFFFFFFFFLL) + 0xFFFFFFFFFFFFELL;
  result[19] = (v146 & 0x7FFFFFFFFFFFFLL) - (v134 & 0x7FFFFFFFFFFFFLL) + 0xFFFFFFFFFFFFELL;
  return result;
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
  v27 = v21 + 470296 * v23;
  v28 = v22 - 997805 * v23;
  v29 = v27 + 654183 * v7 + ((v26 + 0x100000) >> 21);
  v30 = v28 + 136657 * v7 + ((v25 + 0x100000) >> 21);
  v31 = v18 - 683901 * v23 + ((v24 + 0x100000) >> 21);
  v32 = ((*(result + 11) >> 5) & 0x1FFFFF) + ((v19 + 0x100000) >> 21);
  v33 = v25 - ((v25 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v29 + 0x100000) >> 21);
  v34 = v29 - ((v29 + 0x100000) & 0xFFFFFFFFFFE00000);
  v35 = v24 - ((v24 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v30 + 0x100000) >> 21);
  v36 = v30 - ((v30 + 0x100000) & 0xFFFFFFFFFFE00000);
  v37 = v19 - ((v19 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v31 + 0x100000) >> 21);
  v38 = v31 - ((v31 + 0x100000) & 0xFFFFFFFFFFE00000);
  v39 = v26 - ((v26 + 0x100000) & 0xFFFFFFFFFFE00000);
  v40 = (*result | ((result[1] & 0x1F) << 16)) + 666643 * v33;
  v41 = ((*(result + 1) >> 5) & 0x1FFFFF) + 470296 * v33 + 666643 * v36 + ((v40 + 0x100000) >> 21);
  v42 = (((HIBYTE(*(result + 1)) | (*(result + 6) << 8) | (*(result + 7) << 16)) >> 2) & 0x1FFFFF) + 654183 * v33;
  v43 = (((HIBYTE(*(result + 5)) | (*(result + 14) << 8) | (*(result + 15) << 16)) >> 1) & 0x1FFFFF) + 666643 * v32 - 683901 * v33;
  v44 = v9 - ((v9 + 0x100000) & 0xFFFFFE00000) + ((v10 + 0x100000) >> 21) - 997805 * v32 + 136657 * v37 - 683901 * v38;
  v45 = ((*(result + 5) >> 4) & 0x1FFFFF) + 136657 * v33 + 666643 * v37 + 470296 * v38;
  v46 = ((*(result + 7) >> 7) & 0x1FFFFF) - 997805 * v33 + 666643 * v38;
  v47 = v43 + 470296 * v37 + 654183 * v38;
  v48 = v10 - ((v10 + 0x100000) & 0x7FFFFFFFFFE00000) + 654183 * v32 - 997805 * v37 + 136657 * v38 - 683901 * v35;
  v49 = v39 - 683901 * v32 + ((v11 + 0x100000) >> 21);
  v50 = v8 - ((v8 + 0x100000) & 0x7FFFFE00000) + 470296 * v32 + 654183 * v37 - 997805 * v38 + 136657 * v35 - 683901 * v36;
  v51 = v42 + 666643 * v35 + 470296 * v36;
  v52 = v45 + 654183 * v35 - 997805 * v36;
  v53 = v46 + 470296 * v35 + 654183 * v36;
  v54 = v47 - 997805 * v35 + 136657 * v36;
  v55 = v48 + ((v50 + 0x100000) >> 21);
  v56 = v50 - ((v50 + 0x100000) & 0xFFFFFFFFFFE00000);
  v57 = v11 + 136657 * v32 - ((v11 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v37 + ((v44 + 0x100000) >> 21);
  v58 = v34 + ((v49 + 0x100000) >> 21);
  v59 = v44 - ((v44 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v55 + 0x100000) >> 21);
  v60 = v55 - ((v55 + 0x100000) & 0xFFFFFFFFFFE00000);
  v61 = v49 - ((v49 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v57 + 0x100000) >> 21);
  v62 = v57 - ((v57 + 0x100000) & 0xFFFFFFFFFFE00000);
  v63 = (v58 + 0x100000) >> 21;
  v64 = v53 + ((v51 + 0x100000) >> 21);
  v65 = v64 - 997805 * v63 - ((v64 + 0x100000) & 0xFFFFFFFFFFE00000);
  v66 = v54 + ((v52 + 0x100000) >> 21);
  v67 = v52 + 136657 * v63 - ((v52 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v64 + 0x100000) >> 21);
  v68 = v40 - ((v40 + 0x100000) & 0xFFFFFFFFFFE00000) + 666643 * v63;
  v69 = v56 + ((v66 + 0x100000) >> 21);
  v70 = v66 - 683901 * v63 - ((v66 + 0x100000) & 0xFFFFFFFFFFE00000);
  v71 = v41 + 470296 * v63 - ((v41 + 0x100000) & 0xFFFFFFFFFFE00000) + (v68 >> 21);
  v72 = v51 + 654183 * v63 - ((v51 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v41 + 0x100000) >> 21) + (v71 >> 21);
  v73 = v65 + (v72 >> 21);
  v74 = v67 + (v73 >> 21);
  v75 = v70 + (v74 >> 21);
  v76 = v69 + (v75 >> 21);
  v77 = v60 + (v76 >> 21);
  v78 = v59 + (v77 >> 21);
  v79 = v62 + (v78 >> 21);
  v80 = v61 + (v79 >> 21);
  v81 = v58 - ((v58 + 0x100000) & 0xFFFFFFFFFFE00000) + (v80 >> 21);
  v82 = (v68 & 0x1FFFFF) + 666643 * (v81 >> 21);
  *(result + 1) = (v68 + 11283 * (v81 >> 21)) >> 8;
  v83 = (v71 & 0x1FFFFF) + 470296 * (v81 >> 21) + (v82 >> 21);
  *result = v68 + 19 * (v81 >> 21);
  *(result + 2) = (((v68 & 0x1FFFFF) + 666643 * (v81 >> 21)) >> 16) & 0x1F | (32 * (v71 + 24 * (v81 >> 21) + (v82 >> 21)));
  *(result + 3) = v83 >> 3;
  *(result + 4) = v83 >> 11;
  v84 = (v72 & 0x1FFFFF) + 654183 * (v81 >> 21) + (v83 >> 21);
  *(result + 5) = (v83 >> 19) & 3 | (4 * (v72 + 103 * (v81 >> 21) + (v83 >> 21)));
  *(result + 6) = v84 >> 6;
  v85 = (v73 & 0x1FFFFF) - 997805 * (v81 >> 21) + (v84 >> 21);
  *(result + 7) = (v84 >> 14) & 0x7F | ((v73 - -83 * (v81 >> 21) + (v84 >> 21)) << 7);
  *(result + 8) = v85 >> 1;
  *(result + 9) = v85 >> 9;
  v86 = (v74 & 0x1FFFFF) + 136657 * (v81 >> 21) + (v85 >> 21);
  *(result + 10) = (v85 >> 17) & 0xF | (16 * (v74 - 47 * (v81 >> 21) + (v85 >> 21)));
  *(result + 11) = v86 >> 4;
  *(result + 12) = v86 >> 12;
  v87 = (v75 & 0x1FFFFF) - 683901 * (v81 >> 21) + (v86 >> 21);
  *(result + 13) = ((v86 & 0x100000) != 0) | (2 * (v75 - 125 * (v81 >> 21) + (v86 >> 21)));
  *(result + 14) = v87 >> 7;
  v88 = (v76 & 0x1FFFFF) + (v87 >> 21);
  *(result + 15) = (v87 >> 15) & 0x3F | ((v76 + (v87 >> 21)) << 6);
  *(result + 16) = v88 >> 2;
  *(result + 17) = v88 >> 10;
  v89 = (v77 & 0x1FFFFF) + (v88 >> 21);
  *(result + 18) = (v88 >> 18) & 7 | (8 * (v77 + (v88 >> 21)));
  *(result + 19) = v89 >> 5;
  v90 = (v78 & 0x1FFFFF) + (v89 >> 21);
  *(result + 20) = v89 >> 13;
  *(result + 22) = (v78 + (v89 >> 21)) >> 8;
  v91 = (v79 & 0x1FFFFF) + (v90 >> 21);
  *(result + 21) = v90;
  *(result + 23) = BYTE2(v90) & 0x1F | (32 * (v79 + (v90 >> 21)));
  *(result + 24) = v91 >> 3;
  *(result + 25) = v91 >> 11;
  v92 = (v80 & 0x1FFFFF) + (v91 >> 21);
  *(result + 26) = (v91 >> 19) & 3 | (4 * (v80 + (v91 >> 21)));
  *(result + 27) = v92 >> 6;
  v93 = (v92 >> 21) + (v81 & 0x1FFFFF);
  *(result + 28) = (v92 >> 14) & 0x7F | (((v92 >> 21) + v58 + (v80 >> 21)) << 7);
  *(result + 29) = ((v92 >> 21) + v81) >> 1;
  *(result + 30) = v93 >> 9;
  *(result + 31) = v93 >> 17;
  return result;
}

__n128 ED25519_keypair(__n128 *a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  BCM_rand_bytes_with_additional_data(&v11, 0x20uLL, BCM_rand_bytes::kZeroAdditionalData);
  *v18 = xmmword_273BA6F40;
  v19 = xmmword_273BA6F50;
  v20 = xmmword_273BA6F60;
  v21 = xmmword_273BA6F70;
  v22 = xmmword_273B8FB20;
  v23 = v11;
  v24 = v12;
  v31 = 0x4000000020;
  v25[0] = 0x80;
  *&v25[1] = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v30 = 0x1000000000000;
  sha512_block_data_order(v18, &v23, 1);
  v13 = vrev64q_s8(*v18);
  v14 = vrev64q_s8(v19);
  v15 = vrev64q_s8(v20);
  v16 = vrev64q_s8(v21);
  v13.i8[0] &= 0xF8u;
  v14.i8[15] = v14.i8[15] & 0x3F | 0x40;
  x25519_ge_scalarmult_base(v18, &v13);
  *v8 = v23;
  v9 = v24;
  v10 = *v25;
  fe_loose_invert(v7, v8);
  fe_mul_impl(v8, v18, v7);
  fe_mul_impl(v6, &v20.u64[1], v7);
  fe_tobytes(a1, v6);
  fe_tobytes(v17, v8);
  a1[1].n128_u8[15] ^= v17[0] << 7;
  v4 = v12;
  *a2 = v11;
  *(a2 + 16) = v4;
  result = a1[1];
  *(a2 + 32) = *a1;
  *(a2 + 48) = result;
  return result;
}

__n128 ED25519_keypair_from_seed(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  *v21 = xmmword_273BA6F40;
  v22 = xmmword_273BA6F50;
  v23 = xmmword_273BA6F60;
  v24 = xmmword_273BA6F70;
  v6 = *a3;
  v7 = a3[1];
  v25 = xmmword_273B8FB20;
  v26 = v6;
  v27 = v7;
  v34 = 0x4000000020;
  v28[0] = 0x80;
  *&v28[1] = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v33 = 0x1000000000000;
  sha512_block_data_order(v21, &v26, 1);
  v16 = vrev64q_s8(*v21);
  v17 = vrev64q_s8(v22);
  v18 = vrev64q_s8(v23);
  v19 = vrev64q_s8(v24);
  v16.i8[0] &= 0xF8u;
  v17.i8[15] = v17.i8[15] & 0x3F | 0x40;
  x25519_ge_scalarmult_base(v21, &v16);
  *v13 = v26;
  v14 = v27;
  v15 = *v28;
  fe_loose_invert(v12, v13);
  fe_mul_impl(v13, v21, v12);
  fe_mul_impl(v11, &v23.u64[1], v12);
  fe_tobytes(a1, v11);
  fe_tobytes(v20, v13);
  *(a1 + 31) ^= v20[0] << 7;
  v8 = a3[1];
  *a2 = *a3;
  a2[1] = v8;
  result = *a1;
  v10 = *(a1 + 16);
  a2[2] = *a1;
  a2[3] = v10;
  return result;
}

uint64_t ED25519_sign(int8x16_t *a1, const unsigned __int8 *a2, size_t a3, int8x16_t *a4)
{
  v237 = *MEMORY[0x277D85DE8];
  *v228 = xmmword_273BA6F40;
  v229 = xmmword_273BA6F50;
  v8 = *a4;
  v9 = a4[1];
  v232 = xmmword_273B8FB20;
  v233 = v8;
  v230 = xmmword_273BA6F60;
  v231 = xmmword_273BA6F70;
  v234 = v9;
  v236 = 0x4000000020;
  v235[0] = 0x80;
  memset(&v235[1], 0, 87);
  *&v235[88] = 0x1000000000000;
  sha512_block_data_order(v228, &v233, 1);
  *v226 = vrev64q_s8(*v228);
  *&v226[16] = vrev64q_s8(v229);
  v10 = vrev64q_s8(v230);
  v11 = vrev64q_s8(v231);
  v226[0] &= 0xF8u;
  v226[31] = v226[31] & 0x3F | 0x40;
  *v228 = xmmword_273BA6F40;
  v229 = xmmword_273BA6F50;
  v230 = xmmword_273BA6F60;
  v231 = xmmword_273BA6F70;
  v232 = 0x100uLL;
  v233 = v10;
  v234 = v11;
  v236 = 0x4000000020;
  v12 = 8 * a3;
  v13 = a3 >> 61;
  if (a3)
  {
    if (v12 <= 0xFFFFFFFFFFFFFEFFLL)
    {
      v14 = a3 >> 61;
    }

    else
    {
      v14 = v13 + 1;
    }

    v232.i64[1] = v14;
    v232.i64[0] = v12 + 256;
    if (a3 > 0x5F)
    {
      v18 = *(a2 + 3);
      *&v235[32] = *(a2 + 2);
      *&v235[48] = v18;
      v19 = *(a2 + 5);
      *&v235[64] = *(a2 + 4);
      *&v235[80] = v19;
      v20 = *(a2 + 1);
      *v235 = *a2;
      *&v235[16] = v20;
      v15 = a3 - 96;
      v21 = a2 + 96;
      LODWORD(v236) = 0;
      sha512_block_data_order(v228, &v233, 1);
      if (a3 - 96 >= 0x80)
      {
        sha512_block_data_order(v228, a2 + 96, v15 >> 7);
        v15 &= 0x7Fu;
        v21 = &a2[a3 - v15];
      }

      if (v15)
      {
        memcpy(&v233, v21, v15);
        LODWORD(v236) = v15;
      }

      else
      {
        LODWORD(v15) = v236;
      }
    }

    else
    {
      memcpy(v235, a2, a3);
      LODWORD(v15) = v236 + a3;
      LODWORD(v236) = v236 + a3;
    }

    v16 = HIDWORD(v236);
    v233.i8[v15] = 0x80;
    v17 = v15 + 1;
    if (v15 < 0x70)
    {
      if (v15 == 111)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v15 != 127)
      {
        bzero(&v233.i8[v17], 127 - v15);
      }

      sha512_block_data_order(v228, &v233, 1);
      v17 = 0;
    }
  }

  else
  {
    v235[0] = 0x80;
    v16 = 64;
    v17 = 33;
  }

  bzero(&v233.i8[v17], 112 - v17);
LABEL_19:
  v22 = vrev64q_s8(v232);
  *&v235[80] = vextq_s8(v22, v22, 8uLL);
  sha512_block_data_order(v228, &v233, 1);
  if (v16 < 8)
  {
    goto LABEL_27;
  }

  v23 = v16 >> 3;
  if (v16 < 0x20)
  {
    v24 = 0;
    v25 = &v214;
LABEL_25:
    v30 = v23 - v24;
    v31 = &v228[v24];
    do
    {
      v32 = *v31++;
      *v25 = bswap64(v32);
      v25 += 4;
      --v30;
    }

    while (v30);
    goto LABEL_27;
  }

  v24 = v23 & 0x1FFFFFFC;
  v25 = &v214 + 4 * v24;
  v26 = (&v219 + 1);
  v27 = &v229;
  v28 = v24;
  do
  {
    v29 = vrev64q_s8(*v27);
    v26[-1] = vrev64q_s8(v27[-1]);
    *v26 = v29;
    v26 += 2;
    v27 += 2;
    v28 -= 4;
  }

  while (v28);
  if (v24 != v23)
  {
    goto LABEL_25;
  }

LABEL_27:
  x25519_sc_reduce(&v214);
  x25519_ge_scalarmult_base(v205, &v214);
  *v212 = v207;
  *&v212[16] = v208;
  v213 = v209;
  fe_loose_invert(v211, v212);
  fe_mul_impl(v212, v205, v211);
  fe_mul_impl(v210, v206, v211);
  fe_tobytes(a1, v210);
  fe_tobytes(v227, v212);
  a1[1].i8[15] ^= v227[0] << 7;
  *v228 = xmmword_273BA6F40;
  v229 = xmmword_273BA6F50;
  v230 = xmmword_273BA6F60;
  v231 = xmmword_273BA6F70;
  v33 = a1[1];
  v233 = *a1;
  v234 = v33;
  v232 = 0x200uLL;
  v34 = a4[3];
  *v235 = a4[2];
  *&v235[16] = v34;
  v236 = 0x4000000040;
  if (!a3)
  {
    v37 = HIDWORD(v236);
    v235[32] = 0x80;
    v38 = 65;
    goto LABEL_44;
  }

  if (v12 <= 0xFFFFFFFFFFFFFDFFLL)
  {
    v35 = a3 >> 61;
  }

  else
  {
    v35 = v13 + 1;
  }

  v232.i64[1] = v35;
  v232.i64[0] = v12 + 512;
  if (a3 <= 0x3F)
  {
    memcpy(&v235[32], a2, a3);
    LODWORD(v36) = v236 + a3;
LABEL_38:
    LODWORD(v236) = v36;
    goto LABEL_39;
  }

  v39 = *(a2 + 1);
  *&v235[32] = *a2;
  *&v235[48] = v39;
  v40 = *(a2 + 3);
  *&v235[64] = *(a2 + 2);
  *&v235[80] = v40;
  LODWORD(v236) = 0;
  v36 = a3 - 64;
  v41 = a2 + 64;
  sha512_block_data_order(v228, &v233, 1);
  if (a3 - 64 >= 0x80)
  {
    sha512_block_data_order(v228, a2 + 64, v36 >> 7);
    v36 &= 0x7Fu;
    v41 = &a2[a3 - v36];
  }

  if (v36)
  {
    memcpy(&v233, v41, v36);
    goto LABEL_38;
  }

  LODWORD(v36) = v236;
LABEL_39:
  v37 = HIDWORD(v236);
  v233.i8[v36] = 0x80;
  v38 = v36 + 1;
  if (v36 < 0x70)
  {
    if (v36 == 111)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (v36 != 127)
    {
      bzero(&v233.i8[v38], 127 - v36);
    }

    sha512_block_data_order(v228, &v233, 1);
    v38 = 0;
  }

LABEL_44:
  bzero(&v233.i8[v38], 112 - v38);
LABEL_45:
  v203 = a1;
  v42 = vrev64q_s8(v232);
  *&v235[80] = vextq_s8(v42, v42, 8uLL);
  sha512_block_data_order(v228, &v233, 1);
  if (v37 < 8)
  {
    goto LABEL_53;
  }

  v43 = v37 >> 3;
  if (v37 < 0x20)
  {
    v44 = 0;
    v45 = v212;
LABEL_51:
    v50 = v43 - v44;
    v51 = &v228[v44];
    do
    {
      v52 = *v51++;
      *v45 = bswap64(v52);
      v45 += 8;
      --v50;
    }

    while (v50);
    goto LABEL_53;
  }

  v44 = v43 & 0x1FFFFFFC;
  v45 = &v212[8 * v44];
  v46 = &v212[16];
  v47 = &v229;
  v48 = v44;
  do
  {
    v49 = vrev64q_s8(*v47);
    v46[-1] = vrev64q_s8(v47[-1]);
    *v46 = v49;
    v46 += 2;
    v47 += 2;
    v48 -= 4;
  }

  while (v48);
  if (v44 != v43)
  {
    goto LABEL_51;
  }

LABEL_53:
  x25519_sc_reduce(v212);
  v53 = *v212 | ((v212[2] & 0x1F) << 16);
  v54 = *&v212[21] | ((v212[23] & 0x1F) << 16);
  v55 = *v226 | ((v226[2] & 0x1F) << 16);
  v56 = *&v226[21] | ((v226[23] & 0x1F) << 16);
  v57 = (*&v212[2] >> 5) & 0x1FFFFF;
  v58 = ((HIBYTE(*&v212[2]) | (v212[6] << 8) | (v212[7] << 16)) >> 2) & 0x1FFFFF;
  v59 = (*&v226[2] >> 5) & 0x1FFFFF;
  v60 = ((HIBYTE(*&v226[2]) | (v226[6] << 8) | (v226[7] << 16)) >> 2) & 0x1FFFFF;
  v204 = v59 * v57 + v55 * v58 + v60 * v53 + (((HIBYTE(v215) | (v216 << 8) | (v217[0] << 16)) >> 2) & 0x1FFFFF);
  v61 = (*&v212[7] >> 7) & 0x1FFFFF;
  v62 = (*&v212[10] >> 4) & 0x1FFFFF;
  v63 = (*&v226[7] >> 7) & 0x1FFFFF;
  v64 = (*&v226[10] >> 4) & 0x1FFFFF;
  v65 = v59 * v61 + v55 * v62 + v63 * v57 + v53 * v64 + v60 * v58 + ((*&v217[3] >> 4) & 0x1FFFFF);
  v66 = ((HIBYTE(*&v212[10]) | (v212[14] << 8) | (v212[15] << 16)) >> 1) & 0x1FFFFF;
  v67 = (*&v212[15] >> 6) & 0x1FFFFF;
  v68 = (*&v226[15] >> 6) & 0x1FFFFF;
  v69 = ((HIBYTE(*&v226[10]) | (v226[14] << 8) | (v226[15] << 16)) >> 1) & 0x1FFFFF;
  v201 = v66 * v59 + v55 * v67 + v63 * v61 + v58 * v64 + v60 * v62 + v53 * v68 + v69 * v57 + ((v219 >> 6) & 0x1FFFFF);
  v70 = ((*&v212[15] >> 24) | (v212[19] << 8) | (v212[20] << 16)) >> 3;
  v71 = ((*&v226[15] >> 24) | (v226[19] << 8) | (v226[20] << 16)) >> 3;
  v200 = v70 * v59 + v55 * v54 + v66 * v63 + v64 * v62 + v60 * v67 + v58 * v68 + v69 * v61 + v71 * v57 + v56 * v53 + v222 + ((v223 & 0x1F) << 16);
  v72 = (*&v212[23] >> 5) & 0x1FFFFF;
  v73 = ((HIBYTE(*&v212[23]) | (v212[27] << 8) | (v212[28] << 16)) >> 2) & 0x1FFFFF;
  v74 = (*&v226[23] >> 5) & 0x1FFFFF;
  v75 = ((HIBYTE(*&v226[23]) | (v226[27] << 8) | (v226[28] << 16)) >> 2) & 0x1FFFFF;
  v199 = v59 * v72 + v55 * v73 + v70 * v63 + v64 * v67 + v60 * v54 + v68 * v62 + v69 * v66 + v71 * v61 + v74 * v57 + v56 * v58 + v75 * v53 + (((HIBYTE(v223) | (v224 << 8) | (v225 << 16)) >> 2) & 0x1FFFFF);
  v76 = (v214 | ((v215 & 0x1F) << 16)) + v55 * v53;
  v77 = v53 * v59 + v55 * v57 + ((v215 >> 5) & 0x1FFFFF) + ((v76 + 0x100000) >> 21);
  v202 = v76 - ((v76 + 0x100000) & 0xFFFFFE00000);
  v78 = v58 * v59 + v55 * v61 + v53 * v63 + v60 * v57 + ((*v217 >> 7) & 0x1FFFFF);
  v197 = v59 * v62 + v55 * v66 + v58 * v63 + v64 * v57 + v60 * v61 + v69 * v53 + ((v65 + 0x100000) >> 21) + (((v217[6] | (v218 << 8) | (v219 << 16)) >> 1) & 0x1FFFFF);
  v79 = v59 * v67 + v55 * v70 + v63 * v62 + v64 * v61 + v60 * v66 + v68 * v57 + v69 * v58 + v71 * v53 + (((v219 >> 24) | (v220 << 8) | (v221 << 16)) >> 3);
  v195 = v54 * v59 + v55 * v72 + v63 * v67 + v66 * v64 + v60 * v70 + v68 * v61 + v69 * v62 + v71 * v58 + v53 * v74 + v56 * v57 + ((v223 >> 5) & 0x1FFFFF);
  v80 = *&v212[28] >> 7;
  v81 = v73 * v59 + v55 * v80;
  v82 = *&v226[28] >> 7;
  v83 = v81 + v54 * v63 + v70 * v64 + v60 * v72 + v66 * v68 + v69 * v67 + v71 * v62 + v58 * v74 + v56 * v61 + v53 * v82;
  v84 = v59 * v80 + v63 * v72 + v54 * v64 + v60 * v73 + v68 * v67 + v69 * v70 + v71 * v66 + v74 * v61 + v56 * v62 + v82 * v57;
  v85 = v83 + v75 * v57 + (v225 >> 7);
  v86 = v73 * v63 + v64 * v72 + v60 * v80;
  v87 = v84 + v75 * v58;
  v88 = v86 + v70 * v68 + v69 * v54 + v71 * v67 + v74 * v62 + v56 * v66 + v58 * v82 + v75 * v61;
  v89 = v71 * v80 + v74 * v72 + v56 * v73 + v70 * v82 + v75 * v54;
  v90 = v73 * v74 + v56 * v80 + v54 * v82 + v75 * v72 + ((v89 + 0x100000) >> 21);
  v91 = v63 * v80 + v73 * v64 + v54 * v68 + v69 * v72 + v71 * v70 + v66 * v74 + v56 * v67 + v82 * v61 + v75 * v62;
  v92 = v64 * v80 + v68 * v72 + v69 * v73 + v71 * v54 + v74 * v67 + v56 * v70 + v82 * v62;
  v93 = v78 + ((v204 + 0x100000) >> 21);
  v94 = v88 + ((v87 + 0x100000) >> 21);
  v95 = v73 * v68 + v69 * v80 + v71 * v72 + v70 * v74 + v56 * v54 + v66 * v82 + v75 * v67;
  v96 = v68 * v80 + v71 * v73 + v54 * v74 + v56 * v72 + v82 * v67;
  v97 = v92 + v75 * v66 + ((v91 + 0x100000) >> 21);
  v98 = v96 + v75 * v70 + ((v95 + 0x100000) >> 21);
  v99 = v74 * v80 + v82 * v72 + v75 * v73;
  v100 = v73 * v82 + v75 * v80 + ((v99 + 0x100000) >> 21);
  v101 = v99 - ((v99 + 0x100000) & 0x1FFFFFFE00000);
  v102 = v82 * v80;
  v103 = (v102 + 0x100000) >> 21;
  v198 = v65 - ((v65 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v93 + 0x100000) >> 21);
  v196 = v93 - ((v93 + 0x100000) & 0xFFFFFFFFFFE00000);
  v104 = v89 - ((v89 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v98 + 0x100000) >> 21);
  v105 = v98 - ((v98 + 0x100000) & 0xFFFFFFFFFFE00000);
  v106 = v101 + ((v90 + 0x100000) >> 21);
  v107 = v90 - ((v90 + 0x100000) & 0xFFFFFFFFFFE00000);
  v108 = v102 - ((v102 + 0x100000) & 0x7FFFFFFE00000) + ((v100 + 0x100000) >> 21);
  v109 = v100 - ((v100 + 0x100000) & 0x1FFFFFFE00000);
  v110 = v95 - 683901 * v103 - ((v95 + 0x100000) & 0xFFFFFFFFFFE00000);
  v111 = v91 - 997805 * v103 - ((v91 + 0x100000) & 0xFFFFFFFFFFE00000);
  v112 = v87 + 470296 * v103 - ((v87 + 0x100000) & 0xFFFFFFFFFFE00000);
  v113 = v79 + ((v201 + 0x100000) >> 21);
  v114 = v201 + 666643 * v104 - ((v201 + 0x100000) & 0xFFFFFFFFFFE00000);
  v115 = v195 + ((v200 + 0x100000) >> 21);
  v116 = 666643 * v106 + 470296 * v107 + 654183 * v104 + v200 + ((v113 + 0x100000) >> 21) - ((v200 + 0x100000) & 0xFFFFFFFFFFE00000);
  v117 = v85 + ((v199 + 0x100000) >> 21);
  v118 = 666643 * v108 + 470296 * v109 + 654183 * v106 - 997805 * v107 + 136657 * v104 + ((v115 + 0x100000) >> 21) + v199 - ((v199 + 0x100000) & 0xFFFFFFFFFFE00000);
  v119 = 666643 * v107 + 470296 * v104 + v113 - ((v113 + 0x100000) & 0xFFFFFFFFFFE00000);
  v120 = 666643 * v109 + 470296 * v106 + 654183 * v107 - 997805 * v104 + v115 - ((v115 + 0x100000) & 0xFFFFFFFFFFE00000);
  v121 = v112 + 654183 * v108 - 997805 * v109 + 136657 * v106 - 683901 * v107 + ((v117 + 0x100000) >> 21);
  v122 = 470296 * v108 + 666643 * v103 + 654183 * v109 - 997805 * v106 + 136657 * v107 - 683901 * v104 + v117 - ((v117 + 0x100000) & 0xFFFFFFFFFFE00000);
  v123 = v111 + ((v94 + 0x100000) >> 21);
  v124 = v94 + 654183 * v103 - ((v94 + 0x100000) & 0xFFFFFFFFFFE00000) - 997805 * v108 + 136657 * v109 - 683901 * v106 + ((v121 + 0x100000) >> 21);
  v125 = v97 + 136657 * v103;
  v97 += 0x100000;
  v126 = v110 + (v97 >> 21);
  v127 = v114 + ((v197 + 0x100000) >> 21);
  v128 = v120 + ((v116 + 0x100000) >> 21);
  v129 = v123 + 136657 * v108 - 683901 * v109;
  v130 = v122 + ((v118 + 0x100000) >> 21);
  v131 = v125 - (v97 & 0xFFFFFFFFFFE00000) - 683901 * v108 + ((v129 + 0x100000) >> 21);
  v132 = v105 + ((v126 + 0x100000) >> 21);
  v133 = v121 - ((v121 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v130 + 0x100000) >> 21);
  v134 = v130 - ((v130 + 0x100000) & 0xFFFFFFFFFFE00000);
  v135 = v129 - ((v129 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v124 + 0x100000) >> 21);
  v136 = v124 - ((v124 + 0x100000) & 0xFFFFFFFFFFE00000);
  v137 = v126 - ((v126 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v131 + 0x100000) >> 21);
  v138 = v131 - ((v131 + 0x100000) & 0xFFFFFFFFFFE00000);
  v139 = v118 - 683901 * v132 + ((v128 + 0x100000) >> 21) - ((v118 + 0x100000) & 0xFFFFFFFFFFE00000);
  v140 = v119 + ((v127 + 0x100000) >> 21);
  v141 = -997805 * v132 + 136657 * v137 - 683901 * v138 + v116 + ((v140 + 0x100000) >> 21) - ((v116 + 0x100000) & 0xFFFFFFFFFFE00000);
  v142 = v127 + 470296 * v132 - ((v127 + 0x100000) & 0xFFFFFFFFFFE00000);
  v143 = v202 + 666643 * v133;
  v144 = v77 - ((v77 + 0x100000) & 0xFFFFFFFFFFE00000) + 470296 * v133 + 666643 * v136 + ((v143 + 0x100000) >> 21);
  v145 = v197 + 666643 * v132 - ((v197 + 0x100000) & 0xFFFFFFFFFFE00000);
  v146 = v142 + 654183 * v137 - 997805 * v138 + 136657 * v135 - 683901 * v136;
  v147 = 654183 * v132 - 997805 * v137 + 136657 * v138 + v140 - ((v140 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v135 + ((v146 + 0x100000) >> 21);
  v148 = v146 - ((v146 + 0x100000) & 0xFFFFFFFFFFE00000);
  v149 = 136657 * v132 - 683901 * v137 + v128 - ((v128 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v141 + 0x100000) >> 21);
  v150 = v134 + ((v139 + 0x100000) >> 21);
  v151 = v141 - ((v141 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v147 + 0x100000) >> 21);
  v152 = v147 - ((v147 + 0x100000) & 0xFFFFFFFFFFE00000);
  v153 = v149 + 0x100000;
  v154 = v149 - ((v149 + 0x100000) & 0xFFFFFFFFFFE00000);
  v155 = v150 - ((v150 + 0x100000) & 0xFFFFFFFFFFE00000);
  v156 = (v150 + 0x100000) >> 21;
  v157 = v204 + ((v77 + 0x100000) >> 21) - ((v204 + 0x100000) & 0xFFFFFFFFFFE00000) + 654183 * v133 + 666643 * v135 + 470296 * v136;
  v158 = v196 + 666643 * v138 - 997805 * v133 + 470296 * v135 + 654183 * v136 + ((v157 + 0x100000) >> 21);
  v159 = v158 + 0x100000;
  v160 = v198 + 666643 * v137;
  v161 = v145 + 470296 * v137 + 654183 * v138;
  v162 = v160 + 470296 * v138 + 136657 * v133;
  v163 = v161 - 683901 * v133 - 997805 * v135;
  v164 = v162 + 654183 * v135 - 997805 * v136;
  v165 = v163 + 136657 * v136 + ((v164 + 0x100000) >> 21);
  v166 = v148 + ((v165 + 0x100000) >> 21);
  v167 = v139 + (v153 >> 21);
  v168 = v143 - ((v143 + 0x100000) & 0xFFFFFFFFFFE00000) + 666643 * v156;
  v169 = (v139 + 0x100000) & 0xFFFFFFFFFFE00000;
  v170 = v144 + 470296 * v156 - ((v144 + 0x100000) & 0xFFFFFFFFFFE00000) + (v168 >> 21);
  v171 = v168 & 0x1FFFFF;
  v172 = v157 + 654183 * v156 - ((v157 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v144 + 0x100000) >> 21) + (v170 >> 21);
  v173 = v158 - 997805 * v156 - ((v158 + 0x100000) & 0xFFFFFFFFFFE00000) + (v172 >> 21);
  v174 = v164 + 136657 * v156 - ((v164 + 0x100000) & 0xFFFFFFFFFFE00000) + (v159 >> 21) + (v173 >> 21);
  v175 = v165 - 683901 * v156 - ((v165 + 0x100000) & 0xFFFFFFFFFFE00000) + (v174 >> 21);
  v176 = v166 + (v175 >> 21);
  v177 = v152 + (v176 >> 21);
  v178 = v151 + (v177 >> 21);
  v179 = v154 + (v178 >> 21);
  v180 = v167 - v169 + (v179 >> 21);
  v181 = v155 + (v180 >> 21);
  v182 = v171 + 666643 * (v181 >> 21);
  v203[2].i8[1] = BYTE1(v182);
  v183 = (v170 & 0x1FFFFF) + 470296 * (v181 >> 21) + (v182 >> 21);
  v203[2].i8[0] = v182;
  v203[2].i8[2] = ((v171 + 666643 * (v181 >> 21)) >> 16) & 0x1F | (32 * (v170 + 24 * (v181 >> 21) + (v182 >> 21)));
  v203[2].i8[3] = v183 >> 3;
  v203[2].i8[4] = v183 >> 11;
  v184 = (v172 & 0x1FFFFF) + 654183 * (v181 >> 21) + (v183 >> 21);
  v203[2].i8[5] = (v183 >> 19) & 3 | (4 * (v172 + 103 * (v181 >> 21) + (v183 >> 21)));
  v203[2].i8[6] = v184 >> 6;
  v185 = (v173 & 0x1FFFFF) - 997805 * (v181 >> 21) + (v184 >> 21);
  v203[2].i8[7] = (v184 >> 14) & 0x7F | ((v173 - -83 * (v181 >> 21) + (v184 >> 21)) << 7);
  v203[2].i8[8] = v185 >> 1;
  v203[2].i8[9] = v185 >> 9;
  v186 = (v174 & 0x1FFFFF) + 136657 * (v181 >> 21) + (v185 >> 21);
  v203[2].i8[10] = (v185 >> 17) & 0xF | (16 * (v174 - 47 * (v181 >> 21) + (v185 >> 21)));
  v203[2].i8[11] = v186 >> 4;
  v203[2].i8[12] = v186 >> 12;
  v187 = (v175 & 0x1FFFFF) - 683901 * (v181 >> 21) + (v186 >> 21);
  v203[2].i8[13] = ((v186 & 0x100000) != 0) | (2 * (v175 - 125 * (v181 >> 21) + (v186 >> 21)));
  v203[2].i8[14] = v187 >> 7;
  v188 = (v176 & 0x1FFFFF) + (v187 >> 21);
  v203[2].i8[15] = (v187 >> 15) & 0x3F | ((v176 + (v187 >> 21)) << 6);
  v203[3].i8[0] = v188 >> 2;
  v203[3].i8[1] = v188 >> 10;
  v189 = (v177 & 0x1FFFFF) + (v188 >> 21);
  v203[3].i8[2] = (v188 >> 18) & 7 | (8 * (v177 + (v188 >> 21)));
  v203[3].i8[3] = v189 >> 5;
  v190 = (v178 & 0x1FFFFF) + (v189 >> 21);
  v203[3].i8[4] = v189 >> 13;
  v203[3].i8[6] = (v178 + (v189 >> 21)) >> 8;
  v191 = (v179 & 0x1FFFFF) + (v190 >> 21);
  v203[3].i8[5] = v190;
  v203[3].i8[7] = BYTE2(v190) & 0x1F | (32 * (v179 + (v190 >> 21)));
  v203[3].i8[8] = v191 >> 3;
  v203[3].i8[9] = v191 >> 11;
  v192 = (v180 & 0x1FFFFF) + (v191 >> 21);
  v203[3].i8[10] = (v191 >> 19) & 3 | (4 * (v180 + (v191 >> 21)));
  v203[3].i8[11] = v192 >> 6;
  v193 = (v192 >> 21) + (v181 & 0x1FFFFF);
  v203[3].i8[12] = (v192 >> 14) & 0x7F | (((v192 >> 21) + v181) << 7);
  v203[3].i8[13] = ((v192 >> 21) + v181) >> 1;
  v203[3].i8[14] = v193 >> 9;
  v203[3].i8[15] = v193 >> 17;
  return 1;
}

BOOL ED25519_verify(const unsigned __int8 *a1, size_t a2, uint64_t a3, unsigned int *a4)
{
  v1073 = *MEMORY[0x277D85DE8];
  if (*(a3 + 63) > 0x1Fu)
  {
    return 0;
  }

  v4 = *(a4 + 6);
  v5 = *(a4 + 12);
  v6 = *(a4 + 13);
  v7 = *(a4 + 14);
  v8 = *(a4 + 15);
  v9 = a4[4];
  v10 = *(a4 + 20);
  v11 = *(a4 + 21);
  v12 = *(a4 + 22);
  v13 = (*(a4 + 11) << 37) & 0xFFF81FFFFFFFFFFFLL | ((v5 & 0x3F) << 45) | (*(a4 + 10) << 29) | (*(a4 + 9) << 21) | (*(a4 + 8) << 13) | (32 * *(a4 + 7)) | (v4 >> 3);
  v14 = (*(a4 + 27) << 12) & 0xFFF80000000FFFFFLL | ((a4[7] & 0x7FFFFFFF) << 20) | (16 * *(a4 + 26)) | (v12 >> 28);
  *&v928 = (*(a4 + 5) << 40) & 0xFFF8FFFFFFFFFFFFLL | ((v4 & 7) << 48) | *a4 | (*(a4 + 4) << 32);
  *(&v928 + 1) = v13;
  *&v929 = (v8 << 18) & 0xFFF8000003FFFFFFLL | ((v9 & 0x1FFFFFF) << 26) | (v7 << 10) | (4 * v6) | (v5 >> 6);
  *(&v929 + 1) = (v11 << 15) & 0xFFF80000007FFFFFLL | ((v12 & 0xFFFFFFF) << 23) | (v10 << 7) | (v9 >> 25);
  v930 = v14;
  *v931 = 1;
  v15 = 38 * v14;
  v16 = (2 * *(&v929 + 1)) * v13 + v929 * v929 + 2 * v14 * v928;
  v17 = (19 * *(&v929 + 1)) * *(&v929 + 1) + 2 * v13 * v928 + v15 * v929 + (((38 * *(&v929 + 1)) * v929 + v928 * v928 + v15 * v13) >> 51);
  v18 = (2 * v929) * v928 + v13 * v13 + 38 * v14 * *(&v929 + 1) + (v17 >> 51);
  v20 = ((2 * *(&v929 + 1)) * v928 + (2 * v929) * v13 + 19 * v14 * v14) >> 64;
  v19 = 2 * *(&v929 + 1) * v928 + 2 * v929 * v13 + 19 * v14 * v14;
  v21 = v18 >> 51;
  v22 = __CFADD__(v19, v21);
  v23 = v19 + v21;
  *(&v25 + 1) = (*(&v18 + 1) >> 51) + v22 + v20;
  *&v25 = v23;
  v24 = v25 >> 51;
  *(&v25 + 1) = (v16 + (v25 >> 51)) >> 64;
  *&v25 = v16 + v24;
  v26 = ((38 * *(&v929 + 1) * v929 + v928 * v928 + v15 * v13) & 0x7FFFFFFFFFFFFLL) + 19 * (v25 >> 51);
  memset(&v931[8], 0, 32);
  v27 = v23 & 0x7FFFFFFFFFFFFLL;
  v28 = (v17 & 0x7FFFFFFFFFFFFLL) + (v26 >> 51);
  v29 = v26 & 0x7FFFFFFFFFFFFLL;
  v30 = (v18 & 0x7FFFFFFFFFFFFLL) + (v28 >> 51);
  v31 = v28 & 0x7FFFFFFFFFFFFLL;
  *v969 = v26 & 0x7FFFFFFFFFFFFLL;
  *&v969[8] = v28 & 0x7FFFFFFFFFFFFLL;
  v32 = (v16 + v24) & 0x7FFFFFFFFFFFFLL;
  *&v969[16] = v30;
  *&v969[24] = v27;
  *&v969[32] = v32;
  fe_mul_impl(&v937, v969, d);
  v33 = v31 + ((v29 + 0xFFFFFFFFFFFD9) >> 51) + 0xFFFFFFFFFFFFELL;
  v34 = v30 + (v33 >> 51) + 0xFFFFFFFFFFFFELL;
  v35 = v27 + (v34 >> 51) + 0xFFFFFFFFFFFFELL;
  v36 = v32 + (v35 >> 51) + 0xFFFFFFFFFFFFELL;
  v37 = ((v29 + 0xFFFFFFFFFFFD9) & 0x7FFFFFFFFFFFFLL) + 19 * (v36 >> 51);
  v38 = (v33 & 0x7FFFFFFFFFFFFLL) + (v37 >> 51);
  v39 = v37 & 0x7FFFFFFFFFFFFLL;
  v40 = (v34 & 0x7FFFFFFFFFFFFLL) + (v38 >> 51);
  v41 = v35 & 0x7FFFFFFFFFFFFLL;
  v959[0] = v37 & 0x7FFFFFFFFFFFFLL;
  v915 = v38 & 0x7FFFFFFFFFFFFLL;
  v959[1] = v38 & 0x7FFFFFFFFFFFFLL;
  *&v960 = v40;
  *(&v960 + 1) = v35 & 0x7FFFFFFFFFFFFLL;
  v912 = v36 & 0x7FFFFFFFFFFFFLL;
  *&v961 = v36 & 0x7FFFFFFFFFFFFLL;
  *v975 = v937 + 1;
  *&v975[8] = v938;
  *&v975[24] = v939;
  fe_mul_impl(v969, v959, v975);
  v42 = *&v969[8] * (38 * *&v969[32]) + *&v969[16] * (38 * *&v969[24]) + *v969 * *v969;
  v44 = v42 >> 51;
  v43 = *&v969[8] * (2 * *&v969[24]) + *&v969[16] * *&v969[16] + *v969 * (2 * *&v969[32]);
  v46 = (*&v969[8] * (2 * *&v969[16]) + (19 * *&v969[32]) * *&v969[32] + *v969 * (2 * *&v969[24])) >> 64;
  v45 = *&v969[8] * 2 * *&v969[16] + 19 * *&v969[32] * *&v969[32] + *v969 * 2 * *&v969[24];
  v48 = (*&v969[8] * *&v969[8] + *&v969[24] * (38 * *&v969[32]) + *v969 * (2 * *&v969[16])) >> 64;
  v47 = *&v969[8] * *&v969[8] + *&v969[24] * 38 * *&v969[32] + *v969 * 2 * *&v969[16];
  v50 = (*&v969[16] * (38 * *&v969[32]) + (19 * *&v969[24]) * *&v969[24] + *v969 * (2 * *&v969[8])) >> 64;
  v49 = *&v969[16] * 38 * *&v969[32] + 19 * *&v969[24] * *&v969[24] + *v969 * 2 * *&v969[8];
  v22 = __CFADD__(v49, v44);
  v51 = v49 + v44;
  if (v22)
  {
    ++v50;
  }

  *(&v53 + 1) = v50;
  *&v53 = v51;
  v52 = v53 >> 51;
  v54 = v51 & 0x7FFFFFFFFFFFFLL;
  v22 = __CFADD__(v47, v52);
  v55 = v47 + v52;
  if (v22)
  {
    ++v48;
  }

  *(&v57 + 1) = v48;
  *&v57 = v55;
  v56 = v57 >> 51;
  v58 = v55 & 0x7FFFFFFFFFFFFLL;
  v22 = __CFADD__(v45, v56);
  v59 = v45 + v56;
  if (v22)
  {
    ++v46;
  }

  *(&v61 + 1) = v46;
  *&v61 = v59;
  v60 = v61 >> 51;
  v62 = v59 & 0x7FFFFFFFFFFFFLL;
  if (__CFADD__(v43, v60))
  {
    v63 = *(&v43 + 1) + 1;
  }

  else
  {
    v63 = (*&v969[8] * (2 * *&v969[24]) + *&v969[16] * *&v969[16] + *v969 * (2 * *&v969[32])) >> 64;
  }

  *(&v64 + 1) = v63;
  *&v64 = v43 + v60;
  v65 = (v42 & 0x7FFFFFFFFFFFFLL) + 19 * (v64 >> 51);
  v66 = v65 & 0x7FFFFFFFFFFFFLL;
  v67 = v54 + (v65 >> 51);
  v68 = v58 + (v67 >> 51);
  v989[0] = v66;
  v989[1] = v67 & 0x7FFFFFFFFFFFFLL;
  *(&v990 + 1) = v62;
  v991 = (v43 + v60) & 0x7FFFFFFFFFFFFLL;
  v69 = 2 * v62;
  v70 = 2 * (v67 & 0x7FFFFFFFFFFFFLL);
  v71 = (v62 * (38 * v991)) >> 64;
  v72 = v62 * 38 * v991;
  v73 = (v62 * (19 * v62)) >> 64;
  v74 = v62 * 19 * v62;
  v75 = (v68 * (38 * v62)) >> 64;
  v76 = v68 * 38 * v62;
  v77 = ((v67 & 0x7FFFFFFFFFFFFLL) * (2 * v62)) >> 64;
  v78 = (v67 & 0x7FFFFFFFFFFFFLL) * 2 * v62;
  v79 = (v67 & 0x7FFFFFFFFFFFFLL) * (38 * v991) + v66 * v66;
  v22 = __CFADD__(v79, v76);
  v80 = v79 + v76;
  v81 = (v66 * v69) >> 64;
  v82 = v66 * v69;
  v83 = v989[1] * v989[1] + __PAIR128__(v71, v72) + (2 * v68) * v66;
  v85 = v68 * 38 * v991 + v74 + v70 * v66;
  v84 = (v68 * (38 * v991) + __PAIR128__(v73, v74) + v70 * v66) >> 64;
  *&v990 = v68;
  *(&v64 + 1) = v75 + v22 + *(&v79 + 1);
  *&v64 = v80;
  v86 = v64 >> 51;
  if (__CFADD__(v85, v86))
  {
    ++v84;
  }

  *(&v87 + 1) = v84;
  *&v87 = v85 + v86;
  v88 = v80 & 0x7FFFFFFFFFFFFLL;
  v89 = v83 + (v87 >> 51);
  v90 = __PAIR128__(((v991 * (19 * v991)) >> 64) + __CFADD__(v82, v991 * 19 * v991) + v81, v82 + v991 * 19 * v991) + (2 * v68) * v989[1] + (v89 >> 51);
  v91 = v90 & 0x7FFFFFFFFFFFFLL;
  v92 = __PAIR128__(v77, v78) + v66 * (2 * v991) + v68 * v68 + (v90 >> 51);
  v93 = v92 & 0x7FFFFFFFFFFFFLL;
  v94 = v88 + 19 * (v92 >> 51);
  v95 = v94 & 0x7FFFFFFFFFFFFLL;
  v96 = ((v85 + v86) & 0x7FFFFFFFFFFFFLL) + (v94 >> 51);
  v97 = v96 & 0x7FFFFFFFFFFFFLL;
  v98 = (v89 & 0x7FFFFFFFFFFFFLL) + (v96 >> 51);
  v99 = 38 * (v92 & 0x7FFFFFFFFFFFFLL);
  v100 = 2 * (v92 & 0x7FFFFFFFFFFFFLL);
  v101 = 2 * (v90 & 0x7FFFFFFFFFFFFLL);
  v102 = 2 * v97;
  v103 = (v93 * (19 * v93)) >> 64;
  v104 = v93 * 19 * v93;
  v107 = v91 * 19 * v91;
  v105 = (v97 * v99 + v95 * v95 + v98 * (38 * (v90 & 0x7FFFFFFFFFFFFLL))) >> 64;
  v106 = v97 * v99 + v95 * v95 + v98 * 38 * (v90 & 0x7FFFFFFFFFFFFLL);
  v108 = v97 * v97 + (v90 & 0x7FFFFFFFFFFFFLL) * v99 + (2 * v98) * v95;
  v109 = (v98 * v99) >> 64;
  v110 = v98 * v99;
  v22 = __CFADD__(v110, v107);
  v111 = v110 + v107;
  v112 = (v97 * v101) >> 64;
  v113 = ((v91 * (19 * v91)) >> 64) + v22 + v109;
  v114 = 2 * v97 * v95;
  v22 = __CFADD__(v111, v114);
  v115 = v111 + v114;
  v116 = ((2 * v98) * v97) >> 64;
  v117 = 2 * v98 * v97;
  v118 = v97 * v101;
  v119 = ((v102 * v95) >> 64) + v22 + v113;
  v120 = (v95 * v100) >> 64;
  v121 = v95 * v100;
  v122 = __PAIR128__(v105, v106) >> 51;
  v22 = __CFADD__(v115, v122);
  v123 = v115 + v122;
  v124 = (v95 * v101) >> 64;
  if (v22)
  {
    ++v119;
  }

  v125 = v95 * v101;
  *(&v127 + 1) = v119;
  *&v127 = v123;
  v126 = v127 >> 51;
  *(&v127 + 1) = (v108 + (v127 >> 51)) >> 64;
  *&v127 = v108 + v126;
  v128 = __PAIR128__(v103 + __CFADD__(v125, v104) + v124, v125 + v104) + __PAIR128__(v116, v117) + (v127 >> 51);
  v129 = __PAIR128__(v112, v118) + __PAIR128__(v120, v121) + v98 * v98 + (v128 >> 51);
  v130 = (v106 & 0x7FFFFFFFFFFFFLL) + 19 * (v129 >> 51);
  v131 = (v123 & 0x7FFFFFFFFFFFFLL) + (v130 >> 51);
  v1070.i64[0] = v130 & 0x7FFFFFFFFFFFFLL;
  v1070.i64[1] = v131 & 0x7FFFFFFFFFFFFLL;
  v1071.i64[0] = ((v108 + v126) & 0x7FFFFFFFFFFFFLL) + (v131 >> 51);
  v1071.i64[1] = v128 & 0x7FFFFFFFFFFFFLL;
  v1072 = v129 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(v1070.i64, v969, &v1070);
  fe_mul_impl(v989, v989, &v1070);
  v132 = v989[1] * (38 * v991) + v990 * (38 * *(&v990 + 1)) + v989[0] * v989[0];
  v133 = v989[1] * (2 * *(&v990 + 1)) + v990 * v990 + v989[0] * (2 * v991);
  v134 = (v989[1] * (2 * v990) + (19 * v991) * v991 + v989[0] * (2 * *(&v990 + 1))) >> 64;
  v135 = v989[1] * 2 * v990 + 19 * v991 * v991 + v989[0] * 2 * *(&v990 + 1);
  v136 = (v989[1] * v989[1] + *(&v990 + 1) * (38 * v991) + v989[0] * (2 * v990)) >> 64;
  v137 = v989[1] * v989[1] + *(&v990 + 1) * 38 * v991 + v989[0] * 2 * v990;
  v139 = (v990 * (38 * v991) + (19 * *(&v990 + 1)) * *(&v990 + 1) + v989[0] * (2 * v989[1])) >> 64;
  v138 = v990 * 38 * v991 + 19 * *(&v990 + 1) * *(&v990 + 1) + v989[0] * 2 * v989[1];
  v140 = v132 >> 51;
  v22 = __CFADD__(v138, v140);
  v141 = v138 + v140;
  if (v22)
  {
    ++v139;
  }

  *(&v143 + 1) = v139;
  *&v143 = v141;
  v142 = v143 >> 51;
  v22 = __CFADD__(v137, v142);
  v144 = v137 + v142;
  if (v22)
  {
    ++v136;
  }

  *(&v146 + 1) = v136;
  *&v146 = v144;
  v145 = v146 >> 51;
  v22 = __CFADD__(v135, v145);
  v147 = v135 + v145;
  if (v22)
  {
    ++v134;
  }

  *(&v149 + 1) = v134;
  *&v149 = v147;
  v148 = v149 >> 51;
  v22 = __CFADD__(v133, v148);
  v150 = v133 + v148;
  if (v22)
  {
    v151 = *(&v133 + 1) + 1;
  }

  else
  {
    v151 = (v989[1] * (2 * *(&v990 + 1)) + v990 * v990 + v989[0] * (2 * v991)) >> 64;
  }

  *(&v152 + 1) = v151;
  *&v152 = v150;
  v153 = (v132 & 0x7FFFFFFFFFFFFLL) + 19 * (v152 >> 51);
  v154 = (v141 & 0x7FFFFFFFFFFFFLL) + (v153 >> 51);
  v989[0] = v153 & 0x7FFFFFFFFFFFFLL;
  v989[1] = v154 & 0x7FFFFFFFFFFFFLL;
  *&v990 = (v144 & 0x7FFFFFFFFFFFFLL) + (v154 >> 51);
  *(&v990 + 1) = v147 & 0x7FFFFFFFFFFFFLL;
  v991 = v150 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(v989, &v1070, v989);
  v155 = v989[1] * (38 * v991) + v990 * (38 * *(&v990 + 1)) + v989[0] * v989[0];
  v157 = v155 >> 51;
  v156 = v989[1] * (2 * *(&v990 + 1)) + v990 * v990 + v989[0] * (2 * v991);
  v159 = (v989[1] * (2 * v990) + (19 * v991) * v991 + v989[0] * (2 * *(&v990 + 1))) >> 64;
  v158 = v989[1] * 2 * v990 + 19 * v991 * v991 + v989[0] * 2 * *(&v990 + 1);
  v161 = (v989[1] * v989[1] + *(&v990 + 1) * (38 * v991) + v989[0] * (2 * v990)) >> 64;
  v160 = v989[1] * v989[1] + *(&v990 + 1) * 38 * v991 + v989[0] * 2 * v990;
  v163 = (v990 * (38 * v991) + (19 * *(&v990 + 1)) * *(&v990 + 1) + v989[0] * (2 * v989[1])) >> 64;
  v162 = v990 * 38 * v991 + 19 * *(&v990 + 1) * *(&v990 + 1) + v989[0] * 2 * v989[1];
  v22 = __CFADD__(v162, v157);
  v164 = v162 + v157;
  if (v22)
  {
    ++v163;
  }

  *(&v166 + 1) = v163;
  *&v166 = v164;
  v165 = v166 >> 51;
  v22 = __CFADD__(v160, v165);
  v167 = v160 + v165;
  if (v22)
  {
    ++v161;
  }

  *(&v169 + 1) = v161;
  *&v169 = v167;
  v168 = v169 >> 51;
  v170 = v164 & 0x7FFFFFFFFFFFFLL;
  v171 = v167 & 0x7FFFFFFFFFFFFLL;
  v22 = __CFADD__(v158, v168);
  v172 = v158 + v168;
  if (v22)
  {
    ++v159;
  }

  *(&v174 + 1) = v159;
  *&v174 = v172;
  v173 = v174 >> 51;
  v175 = v172 & 0x7FFFFFFFFFFFFLL;
  if (__CFADD__(v156, v173))
  {
    v176 = *(&v156 + 1) + 1;
  }

  else
  {
    v176 = (v989[1] * (2 * *(&v990 + 1)) + v990 * v990 + v989[0] * (2 * v991)) >> 64;
  }

  *(&v177 + 1) = v176;
  *&v177 = v156 + v173;
  v178 = (v156 + v173) & 0x7FFFFFFFFFFFFLL;
  v179 = (v155 & 0x7FFFFFFFFFFFFLL) + 19 * (v177 >> 51);
  v180 = v179 & 0x7FFFFFFFFFFFFLL;
  v181 = v170 + (v179 >> 51);
  v182 = v181 & 0x7FFFFFFFFFFFFLL;
  v183 = v171 + (v181 >> 51);
  v184 = 38 * v178;
  v185 = 2 * v178;
  v186 = (v178 * (19 * v178)) >> 64;
  v187 = v178 * 19 * v178;
  v188 = ((v181 & 0x7FFFFFFFFFFFFLL) * v184) >> 64;
  v189 = (v181 & 0x7FFFFFFFFFFFFLL) * v184;
  v190 = ((v181 & 0x7FFFFFFFFFFFFLL) * (2 * v175)) >> 64;
  v191 = v182 * 2 * v175;
  v192 = ((2 * v183) * v182) >> 64;
  v193 = __PAIR128__(v188, v189) + v180 * v180;
  v194 = (v180 * v185) >> 64;
  v195 = v180 * v185;
  v198 = (v180 * (2 * v175)) >> 64;
  v199 = v180 * 2 * v175;
  v197 = (v193 + v183 * (38 * v175)) >> 64;
  v196 = v193 + v183 * 38 * v175;
  v200 = ((2 * v183) * v180) >> 64;
  v201 = ((2 * v182) * v180) >> 64;
  v202 = 2 * v182 * v180;
  v203 = 2 * v183 * v180;
  v204 = 2 * v183 * v182;
  v206 = v182 * v182 + v175 * v184;
  v205 = (v182 * v182 + v175 * v184) >> 64;
  v207 = (v183 * v184) >> 64;
  v208 = v183 * v184;
  v209 = (v183 * v183) >> 64;
  v210 = v183 * v183;
  v211 = __PAIR128__(v197, v196) >> 51;
  v212 = v196 & 0x7FFFFFFFFFFFFLL;
  v214 = __PAIR128__(v207, v208) + v175 * (19 * v175) + __PAIR128__(v201, v202);
  v213 = *(&v214 + 1);
  if (__CFADD__(v214, v211))
  {
    v213 = *(&v214 + 1) + 1;
  }

  *(&v215 + 1) = v213;
  *&v215 = v214 + v211;
  v216 = __PAIR128__(v205, v206) + __PAIR128__(v200, v203) + (v215 >> 51);
  v217 = __PAIR128__(v186 + __CFADD__(v199, v187) + v198, v199 + v187) + __PAIR128__(v192, v204) + (v216 >> 51);
  v218 = __PAIR128__(v190, v191) + __PAIR128__(v194, v195) + __PAIR128__(v209, v210);
  v219 = (v218 + (v217 >> 51)) & 0x7FFFFFFFFFFFFLL;
  v220 = v212 + 19 * ((v218 + (v217 >> 51)) >> 51);
  v221 = v220 & 0x7FFFFFFFFFFFFLL;
  v222 = ((v214 + v211) & 0x7FFFFFFFFFFFFLL) + (v220 >> 51);
  v223 = v222 & 0x7FFFFFFFFFFFFLL;
  v224 = (v216 & 0x7FFFFFFFFFFFFLL) + (v222 >> 51);
  v225 = 38 * v219;
  v226 = 2 * v219;
  v227 = 2 * (v222 & 0x7FFFFFFFFFFFFLL);
  v228 = (v219 * (19 * v219)) >> 64;
  v229 = v219 * 19 * v219;
  v230 = (v223 * (2 * (v217 & 0x7FFFFFFFFFFFFLL))) >> 64;
  v231 = v223 * 2 * (v217 & 0x7FFFFFFFFFFFFLL);
  v232 = ((2 * v224) * v223) >> 64;
  v233 = (v221 * v226) >> 64;
  v234 = v221 * v226;
  v237 = (v221 * (2 * (v217 & 0x7FFFFFFFFFFFFLL))) >> 64;
  v238 = v221 * 2 * (v217 & 0x7FFFFFFFFFFFFLL);
  v236 = (v223 * v225 + v221 * v221 + v224 * (38 * (v217 & 0x7FFFFFFFFFFFFLL))) >> 64;
  v235 = v223 * v225 + v221 * v221 + v224 * 38 * (v217 & 0x7FFFFFFFFFFFFLL);
  v239 = ((2 * v224) * v221) >> 64;
  v240 = (v227 * v221) >> 64;
  v241 = v227 * v221;
  v242 = 2 * v224 * v221;
  v243 = 2 * v224 * v223;
  v245 = v223 * v223 + (v217 & 0x7FFFFFFFFFFFFLL) * v225;
  v244 = (v223 * v223 + (v217 & 0x7FFFFFFFFFFFFLL) * v225) >> 64;
  v246 = (v224 * v225) >> 64;
  v247 = v224 * v225;
  v248 = (v224 * v224) >> 64;
  v249 = v224 * v224;
  v250 = __PAIR128__(v236, v235) >> 51;
  v251 = v235 & 0x7FFFFFFFFFFFFLL;
  v253 = (__PAIR128__(v246, v247) + (v217 & 0x7FFFFFFFFFFFFLL) * 19 * (v217 & 0x7FFFFFFFFFFFFLL) + __PAIR128__(v240, v241)) >> 64;
  v252 = v247 + (v217 & 0x7FFFFFFFFFFFFLL) * 19 * (v217 & 0x7FFFFFFFFFFFFLL) + v241;
  v22 = __CFADD__(v252, v250);
  v254 = v252 + v250;
  if (v22)
  {
    ++v253;
  }

  *(&v255 + 1) = v253;
  *&v255 = v254;
  v256 = __PAIR128__(v244, v245) + __PAIR128__(v239, v242) + (v255 >> 51);
  v257 = __PAIR128__(v228 + __CFADD__(v238, v229) + v237, v238 + v229) + __PAIR128__(v232, v243) + (v256 >> 51);
  v258 = v257 & 0x7FFFFFFFFFFFFLL;
  v259 = __PAIR128__(v230, v231) + __PAIR128__(v233, v234) + __PAIR128__(v248, v249) + (v257 >> 51);
  v260 = v259 & 0x7FFFFFFFFFFFFLL;
  v261 = v251 + 19 * (v259 >> 51);
  v262 = v261 & 0x7FFFFFFFFFFFFLL;
  v263 = (v254 & 0x7FFFFFFFFFFFFLL) + (v261 >> 51);
  v264 = v263 & 0x7FFFFFFFFFFFFLL;
  v265 = (v256 & 0x7FFFFFFFFFFFFLL) + (v263 >> 51);
  v266 = 2 * (v259 & 0x7FFFFFFFFFFFFLL);
  v267 = 2 * (v257 & 0x7FFFFFFFFFFFFLL);
  v268 = (v260 * (19 * v260)) >> 64;
  v269 = v260 * 19 * v260;
  v270 = v265 * 38 * (v257 & 0x7FFFFFFFFFFFFLL);
  v271 = v264 * v267;
  v272 = v264 * (38 * (v259 & 0x7FFFFFFFFFFFFLL)) + v262 * v262;
  v273 = (v262 * v266) >> 64;
  v274 = v262 * v266;
  v22 = __CFADD__(v272, v270);
  v275 = v272 + v270;
  v276 = (v262 * v267) >> 64;
  v277 = v262 * v267;
  v278 = v264 * v264 + (v257 & 0x7FFFFFFFFFFFFLL) * 38 * (v259 & 0x7FFFFFFFFFFFFLL) + (2 * v265) * v262;
  v280 = (v265 * (38 * (v259 & 0x7FFFFFFFFFFFFLL)) + v258 * (19 * v258) + (2 * v264) * v262) >> 64;
  v279 = v265 * 38 * (v259 & 0x7FFFFFFFFFFFFLL) + v258 * 19 * v258 + 2 * v264 * v262;
  *(&v255 + 1) = ((v265 * (38 * (v257 & 0x7FFFFFFFFFFFFLL))) >> 64) + v22 + *(&v272 + 1);
  *&v255 = v275;
  v281 = v255 >> 51;
  v22 = __CFADD__(v279, v281);
  v282 = v279 + v281;
  if (v22)
  {
    ++v280;
  }

  *(&v284 + 1) = v280;
  *&v284 = v282;
  v283 = v284 >> 51;
  *(&v284 + 1) = (v278 + (v284 >> 51)) >> 64;
  *&v284 = v278 + v283;
  v285 = __PAIR128__(v268 + __CFADD__(v277, v269) + v276, v277 + v269) + (2 * v265) * v264 + (v284 >> 51);
  v286 = __PAIR128__((v264 * (2 * (v257 & 0x7FFFFFFFFFFFFLL))) >> 64, v271) + __PAIR128__(v273, v274) + v265 * v265 + (v285 >> 51);
  v287 = v286 & 0x7FFFFFFFFFFFFLL;
  v288 = (v275 & 0x7FFFFFFFFFFFFLL) + 19 * (v286 >> 51);
  v289 = v288 & 0x7FFFFFFFFFFFFLL;
  v290 = (v282 & 0x7FFFFFFFFFFFFLL) + (v288 >> 51);
  v291 = v290 & 0x7FFFFFFFFFFFFLL;
  v292 = ((v278 + v283) & 0x7FFFFFFFFFFFFLL) + (v290 >> 51);
  v293 = v291 * (38 * (v286 & 0x7FFFFFFFFFFFFLL)) + v289 * v289 + v292 * (38 * (v285 & 0x7FFFFFFFFFFFFLL));
  v294 = 2 * (v285 & 0x7FFFFFFFFFFFFLL);
  v295 = (v292 * (38 * (v286 & 0x7FFFFFFFFFFFFLL)) + (v285 & 0x7FFFFFFFFFFFFLL) * 19 * (v285 & 0x7FFFFFFFFFFFFLL) + (2 * v291) * v289) >> 64;
  v296 = v292 * 38 * (v286 & 0x7FFFFFFFFFFFFLL) + (v285 & 0x7FFFFFFFFFFFFLL) * 19 * (v285 & 0x7FFFFFFFFFFFFLL) + 2 * v291 * v289;
  v297 = v293 >> 51;
  v22 = __CFADD__(v296, v297);
  v298 = v296 + v297;
  if (v22)
  {
    ++v295;
  }

  *(&v299 + 1) = v295;
  *&v299 = v298;
  v300 = v291 * v291 + (v285 & 0x7FFFFFFFFFFFFLL) * 38 * (v286 & 0x7FFFFFFFFFFFFLL) + (2 * v292) * v289 + (v299 >> 51);
  v301 = v289 * v294 + v287 * 19 * v287 + 2 * v292 * v291 + (v300 >> 51);
  v1072 = (v291 * v294 + v289 * 2 * v287 + v292 * v292 + ((v289 * v294 + v287 * (19 * v287) + (2 * v292) * v291 + (v300 >> 51)) >> 51)) & 0x7FFFFFFFFFFFFLL;
  v302 = (v293 & 0x7FFFFFFFFFFFFLL) + 19 * ((v291 * v294 + v289 * (2 * v287) + v292 * v292 + ((v289 * v294 + v287 * (19 * v287) + (2 * v292) * v291 + (v300 >> 51)) >> 51)) >> 51);
  v303 = (v298 & 0x7FFFFFFFFFFFFLL) + (v302 >> 51);
  v1071.i64[1] = v301 & 0x7FFFFFFFFFFFFLL;
  v1071.i64[0] = (v300 & 0x7FFFFFFFFFFFFLL) + (v303 >> 51);
  v1070.i64[1] = v303 & 0x7FFFFFFFFFFFFLL;
  v1070.i64[0] = v302 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(v989, &v1070, v989);
  v304 = v989[1] * (38 * v991) + v990 * (38 * *(&v990 + 1)) + v989[0] * v989[0];
  v305 = v989[1] * (2 * *(&v990 + 1)) + v990 * v990 + v989[0] * (2 * v991);
  v306 = (v989[1] * (2 * v990) + (19 * v991) * v991 + v989[0] * (2 * *(&v990 + 1))) >> 64;
  v307 = v989[1] * 2 * v990 + 19 * v991 * v991 + v989[0] * 2 * *(&v990 + 1);
  v308 = (v989[1] * v989[1] + *(&v990 + 1) * (38 * v991) + v989[0] * (2 * v990)) >> 64;
  v309 = v989[1] * v989[1] + *(&v990 + 1) * 38 * v991 + v989[0] * 2 * v990;
  v311 = (v990 * (38 * v991) + (19 * *(&v990 + 1)) * *(&v990 + 1) + v989[0] * (2 * v989[1])) >> 64;
  v310 = v990 * 38 * v991 + 19 * *(&v990 + 1) * *(&v990 + 1) + v989[0] * 2 * v989[1];
  v312 = v304 >> 51;
  v22 = __CFADD__(v310, v312);
  v313 = v310 + v312;
  if (v22)
  {
    ++v311;
  }

  *(&v315 + 1) = v311;
  *&v315 = v313;
  v314 = v315 >> 51;
  v22 = __CFADD__(v309, v314);
  v316 = v309 + v314;
  if (v22)
  {
    ++v308;
  }

  *(&v318 + 1) = v308;
  *&v318 = v316;
  v317 = v318 >> 51;
  v22 = __CFADD__(v307, v317);
  v319 = v307 + v317;
  if (v22)
  {
    ++v306;
  }

  *(&v321 + 1) = v306;
  *&v321 = v319;
  v320 = v321 >> 51;
  v22 = __CFADD__(v305, v320);
  v322 = v305 + v320;
  v323 = v313 & 0x7FFFFFFFFFFFFLL;
  v324 = v316 & 0x7FFFFFFFFFFFFLL;
  v325 = v319 & 0x7FFFFFFFFFFFFLL;
  if (v22)
  {
    v326 = *(&v305 + 1) + 1;
  }

  else
  {
    v326 = (v989[1] * (2 * *(&v990 + 1)) + v990 * v990 + v989[0] * (2 * v991)) >> 64;
  }

  *(&v327 + 1) = v326;
  *&v327 = v322;
  v328 = v322 & 0x7FFFFFFFFFFFFLL;
  v329 = (v304 & 0x7FFFFFFFFFFFFLL) + 19 * (v327 >> 51);
  v330 = v329 & 0x7FFFFFFFFFFFFLL;
  v331 = v323 + (v329 >> 51);
  v332 = v331 & 0x7FFFFFFFFFFFFLL;
  v333 = v324 + (v331 >> 51);
  v334 = 9;
  do
  {
    v335 = v332 * (38 * v328) + v333 * (38 * v325) + v330 * v330;
    v336 = v332 * (2 * v325) + v333 * v333 + v330 * (2 * v328);
    v337 = (v330 * (2 * v332)) >> 64;
    v338 = v330 * 2 * v332;
    v340 = (v332 * (2 * v333) + (19 * v328) * v328 + v330 * (2 * v325)) >> 64;
    v339 = v332 * 2 * v333 + 19 * v328 * v328 + v330 * 2 * v325;
    v342 = v332 * v332 + v325 * (38 * v328) + v330 * (2 * v333);
    v341 = *(&v342 + 1);
    v344 = v333 * 38 * v328 + 19 * v325 * v325 + v338;
    v343 = (v333 * (38 * v328) + (19 * v325) * v325 + __PAIR128__(v337, v338)) >> 64;
    v345 = v335 >> 51;
    v346 = v344 + v345;
    if (__CFADD__(v344, v345))
    {
      ++v343;
    }

    *(&v348 + 1) = v343;
    *&v348 = v344 + v345;
    v347 = v348 >> 51;
    v349 = v342 + v347;
    if (__CFADD__(v342, v347))
    {
      v341 = *(&v342 + 1) + 1;
    }

    *(&v351 + 1) = v341;
    *&v351 = v342 + v347;
    v350 = v351 >> 51;
    v22 = __CFADD__(v339, v350);
    v352 = v339 + v350;
    if (v22)
    {
      v353 = v340 + 1;
    }

    else
    {
      v353 = v340;
    }

    *(&v355 + 1) = v353;
    *&v355 = v352;
    v354 = v355 >> 51;
    v22 = __CFADD__(v336, v354);
    v356 = v336 + v354;
    if (v22)
    {
      v357 = *(&v336 + 1) + 1;
    }

    else
    {
      v357 = *(&v336 + 1);
    }

    *(&v358 + 1) = v357;
    *&v358 = v356;
    v359 = (v335 & 0x7FFFFFFFFFFFFLL) + 19 * (v358 >> 51);
    v360 = v346 & 0x7FFFFFFFFFFFFLL;
    v361 = v349 & 0x7FFFFFFFFFFFFLL;
    v325 = v352 & 0x7FFFFFFFFFFFFLL;
    v328 = v356 & 0x7FFFFFFFFFFFFLL;
    v362 = v360 + (v359 >> 51);
    v330 = v359 & 0x7FFFFFFFFFFFFLL;
    v333 = v361 + (v362 >> 51);
    v332 = v362 & 0x7FFFFFFFFFFFFLL;
    --v334;
  }

  while (v334);
  v1072 = v328;
  v1071.i64[1] = v325;
  v1071.i64[0] = v333;
  v1070.i64[1] = v332;
  v1070.i64[0] = v359 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(v1070.i64, &v1070, v989);
  v363 = v1070.u64[1] * (38 * v1072) + v1071.u64[0] * (38 * v1071.i64[1]) + v1070.u64[0] * v1070.u64[0];
  v364 = v1070.u64[1] * (2 * v1071.i64[1]) + v1071.u64[0] * v1071.u64[0] + v1070.u64[0] * (2 * v1072);
  v365 = (v1070.u64[1] * (2 * v1071.i64[0]) + 19 * v1072 * v1072 + v1070.u64[0] * (2 * v1071.i64[1])) >> 64;
  v366 = v1070.i64[1] * 2 * v1071.i64[0] + 19 * v1072 * v1072 + v1070.i64[0] * 2 * v1071.i64[1];
  v367 = (v1070.u64[1] * v1070.u64[1] + v1071.u64[1] * (38 * v1072) + v1070.u64[0] * (2 * v1071.i64[0])) >> 64;
  v368 = v1070.i64[1] * v1070.i64[1] + v1071.i64[1] * 38 * v1072 + v1070.i64[0] * 2 * v1071.i64[0];
  v370 = (v1071.u64[0] * (38 * v1072) + (19 * v1071.i64[1]) * v1071.u64[1] + v1070.u64[0] * (2 * v1070.i64[1])) >> 64;
  v369 = v1071.i64[0] * 38 * v1072 + 19 * v1071.i64[1] * v1071.i64[1] + v1070.i64[0] * 2 * v1070.i64[1];
  v371 = v363 >> 51;
  v22 = __CFADD__(v369, v371);
  v372 = v369 + v371;
  if (v22)
  {
    ++v370;
  }

  *(&v374 + 1) = v370;
  *&v374 = v372;
  v373 = v374 >> 51;
  v22 = __CFADD__(v368, v373);
  v375 = v368 + v373;
  if (v22)
  {
    ++v367;
  }

  *(&v377 + 1) = v367;
  *&v377 = v375;
  v376 = v377 >> 51;
  v22 = __CFADD__(v366, v376);
  v378 = v366 + v376;
  if (v22)
  {
    ++v365;
  }

  *(&v380 + 1) = v365;
  *&v380 = v378;
  v379 = v380 >> 51;
  v22 = __CFADD__(v364, v379);
  v381 = v364 + v379;
  v382 = v372 & 0x7FFFFFFFFFFFFLL;
  v383 = v375 & 0x7FFFFFFFFFFFFLL;
  v384 = v378 & 0x7FFFFFFFFFFFFLL;
  if (v22)
  {
    v385 = *(&v364 + 1) + 1;
  }

  else
  {
    v385 = (v1070.u64[1] * (2 * v1071.i64[1]) + v1071.u64[0] * v1071.u64[0] + v1070.u64[0] * (2 * v1072)) >> 64;
  }

  *(&v386 + 1) = v385;
  *&v386 = v381;
  v387 = v381 & 0x7FFFFFFFFFFFFLL;
  v388 = (v363 & 0x7FFFFFFFFFFFFLL) + 19 * (v386 >> 51);
  v389 = v388 & 0x7FFFFFFFFFFFFLL;
  v390 = v382 + (v388 >> 51);
  v391 = v390 & 0x7FFFFFFFFFFFFLL;
  v392 = v383 + (v390 >> 51);
  v393 = 19;
  do
  {
    v394 = v391 * (38 * v387) + v392 * (38 * v384) + v389 * v389;
    v395 = v391 * (2 * v384) + v392 * v392 + v389 * (2 * v387);
    v396 = (v389 * (2 * v391)) >> 64;
    v397 = v389 * 2 * v391;
    v398 = (v391 * (2 * v392) + (19 * v387) * v387 + v389 * (2 * v384)) >> 64;
    v399 = v391 * 2 * v392 + 19 * v387 * v387 + v389 * 2 * v384;
    v401 = v391 * v391 + v384 * (38 * v387) + v389 * (2 * v392);
    v400 = *(&v401 + 1);
    v403 = v392 * 38 * v387 + 19 * v384 * v384 + v397;
    v402 = (v392 * (38 * v387) + (19 * v384) * v384 + __PAIR128__(v396, v397)) >> 64;
    v404 = v394 >> 51;
    v405 = v403 + v404;
    if (__CFADD__(v403, v404))
    {
      ++v402;
    }

    *(&v407 + 1) = v402;
    *&v407 = v403 + v404;
    v406 = v407 >> 51;
    v408 = v401 + v406;
    if (__CFADD__(v401, v406))
    {
      v400 = *(&v401 + 1) + 1;
    }

    *(&v410 + 1) = v400;
    *&v410 = v401 + v406;
    v409 = v410 >> 51;
    v22 = __CFADD__(v399, v409);
    v411 = v399 + v409;
    if (v22)
    {
      v412 = v398 + 1;
    }

    else
    {
      v412 = v398;
    }

    *(&v414 + 1) = v412;
    *&v414 = v411;
    v413 = v414 >> 51;
    v22 = __CFADD__(v395, v413);
    v415 = v395 + v413;
    if (v22)
    {
      v416 = *(&v395 + 1) + 1;
    }

    else
    {
      v416 = *(&v395 + 1);
    }

    *(&v417 + 1) = v416;
    *&v417 = v415;
    v418 = (v394 & 0x7FFFFFFFFFFFFLL) + 19 * (v417 >> 51);
    v419 = v405 & 0x7FFFFFFFFFFFFLL;
    v420 = v408 & 0x7FFFFFFFFFFFFLL;
    v384 = v411 & 0x7FFFFFFFFFFFFLL;
    v387 = v415 & 0x7FFFFFFFFFFFFLL;
    v421 = v419 + (v418 >> 51);
    v389 = v418 & 0x7FFFFFFFFFFFFLL;
    v392 = v420 + (v421 >> 51);
    v391 = v421 & 0x7FFFFFFFFFFFFLL;
    --v393;
  }

  while (v393);
  v1069 = v387;
  v1068 = v384;
  v1067 = v392;
  v1066 = v391;
  v1065 = v418 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(v1070.i64, &v1065, &v1070);
  v422 = v1070.u64[1] * (38 * v1072) + v1071.u64[0] * (38 * v1071.i64[1]) + v1070.u64[0] * v1070.u64[0];
  v423 = v1070.u64[1] * (2 * v1071.i64[1]) + v1071.u64[0] * v1071.u64[0] + v1070.u64[0] * (2 * v1072);
  v424 = (v1070.u64[1] * (2 * v1071.i64[0]) + 19 * v1072 * v1072 + v1070.u64[0] * (2 * v1071.i64[1])) >> 64;
  v425 = v1070.i64[1] * 2 * v1071.i64[0] + 19 * v1072 * v1072 + v1070.i64[0] * 2 * v1071.i64[1];
  v426 = (v1070.u64[1] * v1070.u64[1] + v1071.u64[1] * (38 * v1072) + v1070.u64[0] * (2 * v1071.i64[0])) >> 64;
  v427 = v1070.i64[1] * v1070.i64[1] + v1071.i64[1] * 38 * v1072 + v1070.i64[0] * 2 * v1071.i64[0];
  v429 = (v1071.u64[0] * (38 * v1072) + (19 * v1071.i64[1]) * v1071.u64[1] + v1070.u64[0] * (2 * v1070.i64[1])) >> 64;
  v428 = v1071.i64[0] * 38 * v1072 + 19 * v1071.i64[1] * v1071.i64[1] + v1070.i64[0] * 2 * v1070.i64[1];
  v430 = v422 >> 51;
  v22 = __CFADD__(v428, v430);
  v431 = v428 + v430;
  if (v22)
  {
    ++v429;
  }

  *(&v433 + 1) = v429;
  *&v433 = v431;
  v432 = v433 >> 51;
  v22 = __CFADD__(v427, v432);
  v434 = v427 + v432;
  if (v22)
  {
    ++v426;
  }

  *(&v436 + 1) = v426;
  *&v436 = v434;
  v435 = v436 >> 51;
  v22 = __CFADD__(v425, v435);
  v437 = v425 + v435;
  if (v22)
  {
    ++v424;
  }

  *(&v439 + 1) = v424;
  *&v439 = v437;
  v438 = v439 >> 51;
  v22 = __CFADD__(v423, v438);
  v440 = v423 + v438;
  v441 = v431 & 0x7FFFFFFFFFFFFLL;
  v442 = v434 & 0x7FFFFFFFFFFFFLL;
  v443 = v437 & 0x7FFFFFFFFFFFFLL;
  if (v22)
  {
    v444 = *(&v423 + 1) + 1;
  }

  else
  {
    v444 = (v1070.u64[1] * (2 * v1071.i64[1]) + v1071.u64[0] * v1071.u64[0] + v1070.u64[0] * (2 * v1072)) >> 64;
  }

  *(&v445 + 1) = v444;
  *&v445 = v440;
  v446 = v440 & 0x7FFFFFFFFFFFFLL;
  v447 = (v422 & 0x7FFFFFFFFFFFFLL) + 19 * (v445 >> 51);
  v448 = v447 & 0x7FFFFFFFFFFFFLL;
  v449 = v441 + (v447 >> 51);
  v450 = v449 & 0x7FFFFFFFFFFFFLL;
  v451 = v442 + (v449 >> 51);
  v452 = 9;
  do
  {
    v453 = v450 * (38 * v446) + v451 * (38 * v443) + v448 * v448;
    v454 = v450 * (2 * v443) + v451 * v451 + v448 * (2 * v446);
    v455 = (v448 * (2 * v450)) >> 64;
    v456 = v448 * 2 * v450;
    v457 = (v450 * (2 * v451) + (19 * v446) * v446 + v448 * (2 * v443)) >> 64;
    v458 = v450 * 2 * v451 + 19 * v446 * v446 + v448 * 2 * v443;
    v460 = v450 * v450 + v443 * (38 * v446) + v448 * (2 * v451);
    v459 = *(&v460 + 1);
    v462 = v451 * 38 * v446 + 19 * v443 * v443 + v456;
    v461 = (v451 * (38 * v446) + (19 * v443) * v443 + __PAIR128__(v455, v456)) >> 64;
    v463 = v453 >> 51;
    v464 = v462 + v463;
    if (__CFADD__(v462, v463))
    {
      ++v461;
    }

    *(&v466 + 1) = v461;
    *&v466 = v462 + v463;
    v465 = v466 >> 51;
    v467 = v460 + v465;
    if (__CFADD__(v460, v465))
    {
      v459 = *(&v460 + 1) + 1;
    }

    *(&v469 + 1) = v459;
    *&v469 = v460 + v465;
    v468 = v469 >> 51;
    v22 = __CFADD__(v458, v468);
    v470 = v458 + v468;
    if (v22)
    {
      v471 = v457 + 1;
    }

    else
    {
      v471 = v457;
    }

    *(&v473 + 1) = v471;
    *&v473 = v470;
    v472 = v473 >> 51;
    v22 = __CFADD__(v454, v472);
    v474 = v454 + v472;
    if (v22)
    {
      v475 = *(&v454 + 1) + 1;
    }

    else
    {
      v475 = *(&v454 + 1);
    }

    *(&v476 + 1) = v475;
    *&v476 = v474;
    v477 = (v453 & 0x7FFFFFFFFFFFFLL) + 19 * (v476 >> 51);
    v478 = v464 & 0x7FFFFFFFFFFFFLL;
    v479 = v467 & 0x7FFFFFFFFFFFFLL;
    v443 = v470 & 0x7FFFFFFFFFFFFLL;
    v446 = v474 & 0x7FFFFFFFFFFFFLL;
    v480 = v478 + (v477 >> 51);
    v448 = v477 & 0x7FFFFFFFFFFFFLL;
    v451 = v479 + (v480 >> 51);
    v450 = v480 & 0x7FFFFFFFFFFFFLL;
    --v452;
  }

  while (v452);
  v1072 = v446;
  v1071.i64[1] = v443;
  v1071.i64[0] = v451;
  v1070.i64[1] = v450;
  v1070.i64[0] = v477 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(v989, &v1070, v989);
  v481 = v989[1] * (38 * v991) + v990 * (38 * *(&v990 + 1)) + v989[0] * v989[0];
  v482 = v989[1] * (2 * *(&v990 + 1)) + v990 * v990 + v989[0] * (2 * v991);
  v483 = (v989[1] * (2 * v990) + (19 * v991) * v991 + v989[0] * (2 * *(&v990 + 1))) >> 64;
  v484 = v989[1] * 2 * v990 + 19 * v991 * v991 + v989[0] * 2 * *(&v990 + 1);
  v485 = (v989[1] * v989[1] + *(&v990 + 1) * (38 * v991) + v989[0] * (2 * v990)) >> 64;
  v486 = v989[1] * v989[1] + *(&v990 + 1) * 38 * v991 + v989[0] * 2 * v990;
  v488 = (v990 * (38 * v991) + (19 * *(&v990 + 1)) * *(&v990 + 1) + v989[0] * (2 * v989[1])) >> 64;
  v487 = v990 * 38 * v991 + 19 * *(&v990 + 1) * *(&v990 + 1) + v989[0] * 2 * v989[1];
  v489 = v481 >> 51;
  v22 = __CFADD__(v487, v489);
  v490 = v487 + v489;
  if (v22)
  {
    ++v488;
  }

  *(&v492 + 1) = v488;
  *&v492 = v490;
  v491 = v492 >> 51;
  v22 = __CFADD__(v486, v491);
  v493 = v486 + v491;
  if (v22)
  {
    ++v485;
  }

  *(&v495 + 1) = v485;
  *&v495 = v493;
  v494 = v495 >> 51;
  v22 = __CFADD__(v484, v494);
  v496 = v484 + v494;
  if (v22)
  {
    ++v483;
  }

  *(&v498 + 1) = v483;
  *&v498 = v496;
  v497 = v498 >> 51;
  v22 = __CFADD__(v482, v497);
  v499 = v482 + v497;
  v500 = v490 & 0x7FFFFFFFFFFFFLL;
  v501 = v493 & 0x7FFFFFFFFFFFFLL;
  v502 = v496 & 0x7FFFFFFFFFFFFLL;
  if (v22)
  {
    v503 = *(&v482 + 1) + 1;
  }

  else
  {
    v503 = (v989[1] * (2 * *(&v990 + 1)) + v990 * v990 + v989[0] * (2 * v991)) >> 64;
  }

  *(&v504 + 1) = v503;
  *&v504 = v499;
  v505 = v499 & 0x7FFFFFFFFFFFFLL;
  v506 = (v481 & 0x7FFFFFFFFFFFFLL) + 19 * (v504 >> 51);
  v507 = v506 & 0x7FFFFFFFFFFFFLL;
  v508 = v500 + (v506 >> 51);
  v509 = v508 & 0x7FFFFFFFFFFFFLL;
  v510 = v501 + (v508 >> 51);
  v511 = 49;
  do
  {
    v512 = v509 * (38 * v505) + v510 * (38 * v502) + v507 * v507;
    v513 = v509 * (2 * v502) + v510 * v510 + v507 * (2 * v505);
    v514 = (v507 * (2 * v509)) >> 64;
    v515 = v507 * 2 * v509;
    v516 = (v509 * (2 * v510) + (19 * v505) * v505 + v507 * (2 * v502)) >> 64;
    v517 = v509 * 2 * v510 + 19 * v505 * v505 + v507 * 2 * v502;
    v519 = v509 * v509 + v502 * (38 * v505) + v507 * (2 * v510);
    v518 = *(&v519 + 1);
    v521 = v510 * 38 * v505 + 19 * v502 * v502 + v515;
    v520 = (v510 * (38 * v505) + (19 * v502) * v502 + __PAIR128__(v514, v515)) >> 64;
    v522 = v512 >> 51;
    v523 = v521 + v522;
    if (__CFADD__(v521, v522))
    {
      ++v520;
    }

    *(&v525 + 1) = v520;
    *&v525 = v521 + v522;
    v524 = v525 >> 51;
    v526 = v519 + v524;
    if (__CFADD__(v519, v524))
    {
      v518 = *(&v519 + 1) + 1;
    }

    *(&v528 + 1) = v518;
    *&v528 = v519 + v524;
    v527 = v528 >> 51;
    v22 = __CFADD__(v517, v527);
    v529 = v517 + v527;
    if (v22)
    {
      v530 = v516 + 1;
    }

    else
    {
      v530 = v516;
    }

    *(&v532 + 1) = v530;
    *&v532 = v529;
    v531 = v532 >> 51;
    v22 = __CFADD__(v513, v531);
    v533 = v513 + v531;
    if (v22)
    {
      v534 = *(&v513 + 1) + 1;
    }

    else
    {
      v534 = *(&v513 + 1);
    }

    *(&v535 + 1) = v534;
    *&v535 = v533;
    v536 = (v512 & 0x7FFFFFFFFFFFFLL) + 19 * (v535 >> 51);
    v537 = v523 & 0x7FFFFFFFFFFFFLL;
    v538 = v526 & 0x7FFFFFFFFFFFFLL;
    v502 = v529 & 0x7FFFFFFFFFFFFLL;
    v505 = v533 & 0x7FFFFFFFFFFFFLL;
    v539 = v537 + (v536 >> 51);
    v507 = v536 & 0x7FFFFFFFFFFFFLL;
    v510 = v538 + (v539 >> 51);
    v509 = v539 & 0x7FFFFFFFFFFFFLL;
    --v511;
  }

  while (v511);
  v1072 = v505;
  v1071.i64[1] = v502;
  v1071.i64[0] = v510;
  v1070.i64[1] = v509;
  v1070.i64[0] = v536 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(v1070.i64, &v1070, v989);
  v540 = v1070.u64[1] * (38 * v1072) + v1071.u64[0] * (38 * v1071.i64[1]) + v1070.u64[0] * v1070.u64[0];
  v541 = v1070.u64[1] * (2 * v1071.i64[1]) + v1071.u64[0] * v1071.u64[0] + v1070.u64[0] * (2 * v1072);
  v542 = (v1070.u64[1] * (2 * v1071.i64[0]) + 19 * v1072 * v1072 + v1070.u64[0] * (2 * v1071.i64[1])) >> 64;
  v543 = v1070.i64[1] * 2 * v1071.i64[0] + 19 * v1072 * v1072 + v1070.i64[0] * 2 * v1071.i64[1];
  v544 = (v1070.u64[1] * v1070.u64[1] + v1071.u64[1] * (38 * v1072) + v1070.u64[0] * (2 * v1071.i64[0])) >> 64;
  v545 = v1070.i64[1] * v1070.i64[1] + v1071.i64[1] * 38 * v1072 + v1070.i64[0] * 2 * v1071.i64[0];
  v547 = (v1071.u64[0] * (38 * v1072) + (19 * v1071.i64[1]) * v1071.u64[1] + v1070.u64[0] * (2 * v1070.i64[1])) >> 64;
  v546 = v1071.i64[0] * 38 * v1072 + 19 * v1071.i64[1] * v1071.i64[1] + v1070.i64[0] * 2 * v1070.i64[1];
  v548 = v540 >> 51;
  v22 = __CFADD__(v546, v548);
  v549 = v546 + v548;
  if (v22)
  {
    ++v547;
  }

  *(&v551 + 1) = v547;
  *&v551 = v549;
  v550 = v551 >> 51;
  v22 = __CFADD__(v545, v550);
  v552 = v545 + v550;
  if (v22)
  {
    ++v544;
  }

  *(&v554 + 1) = v544;
  *&v554 = v552;
  v553 = v554 >> 51;
  v22 = __CFADD__(v543, v553);
  v555 = v543 + v553;
  if (v22)
  {
    ++v542;
  }

  *(&v557 + 1) = v542;
  *&v557 = v555;
  v556 = v557 >> 51;
  v22 = __CFADD__(v541, v556);
  v558 = v541 + v556;
  v559 = v549 & 0x7FFFFFFFFFFFFLL;
  v560 = v552 & 0x7FFFFFFFFFFFFLL;
  v561 = v555 & 0x7FFFFFFFFFFFFLL;
  if (v22)
  {
    v562 = *(&v541 + 1) + 1;
  }

  else
  {
    v562 = (v1070.u64[1] * (2 * v1071.i64[1]) + v1071.u64[0] * v1071.u64[0] + v1070.u64[0] * (2 * v1072)) >> 64;
  }

  *(&v563 + 1) = v562;
  *&v563 = v558;
  v564 = v558 & 0x7FFFFFFFFFFFFLL;
  v565 = (v540 & 0x7FFFFFFFFFFFFLL) + 19 * (v563 >> 51);
  v566 = v565 & 0x7FFFFFFFFFFFFLL;
  v567 = v559 + (v565 >> 51);
  v568 = v567 & 0x7FFFFFFFFFFFFLL;
  v569 = v560 + (v567 >> 51);
  v570 = 99;
  do
  {
    v571 = v568 * (38 * v564) + v569 * (38 * v561) + v566 * v566;
    v572 = v568 * (2 * v561) + v569 * v569 + v566 * (2 * v564);
    v573 = (v566 * (2 * v568)) >> 64;
    v574 = v566 * 2 * v568;
    v575 = (v568 * (2 * v569) + (19 * v564) * v564 + v566 * (2 * v561)) >> 64;
    v576 = v568 * 2 * v569 + 19 * v564 * v564 + v566 * 2 * v561;
    v578 = v568 * v568 + v561 * (38 * v564) + v566 * (2 * v569);
    v577 = *(&v578 + 1);
    v580 = v569 * 38 * v564 + 19 * v561 * v561 + v574;
    v579 = (v569 * (38 * v564) + (19 * v561) * v561 + __PAIR128__(v573, v574)) >> 64;
    v581 = v571 >> 51;
    v582 = v580 + v581;
    if (__CFADD__(v580, v581))
    {
      ++v579;
    }

    *(&v584 + 1) = v579;
    *&v584 = v580 + v581;
    v583 = v584 >> 51;
    v585 = v578 + v583;
    if (__CFADD__(v578, v583))
    {
      v577 = *(&v578 + 1) + 1;
    }

    *(&v587 + 1) = v577;
    *&v587 = v578 + v583;
    v586 = v587 >> 51;
    v22 = __CFADD__(v576, v586);
    v588 = v576 + v586;
    if (v22)
    {
      v589 = v575 + 1;
    }

    else
    {
      v589 = v575;
    }

    *(&v591 + 1) = v589;
    *&v591 = v588;
    v590 = v591 >> 51;
    v22 = __CFADD__(v572, v590);
    v592 = v572 + v590;
    if (v22)
    {
      v593 = *(&v572 + 1) + 1;
    }

    else
    {
      v593 = *(&v572 + 1);
    }

    *(&v594 + 1) = v593;
    *&v594 = v592;
    v595 = (v571 & 0x7FFFFFFFFFFFFLL) + 19 * (v594 >> 51);
    v596 = v582 & 0x7FFFFFFFFFFFFLL;
    v597 = v585 & 0x7FFFFFFFFFFFFLL;
    v561 = v588 & 0x7FFFFFFFFFFFFLL;
    v564 = v592 & 0x7FFFFFFFFFFFFLL;
    v598 = v596 + (v595 >> 51);
    v566 = v595 & 0x7FFFFFFFFFFFFLL;
    v569 = v597 + (v598 >> 51);
    v568 = v598 & 0x7FFFFFFFFFFFFLL;
    --v570;
  }

  while (v570);
  v1069 = v564;
  v1068 = v561;
  v1067 = v569;
  v1066 = v568;
  v1065 = v595 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(v1070.i64, &v1065, &v1070);
  v599 = v1070.u64[1] * (38 * v1072) + v1071.u64[0] * (38 * v1071.i64[1]) + v1070.u64[0] * v1070.u64[0];
  v600 = v1070.u64[1] * (2 * v1071.i64[1]) + v1071.u64[0] * v1071.u64[0] + v1070.u64[0] * (2 * v1072);
  v601 = (v1070.u64[1] * (2 * v1071.i64[0]) + 19 * v1072 * v1072 + v1070.u64[0] * (2 * v1071.i64[1])) >> 64;
  v602 = v1070.i64[1] * 2 * v1071.i64[0] + 19 * v1072 * v1072 + v1070.i64[0] * 2 * v1071.i64[1];
  v603 = (v1070.u64[1] * v1070.u64[1] + v1071.u64[1] * (38 * v1072) + v1070.u64[0] * (2 * v1071.i64[0])) >> 64;
  v604 = v1070.i64[1] * v1070.i64[1] + v1071.i64[1] * 38 * v1072 + v1070.i64[0] * 2 * v1071.i64[0];
  v606 = (v1071.u64[0] * (38 * v1072) + (19 * v1071.i64[1]) * v1071.u64[1] + v1070.u64[0] * (2 * v1070.i64[1])) >> 64;
  v605 = v1071.i64[0] * 38 * v1072 + 19 * v1071.i64[1] * v1071.i64[1] + v1070.i64[0] * 2 * v1070.i64[1];
  v607 = v599 >> 51;
  v22 = __CFADD__(v605, v607);
  v608 = v605 + v607;
  if (v22)
  {
    ++v606;
  }

  *(&v610 + 1) = v606;
  *&v610 = v608;
  v609 = v610 >> 51;
  v22 = __CFADD__(v604, v609);
  v611 = v604 + v609;
  if (v22)
  {
    ++v603;
  }

  *(&v613 + 1) = v603;
  *&v613 = v611;
  v612 = v613 >> 51;
  v22 = __CFADD__(v602, v612);
  v614 = v602 + v612;
  if (v22)
  {
    ++v601;
  }

  *(&v616 + 1) = v601;
  *&v616 = v614;
  v615 = v616 >> 51;
  v22 = __CFADD__(v600, v615);
  v617 = v600 + v615;
  v618 = v608 & 0x7FFFFFFFFFFFFLL;
  v619 = v611 & 0x7FFFFFFFFFFFFLL;
  v620 = v614 & 0x7FFFFFFFFFFFFLL;
  if (v22)
  {
    v621 = *(&v600 + 1) + 1;
  }

  else
  {
    v621 = (v1070.u64[1] * (2 * v1071.i64[1]) + v1071.u64[0] * v1071.u64[0] + v1070.u64[0] * (2 * v1072)) >> 64;
  }

  *(&v622 + 1) = v621;
  *&v622 = v617;
  v623 = v617 & 0x7FFFFFFFFFFFFLL;
  v624 = (v599 & 0x7FFFFFFFFFFFFLL) + 19 * (v622 >> 51);
  v625 = v624 & 0x7FFFFFFFFFFFFLL;
  v626 = v618 + (v624 >> 51);
  v627 = v626 & 0x7FFFFFFFFFFFFLL;
  v628 = v619 + (v626 >> 51);
  v629 = 49;
  do
  {
    v630 = v627 * (38 * v623) + v628 * (38 * v620) + v625 * v625;
    v631 = v627 * (2 * v620) + v628 * v628 + v625 * (2 * v623);
    v632 = (v625 * (2 * v627)) >> 64;
    v633 = v625 * 2 * v627;
    v634 = (v627 * (2 * v628) + (19 * v623) * v623 + v625 * (2 * v620)) >> 64;
    v635 = v627 * 2 * v628 + 19 * v623 * v623 + v625 * 2 * v620;
    v637 = v627 * v627 + v620 * (38 * v623) + v625 * (2 * v628);
    v636 = *(&v637 + 1);
    v639 = v628 * 38 * v623 + 19 * v620 * v620 + v633;
    v638 = (v628 * (38 * v623) + (19 * v620) * v620 + __PAIR128__(v632, v633)) >> 64;
    v640 = v630 >> 51;
    v641 = v639 + v640;
    if (__CFADD__(v639, v640))
    {
      ++v638;
    }

    *(&v643 + 1) = v638;
    *&v643 = v639 + v640;
    v642 = v643 >> 51;
    v644 = v637 + v642;
    if (__CFADD__(v637, v642))
    {
      v636 = *(&v637 + 1) + 1;
    }

    *(&v646 + 1) = v636;
    *&v646 = v637 + v642;
    v645 = v646 >> 51;
    v22 = __CFADD__(v635, v645);
    v647 = v635 + v645;
    if (v22)
    {
      v648 = v634 + 1;
    }

    else
    {
      v648 = v634;
    }

    *(&v650 + 1) = v648;
    *&v650 = v647;
    v649 = v650 >> 51;
    v22 = __CFADD__(v631, v649);
    v651 = v631 + v649;
    if (v22)
    {
      v652 = *(&v631 + 1) + 1;
    }

    else
    {
      v652 = *(&v631 + 1);
    }

    *(&v653 + 1) = v652;
    *&v653 = v651;
    v654 = (v630 & 0x7FFFFFFFFFFFFLL) + 19 * (v653 >> 51);
    v655 = v641 & 0x7FFFFFFFFFFFFLL;
    v656 = v644 & 0x7FFFFFFFFFFFFLL;
    v620 = v647 & 0x7FFFFFFFFFFFFLL;
    v623 = v651 & 0x7FFFFFFFFFFFFLL;
    v657 = v655 + (v654 >> 51);
    v625 = v654 & 0x7FFFFFFFFFFFFLL;
    v628 = v656 + (v657 >> 51);
    v627 = v657 & 0x7FFFFFFFFFFFFLL;
    --v629;
  }

  while (v629);
  v1072 = v623;
  v1071.i64[1] = v620;
  v1071.i64[0] = v628;
  v1070.i64[1] = v627;
  v1070.i64[0] = v654 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(v989, &v1070, v989);
  v658 = v989[1] * (38 * v991) + v990 * (38 * *(&v990 + 1)) + v989[0] * v989[0];
  v660 = v658 >> 51;
  v659 = v989[1] * (2 * *(&v990 + 1)) + v990 * v990 + v989[0] * (2 * v991);
  v662 = (v989[1] * (2 * v990) + (19 * v991) * v991 + v989[0] * (2 * *(&v990 + 1))) >> 64;
  v661 = v989[1] * 2 * v990 + 19 * v991 * v991 + v989[0] * 2 * *(&v990 + 1);
  v664 = (v989[1] * v989[1] + *(&v990 + 1) * (38 * v991) + v989[0] * (2 * v990)) >> 64;
  v663 = v989[1] * v989[1] + *(&v990 + 1) * 38 * v991 + v989[0] * 2 * v990;
  v666 = (v990 * (38 * v991) + (19 * *(&v990 + 1)) * *(&v990 + 1) + v989[0] * (2 * v989[1])) >> 64;
  v665 = v990 * 38 * v991 + 19 * *(&v990 + 1) * *(&v990 + 1) + v989[0] * 2 * v989[1];
  v22 = __CFADD__(v665, v660);
  v667 = v665 + v660;
  if (v22)
  {
    ++v666;
  }

  *(&v669 + 1) = v666;
  *&v669 = v667;
  v668 = v669 >> 51;
  v670 = v667 & 0x7FFFFFFFFFFFFLL;
  v22 = __CFADD__(v663, v668);
  v671 = v663 + v668;
  if (v22)
  {
    ++v664;
  }

  *(&v673 + 1) = v664;
  *&v673 = v671;
  v672 = v673 >> 51;
  v674 = v671 & 0x7FFFFFFFFFFFFLL;
  v22 = __CFADD__(v661, v672);
  v675 = v661 + v672;
  if (v22)
  {
    ++v662;
  }

  *(&v677 + 1) = v662;
  *&v677 = v675;
  v676 = v677 >> 51;
  v678 = v675 & 0x7FFFFFFFFFFFFLL;
  if (__CFADD__(v659, v676))
  {
    v679 = *(&v659 + 1) + 1;
  }

  else
  {
    v679 = (v989[1] * (2 * *(&v990 + 1)) + v990 * v990 + v989[0] * (2 * v991)) >> 64;
  }

  *(&v680 + 1) = v679;
  *&v680 = v659 + v676;
  v681 = (v659 + v676) & 0x7FFFFFFFFFFFFLL;
  v682 = (v658 & 0x7FFFFFFFFFFFFLL) + 19 * (v680 >> 51);
  v683 = v682 & 0x7FFFFFFFFFFFFLL;
  v684 = v670 + (v682 >> 51);
  v685 = v684 & 0x7FFFFFFFFFFFFLL;
  v686 = v674 + (v684 >> 51);
  v687 = 38 * v681;
  v688 = 2 * v681;
  v689 = 2 * v678;
  v690 = 2 * (v684 & 0x7FFFFFFFFFFFFLL);
  v691 = (v681 * (19 * v681)) >> 64;
  v692 = v681 * 19 * v681;
  v693 = (v678 * (38 * v681)) >> 64;
  v694 = v678 * 38 * v681;
  v695 = (v678 * (19 * v678)) >> 64;
  v696 = v678 * 19 * v678;
  v697 = (v686 * (38 * v678)) >> 64;
  v698 = v686 * 38 * v678;
  v699 = (v685 * (38 * v681)) >> 64;
  v700 = v685 * 38 * v681;
  v701 = (v685 * (2 * v678)) >> 64;
  v702 = v685 * 2 * v678;
  v703 = __PAIR128__(v699, v700) + v683 * v683;
  v704 = (v683 * v688) >> 64;
  v705 = v683 * v688;
  v22 = __CFADD__(v703, v698);
  v706 = v703 + v698;
  v707 = (v683 * v689) >> 64;
  v708 = v683 * v689;
  v709 = v685 * v685 + __PAIR128__(v693, v694) + (2 * v686) * v683;
  v711 = v686 * v687 + v696 + v690 * v683;
  v710 = (v686 * v687 + __PAIR128__(v695, v696) + v690 * v683) >> 64;
  *(&v680 + 1) = v697 + v22 + *(&v703 + 1);
  *&v680 = v706;
  v712 = v680 >> 51;
  v713 = v711 + v712;
  if (__CFADD__(v711, v712))
  {
    ++v710;
  }

  *(&v715 + 1) = v710;
  *&v715 = v711 + v712;
  v714 = v715 >> 51;
  *(&v715 + 1) = (v709 + (v715 >> 51)) >> 64;
  *&v715 = v709 + v714;
  v716 = __PAIR128__(v691 + __CFADD__(v708, v692) + v707, v708 + v692) + (2 * v686) * v685 + (v715 >> 51);
  v717 = __PAIR128__(v701, v702) + __PAIR128__(v704, v705) + v686 * v686 + (v716 >> 51);
  v718 = (v706 & 0x7FFFFFFFFFFFFLL) + 19 * (v717 >> 51);
  v719 = (v713 & 0x7FFFFFFFFFFFFLL) + (v718 >> 51);
  v989[0] = v718 & 0x7FFFFFFFFFFFFLL;
  v989[1] = v719 & 0x7FFFFFFFFFFFFLL;
  *&v990 = ((v709 + v714) & 0x7FFFFFFFFFFFFLL) + (v719 >> 51);
  *(&v990 + 1) = v716 & 0x7FFFFFFFFFFFFLL;
  v991 = v717 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(v925, v989, v969);
  fe_mul_impl(v925, v925, v959);
  v720 = v925[1] * (38 * v927) + v926 * (38 * *(&v926 + 1)) + v925[0] * v925[0];
  v721 = v720 >> 51;
  v723 = (v925[1] * (2 * *(&v926 + 1)) + v926 * v926 + v925[0] * (2 * v927)) >> 64;
  v722 = v925[1] * 2 * *(&v926 + 1) + v926 * v926 + v925[0] * 2 * v927;
  v724 = v925[1] * (2 * v926) + (19 * v927) * v927 + v925[0] * (2 * *(&v926 + 1));
  v725 = v925[1] * v925[1] + *(&v926 + 1) * (38 * v927) + v925[0] * (2 * v926);
  v726 = (v926 * (38 * v927) + (19 * *(&v926 + 1)) * *(&v926 + 1) + v925[0] * (2 * v925[1])) >> 64;
  v727 = v926 * 38 * v927 + 19 * *(&v926 + 1) * *(&v926 + 1) + v925[0] * 2 * v925[1];
  v22 = __CFADD__(v727, v721);
  v728 = v727 + v721;
  if (v22)
  {
    ++v726;
  }

  *(&v730 + 1) = v726;
  *&v730 = v728;
  v729 = v730 >> 51;
  v731 = v728 & 0x7FFFFFFFFFFFFLL;
  v22 = __CFADD__(v725, v729);
  v732 = v725 + v729;
  if (v22)
  {
    v733 = *(&v725 + 1) + 1;
  }

  else
  {
    v733 = (v925[1] * v925[1] + *(&v926 + 1) * (38 * v927) + v925[0] * (2 * v926)) >> 64;
  }

  *(&v735 + 1) = v733;
  *&v735 = v732;
  v734 = v735 >> 51;
  v736 = v732 & 0x7FFFFFFFFFFFFLL;
  v22 = __CFADD__(v724, v734);
  v737 = v724 + v734;
  if (v22)
  {
    v738 = *(&v724 + 1) + 1;
  }

  else
  {
    v738 = (v925[1] * (2 * v926) + (19 * v927) * v927 + v925[0] * (2 * *(&v926 + 1))) >> 64;
  }

  *(&v740 + 1) = v738;
  *&v740 = v737;
  v739 = v740 >> 51;
  v22 = __CFADD__(v722, v739);
  v741 = v722 + v739;
  if (v22)
  {
    ++v723;
  }

  *(&v742 + 1) = v723;
  *&v742 = v741;
  v743 = (v720 & 0x7FFFFFFFFFFFFLL) + 19 * (v742 >> 51);
  v744 = v731 + (v743 >> 51);
  v937 = v743 & 0x7FFFFFFFFFFFFLL;
  *&v938 = v744 & 0x7FFFFFFFFFFFFLL;
  *(&v938 + 1) = v736 + (v744 >> 51);
  *&v939 = v737 & 0x7FFFFFFFFFFFFLL;
  *(&v939 + 1) = v741 & 0x7FFFFFFFFFFFFLL;
  fe_mul_impl(&v937, &v937, v975);
  v745 = v937;
  v746 = v938;
  v747 = v937 - v39 + 0xFFFFFFFFFFFDALL;
  v748 = *(&v938 + 1);
  v749 = v939;
  v750 = v938 - v915 + (v747 >> 51) + 0xFFFFFFFFFFFFELL;
  v751 = *(&v938 + 1) - v40 + (v750 >> 51) + 0xFFFFFFFFFFFFELL;
  v752 = v939 - v41 + (v751 >> 51) + 0xFFFFFFFFFFFFELL;
  v753 = *(&v939 + 1) - v912 + (v752 >> 51) + 0xFFFFFFFFFFFFELL;
  v754 = (v747 & 0x7FFFFFFFFFFFFLL) + 19 * (v753 >> 51);
  v755 = (v750 & 0x7FFFFFFFFFFFFLL) + (v754 >> 51);
  v989[0] = v754 & 0x7FFFFFFFFFFFFLL;
  v989[1] = v755 & 0x7FFFFFFFFFFFFLL;
  *&v990 = (v751 & 0x7FFFFFFFFFFFFLL) + (v755 >> 51);
  *(&v990 + 1) = v752 & 0x7FFFFFFFFFFFFLL;
  v991 = v753 & 0x7FFFFFFFFFFFFLL;
  fe_tobytes(&v1070, v989);
  v756 = vorrq_s8(v1070, v1071);
  if (vorr_s8(*v756.i8, *&vextq_s8(v756, v756, 8uLL)))
  {
    v757 = v746 + v915 + ((v745 + v39) >> 51);
    v758 = v748 + v40 + (v757 >> 51);
    v759 = v749 + v41 + (v758 >> 51);
    v760 = *(&v749 + 1) + v912 + (v759 >> 51);
    v761 = ((v745 + v39) & 0x7FFFFFFFFFFFFLL) + 19 * (v760 >> 51);
    v762 = (v757 & 0x7FFFFFFFFFFFFLL) + (v761 >> 51);
    v989[0] = v761 & 0x7FFFFFFFFFFFFLL;
    v989[1] = v762 & 0x7FFFFFFFFFFFFLL;
    *&v990 = (v758 & 0x7FFFFFFFFFFFFLL) + (v762 >> 51);
    *(&v990 + 1) = v759 & 0x7FFFFFFFFFFFFLL;
    v991 = v760 & 0x7FFFFFFFFFFFFLL;
    fe_tobytes(&v1070, v989);
    v763 = vorrq_s8(v1070, v1071);
    if (!*&vorr_s8(*v763.i8, *&vextq_s8(v763, v763, 8uLL)))
    {
      fe_mul_impl(v925, v925, sqrtm1);
      goto LABEL_191;
    }

    return 0;
  }

LABEL_191:
  fe_tobytes(v989, v925);
  if ((v989[0] & 1) != *(a4 + 31) >> 7)
  {
    v764 = ((0xFFFFFFFFFFFDALL - v925[0]) >> 51) - v925[1] + 0xFFFFFFFFFFFFELL;
    v765 = (v764 >> 51) - v926 + 0xFFFFFFFFFFFFELL;
    v766 = (v765 >> 51) - *(&v926 + 1) + 0xFFFFFFFFFFFFELL;
    v767 = (v766 >> 51) - v927 + 0xFFFFFFFFFFFFELL;
    v768 = ((0xFFFFFFFFFFFDALL - v925[0]) & 0x7FFFFFFFFFFFFLL) + 19 * (v767 >> 51);
    v769 = (v764 & 0x7FFFFFFFFFFFFLL) + (v768 >> 51);
    v925[0] = v768 & 0x7FFFFFFFFFFFFLL;
    v925[1] = v769 & 0x7FFFFFFFFFFFFLL;
    *&v926 = (v765 & 0x7FFFFFFFFFFFFLL) + (v769 >> 51);
    *(&v926 + 1) = v766 & 0x7FFFFFFFFFFFFLL;
    v927 = v767 & 0x7FFFFFFFFFFFFLL;
  }

  fe_mul_impl(&v932, v925, &v928);
  v770 = ((0xFFFFFFFFFFFDALL - v925[0]) >> 51) - v925[1] + 0xFFFFFFFFFFFFELL;
  v771 = (v770 >> 51) - v926 + 0xFFFFFFFFFFFFELL;
  v772 = (v771 >> 51) - *(&v926 + 1) + 0xFFFFFFFFFFFFELL;
  v773 = (v772 >> 51) - v927 + 0xFFFFFFFFFFFFELL;
  v774 = ((0xFFFFFFFFFFFDALL - v925[0]) & 0x7FFFFFFFFFFFFLL) + 19 * (v773 >> 51);
  v775 = (v770 & 0x7FFFFFFFFFFFFLL) + (v774 >> 51);
  v776 = v774 & 0x7FFFFFFFFFFFFLL;
  v777 = v775 & 0x7FFFFFFFFFFFFLL;
  v778 = (v771 & 0x7FFFFFFFFFFFFLL) + (v775 >> 51);
  v779 = v772 & 0x7FFFFFFFFFFFFLL;
  v780 = v773 & 0x7FFFFFFFFFFFFLL;
  v925[0] = v774 & 0x7FFFFFFFFFFFFLL;
  v925[1] = v775 & 0x7FFFFFFFFFFFFLL;
  *&v926 = v778;
  *(&v926 + 1) = v772 & 0x7FFFFFFFFFFFFLL;
  v781 = ((0xFFFFFFFFFFFDALL - v932) >> 51) - v933 + 0xFFFFFFFFFFFFELL;
  v782 = (v781 >> 51) - v934 + 0xFFFFFFFFFFFFELL;
  v783 = (v782 >> 51) - v935 + 0xFFFFFFFFFFFFELL;
  v784 = (v783 >> 51) - v936 + 0xFFFFFFFFFFFFELL;
  v785 = ((0xFFFFFFFFFFFDALL - v932) & 0x7FFFFFFFFFFFFLL) + 19 * (v784 >> 51);
  v786 = (v781 & 0x7FFFFFFFFFFFFLL) + (v785 >> 51);
  v927 = v773 & 0x7FFFFFFFFFFFFLL;
  v932 = v785 & 0x7FFFFFFFFFFFFLL;
  v933 = v786 & 0x7FFFFFFFFFFFFLL;
  v934 = (v782 & 0x7FFFFFFFFFFFFLL) + (v786 >> 51);
  v935 = v783 & 0x7FFFFFFFFFFFFLL;
  v936 = v784 & 0x7FFFFFFFFFFFFLL;
  v787 = *a3;
  v788 = *(a3 + 16);
  v789 = *(a3 + 32);
  *&v968[16] = *(a3 + 48);
  *v968 = v789;
  if (*&v968[24] > 0x1000000000000000uLL || *&v968[24] == 0x1000000000000000 && (*&v968[8] > 0x14DEF9DEA2F79CD6uLL || *v968 > __PAIR128__(0x14DEF9DEA2F79CD6, 0x5812631A5CF5D3ECLL)))
  {
    return 0;
  }

  *v959 = xmmword_273BA6F40;
  v960 = xmmword_273BA6F50;
  v961 = xmmword_273BA6F60;
  v962 = xmmword_273BA6F70;
  v791 = *(a3 + 16);
  v964[0] = *a3;
  v964[1] = v791;
  v963 = 0x200uLL;
  v792 = *(a4 + 1);
  v964[2] = *a4;
  v964[3] = v792;
  v967 = 0x4000000040;
  v913 = v788;
  v914 = v787;
  if (!a2)
  {
    v795 = HIDWORD(v967);
    LOBYTE(v965[0]) = 0x80;
    v796 = 65;
    goto LABEL_214;
  }

  v793 = a2 >> 61;
  if (8 * a2 > 0xFFFFFFFFFFFFFDFFLL)
  {
    ++v793;
  }

  v963.i64[1] = v793;
  v963.i64[0] = 8 * a2 + 512;
  if (a2 <= 0x3F)
  {
    memcpy(v965, a1, a2);
    LODWORD(v794) = v967 + a2;
LABEL_208:
    LODWORD(v967) = v794;
    goto LABEL_209;
  }

  v797 = *(a1 + 1);
  v965[0] = *a1;
  v965[1] = v797;
  v798 = *(a1 + 3);
  v965[2] = *(a1 + 2);
  v966 = v798;
  LODWORD(v967) = 0;
  v794 = a2 - 64;
  v799 = a1 + 64;
  sha512_block_data_order(v959, v964, 1);
  if (a2 - 64 >= 0x80)
  {
    sha512_block_data_order(v959, v799, v794 >> 7);
    v794 &= 0x7Fu;
    v799 = &a1[a2 - v794];
  }

  if (v794)
  {
    memcpy(v964, v799, v794);
    goto LABEL_208;
  }

  LODWORD(v794) = v967;
LABEL_209:
  v795 = HIDWORD(v967);
  *(v964 + v794) = 0x80;
  v796 = v794 + 1;
  if (v794 < 0x70)
  {
    if (v794 == 111)
    {
      goto LABEL_215;
    }
  }

  else
  {
    if (v794 != 127)
    {
      bzero(v964 + v796, 127 - v794);
    }

    sha512_block_data_order(v959, v964, 1);
    v796 = 0;
  }

LABEL_214:
  bzero(v964 + v796, 112 - v796);
LABEL_215:
  v800 = vrev64q_s8(v963);
  v966 = vextq_s8(v800, v800, 8uLL);
  sha512_block_data_order(v959, v964, 1);
  if (v795 >= 8)
  {
    v801 = v795 >> 3;
    if (v795 >= 0x20)
    {
      v802 = v801 & 0x1FFFFFFC;
      v803 = &v957[v802];
      v804 = &v958;
      v805 = &v960;
      v806 = v802;
      do
      {
        v807 = vrev64q_s8(*v805);
        v804[-1] = vrev64q_s8(v805[-1]);
        *v804 = v807;
        v804 += 2;
        v805 += 2;
        v806 -= 4;
      }

      while (v806);
      if (v802 == v801)
      {
        goto LABEL_223;
      }
    }

    else
    {
      v802 = 0;
      v803 = v957;
    }

    v808 = v801 - v802;
    v809 = &v959[v802];
    do
    {
      v810 = *v809++;
      *v803++ = bswap64(v810);
      --v808;
    }

    while (v808);
  }

LABEL_223:
  x25519_sc_reduce(v957);
  v811 = 0;
  v812 = 0x706050403020100;
  v813 = v957 + 1;
  do
  {
    v814 = v813 - 1;
    v815 = vld1_dup_s8(v814);
    v816 = vld1_dup_s8(v813);
    v817 = vneg_s8(vand_s8(v812, 0x707070707070707));
    v818 = &v1070.i8[v811];
    *v818 = vand_s8(vshl_u8(v815, v817), 0x101010101010101);
    v818[1] = vand_s8(vshl_u8(v816, v817), 0x101010101010101);
    v811 += 16;
    v812 = vadd_s8(v812, 0x1010101010101010);
    v813 += 2;
  }

  while (v811 != 256);
  v819 = 0;
  v820 = &v1070.i8[2];
  v821 = 1;
  do
  {
    if (v819 > 0xFE || !v1070.i8[v819])
    {
      goto LABEL_228;
    }

    v822 = v1070.i8[v821];
    if (v1070.i8[v821])
    {
      v823 = v1070.i8[v819];
      v824 = 2 * v822;
      v825 = 2 * v822 + v823;
      if (v825 > 15)
      {
        v826 = v823 - v824;
        if (v826 < -15)
        {
          goto LABEL_228;
        }

        v1070.i8[v819] = v826;
        v827 = v819;
        while (v1070.i8[v827 + 1])
        {
          v1070.i8[++v827] = 0;
          if (v827 >= 0xFF)
          {
            goto LABEL_239;
          }
        }

        v1070.i8[v827 + 1] = 1;
        if (v819 > 0xFD)
        {
          goto LABEL_228;
        }
      }

      else
      {
        v1070.i8[v819] = v825;
        v1070.i8[v821] = 0;
        if (v819 > 0xFD)
        {
          goto LABEL_228;
        }
      }
    }

    else
    {
LABEL_239:
      if (v819 > 0xFD)
      {
        goto LABEL_228;
      }
    }

    if (v1070.i8[v821 + 1])
    {
      v828 = v1070.i8[v819];
      v829 = 4 * v1070.i8[v821 + 1];
      if (v829 + v828 >= 16)
      {
        v830 = v828 - v829;
        if (v830 < -15)
        {
          goto LABEL_228;
        }

        v831 = 0;
        v1070.i8[v819] = v830;
        while (v820[v831])
        {
          v820[v831++] = 0;
          if ((v821 + v831) >= 0xFF)
          {
            goto LABEL_248;
          }
        }

        v820[v831] = 1;
        if (v819 == 253)
        {
          goto LABEL_228;
        }
      }

      else
      {
        v1070.i8[v819] = v829 + v828;
        v1070.i8[v821 + 1] = 0;
        if (v819 == 253)
        {
          goto LABEL_228;
        }
      }
    }

    else
    {
LABEL_248:
      if (v819 == 253)
      {
        goto LABEL_228;
      }
    }

    v832 = v821 + 2;
    if (v1070.i8[v821 + 2])
    {
      v833 = v1070.i8[v819];
      v834 = 8 * v1070.i8[v821 + 2];
      if (v834 + v833 >= 16)
      {
        v835 = v833 - v834;
        if (v835 < -15)
        {
          goto LABEL_228;
        }

        v1070.i8[v819] = v835;
        while (v1070.i8[v832])
        {
          v1070.i8[v832] = 0;
          v22 = v832++ >= 0xFF;
          if (v22)
          {
            goto LABEL_263;
          }
        }

        v1070.i8[v832] = 1;
      }

      else
      {
        v1070.i8[v819] = v834 + v833;
        v1070.i8[v832] = 0;
      }
    }

LABEL_263:
    if (v819 <= 0xFB)
    {
      v836 = v821 + 3;
      if (v1070.i8[v821 + 3])
      {
        v837 = v1070.i8[v819];
        v838 = 16 * v1070.i8[v821 + 3];
        if (v838 + v837 >= 16)
        {
          v839 = v837 - v838;
          if (v839 < -15)
          {
            goto LABEL_228;
          }

          v1070.i8[v819] = v839;
          while (v1070.i8[v836])
          {
            v1070.i8[v836] = 0;
            v22 = v836++ >= 0xFF;
            if (v22)
            {
              goto LABEL_274;
            }
          }

          v1070.i8[v836] = 1;
        }

        else
        {
          v1070.i8[v819] = v838 + v837;
          v1070.i8[v836] = 0;
        }
      }

LABEL_274:
      if (v819 != 251)
      {
        v840 = v821 + 4;
        if (v1070.i8[v821 + 4])
        {
          v841 = v1070.i8[v819];
          v842 = 32 * v1070.i8[v821 + 4];
          if (v842 + v841 >= 16)
          {
            v843 = v841 - v842;
            if (v843 < -15)
            {
              goto LABEL_228;
            }

            v1070.i8[v819] = v843;
            while (v1070.i8[v840])
            {
              v1070.i8[v840] = 0;
              v22 = v840++ >= 0xFF;
              if (v22)
              {
                goto LABEL_285;
              }
            }

            v1070.i8[v840] = 1;
          }

          else
          {
            v1070.i8[v819] = v842 + v841;
            v1070.i8[v840] = 0;
          }
        }

LABEL_285:
        if (v819 <= 0xF9)
        {
          v844 = v821 + 5;
          if (v1070.i8[v821 + 5])
          {
            v845 = v1070.i8[v819];
            v846 = v1070.i8[v821 + 5] << 6;
            if (v846 + v845 < 16)
            {
              v1070.i8[v819] = v846 + v845;
              v1070.i8[v844] = 0;
            }

            else
            {
              v847 = v845 - v846;
              if (v847 >= -15)
              {
                v1070.i8[v819] = v847;
                while (v1070.i8[v844])
                {
                  v1070.i8[v844] = 0;
                  v22 = v844++ >= 0xFF;
                  if (v22)
                  {
                    goto LABEL_228;
                  }
                }

                v1070.i8[v844] = 1;
              }
            }
          }
        }
      }
    }

LABEL_228:
    ++v819;
    ++v821;
    ++v820;
  }

  while (v819 != 256);
  v848 = 0;
  v849 = 0x706050403020100;
  v850 = &v968[1];
  do
  {
    v851 = v850 - 1;
    v852 = vld1_dup_s8(v851);
    v853 = vld1_dup_s8(v850);
    v854 = vneg_s8(vand_s8(v849, 0x707070707070707));
    v855 = (&v1065 + v848);
    *v855 = vand_s8(vshl_u8(v852, v854), 0x101010101010101);
    v855[1] = vand_s8(vshl_u8(v853, v854), 0x101010101010101);
    v848 += 16;
    v849 = vadd_s8(v849, 0x1010101010101010);
    v850 += 2;
  }

  while (v848 != 256);
  v856 = 0;
  v857 = &v1065 + 2;
  v858 = 1;
  while (2)
  {
    if (v856 <= 0xFE && *(&v1065 + v856))
    {
      v859 = *(&v1065 + v858);
      if (*(&v1065 + v858))
      {
        v860 = *(&v1065 + v856);
        v861 = 2 * v859;
        v862 = 2 * v859 + v860;
        if (v862 > 15)
        {
          v863 = v860 - v861;
          if (v863 >= -15)
          {
            *(&v1065 + v856) = v863;
            v864 = v856;
            while (*(&v1065 + v864 + 1))
            {
              *(&v1065 + ++v864) = 0;
              if (v864 >= 0xFF)
              {
                goto LABEL_310;
              }
            }

            *(&v1065 + v864 + 1) = 1;
            if (v856 <= 0xFD)
            {
LABEL_311:
              if (*(&v1065 + v858 + 1))
              {
                v865 = *(&v1065 + v856);
                v866 = 4 * *(&v1065 + v858 + 1);
                if (v866 + v865 >= 16)
                {
                  v867 = v865 - v866;
                  if (v867 < -15)
                  {
                    goto LABEL_299;
                  }

                  v868 = 0;
                  *(&v1065 + v856) = v867;
                  while (v857[v868])
                  {
                    v857[v868++] = 0;
                    if ((v858 + v868) >= 0xFF)
                    {
                      goto LABEL_319;
                    }
                  }

                  v857[v868] = 1;
                  if (v856 == 253)
                  {
                    goto LABEL_299;
                  }
                }

                else
                {
                  *(&v1065 + v856) = v866 + v865;
                  *(&v1065 + v858 + 1) = 0;
                  if (v856 == 253)
                  {
                    goto LABEL_299;
                  }
                }
              }

              else
              {
LABEL_319:
                if (v856 == 253)
                {
                  goto LABEL_299;
                }
              }

              v869 = v858 + 2;
              if (*(&v1065 + v858 + 2))
              {
                v870 = *(&v1065 + v856);
                v871 = 8 * *(&v1065 + v858 + 2);
                if (v871 + v870 >= 16)
                {
                  v872 = v870 - v871;
                  if (v872 < -15)
                  {
                    goto LABEL_299;
                  }

                  *(&v1065 + v856) = v872;
                  while (*(&v1065 + v869))
                  {
                    *(&v1065 + v869) = 0;
                    v22 = v869++ >= 0xFF;
                    if (v22)
                    {
                      goto LABEL_334;
                    }
                  }

                  *(&v1065 + v869) = 1;
                }

                else
                {
                  *(&v1065 + v856) = v871 + v870;
                  *(&v1065 + v869) = 0;
                }
              }

LABEL_334:
              if (v856 <= 0xFB)
              {
                v873 = v858 + 3;
                if (*(&v1065 + v858 + 3))
                {
                  v874 = *(&v1065 + v856);
                  v875 = 16 * *(&v1065 + v858 + 3);
                  if (v875 + v874 >= 16)
                  {
                    v876 = v874 - v875;
                    if (v876 < -15)
                    {
                      goto LABEL_299;
                    }

                    *(&v1065 + v856) = v876;
                    while (*(&v1065 + v873))
                    {
                      *(&v1065 + v873) = 0;
                      v22 = v873++ >= 0xFF;
                      if (v22)
                      {
                        goto LABEL_345;
                      }
                    }

                    *(&v1065 + v873) = 1;
                  }

                  else
                  {
                    *(&v1065 + v856) = v875 + v874;
                    *(&v1065 + v873) = 0;
                  }
                }

LABEL_345:
                if (v856 != 251)
                {
                  v877 = v858 + 4;
                  if (*(&v1065 + v858 + 4))
                  {
                    v878 = *(&v1065 + v856);
                    v879 = 32 * *(&v1065 + v858 + 4);
                    if (v879 + v878 >= 16)
                    {
                      v880 = v878 - v879;
                      if (v880 < -15)
                      {
                        goto LABEL_299;
                      }

                      *(&v1065 + v856) = v880;
                      while (*(&v1065 + v877))
                      {
                        *(&v1065 + v877) = 0;
                        v22 = v877++ >= 0xFF;
                        if (v22)
                        {
                          goto LABEL_356;
                        }
                      }

                      *(&v1065 + v877) = 1;
                    }

                    else
                    {
                      *(&v1065 + v856) = v879 + v878;
                      *(&v1065 + v877) = 0;
                    }
                  }

LABEL_356:
                  if (v856 <= 0xF9)
                  {
                    v881 = v858 + 5;
                    if (*(&v1065 + v858 + 5))
                    {
                      v882 = *(&v1065 + v856);
                      v883 = *(&v1065 + v858 + 5) << 6;
                      if (v883 + v882 < 16)
                      {
                        *(&v1065 + v856) = v883 + v882;
                        *(&v1065 + v881) = 0;
                      }

                      else
                      {
                        v884 = v882 - v883;
                        if (v884 >= -15)
                        {
                          *(&v1065 + v856) = v884;
                          while (*(&v1065 + v881))
                          {
                            *(&v1065 + v881) = 0;
                            v22 = v881++ >= 0xFF;
                            if (v22)
                            {
                              goto LABEL_299;
                            }
                          }

                          *(&v1065 + v881) = 1;
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
          *(&v1065 + v856) = v862;
          *(&v1065 + v858) = 0;
          if (v856 <= 0xFD)
          {
            goto LABEL_311;
          }
        }
      }

      else
      {
LABEL_310:
        if (v856 <= 0xFD)
        {
          goto LABEL_311;
        }
      }
    }

LABEL_299:
    ++v856;
    ++v858;
    ++v857;
    if (v856 != 256)
    {
      continue;
    }

    break;
  }

  v989[0] = v928 + v776;
  v989[1] = *(&v928 + 1) + v777;
  *&v990 = v929 + v778;
  *(&v990 + 1) = *(&v929 + 1) + v779;
  v991 = v930 + v780;
  v992 = v928 - v776 + 0xFFFFFFFFFFFDALL;
  v993 = *(&v928 + 1) - v777 + 0xFFFFFFFFFFFFELL;
  v994 = v929 - v778 + 0xFFFFFFFFFFFFELL;
  v995 = *(&v929 + 1) - v779 + 0xFFFFFFFFFFFFELL;
  v996 = v930 - v780 + 0xFFFFFFFFFFFFELL;
  v999 = *&v931[32];
  v998 = *&v931[16];
  v997 = *v931;
  fe_mul_impl(v1000, &v932, d2);
  *v969 = *v925;
  *&v969[16] = v926;
  *v970 = v928;
  *&v970[16] = v929;
  *&v969[32] = v927;
  *&v970[32] = v930;
  v971 = *v931;
  v972 = *&v931[16];
  v973 = *&v931[32];
  ge_p2_dbl(v975, v969);
  fe_mul_impl(&v937, v975, &v984);
  fe_mul_impl(v940, &v976, &v979);
  fe_mul_impl(v941, &v979, &v984);
  fe_mul_impl(v942, v975, &v976);
  x25519_ge_add(v975, &v937, v989);
  fe_mul_impl(v969, v975, &v984);
  fe_mul_impl(v970, &v976, &v979);
  fe_mul_impl(&v971, &v979, &v984);
  fe_mul_impl(v974, v975, &v976);
  v1003 = vaddq_s64(vsubq_s64(*v970, *v969), xmmword_273BA9E40);
  v916 = vdupq_n_s64(0xFFFFFFFFFFFFEuLL);
  v1001[1] = vaddq_s64(*&v969[16], *&v970[16]);
  v1001[0] = vaddq_s64(*v969, *v970);
  v1004 = vaddq_s64(vsubq_s64(*&v970[16], *&v969[16]), v916);
  v1002 = *&v969[32] + *&v970[32];
  v1005 = *&v970[32] - *&v969[32] + 0xFFFFFFFFFFFFELL;
  v1006 = v971;
  v1007 = v972;
  v1008 = v973;
  fe_mul_impl(v1009, v974, d2);
  x25519_ge_add(v975, &v937, v1001);
  fe_mul_impl(v969, v975, &v984);
  fe_mul_impl(v970, &v976, &v979);
  fe_mul_impl(&v971, &v979, &v984);
  fe_mul_impl(v974, v975, &v976);
  v1012 = *v970 + 0xFFFFFFFFFFFDALL - *v969;
  v1010[0] = vaddq_s64(*v969, *v970);
  v1010[1] = vaddq_s64(vextq_s8(*&v969[8], *&v969[24], 8uLL), vextq_s8(*&v970[8], *&v970[24], 8uLL));
  v1011 = vaddq_s64(*(v969 + 24), *(v970 + 24)).i64[1];
  v1013 = vaddq_s64(vsubq_s64(*&v970[8], *&v969[8]), v916);
  v1014 = vaddq_s64(vsubq_s64(*&v970[24], *&v969[24]), v916);
  v1015 = v971;
  v1016 = v972;
  v1017 = v973;
  fe_mul_impl(v1018, v974, d2);
  x25519_ge_add(v975, &v937, v1010);
  fe_mul_impl(v969, v975, &v984);
  fe_mul_impl(v970, &v976, &v979);
  fe_mul_impl(&v971, &v979, &v984);
  fe_mul_impl(v974, v975, &v976);
  v1021 = *v970 + 0xFFFFFFFFFFFDALL - *v969;
  v1019[0] = vaddq_s64(*v969, *v970);
  v1019[1] = vaddq_s64(vextq_s8(*&v969[8], *&v969[24], 8uLL), vextq_s8(*&v970[8], *&v970[24], 8uLL));
  v1020 = vaddq_s64(*(v969 + 24), *(v970 + 24)).i64[1];
  v1022 = vaddq_s64(vsubq_s64(*&v970[8], *&v969[8]), v916);
  v1023 = vaddq_s64(vsubq_s64(*&v970[24], *&v969[24]), v916);
  v1024 = v971;
  v1025 = v972;
  v1026 = v973;
  fe_mul_impl(v1027, v974, d2);
  x25519_ge_add(v975, &v937, v1019);
  fe_mul_impl(v969, v975, &v984);
  fe_mul_impl(v970, &v976, &v979);
  fe_mul_impl(&v971, &v979, &v984);
  fe_mul_impl(v974, v975, &v976);
  v1030 = *v970 + 0xFFFFFFFFFFFDALL - *v969;
  v1028[0] = vaddq_s64(*v969, *v970);
  v1028[1] = vaddq_s64(vextq_s8(*&v969[8], *&v969[24], 8uLL), vextq_s8(*&v970[8], *&v970[24], 8uLL));
  v1029 = vaddq_s64(*(v969 + 24), *(v970 + 24)).i64[1];
  v1031 = vaddq_s64(vsubq_s64(*&v970[8], *&v969[8]), v916);
  v1032 = vaddq_s64(vsubq_s64(*&v970[24], *&v969[24]), v916);
  v1033 = v971;
  v1034 = v972;
  v1035 = v973;
  fe_mul_impl(v1036, v974, d2);
  x25519_ge_add(v975, &v937, v1028);
  fe_mul_impl(v969, v975, &v984);
  fe_mul_impl(v970, &v976, &v979);
  fe_mul_impl(&v971, &v979, &v984);
  fe_mul_impl(v974, v975, &v976);
  v1039 = *v970 + 0xFFFFFFFFFFFDALL - *v969;
  v1037[0] = vaddq_s64(*v969, *v970);
  v1037[1] = vaddq_s64(vextq_s8(*&v969[8], *&v969[24], 8uLL), vextq_s8(*&v970[8], *&v970[24], 8uLL));
  v1038 = vaddq_s64(*(v969 + 24), *(v970 + 24)).i64[1];
  v1040 = vaddq_s64(vsubq_s64(*&v970[8], *&v969[8]), v916);
  v1041 = vaddq_s64(vsubq_s64(*&v970[24], *&v969[24]), v916);
  v1042 = v971;
  v1043 = v972;
  v1044 = v973;
  fe_mul_impl(v1045, v974, d2);
  x25519_ge_add(v975, &v937, v1037);
  fe_mul_impl(v969, v975, &v984);
  fe_mul_impl(v970, &v976, &v979);
  fe_mul_impl(&v971, &v979, &v984);
  fe_mul_impl(v974, v975, &v976);
  v1048 = *v970 + 0xFFFFFFFFFFFDALL - *v969;
  v1046[0] = vaddq_s64(*v969, *v970);
  v1046[1] = vaddq_s64(vextq_s8(*&v969[8], *&v969[24], 8uLL), vextq_s8(*&v970[8], *&v970[24], 8uLL));
  v1047 = vaddq_s64(*(v969 + 24), *(v970 + 24)).i64[1];
  v1049 = vaddq_s64(vsubq_s64(*&v970[8], *&v969[8]), v916);
  v1050 = vaddq_s64(vsubq_s64(*&v970[24], *&v969[24]), v916);
  v1051 = v971;
  v1052 = v972;
  v1053 = v973;
  fe_mul_impl(v1054, v974, d2);
  x25519_ge_add(v975, &v937, v1046);
  fe_mul_impl(v969, v975, &v984);
  fe_mul_impl(v970, &v976, &v979);
  fe_mul_impl(&v971, &v979, &v984);
  fe_mul_impl(v974, v975, &v976);
  v1058 = *v970 + 0xFFFFFFFFFFFDALL - *v969;
  v1059 = vaddq_s64(vsubq_s64(*&v970[8], *&v969[8]), v916);
  v1055 = vaddq_s64(*v969, *v970);
  v1056 = vaddq_s64(vextq_s8(*&v969[8], *&v969[24], 8uLL), vextq_s8(*&v970[8], *&v970[24], 8uLL));
  v1057 = vaddq_s64(*(v969 + 24), *(v970 + 24)).i64[1];
  v1060 = vaddq_s64(vsubq_s64(*&v970[24], *&v969[24]), v916);
  v1061 = v971;
  v1062 = v972;
  v1063 = v973;
  fe_mul_impl(v1064, v974, d2);
  *v918 = 0u;
  v919 = 0u;
  v922 = 0u;
  v923 = 0u;
  v920 = 0;
  v921 = 1;
  memset(&v924[8], 0, 32);
  *v924 = 1;
  v885 = 255;
  while (1)
  {
    v886 = v885;
    if (v1070.i8[v885] || *(&v1065 + v885))
    {
      break;
    }

    --v885;
    if (!v886)
    {
      goto LABEL_383;
    }
  }

  if ((v885 & 0x80000000) == 0)
  {
    v917 = vdupq_n_s64(0xFFFFFFFFFFFFEuLL);
    do
    {
      ge_p2_dbl(v975, v918);
      v889 = v1070.u8[v886];
      if (v1070.i8[v886] < 1)
      {
        if ((v889 & 0x80) != 0)
        {
          fe_mul_impl(v969, v975, &v984);
          fe_mul_impl(v970, &v976, &v979);
          fe_mul_impl(&v971, &v979, &v984);
          fe_mul_impl(v974, v975, &v976);
          v899 = &v989[20 * (-v889 >> 1)];
          v976 = vaddq_s64(vsubq_s64(*v970, *v969), xmmword_273BA9E40);
          *&v975[16] = vaddq_s64(*&v969[16], *&v970[16]);
          *v975 = vaddq_s64(*v969, *v970);
          v977 = vaddq_s64(vsubq_s64(*&v970[16], *&v969[16]), v917);
          *&v975[32] = *&v969[32] + *&v970[32];
          v978 = *&v970[32] - *&v969[32] + 0xFFFFFFFFFFFFELL;
          fe_mul_impl(v948, v975, v899 + 5);
          fe_mul_impl(v951, &v976, v899);
          fe_mul_impl(&v943, v899 + 15, v974);
          fe_mul_impl(v954, &v971, v899 + 10);
          *v975 = vaddq_s64(vsubq_s64(*v948, *v951), xmmword_273BA9E40);
          *&v975[16] = vaddq_s64(vsubq_s64(v949, v952), v917);
          v976 = vaddq_s64(*v951, *v948);
          v977 = vaddq_s64(v952, v949);
          *&v975[32] = v950 - v953 + 0xFFFFFFFFFFFFELL;
          v978 = v953 + v950;
          v900 = ((v954[0] >> 50) & 0x1FFF) + 2 * v954[1];
          v901 = (v900 >> 51) + 2 * v955.i64[0];
          v902 = (v901 >> 51) + 2 * v955.i64[1];
          v903 = (v902 >> 51) + 2 * v956;
          v904 = 2 * (v954[0] & 0x3FFFFFFFFFFFFLL) + 19 * (v903 >> 51);
          v905 = (v900 & 0x7FFFFFFFFFFFFLL) + (v904 >> 51);
          v904 &= 0x7FFFFFFFFFFFFuLL;
          v906 = v905 & 0x7FFFFFFFFFFFFLL;
          v907 = (v901 & 0x7FFFFFFFFFFFFLL) + (v905 >> 51);
          v979 = v904 + 0xFFFFFFFFFFFDALL - v943;
          v980 = v906 - v944 + 0xFFFFFFFFFFFFELL;
          v981 = v907 - v945 + 0xFFFFFFFFFFFFELL;
          v982 = (v902 & 0x7FFFFFFFFFFFFLL) - v946 + 0xFFFFFFFFFFFFELL;
          v983 = (v903 & 0x7FFFFFFFFFFFFLL) - v947 + 0xFFFFFFFFFFFFELL;
          v984 = v943 + v904;
          v985 = v944 + v906;
          v986 = v945 + v907;
          v987 = v946 + (v902 & 0x7FFFFFFFFFFFFLL);
          v988 = v947 + (v903 & 0x7FFFFFFFFFFFFLL);
          v887 = *(&v1065 + v886);
          if (v887 < 1)
          {
LABEL_379:
            if (v887 < 0)
            {
              fe_mul_impl(v969, v975, &v984);
              fe_mul_impl(v970, &v976, &v979);
              fe_mul_impl(&v971, &v979, &v984);
              fe_mul_impl(v974, v975, &v976);
              v890 = &Bi[15 * (-v887 >> 1)];
              v976 = vaddq_s64(vsubq_s64(*v970, *v969), xmmword_273BA9E40);
              *&v975[16] = vaddq_s64(*&v969[16], *&v970[16]);
              *v975 = vaddq_s64(*v969, *v970);
              v977 = vaddq_s64(vsubq_s64(*&v970[16], *&v969[16]), v917);
              *&v975[32] = *&v969[32] + *&v970[32];
              v978 = *&v970[32] - *&v969[32] + 0xFFFFFFFFFFFFELL;
              fe_mul_impl(v951, v975, v890 + 5);
              fe_mul_impl(v954, &v976, v890);
              fe_mul_impl(v948, v890 + 10, v974);
              *v975 = vaddq_s64(vsubq_s64(*v951, *v954), xmmword_273BA9E40);
              *&v975[16] = vaddq_s64(vsubq_s64(v952, v955), v917);
              v976 = vaddq_s64(*v954, *v951);
              v977 = vaddq_s64(v955, v952);
              *&v975[32] = v953 - v956 + 0xFFFFFFFFFFFFELL;
              v978 = v956 + v953;
              v891 = ((v971 >> 50) & 0x1FFF) + 2 * *(&v971 + 1);
              v892 = (v891 >> 51) + 2 * v972;
              v893 = (v892 >> 51) + 2 * *(&v972 + 1);
              v894 = (v893 >> 51) + 2 * v973;
              v895 = 2 * (v971 & 0x3FFFFFFFFFFFFLL) + 19 * (v894 >> 51);
              v896 = (v891 & 0x7FFFFFFFFFFFFLL) + (v895 >> 51);
              v895 &= 0x7FFFFFFFFFFFFuLL;
              v897 = v896 & 0x7FFFFFFFFFFFFLL;
              v898 = (v892 & 0x7FFFFFFFFFFFFLL) + (v896 >> 51);
              v979 = v895 + 0xFFFFFFFFFFFDALL - v948[0];
              v980 = v897 - v948[1] + 0xFFFFFFFFFFFFELL;
              v981 = v898 - v949.i64[0] + 0xFFFFFFFFFFFFELL;
              v982 = (v893 & 0x7FFFFFFFFFFFFLL) - v949.i64[1] + 0xFFFFFFFFFFFFELL;
              v983 = (v894 & 0x7FFFFFFFFFFFFLL) - v950 + 0xFFFFFFFFFFFFELL;
              v984 = v948[0] + v895;
              v985 = v948[1] + v897;
              v986 = v949.i64[0] + v898;
              v987 = v949.i64[1] + (v893 & 0x7FFFFFFFFFFFFLL);
              v988 = v950 + (v894 & 0x7FFFFFFFFFFFFLL);
            }

            goto LABEL_376;
          }
        }

        else
        {
          v887 = *(&v1065 + v886);
          if (v887 < 1)
          {
            goto LABEL_379;
          }
        }
      }

      else
      {
        fe_mul_impl(v969, v975, &v984);
        fe_mul_impl(v970, &v976, &v979);
        fe_mul_impl(&v971, &v979, &v984);
        fe_mul_impl(v974, v975, &v976);
        x25519_ge_add(v975, v969, &v989[20 * (v889 >> 1)]);
        v887 = *(&v1065 + v886);
        if (v887 < 1)
        {
          goto LABEL_379;
        }
      }

      fe_mul_impl(v969, v975, &v984);
      fe_mul_impl(v970, &v976, &v979);
      fe_mul_impl(&v971, &v979, &v984);
      fe_mul_impl(v974, v975, &v976);
      ge_madd(v975, v969, &Bi[15 * (v887 >> 1)]);
LABEL_376:
      fe_mul_impl(v918, v975, &v984);
      fe_mul_impl(&v921, &v976, &v979);
      fe_mul_impl(v924, &v979, &v984);
    }

    while (v886-- > 0);
  }

LABEL_383:
  *v989 = *v924;
  v990 = *&v924[16];
  v991 = *&v924[32];
  fe_loose_invert(v1070.i64, v989);
  fe_mul_impl(v989, v918, &v1070);
  fe_mul_impl(&v1065, &v921, &v1070);
  fe_tobytes(v969, &v1065);
  fe_tobytes(v975, v989);
  v969[31] ^= v975[0] << 7;
  return (vmaxvq_u8(vornq_s8(vmvnq_s8(vceqq_s8(v914, *v969)), vceqq_s8(v913, *&v969[16]))) & 1) == 0;
}