int ASN1_mbstring_ncopy(ASN1_STRING **out, const unsigned __int8 *in, int len, int inform, unint64_t mask, uint64_t minsize, uint64_t maxsize)
{
  v11 = *&len;
  if (*&len == -1)
  {
    v11 = strlen(in);
    if (mask)
    {
      v14 = mask;
    }

    else
    {
      v14 = 10246;
    }

    v15 = inform - 4096;
    if ((inform - 4096) >= 5)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (mask)
    {
      v14 = mask;
    }

    else
    {
      v14 = 10246;
    }

    v15 = inform - 4096;
    if ((inform - 4096) >= 5)
    {
      goto LABEL_57;
    }
  }

  if (((0x17u >> inform) & 1) == 0)
  {
LABEL_57:
    v34 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_mbstr.cc";
    v35 = 12;
    v36 = 182;
    v37 = 78;
LABEL_58:
    ERR_put_error(v35, 0, v36, v34, v37);
    return -1;
  }

  v81 = out;
  v82 = off_2882A4B00[v15];
  v16 = dword_273BA6AC0[v15];
  data = in;
  v88 = in;
  v89 = v11;
  if (v11)
  {
    v79 = v16;
    v17 = 0;
    v18 = 0;
    v20 = inform == 4098 || inform == 4100;
    v21 = !v20;
    while (1)
    {
      LODWORD(v85) = 0;
      if (!(v82)(&v88, &v85))
      {
        v34 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_mbstr.cc";
        v35 = 12;
        v36 = v79;
        v37 = 89;
        goto LABEL_58;
      }

      if (v17)
      {
        v24 = 1;
      }

      else
      {
        v24 = v21;
      }

      if ((v24 & 1) == 0 && v85 == 65279)
      {
        v34 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_mbstr.cc";
        v35 = 12;
        v36 = 126;
        v37 = 100;
        goto LABEL_58;
      }

      if ((v14 & 2) != 0)
      {
        if (v85 > 0x7F || ((v85 & 0x5F) - 65 >= 0x1A ? (v25 = (v85 - 48) >= 0xA) : (v25 = 0), v25 && (v85 > 0x3F || ((1 << v85) & 0xA400FB8100000000) == 0)))
        {
          v14 &= ~2uLL;
        }
      }

      if (((v85 > 0x7F) & (v14 >> 4)) != 0)
      {
        v26 = v14 & 0xFFFFFFFFFFFFFFEFLL;
      }

      else
      {
        v26 = v14;
      }

      if (((v85 > 0xFF) & (v26 >> 2)) != 0)
      {
        v26 &= ~4uLL;
      }

      v14 = (((v85 & 0xFFFF0000) != 0) & (v26 >> 11)) != 0 ? v26 & 0xFFFFFFFFFFFFF7FFLL : v26;
      if (!v14)
      {
        break;
      }

      ++v17;
      if (maxsize >= 1 && v17 > maxsize)
      {
        ERR_put_error(12, 0, 173, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_mbstr.cc", 125);
        ERR_add_error_dataf("maxsize=%zu", v27, v28, v29, v30, v31, v32, v33, maxsize);
        return -1;
      }

      if (v85 < 0x10000)
      {
        v22 = 3;
      }

      else
      {
        v22 = 4;
      }

      if (v85 < 0x800)
      {
        v22 = 2;
      }

      if (v85 >= 0x80)
      {
        v23 = v22;
      }

      else
      {
        v23 = 1;
      }

      v18 += v23;
      if (!v89)
      {
        goto LABEL_62;
      }
    }

    v34 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_mbstr.cc";
    v35 = 12;
    v36 = 126;
    v37 = 118;
    goto LABEL_58;
  }

  v18 = 0;
  v17 = 0;
LABEL_62:
  if (minsize >= 1 && v17 < minsize)
  {
    ERR_put_error(12, 0, 174, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_mbstr.cc", 132);
    ERR_add_error_dataf("minsize=%zu", v39, v40, v41, v42, v43, v44, v45, minsize);
    return -1;
  }

  if ((v14 & 2) != 0)
  {
    v46 = CBB_add_latin1;
    v47 = 4097;
    result = 19;
  }

  else if ((v14 & 0x10) != 0)
  {
    v46 = CBB_add_latin1;
    v47 = 4097;
    result = 22;
  }

  else if ((v14 & 4) != 0)
  {
    v46 = CBB_add_latin1;
    v47 = 4097;
    result = 20;
  }

  else if ((v14 & 0x800) != 0)
  {
    v17 *= 2;
    v47 = 4098;
    v46 = CBB_add_ucs2_be;
    result = 30;
  }

  else if ((v14 & 0x100) != 0)
  {
    v17 *= 4;
    v47 = 4100;
    v46 = CBB_add_utf32_be;
    result = 28;
  }

  else
  {
    if ((v14 & 0x2000) == 0)
    {
      v34 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_mbstr.cc";
      v35 = 12;
      v36 = 126;
      v37 = 164;
      goto LABEL_58;
    }

    v46 = CBB_add_utf8;
    v47 = 4096;
    result = 12;
    v17 = v18;
  }

  if (v81)
  {
    v48 = *v81;
    v49 = *v81;
    if (!*v81)
    {
      v50 = result;
      v51 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (!v51)
      {
        v34 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
        v35 = 14;
        v36 = 65;
        v37 = 217;
        goto LABEL_58;
      }

      *v51 = 24;
      *(v51 + 2) = 0;
      v49 = (v51 + 8);
      v52 = v51;
      result = v50;
      *(v52 + 3) = v50;
      *(v52 + 2) = 0;
      *(v52 + 3) = 0;
    }

    *v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    v83 = 0;
    v84 = 0;
    if (v47 == inform)
    {
      v53 = result;
      if (ASN1_STRING_set(v49, data, v11))
      {
        result = v53;
        v49->type = v53;
LABEL_88:
        *v81 = v49;
        return result;
      }

      goto LABEL_110;
    }

    *v86 = 0uLL;
    v87 = 0uLL;
    v85 = 0uLL;
    if (v17 + 1 < 0xFFFFFFFFFFFFFFF8)
    {
      v58 = result;
      v59 = malloc_type_malloc(v17 + 9, 0xB4E622C9uLL);
      if (v59)
      {
        *v59 = v17 + 1;
        v60 = v59 + 1;
      }

      else
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        if (v17 != -1)
        {
          goto LABEL_110;
        }

        v60 = 0;
      }

      BYTE8(v85) = 0;
      *&v85 = 0;
      v86[0] = v60;
      v86[1] = 0;
      *&v87 = v17 + 1;
      BYTE8(v87) = BYTE8(v87) & 0xFC | 1;
      v88 = data;
      v89 = v11;
      if (!v11)
      {
LABEL_97:
        v90 = 0;
        if (CBB_add_space(&v85, &v90, 1))
        {
          *v90 = 0;
          if (CBB_finish(&v85, &v84, &v83))
          {
            v61 = v83;
            if ((v83 - 0x80000000) > 0xFFFFFFFF80000000)
            {
              result = v58;
              v49->type = v58;
              v62 = v84;
              v63 = v61 - 1;
              v64 = v49->data;
              if (v64)
              {
                v66 = *(v64 - 1);
                v65 = v64 - 8;
                v67 = v66 + 8;
                if (v66 != -8)
                {
                  bzero(v65, v67);
                }

                free(v65);
                result = v58;
              }

              v49->data = v62;
              v49->length = v63;
              goto LABEL_88;
            }
          }
        }

        ERR_put_error(12, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_mbstr.cc", 214);
        if (v84)
        {
          v78 = v84 - 8;
          v77 = *(v84 - 1);
          if (v77 != -8)
          {
            bzero(v84 - 8, v77 + 8);
          }

          free(v78);
        }

LABEL_110:
        if (!v48)
        {
          v68 = v49->data;
          if (v68)
          {
            v70 = *(v68 - 1);
            v69 = v68 - 8;
            v71 = v70 + 8;
            if (v70 != -8)
            {
              bzero(v69, v71);
            }

            free(v69);
          }

          flags = v49[-1].flags;
          p_flags = &v49[-1].flags;
          v74 = flags + 8;
          if (flags != -8)
          {
            bzero(p_flags, v74);
          }

          free(p_flags);
        }

        if (!BYTE8(v85) && (BYTE8(v87) & 1) != 0 && v86[0])
        {
          v76 = v86[0] - 8;
          v75 = *(v86[0] - 1);
          if (v75 != -8)
          {
            bzero(v86[0] - 8, v75 + 8);
          }

          free(v76);
        }

        return -1;
      }

      while (1)
      {
        LODWORD(v90) = 0;
        if (!(v82)(&v88, &v90) || !v46(&v85, v90))
        {
          break;
        }

        if (!v89)
        {
          goto LABEL_97;
        }
      }

      v54 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_mbstr.cc";
      v55 = 12;
      v56 = 68;
      v57 = 204;
    }

    else
    {
      v54 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v55 = 14;
      v56 = 65;
      v57 = 217;
    }

    ERR_put_error(v55, 0, v56, v54, v57);
    goto LABEL_110;
  }

  return result;
}

int i2a_ASN1_OBJECT(BIO *bp, ASN1_OBJECT *a)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a || !a->data)
  {
    if (bp && bp->method && (bwrite = bp->method->bwrite) != 0)
    {
      if (LODWORD(bp->cb_arg))
      {
        v11 = bwrite();
        if (v11 < 1)
        {
          return -1;
        }

        bp->prev_bio = (bp->prev_bio + v11);
        if (v11 == 4)
        {
          return 4;
        }

        else
        {
          return -1;
        }
      }

      v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc";
      v14 = 17;
      v15 = 114;
      v16 = 125;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc";
      v14 = 17;
      v15 = 115;
      v16 = 121;
    }

    goto LABEL_15;
  }

  v4 = buf;
  v5 = OBJ_obj2txt(buf, 80, a, 0);
  if (v5 >= 80)
  {
    v6 = (v5 + 1);
    v7 = malloc_type_malloc(v6 + 8, 0xB4E622C9uLL);
    if (v7)
    {
      *v7 = v6;
      v8 = v7 + 8;
      v5 = OBJ_obj2txt(v7 + 8, v6, a, 0);
      v4 = v8;
      goto LABEL_17;
    }

    v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v14 = 14;
    v15 = 65;
    v16 = 217;
LABEL_15:
    ERR_put_error(v14, 0, v15, v13, v16);
    return -1;
  }

  v8 = 0;
LABEL_17:
  if (v5 < 1)
  {
    v4 = "<INVALID>";
  }

  v17 = strlen(v4);
  if (v17 >> 31)
  {
    ERR_put_error(12, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_object.cc", 59);
    result = -1;
    if (!v8)
    {
      return result;
    }

    goto LABEL_39;
  }

  v18 = v17;
  if (!bp || !bp->method || (v19 = bp->method->bwrite) == 0)
  {
    v21 = 115;
    v22 = 121;
LABEL_34:
    ERR_put_error(17, 0, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v22);
    v20 = -2;
    goto LABEL_35;
  }

  if (!LODWORD(bp->cb_arg))
  {
    v21 = 114;
    v22 = 125;
    goto LABEL_34;
  }

  if (!v17)
  {
    result = 0;
    if (!v8)
    {
      return result;
    }

    goto LABEL_39;
  }

  v20 = (v19)(bp, v4, v17);
  if (v20 >= 1)
  {
    bp->prev_bio = (bp->prev_bio + v20);
    if (v20 == v18)
    {
      result = v18;
    }

    else
    {
      result = -1;
    }

    if (!v8)
    {
      return result;
    }

LABEL_39:
    v23 = result;
    v25 = *(v8 - 1);
    v24 = v8 - 8;
    v26 = v25 + 8;
    if (v25 != -8)
    {
      bzero(v24, v26);
    }

    free(v24);
    return v23;
  }

LABEL_35:
  if (v20 == v18)
  {
    result = v18;
  }

  else
  {
    result = -1;
  }

  if (v8)
  {
    goto LABEL_39;
  }

  return result;
}

ASN1_OBJECT *__cdecl c2i_ASN1_OBJECT(ASN1_OBJECT **a, const unsigned __int8 **pp, uint64_t length)
{
  if (length < 0)
  {
    v7 = 146;
    v8 = 117;
LABEL_13:
    ERR_put_error(12, 0, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_object.cc", v8);
    return 0;
  }

  if (!length)
  {
    goto LABEL_12;
  }

  v3 = 0;
  LOBYTE(v4) = 0;
  v5 = *pp;
  while (1)
  {
    v6 = v4;
    if (length == v3)
    {
      break;
    }

    v4 = v5[v3++];
    if ((v6 & 0x80) == 0 && v4 == 128)
    {
      goto LABEL_12;
    }
  }

  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v7 = 146;
    v8 = 124;
    goto LABEL_13;
  }

  if (length >> 31)
  {
    v7 = 173;
    v8 = 180;
    goto LABEL_13;
  }

  memset(&o, 0, 20);
  o.data = v5;
  o.length = length;
  o.flags = 13;
  result = OBJ_dup(&o);
  if (result)
  {
    v13 = pp;
    v14 = length;
    if (!a)
    {
LABEL_40:
      *v13 += v14;
      return result;
    }

    v15 = a;
    v16 = *a;
    if (!*a)
    {
LABEL_39:
      *v15 = result;
      goto LABEL_40;
    }

    flags = v16->flags;
    if ((flags & 4) != 0)
    {
      sn = v16->sn;
      if (v16->sn)
      {
        v19 = result;
        v21 = *(sn - 1);
        v20 = (sn - 8);
        v22 = v21 + 8;
        if (v21 != -8)
        {
          bzero(v20, v22);
        }

        free(v20);
        v13 = pp;
        v14 = length;
        v15 = a;
        result = v19;
      }

      ln = v16->ln;
      if (ln)
      {
        v24 = result;
        v26 = *(ln - 1);
        v25 = (ln - 8);
        v27 = v26 + 8;
        if (v26 != -8)
        {
          bzero(v25, v27);
        }

        free(v25);
        v13 = pp;
        v14 = length;
        v15 = a;
        result = v24;
      }

      v16->sn = 0;
      v16->ln = 0;
      flags = v16->flags;
      if ((flags & 8) == 0)
      {
LABEL_20:
        if ((flags & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_36:
        v33 = result;
        v35 = *&v16[-1].flags;
        p_flags = &v16[-1].flags;
        v36 = v35 + 8;
        if (v35 != -8)
        {
          bzero(p_flags, v36);
        }

        free(p_flags);
        v13 = pp;
        v14 = length;
        v15 = a;
        result = v33;
        goto LABEL_39;
      }
    }

    else if ((flags & 8) == 0)
    {
      goto LABEL_20;
    }

    data = v16->data;
    if (data)
    {
      v29 = result;
      v31 = *(data - 1);
      v30 = data - 8;
      v32 = v31 + 8;
      if (v31 != -8)
      {
        bzero(v30, v32);
      }

      free(v30);
      flags = v16->flags;
      v13 = pp;
      v14 = length;
      v15 = a;
      result = v29;
    }

    v16->data = 0;
    v16->length = 0;
    if ((flags & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  return result;
}

void ASN1_OBJECT_free(ASN1_OBJECT *a)
{
  if (!a)
  {
    return;
  }

  flags = a->flags;
  if ((flags & 4) != 0)
  {
    sn = a->sn;
    if (a->sn)
    {
      v5 = *(sn - 1);
      v4 = (sn - 8);
      v6 = v5 + 8;
      if (v5 != -8)
      {
        bzero(v4, v6);
      }

      free(v4);
    }

    ln = a->ln;
    if (ln)
    {
      v9 = *(ln - 1);
      v8 = (ln - 8);
      v10 = v9 + 8;
      if (v9 != -8)
      {
        bzero(v8, v10);
      }

      free(v8);
    }

    a->sn = 0;
    a->ln = 0;
    flags = a->flags;
    if ((flags & 8) == 0)
    {
LABEL_4:
      if ((flags & 1) == 0)
      {
        return;
      }

      goto LABEL_20;
    }
  }

  else if ((flags & 8) == 0)
  {
    goto LABEL_4;
  }

  data = a->data;
  if (data)
  {
    v13 = *(data - 1);
    v12 = data - 8;
    v14 = v13 + 8;
    if (v13 != -8)
    {
      bzero(v12, v14);
    }

    free(v12);
    flags = a->flags;
  }

  a->data = 0;
  a->length = 0;
  if (flags)
  {
LABEL_20:
    v16 = *&a[-1].flags;
    p_flags = &a[-1].flags;
    v17 = v16 + 8;
    if (v16 != -8)
    {
      bzero(p_flags, v17);
    }

    free(p_flags);
  }
}

int ASN1_STRING_print_ex(BIO *out, ASN1_STRING *str, unint64_t flags)
{
  v3 = flags;
  type = str->type;
  if ((flags & 0x40) != 0)
  {
    if ((type & 0xFFFFFFF7) == 0x102)
    {
      v8 = str->type & 0xA;
    }

    else
    {
      v8 = str->type;
    }

    if (v8 <= 0x1E)
    {
      v9 = ASN1_tag2str::tag2str[v8];
      v10 = strlen(v9);
      if (out)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = "(unknown)";
      v10 = strlen("(unknown)");
      if (out)
      {
LABEL_8:
        if (out->method && (v11 = out->method->bwrite) != 0)
        {
          if (LODWORD(out->cb_arg))
          {
            if (v10 < 1)
            {
              if (v10)
              {
                return -1;
              }

LABEL_25:
              if (!out->method)
              {
                goto LABEL_78;
              }

              bwrite = out->method->bwrite;
              if (!bwrite)
              {
                goto LABEL_78;
              }

              if (!LODWORD(out->cb_arg))
              {
                goto LABEL_106;
              }

              v18 = (bwrite)(out, ":", 1);
              if (v18 < 1)
              {
                return -1;
              }

              out->prev_bio = (out->prev_bio + v18);
              v7 = v18 == 1 ? v10 + 1 : v10;
              if (v18 != 1)
              {
                return -1;
              }

              goto LABEL_17;
            }

            v12 = (v11)(out, v9, v10);
            if (v12 >= 1)
            {
              out->prev_bio = (out->prev_bio + v12);
              if (v12 != v10)
              {
                return -1;
              }

              goto LABEL_25;
            }

LABEL_24:
            if (v12 != v10)
            {
              return -1;
            }

            goto LABEL_25;
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
        v12 = -2;
        goto LABEL_24;
      }
    }

    v7 = v10 + 1;
    goto LABEL_17;
  }

  v7 = 0;
LABEL_17:
  if ((v3 & 0x80) != 0)
  {
    goto LABEL_56;
  }

  if ((v3 & 0x20) == 0)
  {
    v13 = type - 12;
    if (type - 12) < 0x13 && ((0x55DC1u >> v13))
    {
      v14 = dword_273BA6AE8[v13];
      goto LABEL_36;
    }

    if ((v3 & 0x100) != 0)
    {
LABEL_56:
      if (out)
      {
        if (!out->method || (v28 = out->method->bwrite) == 0)
        {
LABEL_72:
          v36 = 115;
          v37 = 121;
LABEL_73:
          ERR_put_error(17, 0, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v37);
          return -1;
        }

        if (!LODWORD(out->cb_arg))
        {
LABEL_105:
          v36 = 114;
          v37 = 125;
          goto LABEL_73;
        }

        v29 = (v28)(out, "#", 1);
        if (v29 < 1)
        {
          return -1;
        }

        out->prev_bio = (out->prev_bio + v29);
        if (v29 != 1)
        {
          return -1;
        }

        if ((v3 & 0x200) == 0)
        {
          length = str->length;
          if (!str->length)
          {
            return v7 + 1;
          }

          data = str->data;
          v32 = length;
          while (1)
          {
            v33 = *data;
            v59[0] = do_hex_dump(bio_st *,unsigned char *,int)::hexdig[v33 >> 4];
            v59[1] = do_hex_dump(bio_st *,unsigned char *,int)::hexdig[v33 & 0xF];
            if (!out->method)
            {
              goto LABEL_72;
            }

            v34 = out->method->bwrite;
            if (!v34)
            {
              goto LABEL_72;
            }

            if (!LODWORD(out->cb_arg))
            {
              goto LABEL_105;
            }

            v35 = (v34)(out, v59, 2);
            if (v35 < 1)
            {
              return -1;
            }

            out->prev_bio = (out->prev_bio + v35);
            if (v35 != 2)
            {
              return -1;
            }

            ++data;
            if (!--v32)
            {
              goto LABEL_76;
            }
          }
        }
      }

      else if ((v3 & 0x200) == 0)
      {
        length = str->length;
LABEL_76:
        if (2 * length < 0)
        {
          return -1;
        }

        v38 = (2 * length) | 1;
LABEL_121:
        if ((v38 & 0x80000000) == 0)
        {
          return v38 + v7;
        }

        return -1;
      }

      *v59 = 0;
      v60 = 0;
      v41 = str->type;
      if (v41 == 266)
      {
        v42 = 10;
      }

      else
      {
        v42 = str->type;
      }

      if (v41 == 258)
      {
        v43 = 2;
      }

      else
      {
        v43 = v42;
      }

      *v59 = v43;
      if (v43 == 6)
      {
        goto LABEL_92;
      }

      if (v43 == 5)
      {
        goto LABEL_93;
      }

      if (v43 != 1)
      {
LABEL_92:
        v60 = str;
      }

      else
      {
        LODWORD(v60) = 255;
      }

LABEL_93:
      v58 = 0;
      v44 = ASN1_item_i2d(v59, &v58, &ASN1_OBJECT_it.sname);
      if ((v44 & 0x80000000) != 0)
      {
        v38 = -1;
        goto LABEL_121;
      }

      v45 = v44;
      if (out && v44)
      {
        v46 = v58;
        v47 = v44;
        while (1)
        {
          v48 = *v46;
          v61[0] = do_hex_dump(bio_st *,unsigned char *,int)::hexdig[v48 >> 4];
          v61[1] = do_hex_dump(bio_st *,unsigned char *,int)::hexdig[v48 & 0xF];
          if (!out->method || (v49 = out->method->bwrite) == 0)
          {
            v53 = 115;
            v54 = 121;
            goto LABEL_113;
          }

          if (!LODWORD(out->cb_arg))
          {
            break;
          }

          v50 = (v49)(out, v61, 2);
          if (v50 < 1)
          {
            goto LABEL_114;
          }

          out->prev_bio = (out->prev_bio + v50);
          if (v50 != 2)
          {
            goto LABEL_114;
          }

          ++v46;
          if (!--v47)
          {
            goto LABEL_103;
          }
        }

        v53 = 114;
        v54 = 125;
LABEL_113:
        ERR_put_error(17, 0, v53, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v54);
LABEL_114:
        v51 = -1;
        v52 = v58;
        if (!v58)
        {
          goto LABEL_118;
        }
      }

      else
      {
LABEL_103:
        v51 = 2 * v45;
        v52 = v58;
        if (!v58)
        {
LABEL_118:
          if (v51 >= 0)
          {
            v38 = v51 + 1;
          }

          else
          {
            v38 = -1;
          }

          goto LABEL_121;
        }
      }

      v56 = *(v52 - 1);
      v55 = (v52 - 1);
      v57 = v56 + 8;
      if (v56 != -8)
      {
        bzero(v55, v57);
      }

      free(v55);
      goto LABEL_118;
    }
  }

  v14 = 4097;
LABEL_36:
  v59[0] = 0;
  v19 = do_buf(str->data, str->length, v14, v3, v59, 0);
  if (v19 < 0)
  {
    return -1;
  }

  if (v59[0])
  {
    result = v19 + v7 + 2;
  }

  else
  {
    result = v19 + v7;
  }

  if (out)
  {
    if (!v59[0])
    {
      goto LABEL_48;
    }

    if (!out->method)
    {
      goto LABEL_78;
    }

    v21 = out->method->bwrite;
    if (!v21)
    {
      goto LABEL_78;
    }

    if (LODWORD(out->cb_arg))
    {
      v22 = result;
      v23 = (v21)(out, "", 1);
      if (v23 < 1)
      {
        return -1;
      }

      out->prev_bio = (out->prev_bio + v23);
      v24 = v23 == 1;
      result = v22;
      if (!v24)
      {
        return -1;
      }

LABEL_48:
      v25 = result;
      if ((do_buf(str->data, str->length, v14, v3, 0, out) & 0x80000000) != 0)
      {
        return -1;
      }

      if (!v59[0])
      {
        return v25;
      }

      if (out->method)
      {
        v26 = out->method->bwrite;
        if (v26)
        {
          if (LODWORD(out->cb_arg))
          {
            v27 = (v26)(out, "", 1);
            if (v27 >= 1)
            {
              out->prev_bio = (out->prev_bio + v27);
              if (v27 == 1)
              {
                return v25;
              }
            }

            return -1;
          }

          goto LABEL_106;
        }
      }

LABEL_78:
      v39 = 115;
      v40 = 121;
LABEL_79:
      ERR_put_error(17, 0, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v40);
      return -1;
    }

LABEL_106:
    v39 = 114;
    v40 = 125;
    goto LABEL_79;
  }

  return result;
}

uint64_t do_buf(const unsigned __int8 *a1, int a2, int a3, char a4, char *a5, bio_st *a6)
{
  v6 = a3 - 4096;
  if ((a3 - 4096) > 4 || ((0x17u >> a3) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = dword_273BA6AD4[v6];
  v9 = off_2882A4B28[v6];
  v33 = a1;
  v34 = a2;
  if (a2)
  {
    reason = v8;
    v13 = 0;
    if ((a4 & 0x10) != 0)
    {
      v27 = v9;
      while (1)
      {
        v16 = v33;
        v32 = 0;
        if (!(v9)(&v33, &v32))
        {
          break;
        }

        v17 = v34;
        v28 = 0u;
        v29 = v31;
        v30 = 6uLL;
        if (!CBB_add_utf8(&v28, v32))
        {
          ERR_put_error(12, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_strex.cc", 135);
          return 1;
        }

        if (BYTE8(v28))
        {
          v18 = *(v29 + 8) - (*(&v29 + 1) + v30);
          if (v18)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v18 = *(&v29 + 1);
          if (*(&v29 + 1))
          {
LABEL_17:
            v19 = 0;
            do
            {
              v20 = v16 == a1 && v19 == 0;
              v21 = v20;
              v22 = !v17 && v18 == 1;
              v23 = v22;
              v24 = do_esc_char(v31[v19], a4, a5, a6, v21, v23);
              if (v24 < 0)
              {
                return 0xFFFFFFFFLL;
              }

              v13 = (v24 + v13);
              ++v19;
            }

            while (--v18);
          }
        }

        v9 = v27;
        if (!v34)
        {
          return v13;
        }
      }
    }

    else
    {
      while (1)
      {
        v14 = v33;
        v32 = 0;
        if (!(v9)(&v33, &v32))
        {
          break;
        }

        v15 = do_esc_char(v32, a4, a5, a6, v14 == a1, v34 == 0);
        if (v15 < 0)
        {
          return 0xFFFFFFFFLL;
        }

        v13 = (v15 + v13);
        if (!v34)
        {
          return v13;
        }
      }
    }

    ERR_put_error(12, 0, reason, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_strex.cc", 126);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

int ASN1_STRING_to_UTF8(unsigned __int8 **out, ASN1_STRING *in)
{
  if (!in)
  {
    return -1;
  }

  v2 = in->type - 12;
  if (v2 < 0x13 && ((0x55DC1u >> v2) & 1) != 0)
  {
    v4 = dword_273BA6AE8[v2];
    v6 = &v7;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    result = ASN1_mbstring_ncopy(&v6, in->data, in->length, v4, 0x2000uLL, 0, 0);
    if ((result & 0x80000000) == 0)
    {
      *out = v8;
      return v7;
    }
  }

  else
  {
    ERR_put_error(12, 0, 185, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_strex.cc", 327);
    return -1;
  }

  return result;
}

int ASN1_STRING_print(BIO *bp, ASN1_STRING *v)
{
  v53 = *MEMORY[0x277D85DE8];
  if (!v)
  {
    return 0;
  }

  length = v->length;
  if (length < 1)
  {
    return 1;
  }

  data = v->data;
  if (!bp)
  {
    if (length >= 0x11 && (v52 - data) >= 0x10)
    {
      v35 = length - 1;
      if ((length - 1) >= 0x4F)
      {
        v35 = 79;
      }

      v36 = v35 + 1;
      v37 = v36 & 0xF;
      if ((v36 & 0xF) == 0)
      {
        v37 = 16;
      }

      v34 = v36 - v37;
      v38 = v52;
      v39.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v39.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v40.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v40.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v41.i64[0] = 0xD0D0D0D0D0D0D0DLL;
      v41.i64[1] = 0xD0D0D0D0D0D0D0DLL;
      v42.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v42.i64[1] = 0xE0E0E0E0E0E0E0E0;
      v43.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
      v43.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
      v44 = v34;
      v45 = v->data;
      do
      {
        v46 = *v45;
        v45 += 16;
        *v38++ = vbslq_s8(vcgtq_u8(v43, vaddq_s8(v46, v42)), v46, vbslq_s8(vceqq_s8(v46, v41), v41, vbslq_s8(vceqq_s8(v46, v39), v39, v40)));
        v44 -= 16;
      }

      while (v44);
    }

    else
    {
      v34 = 0;
    }

    do
    {
      v48 = data[v34];
      if (v48 == 127)
      {
        v52[v34] = 46;
        if (v34 == 79)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v48 == 10)
        {
          v47 = 10;
        }

        else
        {
          v47 = 46;
        }

        if (v48 == 13)
        {
          v47 = 13;
        }

        if (v48 <= 31)
        {
          v48 = v47;
        }

        v52[v34] = v48;
        if (v34 == 79)
        {
          goto LABEL_67;
        }
      }

      ++v34;
    }

    while (length != v34);
LABEL_37:
    if (!bp || !bp->method || (bwrite = bp->method->bwrite) == 0)
    {
LABEL_67:
      v49 = 115;
      v50 = 121;
LABEL_68:
      ERR_put_error(17, 0, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v50);
      return 0;
    }

    if (!LODWORD(bp->cb_arg))
    {
      goto LABEL_71;
    }

    v31 = bp;
    v32 = bwrite();
    if (v32 < 1)
    {
      return 0;
    }

    v31->prev_bio = (v31->prev_bio + v32);
    return 1;
  }

  v4 = 0;
  v5.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v5.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  v6.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
  v6.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
  v7.i64[0] = 0xD0D0D0D0D0D0D0DLL;
  v7.i64[1] = 0xD0D0D0D0D0D0D0DLL;
  v8.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v8.i64[1] = 0xE0E0E0E0E0E0E0E0;
  v9.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v9.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  while (2)
  {
    v10 = length;
    if (v4 + 1 > length)
    {
      v11 = v4 + 1;
    }

    else
    {
      v11 = length;
    }

    v12 = v11 + ~v4;
    if (v12 >= 0x4F)
    {
      v13 = 79;
    }

    else
    {
      v13 = v11 + ~v4;
    }

    if (v12 >= 0x10)
    {
      if ((v52 - &data[v4]) >= 0x10)
      {
        v15 = v13 + 1;
        v16 = v15 & 0xF;
        if ((v15 & 0xF) == 0)
        {
          v16 = 16;
        }

        v14 = v15 - v16;
        v17 = v4 + v15 - v16;
        v18 = &data[v4];
        v19 = v52;
        v20 = v14;
        do
        {
          v21 = *v18++;
          *v19++ = vbslq_s8(vcgtq_u8(v9, vaddq_s8(v21, v8)), v21, vbslq_s8(vceqq_s8(v21, v7), v7, vbslq_s8(vceqq_s8(v21, v5), v5, v6)));
          v20 -= 16;
        }

        while (v20);
        v4 = v17;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    while (1)
    {
      v23 = data[v4];
      if (v23 != 127)
      {
        break;
      }

      v52[v14] = 46;
      if (v14 == 79)
      {
        goto LABEL_31;
      }

LABEL_28:
      ++v14;
      if (++v4 >= v10)
      {
        goto LABEL_37;
      }
    }

    if (v23 == 10)
    {
      v22 = 10;
    }

    else
    {
      v22 = 46;
    }

    if (v23 == 13)
    {
      v22 = 13;
    }

    if (v23 <= 31)
    {
      v23 = v22;
    }

    v52[v14] = v23;
    if (v14 != 79)
    {
      goto LABEL_28;
    }

LABEL_31:
    if (!bp->method)
    {
      goto LABEL_67;
    }

    v24 = bp->method->bwrite;
    if (!v24)
    {
      goto LABEL_67;
    }

    if (!LODWORD(bp->cb_arg))
    {
LABEL_71:
      v49 = 114;
      v50 = 125;
      goto LABEL_68;
    }

    v25 = v;
    v26 = bp;
    v27 = v24();
    if (v27 > 0)
    {
      v28 = v27;
      bp = v26;
      v26->prev_bio = (v26->prev_bio + v28);
      v = v25;
      ++v4;
      v29 = 1;
      length = v25->length;
      v5.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v5.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v6.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v6.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v7.i64[0] = 0xD0D0D0D0D0D0D0DLL;
      v7.i64[1] = 0xD0D0D0D0D0D0D0DLL;
      v8.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v8.i64[1] = 0xE0E0E0E0E0E0E0E0;
      v9.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
      v9.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
      if (v4 >= length)
      {
        return v29;
      }

      continue;
    }

    return 0;
  }
}

size_t do_esc_char(unsigned int a1, char a2, char *a3, bio_st *b, int a5, int a6)
{
  v16 = *MEMORY[0x277D85DE8];
  data = a1;
  if (a1 >= 0x10000)
  {
    snprintf(__str, 0x10uLL, "\\W%08X");
    goto LABEL_22;
  }

  if (a1 >= 0x100)
  {
    snprintf(__str, 0x10uLL, "\\U%04X");
    goto LABEL_22;
  }

  if (a1 >= 0x80 && (a2 & 4) != 0 || (a2 & 2) != 0 && (a1 < 0x20u || a1 == 127))
  {
    snprintf(__str, 0x10uLL, "\\%02X");
    goto LABEL_22;
  }

  if (a2)
  {
    if (a1 == 92 || a1 == 34)
    {
      goto LABEL_21;
    }

    if ((a1 & 0xFD) == 0x3C || a1 <= 0x3Bu && ((1 << a1) & 0x800180000000000) != 0 || a5 && (a1 == 32 || a1 == 35) || a1 == 32 && a6)
    {
      if ((a2 & 8) == 0)
      {
LABEL_21:
        snprintf(__str, 0x10uLL, "\\%c");
LABEL_22:
        v7 = strlen(__str);
        v8 = v7;
        if (!b)
        {
          return v8;
        }

        if (b->method && (bwrite = b->method->bwrite) != 0)
        {
          if (LODWORD(b->cb_arg))
          {
            if (v7 < 1)
            {
              v10 = 0;
            }

            else
            {
              v10 = (bwrite)(b, __str, v7);
              if (v10 >= 1)
              {
                b->prev_bio = (b->prev_bio + v10);
              }
            }

            goto LABEL_31;
          }

          v11 = 114;
          v12 = 125;
        }

        else
        {
          v11 = 115;
          v12 = 121;
        }

        ERR_put_error(17, 0, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v12);
        v10 = -2;
LABEL_31:
        if (v10 == v8)
        {
          return v8;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (a3)
      {
        *a3 = 1;
      }
    }
  }

  else if (a1 == 92 && (a2 & 0xE) != 0)
  {
    goto LABEL_21;
  }

  if (!b)
  {
    return 1;
  }

  if (BIO_write(b, &data, 1) == 1)
  {
    return 1;
  }

  return 0xFFFFFFFFLL;
}

ASN1_STRING *__cdecl ASN1_STRING_set_by_NID(ASN1_STRING **out, const unsigned __int8 *in, int inlen, int inform, int nid)
{
  v12 = 0;
  if (out)
  {
    v8 = out;
  }

  else
  {
    v8 = &v12;
  }

  __key[0] = nid;
  v9 = bsearch(__key, &tbl_standard, 0x13uLL, 0x28uLL, table_cmp_void);
  if (v9)
  {
    if ((v9[4] & 2) != 0)
    {
      v10 = v9[3];
    }

    else
    {
      v10 = v9[3] & 0x2000;
    }

    if (ASN1_mbstring_ncopy(v8, in, inlen, inform, v10, v9[1], v9[2]) >= 1)
    {
      return *v8;
    }
  }

  else
  {
    if (pthread_rwlock_rdlock(&string_tables_lock) || pthread_rwlock_unlock(&string_tables_lock))
    {
      abort();
    }

    if (ASN1_mbstring_ncopy(v8, in, inlen, inform, 0x2000uLL, 0, 0) >= 1)
    {
      return *v8;
    }
  }

  return 0;
}

uint64_t table_cmp_void(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t ASN1_TIME_diff(_DWORD *a1, _DWORD *a2, int *a3, int *a4)
{
  if (a3)
  {
    v7 = a3[1];
    if (v7 == 24)
    {
      v11 = *a3;
      *&v17[0] = *(a3 + 1);
      *(&v17[0] + 1) = v11;
      result = CBS_parse_rfc5280_time_internal(v17, 1, 0, v18);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (v7 != 23)
      {
        return 0;
      }

      v8 = *a3;
      *&v17[0] = *(a3 + 1);
      *(&v17[0] + 1) = v8;
      result = CBS_parse_rfc5280_time_internal(v17, 0, 1, v18);
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
    v10 = time(0);
    result = OPENSSL_posix_to_tm(v10, v18);
    if (!result)
    {
      return result;
    }
  }

  if (!a4)
  {
    v14 = time(0);
    result = OPENSSL_posix_to_tm(v14, v17);
    if (!result)
    {
      return result;
    }

    goto LABEL_18;
  }

  v12 = a4[1];
  if (v12 != 24)
  {
    if (v12 == 23)
    {
      v13 = *a4;
      *&v19 = *(a4 + 1);
      *(&v19 + 1) = v13;
      result = CBS_parse_rfc5280_time_internal(&v19, 0, 1, v17);
      if (!result)
      {
        return result;
      }

      goto LABEL_18;
    }

    return 0;
  }

  v15 = *a4;
  *&v19 = *(a4 + 1);
  *(&v19 + 1) = v15;
  result = CBS_parse_rfc5280_time_internal(&v19, 1, 0, v17);
  if (!result)
  {
    return result;
  }

LABEL_18:
  *&v19 = 0;
  result = OPENSSL_tm_to_posix(v17, &v19);
  if (result)
  {
    v20 = 0;
    result = OPENSSL_tm_to_posix(v18, &v20);
    if (result)
    {
      v16 = (v19 - v20) / 86400;
      *a2 = (v19 - v20) % 86400;
      *a1 = v16;
      return 1;
    }
  }

  return result;
}

uint64_t ASN1_TIME_to_posix(int *a1, void *a2)
{
  if (a1)
  {
    v3 = a1[1];
    if (v3 == 24)
    {
      v8 = *a1;
      *&v10 = *(a1 + 1);
      *(&v10 + 1) = v8;
      v5 = 1;
    }

    else
    {
      if (v3 != 23)
      {
        return 0;
      }

      v4 = *a1;
      *&v10 = *(a1 + 1);
      *(&v10 + 1) = v4;
      v5 = 0;
    }

    result = CBS_parse_rfc5280_time_internal(&v10, v5, 0, v9);
    if (result)
    {
      return OPENSSL_tm_to_posix(v9, a2);
    }
  }

  else
  {
    v6 = time(0);
    result = OPENSSL_posix_to_tm(v6, v9);
    if (result)
    {
      return OPENSSL_tm_to_posix(v9, a2);
    }
  }

  return result;
}

void ASN1_TYPE_set(ASN1_TYPE *a, int type, void *value)
{
  v6 = a->type;
  if (a->type != 1)
  {
    if (v6 != 5)
    {
      if (v6 == 6)
      {
        ASN1_OBJECT_free(a->value.object);
      }

      else
      {
        ptr = a->value.ptr;
        if (ptr)
        {
          v8 = *(ptr + 1);
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

          v13 = *(ptr - 1);
          v12 = ptr - 8;
          v14 = v13 + 8;
          if (v13 != -8)
          {
            bzero(v12, v14);
          }

          free(v12);
        }
      }
    }

    a->value.ptr = 0;
  }

  a->type = type;
  if (type == 1)
  {
    if (value)
    {
      v15 = 255;
    }

    else
    {
      v15 = 0;
    }

    a->value.BOOLean = v15;
  }

  else if (type == 5)
  {
    a->value.ptr = 0;
  }

  else
  {
    a->value.ptr = value;
  }
}

void asn1_type_cleanup(ASN1_OBJECT **a1)
{
  v2 = *a1;
  if (*a1 == 1)
  {
    *(a1 + 2) = -1;
    return;
  }

  if (v2 == 6)
  {
    ASN1_OBJECT_free(a1[1]);
LABEL_13:
    a1[1] = 0;
    return;
  }

  if (v2 == 5)
  {
    goto LABEL_13;
  }

  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_13;
  }

  ln = v3->ln;
  if (ln)
  {
    v6 = *(ln - 1);
    v5 = (ln - 8);
    v7 = v6 + 8;
    if (v6 != -8)
    {
      bzero(v5, v7);
    }

    free(v5);
  }

  v9 = *&v3[-1].flags;
  p_flags = &v3[-1].flags;
  v10 = v9 + 8;
  if (v9 != -8)
  {
    bzero(p_flags, v10);
  }

  free(p_flags);
  a1[1] = 0;
}

uint64_t ASN1_TYPE_cmp(int *a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      v4 = *a1;
      if (*a1 == *a2)
      {
        switch(v4)
        {
          case 1:
            return (a1[2] - *(a2 + 8));
          case 5:
            return 0;
          case 6:
            v5 = *(a1 + 1);
            v6 = *(a2 + 8);
            v7 = *(v5 + 20);
            v8 = *(v6 + 20);
            if (v7 >= v8)
            {
              if (v7 > v8)
              {
                return 1;
              }

              if (v7)
              {
                return memcmp(*(v5 + 24), *(v6 + 24), v7);
              }

              return 0;
            }

            break;
          default:
            return ASN1_STRING_cmp(*(a1 + 1), *(a2 + 8));
        }
      }
    }
  }

  return result;
}

ASN1_STRING *ASN1_UTCTIME_adj(ASN1_STRING *a1, uint64_t a2, int a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!OPENSSL_posix_to_tm(a2, v23))
  {
    return 0;
  }

  if (a3 || a4)
  {
    *__str = 0;
    if (!OPENSSL_tm_to_posix(v23, __str))
    {
      return 0;
    }

    v12 = *__str + 86400 * a3;
    v13 = v12 >= 1 && (v12 ^ 0x7FFFFFFFFFFFFFFFLL) < a4;
    if (v13 || v12 < 0 && (0x8000000000000000 - v12) > a4 || !OPENSSL_posix_to_tm(v12 + a4, v23))
    {
      return 0;
    }
  }

  if (v24 - 150 < 0xFFFFFF9C)
  {
    return 0;
  }

  if (v24 >= 0x64)
  {
    v7 = v24 - 100;
  }

  else
  {
    v7 = v24;
  }

  if (snprintf(__str, 0xEuLL, "%02d%02d%02d%02d%02d%02dZ", v7, v23[4] + 1, v23[3], v23[2], v23[1], v23[0]) != 13)
  {
    abort();
  }

  v8 = a1;
  if (!a1)
  {
    v9 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v9)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }

    *v9 = 24;
    v9[1] = 0x1700000000;
    v8 = (v9 + 1);
    v9[2] = 0;
    v9[3] = 0;
  }

  v10 = strlen(__str);
  if (ASN1_STRING_set(v8, __str, v10))
  {
    result = v8;
    v8->type = 23;
    return result;
  }

  if (!a1)
  {
    v14 = v8;
    data = v8->data;
    if (data)
    {
      v17 = *(data - 1);
      v16 = data - 8;
      v18 = v17 + 8;
      if (v17 != -8)
      {
        bzero(v16, v18);
      }

      free(v16);
      v14 = v8;
    }

    flags = v14[-1].flags;
    p_flags = &v14[-1].flags;
    v21 = flags + 8;
    if (flags != -8)
    {
      v22 = p_flags;
      bzero(p_flags, v21);
      p_flags = v22;
    }

    free(p_flags);
  }

  return 0;
}

int ASN1_item_verify(const ASN1_ITEM *it, X509_ALGOR *algor1, ASN1_BIT_STRING *signature, void *data, EVP_PKEY *pkey)
{
  if (!pkey)
  {
    v11 = 67;
    v12 = 33;
LABEL_11:
    ERR_put_error(11, 0, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/a_verify.cc", v12);
    return 0;
  }

  length = signature->length;
  if (signature->type != 3)
  {
    goto LABEL_17;
  }

  flags = signature->flags;
  if ((flags & 8) != 0)
  {
    if (!length || (flags & 7) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (length >= 1)
  {
    v9 = signature->data - 1;
    while (!v9[length])
    {
      v10 = __OFSUB__(length--, 1);
      if ((length < 0) ^ v10 | (length == 0))
      {
        goto LABEL_17;
      }
    }

    if ((v9[length] & 1) == 0)
    {
LABEL_15:
      v11 = 109;
      v12 = 40;
      goto LABEL_11;
    }
  }

LABEL_17:
  out = 0;
  memset(&in, 0, sizeof(in));
  if (!x509_digest_verify_init(&in, algor1, pkey))
  {
    goto LABEL_29;
  }

  v15 = ASN1_item_i2d(data, &out, it);
  if (!out)
  {
    v13 = 0;
    goto LABEL_33;
  }

  if (*(*in.flags + 56))
  {
    (in.digest->init)(&in, out, v15);
    if (!EVP_DigestVerifyFinal(&in))
    {
      goto LABEL_28;
    }

LABEL_25:
    v13 = 1;
    v17 = out;
    if (!out)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v16 = *(*in.flags + 64);
  if (v16)
  {
    if (v16())
    {
      goto LABEL_25;
    }
  }

  else
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/digestsign/digestsign.cc.inc", 214);
  }

LABEL_28:
  ERR_put_error(11, 0, 6, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/a_verify.cc", 64);
LABEL_29:
  v13 = 0;
  v17 = out;
  if (!out)
  {
    goto LABEL_33;
  }

LABEL_30:
  v19 = *(v17 - 1);
  v18 = v17 - 8;
  v20 = v19 + 8;
  if (v19 != -8)
  {
    bzero(v18, v20);
  }

  free(v18);
LABEL_33:
  if (in.engine)
  {
    v22 = in.engine - 8;
    v21 = *(in.engine - 1);
    if (v21 != -8)
    {
      bzero(in.engine - 8, v21 + 8);
    }

    free(v22);
  }

  if (!in.md_data)
  {
    return v13;
  }

  (*in.md_data)(in.flags);
  return v13;
}

uint64_t x509_digest_verify_init(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJ_obj2nid(*a2);
  if (v6 > 670)
  {
    if (v6 <= 795)
    {
      if (v6 > 793)
      {
        if (v6 == 794)
        {
          v7 = &unk_273BB92DC;
          if (*(a3 + 4) != 408)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v7 = &unk_273BB92E8;
          if (*(a3 + 4) != 408)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_59;
      }

      if (v6 == 671)
      {
        v7 = &unk_273BB9264;
        if (*(a3 + 4) != 6)
        {
          goto LABEL_57;
        }

        goto LABEL_59;
      }

      if (v6 == 793)
      {
        v7 = &unk_273BB92D0;
        if (*(a3 + 4) != 408)
        {
          goto LABEL_57;
        }

        goto LABEL_59;
      }
    }

    else if (v6 <= 802)
    {
      if (v6 == 796)
      {
        v7 = &unk_273BB92F4;
        if (*(a3 + 4) == 408)
        {
          goto LABEL_59;
        }

        goto LABEL_57;
      }

      if (v6 == 802)
      {
        v7 = &unk_273BB92AC;
        if (*(a3 + 4) != 116)
        {
          goto LABEL_57;
        }

        goto LABEL_59;
      }
    }

    else
    {
      switch(v6)
      {
        case 803:
          v7 = &unk_273BB92B8;
          if (*(a3 + 4) != 116)
          {
            goto LABEL_57;
          }

          goto LABEL_59;
        case 912:
          v7 = &unk_273BB9300;
          if (*(a3 + 4) != 6)
          {
            goto LABEL_57;
          }

          goto LABEL_59;
        case 949:
          v7 = &unk_273BB930C;
          if (*(a3 + 4) != 949)
          {
            goto LABEL_57;
          }

          goto LABEL_59;
      }
    }

LABEL_76:
    ERR_put_error(12, 0, 184, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/algorithm.cc", 86);
    return 0;
  }

  if (v6 <= 395)
  {
    if (v6 > 69)
    {
      if (v6 == 70)
      {
        v7 = &unk_273BB92A0;
        if (*(a3 + 4) != 67)
        {
          goto LABEL_57;
        }

        goto LABEL_59;
      }

      if (v6 == 113)
      {
        v7 = &unk_273BB9294;
        if (*(a3 + 4) != 116)
        {
          goto LABEL_57;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (v6 == 8)
      {
        v7 = &unk_273BB924C;
        if (*(a3 + 4) != 6)
        {
          goto LABEL_57;
        }

        goto LABEL_59;
      }

      if (v6 == 65)
      {
        v7 = &unk_273BB9258;
        if (*(a3 + 4) != 6)
        {
          goto LABEL_57;
        }

        goto LABEL_59;
      }
    }

    goto LABEL_76;
  }

  if (v6 <= 667)
  {
    if (v6 == 396)
    {
      v7 = &kTriples;
      if (*(a3 + 4) == 6)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

    if (v6 == 416)
    {
      v7 = &unk_273BB92C4;
      if (*(a3 + 4) != 408)
      {
        goto LABEL_57;
      }

      goto LABEL_59;
    }

    goto LABEL_76;
  }

  if (v6 == 668)
  {
    v7 = &unk_273BB9270;
    if (*(a3 + 4) != 6)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v6 != 669)
    {
      v7 = &unk_273BB9288;
      if (*(a3 + 4) == 6)
      {
        goto LABEL_59;
      }

LABEL_57:
      ERR_put_error(12, 0, 189, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/algorithm.cc", 92);
      return 0;
    }

    v7 = &unk_273BB927C;
    if (*(a3 + 4) != 6)
    {
      goto LABEL_57;
    }
  }

LABEL_59:
  v9 = v7[1];
  if (v9)
  {
    if (v9 == 257 || v9 == 4)
    {
      ERR_put_error(12, 0, 111, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/algorithm.cc", 98);
      return 0;
    }

    v10 = *(a2 + 8);
    if (v10 && *v10 != 5)
    {
      ERR_put_error(11, 0, 136, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/algorithm.cc", 124);
      return 0;
    }

    if (v9 <= 671)
    {
      if (v9 > 113)
      {
        if (v9 != 114)
        {
          goto LABEL_98;
        }

        v11 = &unk_2882A4CA0;
      }

      else
      {
        if (v9 != 64)
        {
          goto LABEL_98;
        }

        v11 = &unk_2882A4BE0;
      }
    }

    else if (v9 <= 673)
    {
      if (v9 == 672)
      {
        v11 = &unk_2882A4C20;
      }

      else
      {
        v11 = &unk_2882A4C40;
      }
    }

    else
    {
      switch(v9)
      {
        case 674:
          v11 = &unk_2882A4C60;
          break;
        case 675:
          v11 = &unk_2882A4C00;
          break;
        case 962:
          v11 = &unk_2882A4C80;
          break;
        default:
          goto LABEL_98;
      }
    }

    v14 = v11[1]();
    if (v14)
    {
      v13 = v14;
      v12 = a1;
LABEL_95:

      return do_sigver_init(v12, 0, v13, 0, a3, 1);
    }

LABEL_98:
    ERR_put_error(12, 0, 183, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/algorithm.cc", 131);
    return 0;
  }

  if (v6 == 949)
  {
    if (*(a2 + 8))
    {
      ERR_put_error(11, 0, 136, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/algorithm.cc", 109);
      return 0;
    }

    v12 = a1;
    v13 = 0;
    goto LABEL_95;
  }

  if (v6 == 912)
  {

    return x509_rsa_pss_to_ctx(a1, a2, a3);
  }

  else
  {
    ERR_put_error(12, 0, 184, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/algorithm.cc", 114);
    return 0;
  }
}

uint64_t CBB_finish_i2d(uint64_t a1, void **a2)
{
  if (*(a1 + 8))
  {
    ERR_put_error(14, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", 126);
    goto LABEL_3;
  }

  if (!CBB_flush(a1))
  {
LABEL_3:
    if (*(a1 + 8))
    {
      return 0xFFFFFFFFLL;
    }

    if (*(a1 + 40))
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        v13 = *(v11 - 8);
        v12 = (v11 - 8);
        v14 = v13 + 8;
        if (v13 != -8)
        {
          bzero(v12, v14);
        }

        v10 = v12;
LABEL_17:
        free(v10);
        return 0xFFFFFFFFLL;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(a1 + 16) = 0;
  if (v3 >> 31)
  {
    if (v6)
    {
      v8 = *(v6 - 1);
      v7 = (v6 - 1);
      v9 = v8 + 8;
      if (v8 != -8)
      {
        bzero(v7, v9);
      }

      v10 = v7;
      goto LABEL_17;
    }

    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v15 = a2;
    v16 = *a2;
    if (!*a2)
    {
      *a2 = v6;
      return v3;
    }

    if (v3)
    {
      memcpy(v16, v6, v3);
      v15 = a2;
      v16 = *a2;
    }

    *v15 = &v16[v3];
  }

  if (!v6)
  {
    return v3;
  }

  v18 = *(v6 - 1);
  v17 = (v6 - 1);
  v19 = v18 + 8;
  if (v18 != -8)
  {
    bzero(v17, v19);
  }

  free(v17);
  return v3;
}

ASN1_TYPE *__cdecl ASN1_generate_v3(char *str, X509V3_CTX *cnf)
{
  v17 = 0;
  *v15 = 0u;
  *v16 = 0u;
  v4 = malloc_type_malloc(8uLL, 0xB4E622C9uLL);
  if (v4)
  {
    *v4 = 0;
    v5 = v4 + 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v5 = 0;
  }

  LOBYTE(v15[0]) = 0;
  v14 = 0;
  memset(v16, 0, sizeof(v16));
  v15[1] = v5;
  LOBYTE(v17) = 1;
  if (!generate_v3(&v14, str, cnf, 1, 0))
  {
    result = 0;
    if (LOBYTE(v15[0]))
    {
      return result;
    }

    goto LABEL_18;
  }

  if (LOBYTE(v15[0]))
  {
    v6 = *v16 + LOBYTE(v16[2]);
    v7 = *(v15[1] + 1) - v6;
    if (v7 <= 0x10000)
    {
      v8 = (*v15[1] + v6);
      goto LABEL_14;
    }

LABEL_11:
    ERR_put_error(12, 0, 177, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/asn1_gen.cc", 72);
    result = 0;
    if (LOBYTE(v15[0]))
    {
      return result;
    }

    goto LABEL_18;
  }

  v7 = *v16;
  if (*v16 > 0x10000uLL)
  {
    goto LABEL_11;
  }

  v8 = v15[1];
LABEL_14:
  v13 = v8;
  pval = 0;
  if (asn1_item_ex_d2i(&pval, &v13, v7, &ASN1_OBJECT_it.sname, 0xFFFFFFFFLL, 0, 0, 0, 0) <= 0)
  {
    ASN1_item_ex_free(&pval, &ASN1_OBJECT_it.sname);
    result = pval;
    if (LOBYTE(v15[0]))
    {
      return result;
    }
  }

  else
  {
    result = pval;
    if (LOBYTE(v15[0]))
    {
      return result;
    }
  }

LABEL_18:
  if ((v17 & 1) != 0 && v15[1])
  {
    v10 = result;
    v12 = v15[1] - 8;
    v11 = *(v15[1] - 1);
    if (v11 != -8)
    {
      bzero(v12, v11 + 8);
    }

    free(v12);
    return v10;
  }

  return result;
}

uint64_t generate_v3(uint64_t *a1, char *a2, X509V3_CTX *a3, uint64_t a4, int a5)
{
  if (a5 > 50)
  {
    v5 = 131;
    v6 = 147;
    goto LABEL_3;
  }

  v11 = 0;
  while (1)
  {
    v12 = *a2;
    if (*a2)
    {
      v13 = a2;
      do
      {
        if (v12 != 32 && (v12 - 14) < 0xFFFFFFFB)
        {
          break;
        }

        v14 = *++v13;
        v12 = v14;
      }

      while (v14);
    }

    else
    {
      v13 = a2;
    }

    v15 = strchr(v13, 44);
    if (!v15)
    {
      goto LABEL_104;
    }

    *&pp = v13;
    if (v15 == v13)
    {
LABEL_23:
      v21 = 0;
      a2 = v15 + 1;
LABEL_24:
      v19 = 0;
      v20 = 0;
      pp = 0uLL;
      goto LABEL_25;
    }

    v16 = v15;
    while (1)
    {
      v17 = *(v16 - 1);
      if (v17 != 32 && (v17 - 14) < 0xFFFFFFFB)
      {
        break;
      }

      if (--v16 == v13)
      {
        goto LABEL_23;
      }
    }

    a2 = v15 + 1;
    v21 = v16 - v13;
    v22 = memchr(v13, 58, v16 - v13);
    if (!v22 || v21 < (v22 - v13))
    {
      goto LABEL_24;
    }

    v19 = &v16[-v22];
    v20 = v22;
    *&pp = v22;
    *(&pp + 1) = &v16[-v22];
    if (v16 != v22)
    {
      v20 = (v22 + 1);
      v19 = &v16[~v22];
      *&pp = v22 + 1;
      *(&pp + 1) = v19;
      v21 = v22 - v13;
    }

LABEL_25:
    if (v21 <= 5)
    {
      break;
    }

    switch(v21)
    {
      case 6:
        if (*v13 != 1297239878 || *(v13 + 2) != 21569)
        {
          v21 = 6;
          goto LABEL_95;
        }

LABEL_43:
        if (v19 > 4)
        {
          if (v19 == 7)
          {
            v31 = *v20;
            v32 = *(v20 + 3);
            if (v31 != 1280592194 || v32 != 1414744396)
            {
LABEL_76:
              v5 = 182;
              v6 = 203;
              goto LABEL_3;
            }

            a4 = 4;
          }

          else
          {
            if (v19 != 5)
            {
              goto LABEL_76;
            }

            v25 = *v20;
            v26 = *(v20 + 4);
            if (v25 != 1229148993 || v26 != 73)
            {
              goto LABEL_76;
            }

            a4 = 1;
          }
        }

        else if (v19 == 3)
        {
          v28 = *v20;
          v29 = *(v20 + 2);
          if (v28 != 17736 || v29 != 88)
          {
            goto LABEL_76;
          }

          a4 = 3;
        }

        else
        {
          if (v19 != 4 || *v20 != 944133205)
          {
            goto LABEL_76;
          }

          a4 = 2;
        }

        break;
      case 8:
        if (*v13 != 0x544943494C504D49)
        {
          if (*v13 == 0x544943494C505845)
          {
            goto LABEL_121;
          }

          v21 = 8;
LABEL_95:
          if (cbs_str_equal(v13, v21, "SEQWRAP"))
          {
            if (v11)
            {
              v37 = v11 | 0x20000000;
            }

            else
            {
              v37 = 536870928;
            }

            return generate_wrapped(a1, a2, a3, v37, 0, a4, a5);
          }

          if (cbs_str_equal(v13, v21, "SETWRAP"))
          {
            if (v11)
            {
              v37 = v11 | 0x20000000;
            }

            else
            {
              v37 = 536870929;
            }

            return generate_wrapped(a1, a2, a3, v37, 0, a4, a5);
          }

LABEL_104:
          v38 = strchr(v13, 58);
          v39 = v38;
          if (v38)
          {
            v40 = v38 - v13;
            v41 = v38 + 1;
            if (v38 == v13)
            {
              goto LABEL_120;
            }
          }

          else
          {
            v40 = strlen(v13);
            v41 = "";
            if (!v40)
            {
LABEL_120:
              v5 = 185;
              v6 = 309;
LABEL_3:
              ERR_put_error(12, 0, v5, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/asn1_gen.cc", v6);
              return 0;
            }
          }

          v42 = -11;
          v43 = &dword_279E960A8;
          while (strlen(*(v43 - 1)) != v40 || memcmp(v13, *(v43 - 1), v40))
          {
            ++v42;
            v43 += 4;
            if (v42 == 22)
            {
              goto LABEL_120;
            }
          }

          v44 = *v43;
          if (v11)
          {
            v45 = *v43 & 0x20000000 | v11;
          }

          else
          {
            v45 = *v43;
          }

          result = CBB_add_asn1(a1, v85, v45);
          if (!result)
          {
            return result;
          }

          switch(v44)
          {
            case 1:
              if (a4 != 1)
              {
                v5 = 161;
                v6 = 330;
                goto LABEL_3;
              }

              LODWORD(out) = 0;
              if (!X509V3_BOOL_from_string(v41, &out))
              {
                v5 = 125;
                v6 = 335;
                goto LABEL_3;
              }

              v66 = out;
              *&pp = 0;
              result = CBB_add_space(v85, &pp, 1);
              if (result)
              {
                if (v66)
                {
                  v67 = -1;
                }

                else
                {
                  v67 = 0;
                }

                *pp = v67;
                v50 = a1;
                return CBB_flush(v50) != 0;
              }

              return result;
            case 2:
            case 10:
              if (a4 != 1)
              {
                v5 = 139;
                v6 = 344;
                goto LABEL_3;
              }

              v54 = s2i_ASN1_INTEGER(0, v41);
              if (!v54)
              {
                v5 = 130;
                v6 = 349;
                goto LABEL_3;
              }

              v55 = v54;
              v56 = i2c_ASN1_INTEGER(v54, 0);
              *&pp = 0;
              if (v56 < 1 || (v57 = v56, !CBB_add_space(v85, &pp, v56)) || i2c_ASN1_INTEGER(v55, &pp) != v57)
              {
                v58 = 0;
                goto LABEL_199;
              }

              goto LABEL_149;
            case 3:
              if (a4 == 4)
              {
                result = ASN1_BIT_STRING_new();
                if (!result)
                {
                  return result;
                }

                v55 = result;
                if (!CONF_parse_list(v41, 44, 1, bitstr_cb, result))
                {
                  ERR_put_error(12, 0, 151, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/asn1_gen.cc", 435);
                  ASN1_STRING_free(v55);
                  return 0;
                }

                v73 = i2c_ASN1_BIT_STRING(v55, 0);
                *&pp = 0;
                if (v73 >= 1 && (v74 = v73, CBB_add_space(v85, &pp, v73)) && i2c_ASN1_BIT_STRING(v55, &pp) == v74)
                {
LABEL_149:
                  v58 = CBB_flush(a1) != 0;
                }

                else
                {
                  v58 = 0;
                }

LABEL_199:
                ASN1_STRING_free(v55);
                return v58;
              }

              else
              {
                *&pp = 0;
                result = CBB_add_space(v85, &pp, 1);
                if (!result)
                {
                  return result;
                }

                *pp = 0;
LABEL_204:
                if (a4 != 3)
                {
                  if (a4 != 1)
                  {
                    v5 = 124;
                    v6 = 473;
                    goto LABEL_3;
                  }

                  v60 = strlen(v41);
                  *&pp = 0;
                  result = CBB_add_space(v85, &pp, v60);
                  if (!result)
                  {
                    return result;
                  }

                  if (v60)
                  {
                    v61 = pp;
                    goto LABEL_209;
                  }

                  goto LABEL_210;
                }

                out = 0;
                v75 = x509v3_hex_to_bytes(v41, &out);
                if (!v75)
                {
                  v5 = 128;
                  v6 = 465;
                  goto LABEL_3;
                }

                v76 = v75;
                v77 = out;
                *&pp = 0;
                if (CBB_add_space(v85, &pp, out))
                {
                  if (v77)
                  {
                    memcpy(pp, v76, v77);
                  }

                  v78 = CBB_flush(a1) != 0;
                }

                else
                {
                  v78 = 0;
                }

                v80 = *(v76 - 1);
                v79 = v76 - 8;
                v81 = v80 + 8;
                if (v80 != -8)
                {
                  bzero(v79, v81);
                }

                free(v79);
                return v78;
              }

            case 4:
              goto LABEL_204;
            case 5:
              if (!*v41)
              {
                return CBB_flush(a1);
              }

              v5 = 133;
              v6 = 323;
              goto LABEL_3;
            case 6:
              if (a4 != 1)
              {
                v5 = 165;
                v6 = 363;
                goto LABEL_3;
              }

              v68 = OBJ_txt2obj(v41, 0);
              if (!v68 || (length = v68->length, !length))
              {
                v5 = 134;
                v6 = 368;
                goto LABEL_3;
              }

              v70 = v68;
              data = v68->data;
              *&pp = 0;
              if (CBB_add_space(v85, &pp, length))
              {
                memcpy(pp, data, length);
                v72 = CBB_flush(a1) != 0;
              }

              else
              {
                v72 = 0;
              }

              ASN1_OBJECT_free(v70);
              return v72;
            case 7:
            case 8:
            case 9:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 21:
            case 25:
            case 26:
            case 27:
            case 29:
              goto LABEL_168;
            case 12:
            case 19:
            case 20:
            case 22:
            case 28:
            case 30:
              if (a4 == 1)
              {
                v46 = 4097;
              }

              else
              {
                if (a4 != 2)
                {
                  v5 = 127;
                  v6 = 409;
                  goto LABEL_3;
                }

                v46 = 4096;
              }

              out = 0;
              v62 = ASN1_tag2bit(v44);
              if (ASN1_mbstring_ncopy(&out, v41, -1, v46, v62, 0, 0x10000) < 1)
              {
                return 0;
              }

              v63 = out->data;
              v64 = out->length;
              *&pp = 0;
              if (CBB_add_space(v85, &pp, v64))
              {
                if (v64)
                {
                  memcpy(pp, v63, v64);
                }

                v65 = CBB_flush(a1) != 0;
              }

              else
              {
                v65 = 0;
              }

              ASN1_STRING_free(out);
              return v65;
            case 23:
            case 24:
              if (a4 != 1)
              {
                v5 = 176;
                v6 = 379;
                goto LABEL_3;
              }

              v59 = strlen(v41);
              *&pp = v41;
              *(&pp + 1) = v59;
              if (!CBS_parse_rfc5280_time_internal(&pp, v42 < 0xFFFFFFFFFFFFFFFELL, 0, 0))
              {
                v5 = 138;
                v6 = 390;
                goto LABEL_3;
              }

              v60 = strlen(v41);
              out = 0;
              result = CBB_add_space(v85, &out, v60);
              if (!result)
              {
                return result;
              }

              if (v60)
              {
                v61 = out;
LABEL_209:
                memcpy(v61, v41, v60);
              }

              goto LABEL_210;
            default:
              if ((v44 - 536870928) >= 2)
              {
LABEL_168:
                v5 = 68;
                v6 = 510;
                goto LABEL_3;
              }

              if (!v39)
              {
                goto LABEL_194;
              }

              if (!a3)
              {
                v5 = 170;
                v6 = 480;
                goto LABEL_3;
              }

              section = X509V3_get_section(a3, v41);
              if (!section)
              {
                v5 = 170;
                v6 = 485;
                goto LABEL_3;
              }

              v52 = section;
              v53 = 0;
              while (v53 < *&v52->num)
              {
                result = generate_v3(v85, *(v52->data[v53] + 2), a3, 1, (a5 + 1));
                if (!result)
                {
                  return result;
                }

                if (v85[8])
                {
                  ++v53;
                  if (*(v86 + 8) - (v87 + v88) > 0x10000)
                  {
LABEL_167:
                    v5 = 177;
                    v6 = 498;
                    goto LABEL_3;
                  }
                }

                else
                {
                  ++v53;
                  if (v87 > 0x10000)
                  {
                    goto LABEL_167;
                  }
                }
              }

LABEL_194:
              if (v42 != 21)
              {
                return CBB_flush(a1);
              }

              result = CBB_flush_asn1_set_of(v85);
              if (!result)
              {
                return result;
              }

LABEL_210:
              v50 = a1;
              break;
          }

          return CBB_flush(v50) != 0;
        }

LABEL_53:
        if (v11)
        {
          v5 = 131;
          v6 = 209;
          goto LABEL_3;
        }

        result = parse_tag(&pp);
        v11 = result;
        if (!result)
        {
          return result;
        }

        break;
      case 7:
        if (*v13 == 1465140047 && *(v13 + 3) == 1346458199)
        {
          if (v11)
          {
            v47 = v11;
          }

          else
          {
            v47 = 4;
          }

LABEL_128:
          v48 = a1;
          result = CBB_add_asn1(a1, v85, v47);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          if (*v13 != 1465141570 || *(v13 + 3) != 1346458199)
          {
            v21 = 7;
            goto LABEL_95;
          }

          if (v11)
          {
            v49 = v11;
          }

          else
          {
            v49 = 3;
          }

          v48 = a1;
          result = CBB_add_asn1(a1, v85, v49);
          if (!result)
          {
            return result;
          }

          out = 0;
          result = CBB_add_space(v85, &out, 1);
          if (!result)
          {
            return result;
          }

          LOBYTE(out->length) = 0;
        }

        result = generate_v3(v85, a2, a3, a4, (a5 + 1));
        if (!result)
        {
          return result;
        }

        v50 = v48;
        return CBB_flush(v50) != 0;
      default:
        goto LABEL_95;
    }
  }

  if (v21 != 3)
  {
    if (v21 != 4)
    {
      goto LABEL_95;
    }

    if (*v13 != 1297239878)
    {
      v21 = 4;
      goto LABEL_95;
    }

    goto LABEL_43;
  }

  if (*v13 == 19785 && v13[2] == 80)
  {
    goto LABEL_53;
  }

  if (*v13 != 22597 || v13[2] != 80)
  {
    v21 = 3;
    goto LABEL_95;
  }

LABEL_121:
  if (v11)
  {
    v5 = 131;
    v6 = 221;
    goto LABEL_3;
  }

  result = parse_tag(&pp);
  if (result)
  {
    v47 = result | 0x20000000;
    goto LABEL_128;
  }

  return result;
}

BOOL cbs_str_equal(const void *a1, size_t a2, char *__s)
{
  if (strlen(__s) != a2)
  {
    return 0;
  }

  if (a2)
  {
    return memcmp(a1, __s, a2) == 0;
  }

  return 1;
}

uint64_t parse_tag(unsigned __int8 **a1)
{
  v1 = a1[1];
  if (!v1 || (v2 = **a1 - 48, v2 > 9))
  {
LABEL_3:
    ERR_put_error(12, 0, 145, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/asn1_gen.cc", 91);
    return 0;
  }

  v4 = v1 - 1;
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = *a1 + 1;
  v6 = v4;
  v7 = v5;
  do
  {
    v8 = *v7 - 48;
    if (v8 > 9)
    {
      break;
    }

    v9 = v6 == 1;
    v10 = v6 == 0;
    if (v6)
    {
      v4 = v6 - 1;
      v5 = v7 + 1;
      --v6;
    }

    else
    {
      v6 = 0;
    }

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      ++v7;
      v11 = v9;
    }

    if (v2 - 0x199999999999999ALL < 0xE666666666666667)
    {
      goto LABEL_3;
    }

    v12 = 10 * v2;
    if (__CFADD__(v8, v12))
    {
      goto LABEL_3;
    }

    v2 = v12 + v8;
  }

  while ((v11 & 1) == 0);
  if (v2 >> 29)
  {
    goto LABEL_3;
  }

  if (!v4)
  {
LABEL_22:
    v15 = 0x80000000;
    return v15 | v2;
  }

  v13 = *v5;
  if (v13 > 79)
  {
    if (v13 == 80)
    {
      v14 = 0;
      v15 = -1073741824;
    }

    else
    {
      if (v13 != 85)
      {
        goto LABEL_27;
      }

      v15 = 0;
      v14 = 1;
    }
  }

  else
  {
    if (v13 != 65)
    {
      if (v13 == 67)
      {
        v14 = 0;
        v15 = 0x80000000;
        goto LABEL_30;
      }

LABEL_27:
      ERR_put_error(12, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/asn1_gen.cc", 113);
      return 0;
    }

    v14 = 0;
    v15 = 0x40000000;
  }

LABEL_30:
  if (v4 == 1)
  {
    v16 = v14 ^ 1;
    if (v2)
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      ERR_put_error(12, 0, 145, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/asn1_gen.cc", 126);
      return 0;
    }

    return v15 | v2;
  }

  ERR_put_error(12, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/asn1_gen.cc", 118);
  return 0;
}

uint64_t generate_wrapped(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  result = CBB_add_asn1(a1, v14, a4);
  if (result)
  {
    if (a5)
    {
      v15 = 0;
      result = CBB_add_space(v14, &v15, 1);
      if (!result)
      {
        return result;
      }

      *v15 = 0;
    }

    result = generate_v3(v14, a2, a3, a6, (a7 + 1));
    if (result)
    {
      return CBB_flush(a1) != 0;
    }
  }

  return result;
}

uint64_t bitstr_cb(const char *a1, uint64_t a2, ASN1_BIT_STRING *a)
{
  if (!a2)
  {
    goto LABEL_3;
  }

  v4 = *a1 - 48;
  if (v4 > 9)
  {
    goto LABEL_3;
  }

  v6 = a2 - 1;
  if (v6)
  {
    v7 = a1 + 1;
    v8 = v6;
    do
    {
      v9 = *v7 - 48;
      if (v9 > 9)
      {
        break;
      }

      v10 = v8 == 1;
      v11 = v8 == 0;
      if (v8)
      {
        v6 = --v8;
      }

      else
      {
        v8 = 0;
      }

      if (v11)
      {
        v12 = 1;
      }

      else
      {
        ++v7;
        v12 = v10;
      }

      if (v4 - 0x199999999999999ALL < 0xE666666666666667 || __CFADD__(v9, 10 * v4))
      {
        goto LABEL_3;
      }

      v4 = 10 * v4 + v9;
    }

    while ((v12 & 1) == 0);
    LOBYTE(v6) = v6 != 0;
  }

  if ((v6 & 1) != 0 || v4 >= 0x101)
  {
LABEL_3:
    ERR_put_error(12, 0, 145, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/asn1_gen.cc", 530);
    return 0;
  }

  else
  {

    return ASN1_BIT_STRING_set_bit(a, v4, 1);
  }
}

int ASN1_get_object(const unsigned __int8 **pp, uint64_t *plength, int *ptag, int *pclass, uint64_t omax)
{
  if (omax < 0)
  {
    v11 = 77;
    goto LABEL_7;
  }

  v18 = 0;
  v17[0] = *pp;
  v17[1] = omax;
  v19 = 0;
  if (!cbs_get_any_asn1_element(v17, &v15, &v18, &v19, 0, 0, 0) || (v9 = v16 - v19, v16 < v19) || (v10 = (v15 + v19), v15 += v19, v16 -= v19, v9 >> 30))
  {
    v11 = 88;
LABEL_7:
    ERR_put_error(12, 0, 123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/asn1_lib.cc", v11);
    return 128;
  }

  v13 = HIBYTE(v18) & 0xC0;
  v14 = v18 & 0x1FFFFFFF;
  if ((v18 & 0x1FFFFFFF) >= 0x100 && !v13)
  {
    v11 = 99;
    goto LABEL_7;
  }

  result = HIBYTE(v18) & 0x20;
  *pp = v10;
  *plength = v9;
  *ptag = v14;
  *pclass = v13;
  return result;
}

void ASN1_put_object(unsigned __int8 **pp, int constructed, int length, int tag, int xclass)
{
  v5 = *pp;
  v6 = xclass & 0xC0 | (32 * (constructed != 0));
  if (tag > 30)
  {
    v8 = 0;
    *v5 = v6 | 0x1F;
    v9 = v5;
    v10 = tag;
    do
    {
      --v8;
      ++v9;
      v11 = v10 >= 0x80;
      v10 >>= 7;
    }

    while (v11);
    *v9 = tag & 0x7F;
    if (v8 != -1)
    {
      v12 = -v8;
      v13 = v5 - 1;
      do
      {
        tag = tag >> 7;
        v13[v12--] = tag | 0x80;
      }

      while (v12 > 1);
    }

    v7 = v9 + 1;
    if (constructed != 2)
    {
      goto LABEL_3;
    }

LABEL_11:
    *v7 = 0x80;
    *pp = v7 + 1;
    return;
  }

  *v5 = v6 | tag & 0x1F;
  v7 = v5 + 1;
  if (constructed == 2)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (length >= 128)
  {
    v14 = 1;
    v15 = length;
    do
    {
      ++v14;
      v16 = v15 > 0xFF;
      v15 >>= 8;
    }

    while (v16);
    *v7 = (v14 - 1) | 0x80;
    v17 = v14;
    do
    {
      v7[(v17 - 2) + 1] = length;
      length = length >> 8;
      --v17;
    }

    while (v17 > 1);
    *pp = &v7[v14];
  }

  else
  {
    *v7 = length;
    *pp = v7 + 1;
  }
}

int ASN1_object_size(int constructed, int length, int tag)
{
  if (length < 0)
  {
    return -1;
  }

  v3 = 1;
  if (tag >= 31)
  {
    do
    {
      ++v3;
      v4 = tag > 0x7F;
      tag = tag >> 7;
    }

    while (v4);
  }

  if (constructed == 2)
  {
    v5 = v3 + 3;
    if (v5 >= (length ^ 0x7FFFFFFF))
    {
      return -1;
    }

    else
    {
      return v5 + length;
    }
  }

  else
  {
    v7 = v3 + 1;
    if (length >= 128)
    {
      v8 = length;
      do
      {
        ++v7;
        v4 = v8 > 0xFF;
        v8 >>= 8;
      }

      while (v4);
    }

    if (v7 >= (length ^ 0x7FFFFFFF))
    {
      return -1;
    }

    else
    {
      return v7 + length;
    }
  }
}

int ASN1_STRING_set(ASN1_STRING *str, const void *data, int len)
{
  v3 = *&len;
  if ((*&len & 0x8000000000000000) != 0)
  {
    if (!data)
    {
      return 0;
    }

    v3 = strlen(data);
    if (v3 >= 0x4000001)
    {
LABEL_3:
      ERR_put_error(12, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/asn1_lib.cc", 245);
      return 0;
    }
  }

  else if (*&len >= 0x4000001uLL)
  {
    goto LABEL_3;
  }

  v6 = str->data;
  if (str->length <= v3)
  {
    if (v6)
    {
      v8 = *(v6 - 1);
      v9 = malloc_type_malloc(v3 + 9, 0xB4E622C9uLL);
      if (v9)
      {
        *v9 = v3 + 1;
        v10 = (v9 + 1);
        if (v8 >= v3 + 1)
        {
          v11 = v3 + 1;
        }

        else
        {
          v11 = v8;
        }

        memcpy(v9 + 1, v6, v11);
        v12 = *(v6 - 1);
        if (v12 != -8)
        {
          bzero(v6 - 8, v12 + 8);
        }

        free(v6 - 8);
        str->data = v10;
        v6 = v10;
        str->length = v3;
        if (!data)
        {
          return 1;
        }

        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  else if (v6)
  {
    str->length = v3;
    if (!data)
    {
      return 1;
    }

    goto LABEL_22;
  }

  v13 = malloc_type_malloc(v3 + 9, 0xB4E622C9uLL);
  v6 = v13;
  if (v13)
  {
    *v13 = v3 + 1;
    v6 = v13 + 8;
    str->data = v13 + 8;
    str->length = v3;
    if (!data)
    {
      return 1;
    }

LABEL_22:
    if (v3)
    {
      memcpy(v6, data, v3);
      v6 = str->data;
    }

    v6[v3] = 0;
    return 1;
  }

LABEL_26:
  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  result = 0;
  str->data = v6;
  return result;
}

ASN1_STRING *__cdecl ASN1_STRING_dup(ASN1_STRING *a)
{
  if (a)
  {
    v1 = a;
    v2 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v2)
    {
      v3 = v2;
      *v2 = 24;
      *(v2 + 1) = 0x400000000;
      *(v2 + 2) = 0;
      v4 = (v2 + 16);
      *(v2 + 3) = 0;
      v5 = (v2 + 8);
      if (ASN1_STRING_set((v2 + 8), v1->data, v1->length))
      {
        v3[3] = v1->type;
        *(v3 + 3) = v1->flags;
        return v5;
      }

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
      }

      free(v3);
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

    return 0;
  }

  return a;
}

void ASN1_STRING_free(BUF_MEM *a)
{
  if (a)
  {
    data = a->data;
    if (data)
    {
      v4 = *(data - 1);
      v3 = data - 8;
      v5 = v4 + 8;
      if (v4 != -8)
      {
        bzero(v3, v5);
      }

      free(v3);
    }

    v7 = *&a[-1].max;
    p_max = &a[-1].max;
    v8 = v7 + 8;
    if (v7 != -8)
    {
      bzero(p_max, v8);
    }

    free(p_max);
  }
}

ASN1_STRING *__cdecl ASN1_STRING_type_new(int type)
{
  v2 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v2)
  {
    *v2 = 24;
    *(v2 + 2) = 0;
    *(v2 + 3) = type;
    *(v2 + 2) = 0;
    *(v2 + 3) = 0;
    return (v2 + 8);
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

int ASN1_STRING_cmp(ASN1_STRING *a, ASN1_STRING *b)
{
  length = b->length;
  v3 = a->length;
  type = a->type;
  if (type == 3)
  {
    flags = a->flags;
    if ((flags & 8) != 0)
    {
      v9 = flags & 7;
      if (!v3)
      {
        v9 = 0;
      }

      v10 = b->type;
      if (v10 != 3)
      {
        goto LABEL_61;
      }

      goto LABEL_38;
    }

    if (v3 >= 1)
    {
      v6 = a->data - 1;
      while (1)
      {
        v7 = v6[v3];
        if (v7)
        {
          break;
        }

        v8 = __OFSUB__(v3--, 1);
        if ((v3 < 0) ^ v8 | (v3 == 0))
        {
          v9 = 0;
          v3 = 0;
          v10 = b->type;
          if (v10 == 3)
          {
            goto LABEL_38;
          }

          goto LABEL_61;
        }
      }

      if ((v6[v3] & 0x40) != 0)
      {
        v11 = 6;
      }

      else
      {
        v11 = 7;
      }

      if ((v6[v3] & 0x20) != 0)
      {
        v12 = 5;
      }

      else
      {
        v12 = v11;
      }

      if ((v6[v3] & 0x10) != 0)
      {
        v13 = 4;
      }

      else
      {
        v13 = v12;
      }

      if ((v6[v3] & 8) != 0)
      {
        v14 = 3;
      }

      else
      {
        v14 = v13;
      }

      if ((v6[v3] & 4) != 0)
      {
        v15 = 2;
      }

      else
      {
        v15 = v14;
      }

      if ((v6[v3] & 2) != 0)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v16;
      }

      v10 = b->type;
      if (v10 != 3)
      {
        goto LABEL_61;
      }

      goto LABEL_38;
    }
  }

  v9 = 0;
  v10 = b->type;
  if (v10 != 3)
  {
    goto LABEL_61;
  }

LABEL_38:
  v17 = b->flags;
  if ((v17 & 8) == 0)
  {
    if (length >= 1)
    {
      v18 = b->data - 1;
      while (!v18[length])
      {
        v8 = __OFSUB__(length--, 1);
        if (((length & 0x80000000) != 0) ^ v8 | (length == 0))
        {
          v19 = 0;
          length = 0;
          goto LABEL_62;
        }
      }

      if ((v18[length] & 1) == 0)
      {
        if ((v18[length] & 2) != 0)
        {
          v19 = 1;
        }

        else if ((v18[length] & 4) != 0)
        {
          v19 = 2;
        }

        else if ((v18[length] & 8) != 0)
        {
          v19 = 3;
        }

        else
        {
          if ((v18[length] & 0x40) != 0)
          {
            v20 = 6;
          }

          else
          {
            v20 = 7;
          }

          if ((v18[length] & 0x20) != 0)
          {
            v21 = 5;
          }

          else
          {
            v21 = v20;
          }

          if ((v18[length] & 0x10) != 0)
          {
            v19 = 4;
          }

          else
          {
            v19 = v21;
          }
        }

        goto LABEL_62;
      }
    }

LABEL_61:
    v19 = 0;
    goto LABEL_62;
  }

  v19 = v17 & 7;
  if (!length)
  {
    v19 = 0;
  }

LABEL_62:
  if (v3 < length)
  {
    return -1;
  }

  if (v3 > length)
  {
    return 1;
  }

  if (v9 > v19)
  {
    return -1;
  }

  if (v9 < v19)
  {
    return 1;
  }

  if (!v3 || (result = memcmp(a->data, b->data, v3)) == 0)
  {
    if (type >= v10)
    {
      return type > v10;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

int EVP_EncodeBlock(unsigned __int8 *t, const unsigned __int8 *f, int n)
{
  if (*&n)
  {
    v3 = f + 1;
    v4 = 4;
    while (1)
    {
      v5 = &t[v4];
      v6 = *(v3 - 1);
      v7 = v6 << 16;
      if (*&n <= 2uLL)
      {
        break;
      }

      v8 = v3[1];
      v9 = v3[1] | (*v3 << 8);
      v10 = v7 | (*v3 << 8);
      if (v6 >= 0xF8)
      {
        v11 = 0;
      }

      else
      {
        v11 = 255;
      }

      if (v6 >= 0xD0)
      {
        v12 = 0;
      }

      else
      {
        v12 = 255;
      }

      v13.i16[0] = *(v3 - 1);
      v13.i16[1] = v10 >> 12;
      v13.i16[2] = v9 >> 6;
      v13.i16[3] = v3[1];
      v14 = vand_s8(v13, 0x3F003F003F003FLL);
      v13.i16[0] = v6 & 0xF0FF;
      v13.i16[1] &= 0xF0FFu;
      v13.i16[2] &= 0xF0FFu;
      v13.i16[3] = v8 & 0xF0FF;
      v14.i16[0] = vshl_u16(v13, 0xFFC1FFC1FFC1FFFELL).u16[0];
      if (v6 >= 0x68)
      {
        v15 = 0;
      }

      else
      {
        v15 = 255;
      }

      if ((v14.i8[0] & 0x3F) == 0x3E)
      {
        v16 = 255;
      }

      else
      {
        v16 = 0;
      }

      v17 = (v10 >> 12) & 0x3F;
      if (v17 == 62)
      {
        v18 = 255;
      }

      else
      {
        v18 = 0;
      }

      if (v17 >= 0x3E)
      {
        v19 = 0;
      }

      else
      {
        v19 = 255;
      }

      if (v17 >= 0x34)
      {
        v20 = 0;
      }

      else
      {
        v20 = 255;
      }

      if (v17 >= 0x1A)
      {
        v21 = 0;
      }

      else
      {
        v21 = 255;
      }

      v22 = (v9 >> 6) & 0x3F;
      if (v22 == 62)
      {
        v23 = 255;
      }

      else
      {
        v23 = 0;
      }

      if (v22 >= 0x3E)
      {
        v24 = 0;
      }

      else
      {
        v24 = 255;
      }

      if (v22 >= 0x34)
      {
        v25 = 0;
      }

      else
      {
        v25 = 255;
      }

      if (v22 >= 0x1A)
      {
        v26 = 0;
      }

      else
      {
        v26 = 255;
      }

      v27 = v8 & 0x3F;
      if (v27 == 62)
      {
        v28 = 255;
      }

      else
      {
        v28 = 0;
      }

      v29.i16[0] = v16;
      v29.i16[1] = v18;
      v29.i16[2] = v23;
      v29.i16[3] = v28;
      v30 = vorr_s8(vand_s8(veor_s8(v29, 0xFF00FF00FF00FFLL), 0x2F002F002F002FLL), vand_s8(v29, 0x2B002B002B002BLL));
      if (v27 >= 0x3E)
      {
        v31 = 0;
      }

      else
      {
        v31 = 255;
      }

      v32.i16[0] = v11;
      v32.i16[1] = v19;
      v32.i16[2] = v24;
      v32.i16[3] = v31;
      v33 = vorr_s8(vand_s8(v30, veor_s8(v32, 0xFF00FF00FF00FFLL)), vand_s8(v32, vadd_s16(v14, 0xFC00FC00FC00FCLL)));
      if (v27 >= 0x34)
      {
        v34 = 0;
      }

      else
      {
        v34 = 255;
      }

      v35.i16[0] = v12;
      v35.i16[1] = v20;
      v35.i16[2] = v25;
      v35.i16[3] = v34;
      v36 = vand_s8(v35, vadd_s16(v14, 0x47004700470047));
      v37 = vand_s8(v33, veor_s8(v35, 0xFF00FF00FF00FFLL));
      if (v27 >= 0x1A)
      {
        v38 = 0;
      }

      else
      {
        v38 = 255;
      }

      v39.i16[0] = v15;
      v39.i16[1] = v21;
      v39.i16[2] = v26;
      v39.i16[3] = v38;
      *(v5 - 1) = vuzp1_s8(vorr_s8(vand_s8(vorr_s8(v37, v36), veor_s8(v39, 0xFF00FF00FF00FFLL)), vand_s8(v39, vadd_s16(v14, 0x41004100410041))), 0x3F003F003F003FLL).u32[0];
      v4 += 4;
      v3 += 3;
      *&n -= 3;
      if (!*&n)
      {
        v40 = v4 - 4;
        t[v40] = 0;
        return v40;
      }
    }

    if (*&n == 2)
    {
      v7 |= *v3 << 8;
    }

    v42 = v7 >> 18;
    v43 = -1;
    if (v7 >> 18 == 62)
    {
      v44 = -1;
    }

    else
    {
      v44 = 0;
    }

    v45 = ~v44 & 0x2F | v44 & 0x2B;
    if (v7 >= 0xF80000)
    {
      v46 = 0;
    }

    else
    {
      v46 = -1;
    }

    v47 = v45 & ~v46 | (v42 - 4) & v46;
    if (v7 >= 0xD00000)
    {
      v48 = 0;
    }

    else
    {
      v48 = -1;
    }

    v49 = (v42 + 71) & v48;
    v50 = v47 & ~v48;
    if (v7 >= 0x680000)
    {
      v51 = 0;
    }

    else
    {
      v51 = -1;
    }

    v52 = &t[v4];
    *(v5 - 4) = (v50 | v49) & ~v51 | (v42 + 65) & v51;
    v53 = (v7 >> 12) & 0x3F;
    if (v53 == 62)
    {
      v54 = -1;
    }

    else
    {
      v54 = 0;
    }

    v55 = ~v54 & 0x2F | v54 & 0x2B;
    if (v53 >= 0x3E)
    {
      v56 = 0;
    }

    else
    {
      v56 = -1;
    }

    v57 = v55 & ~v56 | (v53 - 4) & v56;
    if (v53 >= 0x34)
    {
      v58 = 0;
    }

    else
    {
      v58 = -1;
    }

    v59 = v57 & ~v58;
    if (v53 >= 0x1A)
    {
      v43 = 0;
    }

    *(v52 - 3) = (v59 | v58 & (v53 + 71)) & ~v43 | v43 & (v53 + 65);
    v60 = 61;
    if (*&n != 1)
    {
      v61 = (v7 >> 6) & 0x3F;
      if (v61 == 62)
      {
        v62 = -1;
      }

      else
      {
        v62 = 0;
      }

      if (v61 >= 0x3E)
      {
        v63 = 0;
      }

      else
      {
        v63 = -1;
      }

      v64 = (~v62 & 0x2F | v62 & 0x2B) & ~v63 | (v61 - 4) & v63;
      if (v61 >= 0x34)
      {
        v65 = 0;
      }

      else
      {
        v65 = -1;
      }

      v66 = v65 & (v61 + 71);
      v67 = v64 & ~v65;
      if (v61 >= 0x1A)
      {
        v68 = 0;
      }

      else
      {
        v68 = -1;
      }

      v60 = (v67 | v66) & ~v68 | v68 & (v61 + 65);
    }

    *(v52 - 2) = v60;
    *(v52 - 1) = 61;
    return v4;
  }

  else
  {
    *t = 0;
    return 0;
  }
}

int EVP_DecodeUpdate(EVP_ENCODE_CTX *ctx, unsigned __int8 *out, int *outl, const unsigned __int8 *in, int inl)
{
  *outl = 0;
  if (ctx->enc_data[45])
  {
    return -1;
  }

  v27[11] = v5;
  v27[12] = v6;
  v14 = *&inl;
  if (*&inl)
  {
    v19 = 0;
    p_length = &ctx->length;
    do
    {
      v22 = *in++;
      v21 = v22;
      v23 = (1 << v22) & 0x100002600;
      if (v22 > 0x20 || v23 == 0)
      {
        if (ctx->enc_data[44])
        {
          goto LABEL_21;
        }

        num = ctx->num;
        ctx->num = num + 1;
        *(p_length + num) = v21;
        if (num == 3)
        {
          v27[0] = 0;
          if (!base64_decode_quad(out, v27, &ctx->length, v7, v8, v9, v10, v11, v12))
          {
LABEL_21:
            ctx->enc_data[45] = 1;
            return -1;
          }

          ctx->num = 0;
          v26 = v27[0];
          if (v27[0] <= 2)
          {
            ctx->enc_data[44] = 1;
          }

          v19 += v26;
          out += v26;
        }
      }

      --v14;
    }

    while (v14);
    if (!(v19 >> 31))
    {
      goto LABEL_20;
    }

    ctx->enc_data[45] = 1;
    *outl = 0;
    return -1;
  }

  else
  {
    LODWORD(v19) = 0;
LABEL_20:
    *outl = v19;
    return ctx->enc_data[44] == 0;
  }
}

uint64_t base64_decode_quad(unsigned __int8 *a1, unint64_t *a2, const unsigned __int8 *a3, double a4, uint8x8_t a5, uint16x8_t a6, double a7, double a8, uint16x8_t a9)
{
  a5.i32[0] = *a3;
  v9 = vmovl_u8(a5).u64[0];
  a6.i32[0] = 12517567;
  a6.i16[2] = 191;
  a6.i16[3] = 191;
  v10 = vaddw_u8(a6, a5).u64[0];
  v11 = vcgt_u16(0x1A001A001A001ALL, (*&v10 & 0xFF00FF00FF00FFLL));
  a9.i32[0] = 10420383;
  a9.i16[2] = 159;
  a9.i16[3] = 159;
  v12 = vaddw_u8(a9, a5);
  v13 = vcgt_u16(0x1A001A001A001ALL, (v12.i64[0] & 0xFF00FF00FF00FFLL));
  v12.i64[0] = 0xD000D000D000D0;
  *v12.i8 = vcgt_u16(0xA000A000A000ALL, (vaddw_u8(v12, a5).u64[0] & 0xFF00FF00FF00FFLL));
  v14 = vmovl_u16(v9);
  v15.i64[0] = v14.u32[0];
  v15.i64[1] = v14.u32[1];
  v16.i64[0] = 255;
  v16.i64[1] = 255;
  v17 = vandq_s8(v15, v16);
  v15.i64[0] = v14.u32[2];
  v15.i64[1] = v14.u32[3];
  v18 = vandq_s8(v15, v16);
  v19 = vdupq_n_s64(0x2BuLL);
  v20.i64[0] = -1;
  v20.i64[1] = -1;
  *v19.i8 = vmovn_s32(vuzp1q_s32(vcltzq_s64(vaddq_s64(veorq_s8(v17, v19), v20)), vcltzq_s64(vaddq_s64(veorq_s8(v18, v19), v20))));
  v21 = vdupq_n_s64(0x2FuLL);
  *v21.i8 = vmovn_s32(vuzp1q_s32(vcltzq_s64(vaddq_s64(veorq_s8(v17, v21), v20)), vcltzq_s64(vaddq_s64(veorq_s8(v18, v21), v20))));
  v22 = vdupq_n_s64(0x3DuLL);
  v23 = vcltzq_s64(vaddq_s64(veorq_s8(v17, v22), v20));
  *v18.i8 = vmovn_s32(vuzp1q_s32(v23, vcltzq_s64(vaddq_s64(veorq_s8(v18, v22), v20))));
  v23.i64[0] = 0xB900B900B900B9;
  v24 = vaddw_u8(v23, a5);
  v25 = vorr_s8(vand_s8(*v24.i8, v13), vand_s8(v10, v11));
  v24.i64[0] = 0x4000400040004;
  v26 = vorr_s8(*v12.i8, vorr_s8(v11, v13));
  v27 = vorr_s8(vorr_s8(vorr_s8(vorr_s8(v25, vand_s8(*&vaddw_u8(v24, a5), *v12.i8)), vand_s8(*v19.i8, 0x3E003E003E003ELL)), vand_s8(*v21.i8, 0x3F003F003F003FLL)), veor_s8(vorr_s8(vorr_s8(vorr_s8((*&v26 & 0xFF00FF00FF00FFLL), *v19.i8), vbic_s8(*v18.i8, v26)), *v21.i8), 0xFF00FF00FF00FFLL));
  if (vmaxv_u16(vceq_s16((*&v27 & 0xFF00FF00FF00FFLL), 0xFF00FF00FF00FFLL)))
  {
    return 0;
  }

  v29 = (v27.u8[2] << 12) | (v27.u8[0] << 18);
  if (v9.u16[3] == 61)
  {
    v30 = ((8 * (v9.u16[0] == 61)) | (4 * (v9.u16[1] == 61)) | (2 * (v9.u16[2] == 61))) + 1;
  }

  else
  {
    v30 = (8 * (v9.u16[0] == 61)) | (4 * (v9.u16[1] == 61)) | (2 * (v9.u16[2] == 61));
  }

  if (v30 == 3)
  {
    *a2 = 1;
    *a1 = BYTE2(v29);
    return 1;
  }

  else
  {
    v31 = (v27.u8[4] >> 2) | (16 * v27.i8[2]);
    if (v30 == 1)
    {
      *a2 = 2;
      *a1 = BYTE2(v29);
      a1[1] = v31;
      return 1;
    }

    else
    {
      if (v30)
      {
        return 0;
      }

      *a2 = 3;
      *a1 = BYTE2(v29);
      a1[1] = v31;
      a1[2] = v27.i8[6] | (v27.i8[4] << 6);
      return 1;
    }
  }
}

double *aes_nohw_encrypt(void *a1, double *a2, uint64_t a3)
{
  v4 = *(a3 + 240);
  if (!v4)
  {
    v5 = 0;
LABEL_7:
    v25 = v4 - v5 + 1;
    v26 = (a3 + 16 * v5 + 8);
    v27 = &v73[8 * v5 + 4];
    do
    {
      v28 = *(v26 - 1);
      v29 = (v28 ^ (v28 >> 1)) & 0x5555555555555555;
      v30 = v28 ^ (2 * v29);
      v31 = v29 ^ v28;
      v32 = (*v26 ^ (*v26 >> 1)) & 0x5555555555555555;
      v33 = *v26 ^ (2 * v32);
      v34 = v32 ^ *v26;
      v35 = (v30 ^ (v30 >> 2)) & 0x3333333333333333;
      v36 = v30 ^ (4 * v35);
      v37 = v35 ^ v30;
      v38 = (v31 ^ (v31 >> 2)) & 0x3333333333333333;
      *(v27 - 4) = v36;
      *(v27 - 3) = v31 ^ (4 * v38);
      *(v27 - 2) = v37;
      *(v27 - 1) = v38 ^ v31;
      v39 = (v33 ^ (v33 >> 2)) & 0x3333333333333333;
      v40 = (v34 ^ (v34 >> 2)) & 0x3333333333333333;
      *v27 = v33 ^ (4 * v39);
      v27[1] = v34 ^ (4 * v40);
      v27[2] = v39 ^ v33;
      v27[3] = v40 ^ v34;
      v26 += 2;
      v27 += 8;
      --v25;
    }

    while (v25);
    goto LABEL_9;
  }

  v5 = (v4 + 1) & 0x1FFFFFFFELL;
  v6 = v73;
  v7.i64[0] = 0x5555555555555555;
  v7.i64[1] = 0x5555555555555555;
  v8.i64[0] = 0x3333333333333333;
  v8.i64[1] = 0x3333333333333333;
  v9 = v5;
  v10 = a3;
  do
  {
    v74 = vld2q_f64(v10);
    v10 += 4;
    v11 = vandq_s8(veorq_s8(vshrq_n_u64(v74.val[0], 1uLL), v74.val[0]), v7);
    v12 = veorq_s8(vaddq_s64(v11, v11), v74.val[0]);
    v13 = veorq_s8(v11, v74.val[0]);
    v14 = vandq_s8(veorq_s8(vshrq_n_u64(v74.val[1], 1uLL), v74.val[1]), v7);
    v15 = veorq_s8(vaddq_s64(v14, v14), v74.val[1]);
    v74.val[0] = veorq_s8(v14, v74.val[1]);
    v74.val[1] = vandq_s8(veorq_s8(vshrq_n_u64(v12, 2uLL), v12), v8);
    v16 = vandq_s8(veorq_s8(vshrq_n_u64(v13, 2uLL), v13), v8);
    v17 = vandq_s8(veorq_s8(vshrq_n_u64(v15, 2uLL), v15), v8);
    v18 = vandq_s8(veorq_s8(vshrq_n_u64(v74.val[0], 2uLL), v74.val[0]), v8);
    v19 = veorq_s8(vshlq_n_s64(v16, 2uLL), v13);
    v20 = veorq_s8(vshlq_n_s64(v74.val[1], 2uLL), v12);
    v74.val[1] = veorq_s8(v74.val[1], v12);
    v21 = veorq_s8(vshlq_n_s64(v18, 2uLL), v74.val[0]);
    v22 = veorq_s8(vshlq_n_s64(v17, 2uLL), v15);
    v23 = veorq_s8(v17, v15);
    v74.val[0] = veorq_s8(v18, v74.val[0]);
    v6[6] = vzip2q_s64(v22, v21);
    v6[7] = vzip2q_s64(v23, v74.val[0]);
    v24 = veorq_s8(v16, v13);
    v6[4] = vzip2q_s64(v20, v19);
    v6[5] = vzip2q_s64(v74.val[1], v24);
    v6[2] = vzip1q_s64(v22, v21);
    v6[3] = vzip1q_s64(v23, v74.val[0]);
    *v6 = vzip1q_s64(v20, v19);
    v6[1] = vzip1q_s64(v74.val[1], v24);
    v6 += 8;
    v9 -= 2;
  }

  while (v9);
  if (v4 + 1 != v5)
  {
    goto LABEL_7;
  }

LABEL_9:
  v41 = a1[1];
  v42 = (*a1 ^ (*a1 >> 4)) & 0xF000F000F000F0;
  v43 = *a1 ^ (16 * v42);
  v44 = v43 ^ v42;
  v45 = (v43 ^ (v44 >> 8)) & 0xFF000000FF00;
  v46 = v44 ^ (v45 << 8);
  v47 = v46 ^ v45;
  v48 = ((v47 >> 16) ^ v46) & 0xFFFF0000;
  v49 = v47 ^ (v48 << 16);
  v50 = (v41 ^ (v41 >> 4)) & 0xF000F000F000F0;
  v51 = v41 ^ (16 * v50);
  v52 = v51 ^ v50;
  v53 = (v51 ^ (v52 >> 8)) & 0xFF000000FF00;
  v54 = v52 ^ (v53 << 8);
  v55 = v54 ^ v53;
  v56 = ((v55 >> 16) ^ v54) & 0xFFFF0000;
  v57 = v48 ^ v47 | ((v56 ^ v55) << 32);
  v58 = (v55 & 0xFFFFFFFF00000000 ^ (v56 << 16)) & 0xFFFFFFFF00000000 | HIDWORD(v49);
  v59 = (v57 >> 1) & 0x5555555555555555;
  v60 = v57 ^ (2 * v59);
  v61 = (v58 >> 1) & 0x5555555555555555;
  v62 = v58 ^ (2 * v61);
  v63 = (v57 >> 3) & 0x1111111111111111;
  v66.i64[0] = v60 ^ (4 * ((v60 >> 2) & 0x3333333333333333));
  v66.i64[1] = v59 ^ (4 * v63);
  v67 = (v60 >> 2) & 0x3333333333333333;
  v68 = v63;
  v64 = (v58 >> 3) & 0x1111111111111111;
  v69 = v62 ^ (4 * ((v62 >> 2) & 0x3333333333333333));
  v70 = v61 ^ (4 * v64);
  v71 = (v62 >> 2) & 0x3333333333333333;
  v72 = v64;
  aes_nohw_encrypt_batch(v73, v4, &v66);
  return aes_nohw_from_batch(a2, 1uLL, &v66);
}

double *aes_nohw_decrypt(void *a1, double *a2, uint64_t a3)
{
  v4 = *(a3 + 240);
  if (!v4)
  {
    v5 = 0;
LABEL_7:
    v25 = v4 - v5 + 1;
    v26 = (a3 + 16 * v5 + 8);
    v27 = &v67[8 * v5 + 4];
    do
    {
      v28 = *(v26 - 1);
      v29 = (v28 ^ (v28 >> 1)) & 0x5555555555555555;
      v30 = v28 ^ (2 * v29);
      v31 = v29 ^ v28;
      v32 = (*v26 ^ (*v26 >> 1)) & 0x5555555555555555;
      v33 = *v26 ^ (2 * v32);
      v34 = v32 ^ *v26;
      v35 = (v30 ^ (v30 >> 2)) & 0x3333333333333333;
      v36 = v30 ^ (4 * v35);
      v37 = v35 ^ v30;
      v38 = (v31 ^ (v31 >> 2)) & 0x3333333333333333;
      *(v27 - 4) = v36;
      *(v27 - 3) = v31 ^ (4 * v38);
      *(v27 - 2) = v37;
      *(v27 - 1) = v38 ^ v31;
      v39 = (v33 ^ (v33 >> 2)) & 0x3333333333333333;
      v40 = (v34 ^ (v34 >> 2)) & 0x3333333333333333;
      *v27 = v33 ^ (4 * v39);
      v27[1] = v34 ^ (4 * v40);
      v27[2] = v39 ^ v33;
      v27[3] = v40 ^ v34;
      v26 += 2;
      v27 += 8;
      --v25;
    }

    while (v25);
    goto LABEL_9;
  }

  v5 = (v4 + 1) & 0x1FFFFFFFELL;
  v6 = v67;
  v7.i64[0] = 0x5555555555555555;
  v7.i64[1] = 0x5555555555555555;
  v8.i64[0] = 0x3333333333333333;
  v8.i64[1] = 0x3333333333333333;
  v9 = v5;
  v10 = a3;
  do
  {
    v68 = vld2q_f64(v10);
    v10 += 4;
    v11 = vandq_s8(veorq_s8(vshrq_n_u64(v68.val[0], 1uLL), v68.val[0]), v7);
    v12 = veorq_s8(vaddq_s64(v11, v11), v68.val[0]);
    v13 = veorq_s8(v11, v68.val[0]);
    v14 = vandq_s8(veorq_s8(vshrq_n_u64(v68.val[1], 1uLL), v68.val[1]), v7);
    v15 = veorq_s8(vaddq_s64(v14, v14), v68.val[1]);
    v68.val[0] = veorq_s8(v14, v68.val[1]);
    v68.val[1] = vandq_s8(veorq_s8(vshrq_n_u64(v12, 2uLL), v12), v8);
    v16 = vandq_s8(veorq_s8(vshrq_n_u64(v13, 2uLL), v13), v8);
    v17 = vandq_s8(veorq_s8(vshrq_n_u64(v15, 2uLL), v15), v8);
    v18 = vandq_s8(veorq_s8(vshrq_n_u64(v68.val[0], 2uLL), v68.val[0]), v8);
    v19 = veorq_s8(vshlq_n_s64(v16, 2uLL), v13);
    v20 = veorq_s8(vshlq_n_s64(v68.val[1], 2uLL), v12);
    v68.val[1] = veorq_s8(v68.val[1], v12);
    v21 = veorq_s8(vshlq_n_s64(v18, 2uLL), v68.val[0]);
    v22 = veorq_s8(vshlq_n_s64(v17, 2uLL), v15);
    v23 = veorq_s8(v17, v15);
    v68.val[0] = veorq_s8(v18, v68.val[0]);
    v6[6] = vzip2q_s64(v22, v21);
    v6[7] = vzip2q_s64(v23, v68.val[0]);
    v24 = veorq_s8(v16, v13);
    v6[4] = vzip2q_s64(v20, v19);
    v6[5] = vzip2q_s64(v68.val[1], v24);
    v6[2] = vzip1q_s64(v22, v21);
    v6[3] = vzip1q_s64(v23, v68.val[0]);
    *v6 = vzip1q_s64(v20, v19);
    v6[1] = vzip1q_s64(v68.val[1], v24);
    v6 += 8;
    v9 -= 2;
  }

  while (v9);
  if (v4 + 1 != v5)
  {
    goto LABEL_7;
  }

LABEL_9:
  v41 = a1[1];
  v42 = (*a1 ^ (*a1 >> 4)) & 0xF000F000F000F0;
  v43 = *a1 ^ (16 * v42);
  v44 = v43 ^ v42;
  v45 = (v43 ^ (v44 >> 8)) & 0xFF000000FF00;
  v46 = v44 ^ (v45 << 8);
  v47 = v46 ^ v45;
  v48 = ((v47 >> 16) ^ v46) & 0xFFFF0000;
  v49 = v47 ^ (v48 << 16);
  v50 = (v41 ^ (v41 >> 4)) & 0xF000F000F000F0;
  v51 = v41 ^ (16 * v50);
  v52 = v51 ^ v50;
  v53 = (v51 ^ (v52 >> 8)) & 0xFF000000FF00;
  v54 = v52 ^ (v53 << 8);
  v55 = v54 ^ v53;
  v56 = ((v55 >> 16) ^ v54) & 0xFFFF0000;
  v57 = v48 ^ v47 | ((v56 ^ v55) << 32);
  v58 = (v55 & 0xFFFFFFFF00000000 ^ (v56 << 16)) & 0xFFFFFFFF00000000 | HIDWORD(v49);
  v59 = (v57 >> 1) & 0x5555555555555555;
  v60 = v57 ^ (2 * v59);
  v61 = (v58 >> 1) & 0x5555555555555555;
  v62 = v58 ^ (2 * v61);
  v63 = (v57 >> 3) & 0x1111111111111111;
  v66[0] = v60 ^ (4 * ((v60 >> 2) & 0x3333333333333333));
  v66[1] = v59 ^ (4 * v63);
  v66[2] = (v60 >> 2) & 0x3333333333333333;
  v66[3] = v63;
  v64 = (v58 >> 3) & 0x1111111111111111;
  v66[4] = v62 ^ (4 * ((v62 >> 2) & 0x3333333333333333));
  v66[5] = v61 ^ (4 * v64);
  v66[6] = (v62 >> 2) & 0x3333333333333333;
  v66[7] = v64;
  aes_nohw_decrypt_batch(v67, v4, v66);
  return aes_nohw_from_batch(a2, 1uLL, v66);
}

uint64_t aes_nohw_set_encrypt_key(int8x16_t *a1, int a2, int8x16_t *a3)
{
  v163 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 256:
      a3[15].i32[0] = 14;
      v98 = a1->u64[1];
      v99 = (a1->i64[0] ^ (a1->i64[0] >> 4)) & 0xF000F000F000F0;
      v100 = a1->i64[0] ^ (16 * v99);
      v101 = v100 ^ v99;
      v102 = (v100 ^ (v101 >> 8)) & 0xFF000000FF00;
      v103 = v101 ^ (v102 << 8);
      v104 = v103 ^ v102;
      v105 = ((v104 >> 16) ^ v103) & 0xFFFF0000;
      v106 = (v98 ^ (v98 >> 4)) & 0xF000F000F000F0;
      v107 = v98 ^ (16 * v106);
      v108 = v107 ^ v106;
      v109 = (v107 ^ (v108 >> 8)) & 0xFF000000FF00;
      v110 = v108 ^ (v109 << 8);
      v111 = v110 ^ v109;
      v112 = ((v111 >> 16) ^ v110) & 0xFFFF0000;
      v113 = v105 ^ v104 | ((v112 ^ v111) << 32);
      v114 = (v111 & 0xFFFFFFFF00000000 ^ (v112 << 16)) & 0xFFFFFFFF00000000 | ((v104 ^ (v105 << 16)) >> 32);
      a3->i64[0] = v113;
      a3->i64[1] = v114;
      v115 = a1[1].u64[0];
      v116 = a1[1].u64[1];
      v117 = (v115 ^ (v115 >> 4)) & 0xF000F000F000F0;
      v118 = v115 ^ (16 * v117);
      v119 = v118 ^ v117;
      v120 = (v118 ^ (v119 >> 8)) & 0xFF000000FF00;
      v121 = v119 ^ (v120 << 8);
      v122 = v121 ^ v120;
      v123 = ((v122 >> 16) ^ v121) & 0xFFFF0000;
      v124 = (v116 ^ (v116 >> 4)) & 0xF000F000F000F0;
      v125 = v116 ^ (16 * v124);
      v126 = v125 ^ v124;
      v127 = (v125 ^ (v126 >> 8)) & 0xFF000000FF00;
      v128 = v126 ^ (v127 << 8);
      v129 = v128 ^ v127;
      v130 = ((v129 >> 16) ^ v128) & 0xFFFF0000;
      v131 = v123 ^ v122 | ((v130 ^ v129) << 32);
      v132 = (v129 & 0xFFFFFFFF00000000 ^ (v130 << 16)) & 0xFFFFFFFF00000000 | ((v122 ^ (v123 << 16)) >> 32);
      a3[1].i64[0] = v131;
      a3[1].i64[1] = v132;
      v133 = &a3[3].u64[1];
      v134 = aes_nohw_rcon;
      for (i = 12; ; i -= 2)
      {
        v136 = (v131 >> 1) & 0x5555555555555555;
        v137 = v131 ^ (2 * v136);
        v138 = (v132 >> 1) & 0x5555555555555555;
        v139 = v132 ^ (2 * v138);
        v153 = v137 ^ (4 * ((v137 >> 2) & 0x3333333333333333));
        v154 = v136 ^ (4 * ((v131 >> 3) & 0x1111111111111111));
        v155 = (v137 >> 2) & 0x3333333333333333;
        v156 = (v131 >> 3) & 0x1111111111111111;
        v157 = v139 ^ (4 * ((v139 >> 2) & 0x3333333333333333));
        v158 = v138 ^ (4 * ((v132 >> 3) & 0x1111111111111111));
        v159 = (v139 >> 2) & 0x3333333333333333;
        v160 = (v132 >> 3) & 0x1111111111111111;
        aes_nohw_sub_bytes(&v153);
        v140 = v153 & 0x1111111111111111 | (2 * v154) & 0x2222222222222222 | (4 * ((2 * v156) & 0x2222222222222222 | v155 & 0x1111111111111111));
        v141 = v157 & 0x1111111111111111 | (2 * v158) & 0x2222222222222222 | (4 * ((2 * v160) & 0x2222222222222222 | v159 & 0x1111111111111111));
        v142 = *v134++;
        v143 = ((v140 >> 36) & 0xF000 | (v140 >> 52)) ^ v113 ^ v142 & 0xF;
        v113 = (v143 << 32) ^ (v143 << 16) ^ (v143 << 48) ^ v143;
        v144 = v114 ^ (v142 >> 4) ^ ((v141 >> 36) & 0xF000 | (v141 >> 52));
        v114 = (v144 << 32) ^ (v144 << 16) ^ (v144 << 48) ^ v144;
        *(v133 - 3) = v113;
        *(v133 - 2) = v114;
        if (!i)
        {
          break;
        }

        v145 = (v113 >> 1) & 0x5555555555555555;
        v146 = v113 ^ (2 * v145);
        v147 = (v114 >> 1) & 0x5555555555555555;
        v148 = v114 ^ (2 * v147);
        v153 = v146 ^ (4 * ((v146 >> 2) & 0x3333333333333333));
        v154 = v145 ^ (4 * ((v113 >> 3) & 0x1111111111111111));
        v155 = (v146 >> 2) & 0x3333333333333333;
        v156 = (v113 >> 3) & 0x1111111111111111;
        v157 = v148 ^ (4 * ((v148 >> 2) & 0x3333333333333333));
        v158 = v147 ^ (4 * ((v114 >> 3) & 0x1111111111111111));
        v159 = (v148 >> 2) & 0x3333333333333333;
        v160 = (v114 >> 3) & 0x1111111111111111;
        aes_nohw_sub_bytes(&v153);
        v149 = v131 ^ ((v153 & 0x1111000000000000 | (2 * v154) & 0x2222000000000000 | (4 * ((2 * v156) & 0x2222000000000000 | v155 & 0x1111000000000000))) >> 48);
        v131 = (v149 << 32) ^ (v149 << 16) ^ (v149 << 48) ^ v149;
        v150 = v132 ^ ((v157 & 0x1111000000000000 | (2 * v158) & 0x2222000000000000 | (4 * ((2 * v160) & 0x2222000000000000 | v159 & 0x1111000000000000uLL))) >> 48);
        v132 = (v150 << 32) ^ (v150 << 16) ^ (v150 << 48) ^ v150;
        *(v133 - 1) = v131;
        *v133 = v132;
        v133 += 4;
      }

      return 0;
    case 192:
      a3[15].i32[0] = 12;
      v162 = *a1;
      v31 = (v162.i64[0] ^ (v162.i64[0] >> 4)) & 0xF000F000F000F0;
      v32 = v162.i64[0] ^ (16 * v31);
      v33 = v32 ^ v31;
      v34 = (v32 ^ (v33 >> 8)) & 0xFF000000FF00;
      v35 = v33 ^ (v34 << 8);
      v36 = v35 ^ v34;
      v37 = ((v36 >> 16) ^ v35) & 0xFFFF0000;
      v38 = (v162.i64[1] ^ (v162.i64[1] >> 4)) & 0xF000F000F000F0;
      v39 = v162.i64[1] ^ (16 * v38);
      v40 = v39 ^ v38;
      v41 = (v39 ^ (v40 >> 8)) & 0xFF000000FF00;
      v42 = v40 ^ (v41 << 8);
      v43 = v42 ^ v41;
      v44 = ((v43 >> 16) ^ v42) & 0xFFFF0000;
      v162.i64[0] = v37 ^ v36 | ((v44 ^ v43) << 32);
      v162.i64[1] = (v43 & 0xFFFFFFFF00000000 ^ (v44 << 16)) & 0xFFFFFFFF00000000 | ((v36 ^ (v37 << 16)) >> 32);
      *a3 = v162;
      v45 = a1[1].u64[0];
      v46 = (v45 ^ (v45 >> 4)) & 0xF000F000F000F0;
      v47 = v45 ^ (16 * v46);
      v48 = v47 ^ v46;
      v49 = (v47 ^ (v48 >> 8)) & 0xFF000000FF00;
      v50 = v48 ^ (v49 << 8);
      v51 = v50 ^ v49;
      v52 = ((v51 >> 16) ^ v50) & 0xFFFF0000;
      v161[0] = v52 ^ v51;
      v161[1] = (v51 ^ (v52 << 16)) >> 32;
      v53 = a3 + 2;
      v54 = v161;
      v55 = &v162;
      v56 = &byte_273BA7520;
      v57 = 4;
      v151 = vdupq_n_s64(0xF0000000uLL);
      v152 = vdupq_n_s64(0xFFF0000uLL);
      do
      {
        v58 = v55;
        v59 = v54->u64[1];
        v60 = (v54->i64[0] >> 1) & 0x5555555555555555;
        v61 = v54->i64[0] ^ (2 * v60);
        v62 = (v59 >> 1) & 0x5555555555555555;
        v63 = v59 ^ (2 * v62);
        v64 = (v54->i64[0] >> 3) & 0x1111111111111111;
        v153 = v61 ^ (4 * ((v61 >> 2) & 0x3333333333333333));
        v154 = v60 ^ (4 * v64);
        v155 = (v61 >> 2) & 0x3333333333333333;
        v156 = v64;
        v65 = (v59 >> 3) & 0x1111111111111111;
        v157 = v63 ^ (4 * ((v63 >> 2) & 0x3333333333333333));
        v158 = v62 ^ (4 * v65);
        v159 = (v63 >> 2) & 0x3333333333333333;
        v160 = v65;
        aes_nohw_sub_bytes(&v153);
        v66.i64[0] = v153;
        v67.i64[0] = v155;
        v68.i64[0] = v154;
        v69.i64[0] = v156;
        v68.i64[1] = v158;
        v66.i64[1] = v157;
        v69.i64[1] = v160;
        v67.i64[1] = v159;
        v70 = *(v56 - 1);
        v71.i64[0] = 0x2222222222222222;
        v71.i64[1] = 0x2222222222222222;
        v72.i64[0] = 0x1111111111111111;
        v72.i64[1] = 0x1111111111111111;
        v73 = vorrq_s8(vshlq_n_s64(vorrq_s8(vandq_s8(vaddq_s64(v69, v69), v71), vandq_s8(v67, v72)), 2uLL), vorrq_s8(vandq_s8(v66, v72), vandq_s8(vaddq_s64(v68, v68), v71)));
        v74 = *v58;
        v75 = *v54;
        v76.i64[0] = v70 & 0xF;
        v76.i64[1] = v70 >> 4;
        v77 = veorq_s8(vorrq_s8(vshlq_n_s64(veorq_s8(*v58, v76), 0x20uLL), *v54), vshlq_n_s64(vorrq_s8(vandq_s8(vshrq_n_u64(v73, 4uLL), v152), vandq_s8(vshlq_n_s64(v73, 0xCuLL), v151)), 0x10uLL));
        v71.i64[0] = 0xFFFF000000000000;
        v71.i64[1] = 0xFFFF000000000000;
        v78 = veorq_s8(vandq_s8(vshlq_n_s64(v77, 0x10uLL), v71), v77);
        *v54 = v78;
        v79 = veorq_s8(vshrq_n_u64(v78, 0x30uLL), vsraq_n_u64(vshlq_n_s64(v75, 0x20uLL), v74, 0x20uLL));
        *v58 = veorq_s8(veorq_s8(vshlq_u64(v79, xmmword_273BA6E50), vshlq_u64(v79, xmmword_273BA6E40)), veorq_s8(vshlq_n_s64(v79, 0x30uLL), v79));
        v53[-1] = *v54;
        *v53 = *v58;
        v80 = v58->u64[1];
        v81 = (v58->i64[0] >> 1) & 0x5555555555555555;
        v82 = v58->i64[0] ^ (2 * v81);
        v83 = (v80 >> 1) & 0x5555555555555555;
        v84 = v80 ^ (2 * v83);
        v85 = (v58->i64[0] >> 3) & 0x1111111111111111;
        v153 = v82 ^ (4 * ((v82 >> 2) & 0x3333333333333333));
        v154 = v81 ^ (4 * v85);
        v155 = (v82 >> 2) & 0x3333333333333333;
        v156 = v85;
        v86 = (v80 >> 3) & 0x1111111111111111;
        v157 = v84 ^ (4 * ((v84 >> 2) & 0x3333333333333333));
        v158 = v83 ^ (4 * v86);
        v159 = (v84 >> 2) & 0x3333333333333333;
        v160 = v86;
        aes_nohw_sub_bytes(&v153);
        v87 = v153 & 0x1111111111111111 | (2 * v154) & 0x2222222222222222 | (4 * ((2 * v156) & 0x2222222222222222 | v155 & 0x1111111111111111));
        v88 = v157 & 0x1111111111111111 | (2 * v158) & 0x2222222222222222 | (4 * ((2 * v160) & 0x2222222222222222 | v159 & 0x1111111111111111));
        v89 = *v56;
        v56 += 2;
        v90 = *v58;
        v91.i64[0] = (v87 >> 36) & 0xF000 | (v87 >> 52);
        v91.i64[1] = (v88 >> 36) & 0xF000 | (v88 >> 52);
        v92.i64[0] = v89 & 0xF;
        v92.i64[1] = v89 >> 4;
        v93 = veorq_s8(v91, veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(*v58, 0x20uLL), *v54, 0x20uLL)));
        v94 = veorq_s8(veorq_s8(vshlq_u64(v93, xmmword_273BA6E50), vshlq_u64(v93, xmmword_273BA6E40)), veorq_s8(vshlq_n_s64(v93, 0x30uLL), v93));
        *v54 = v94;
        v95 = veorq_s8(vshrq_n_u64(v94, 0x30uLL), vshrq_n_u64(v90, 0x20uLL));
        v96.i64[0] = 4294901760;
        v96.i64[1] = 4294901760;
        *v58 = veorq_s8(vandq_s8(vshlq_n_s64(v95, 0x10uLL), v96), v95);
        v53[1] = *v54;
        v53 += 3;
        v55 = v54;
        v54 = v58;
        --v57;
      }

      while (v57);
      return 0;
    case 128:
      v3 = 0;
      a3[15].i32[0] = 10;
      v4 = a1->u64[1];
      v5 = (a1->i64[0] ^ (a1->i64[0] >> 4)) & 0xF000F000F000F0;
      v6 = a1->i64[0] ^ (16 * v5);
      v7 = v6 ^ v5;
      v8 = (v6 ^ (v7 >> 8)) & 0xFF000000FF00;
      v9 = v7 ^ (v8 << 8);
      v10 = v9 ^ v8;
      v11 = ((v10 >> 16) ^ v9) & 0xFFFF0000;
      v12 = (v4 ^ (v4 >> 4)) & 0xF000F000F000F0;
      v13 = v4 ^ (16 * v12);
      v14 = v13 ^ v12;
      v15 = (v13 ^ (v14 >> 8)) & 0xFF000000FF00;
      v16 = v14 ^ (v15 << 8);
      v17 = v16 ^ v15;
      v18 = ((v17 >> 16) ^ v16) & 0xFFFF0000;
      v19 = v11 ^ v10 | ((v18 ^ v17) << 32);
      v20 = (v17 & 0xFFFFFFFF00000000 ^ (v18 << 16)) & 0xFFFFFFFF00000000 | ((v10 ^ (v11 << 16)) >> 32);
      a3->i64[0] = v19;
      a3->i64[1] = v20;
      v21 = &a3[1].u64[1];
      do
      {
        v22 = (v19 >> 1) & 0x5555555555555555;
        v23 = v19 ^ (2 * v22);
        v24 = (v20 >> 1) & 0x5555555555555555;
        v25 = v20 ^ (2 * v24);
        v153 = v23 ^ (4 * ((v23 >> 2) & 0x3333333333333333));
        v154 = v22 ^ (4 * ((v19 >> 3) & 0x1111111111111111));
        v155 = (v23 >> 2) & 0x3333333333333333;
        v156 = (v19 >> 3) & 0x1111111111111111;
        v157 = v25 ^ (4 * ((v25 >> 2) & 0x3333333333333333));
        v158 = v24 ^ (4 * ((v20 >> 3) & 0x1111111111111111));
        v159 = (v25 >> 2) & 0x3333333333333333;
        v160 = (v20 >> 3) & 0x1111111111111111;
        aes_nohw_sub_bytes(&v153);
        v26 = v153 & 0x1111111111111111 | (2 * v154) & 0x2222222222222222 | (4 * ((2 * v156) & 0x2222222222222222 | v155 & 0x1111111111111111));
        v27 = v157 & 0x1111111111111111 | (2 * v158) & 0x2222222222222222 | (4 * ((2 * v160) & 0x2222222222222222 | v159 & 0x1111111111111111));
        v28 = aes_nohw_rcon[v3];
        v29 = ((v26 >> 36) & 0xF000 | (v26 >> 52)) ^ v28 & 0xF ^ v19;
        v19 = (v29 << 32) ^ (v29 << 16) ^ (v29 << 48) ^ v29;
        v30 = ((v27 >> 36) & 0xF000 | (v27 >> 52)) ^ (v28 >> 4) ^ v20;
        v20 = (v30 << 32) ^ (v30 << 16) ^ (v30 << 48) ^ v30;
        *(v21 - 1) = v19;
        *v21 = v20;
        ++v3;
        v21 += 2;
      }

      while (v3 != 10);
      return 0;
  }

  return 1;
}

double *aes_nohw_ctr32_encrypt_blocks(double *result, uint64_t a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v125 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3;
    v8 = result;
    v9 = *(a4 + 240);
    if (v9)
    {
      v10 = (v9 + 1) & 0x1FFFFFFFELL;
      v11 = v119;
      v12.i64[0] = 0x5555555555555555;
      v12.i64[1] = 0x5555555555555555;
      v13.i64[0] = 0x3333333333333333;
      v13.i64[1] = 0x3333333333333333;
      v14 = v10;
      v15 = a4;
      do
      {
        v128 = vld2q_f64(v15);
        v15 += 4;
        v16 = vandq_s8(veorq_s8(vshrq_n_u64(v128.val[0], 1uLL), v128.val[0]), v12);
        v17 = veorq_s8(vaddq_s64(v16, v16), v128.val[0]);
        v18 = veorq_s8(v16, v128.val[0]);
        v19 = vandq_s8(veorq_s8(vshrq_n_u64(v128.val[1], 1uLL), v128.val[1]), v12);
        v20 = veorq_s8(vaddq_s64(v19, v19), v128.val[1]);
        v128.val[0] = veorq_s8(v19, v128.val[1]);
        v128.val[1] = vandq_s8(veorq_s8(vshrq_n_u64(v17, 2uLL), v17), v13);
        v21 = vandq_s8(veorq_s8(vshrq_n_u64(v18, 2uLL), v18), v13);
        v22 = vandq_s8(veorq_s8(vshrq_n_u64(v20, 2uLL), v20), v13);
        v23 = vandq_s8(veorq_s8(vshrq_n_u64(v128.val[0], 2uLL), v128.val[0]), v13);
        v24 = veorq_s8(vshlq_n_s64(v21, 2uLL), v18);
        v25 = veorq_s8(vshlq_n_s64(v128.val[1], 2uLL), v17);
        v128.val[1] = veorq_s8(v128.val[1], v17);
        v26 = veorq_s8(vshlq_n_s64(v23, 2uLL), v128.val[0]);
        v27 = veorq_s8(vshlq_n_s64(v22, 2uLL), v20);
        v28 = veorq_s8(v22, v20);
        v128.val[0] = veorq_s8(v23, v128.val[0]);
        v11[6] = vzip2q_s64(v27, v26);
        v11[7] = vzip2q_s64(v28, v128.val[0]);
        v29 = veorq_s8(v21, v18);
        v11[4] = vzip2q_s64(v25, v24);
        v11[5] = vzip2q_s64(v128.val[1], v29);
        v11[2] = vzip1q_s64(v27, v26);
        v11[3] = vzip1q_s64(v28, v128.val[0]);
        *v11 = vzip1q_s64(v25, v24);
        v11[1] = vzip1q_s64(v128.val[1], v29);
        v11 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v9 + 1 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = 0;
    }

    v30 = v9 - v10 + 1;
    v31 = (a4 + 16 * v10 + 8);
    v32 = &v119[8 * v10 + 4];
    do
    {
      v33 = *(v31 - 1);
      v34 = (v33 ^ (v33 >> 1)) & 0x5555555555555555;
      v35 = v33 ^ (2 * v34);
      v36 = v34 ^ v33;
      v37 = (*v31 ^ (*v31 >> 1)) & 0x5555555555555555;
      v38 = *v31 ^ (2 * v37);
      v39 = v37 ^ *v31;
      v40 = (v35 ^ (v35 >> 2)) & 0x3333333333333333;
      v41 = v35 ^ (4 * v40);
      v42 = v40 ^ v35;
      v43 = (v36 ^ (v36 >> 2)) & 0x3333333333333333;
      *(v32 - 4) = v41;
      *(v32 - 3) = v36 ^ (4 * v43);
      *(v32 - 2) = v42;
      *(v32 - 1) = v43 ^ v36;
      v44 = (v38 ^ (v38 >> 2)) & 0x3333333333333333;
      v45 = (v39 ^ (v39 >> 2)) & 0x3333333333333333;
      *v32 = v38 ^ (4 * v44);
      v32[1] = v39 ^ (4 * v45);
      v32[2] = v44 ^ v38;
      v32[3] = v45 ^ v39;
      v31 += 2;
      v32 += 8;
      --v30;
    }

    while (v30);
LABEL_10:
    v121 = *a5;
    v122 = v121;
    v123 = v121;
    v124 = v121;
    for (i = bswap32(HIDWORD(v121)); ; i += 4)
    {
      HIDWORD(v121) = bswap32(i);
      HIDWORD(v122) = bswap32(i + 1);
      HIDWORD(v123) = bswap32(i + 2);
      HIDWORD(v124) = bswap32(i + 3);
      v47 = v6 >= 4 ? 4 : v6;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      if (v6 < 2)
      {
        break;
      }

      v48 = v47 & 6;
      v49 = &v121;
      v126 = vld2q_f64(v49);
      v50.i64[0] = 0xF000F000F000F0;
      v50.i64[1] = 0xF000F000F000F0;
      v51 = vandq_s8(veorq_s8(vshrq_n_u64(v126.val[0], 4uLL), v126.val[0]), v50);
      v52 = veorq_s8(vshlq_n_s64(v51, 4uLL), v126.val[0]);
      v53 = veorq_s8(v52, v51);
      v54.i64[0] = 0xFF000000FF00;
      v54.i64[1] = 0xFF000000FF00;
      v55 = vandq_s8(veorq_s8(vshrq_n_u64(v53, 8uLL), v52), v54);
      v56 = veorq_s8(vshlq_n_s64(v55, 8uLL), v53);
      v57 = veorq_s8(v56, v55);
      v58.i64[0] = 4294901760;
      v58.i64[1] = 4294901760;
      v59 = vandq_s8(veorq_s8(vshrq_n_u64(v57, 0x10uLL), v56), v58);
      v60 = veorq_s8(vshlq_n_s64(v59, 0x10uLL), v57);
      v61 = vandq_s8(veorq_s8(vshrq_n_u64(v126.val[1], 4uLL), v126.val[1]), v50);
      v126.val[0] = veorq_s8(vshlq_n_s64(v61, 4uLL), v126.val[1]);
      v126.val[1] = veorq_s8(v126.val[0], v61);
      v126.val[0] = vandq_s8(veorq_s8(vshrq_n_u64(v126.val[1], 8uLL), v126.val[0]), v54);
      v126.val[1] = veorq_s8(vshlq_n_s64(v126.val[0], 8uLL), v126.val[1]);
      v126.val[0] = veorq_s8(v126.val[1], v126.val[0]);
      v126.val[1] = vandq_s8(veorq_s8(vshrq_n_u64(v126.val[0], 0x10uLL), v126.val[1]), v58);
      v62 = vshlq_n_s64(v126.val[1], 0x10uLL);
      v50.i64[0] = 0xFFFFFFFFLL;
      v50.i64[1] = 0xFFFFFFFFLL;
      v126.val[1] = vorrq_s8(vshlq_n_s64(veorq_s8(v126.val[1], v126.val[0]), 0x20uLL), veorq_s8(v59, vandq_s8(v57, v50)));
      v59.i64[0] = 0xFFFFFFFF00000000;
      v59.i64[1] = 0xFFFFFFFF00000000;
      v115 = v126.val[1];
      v117 = vsraq_n_u64(veorq_s8(v62, vandq_s8(v126.val[0], v59)), v60, 0x20uLL);
      if (v48 != 2)
      {
        v63 = &v123;
        v127 = vld2q_f64(v63);
        v64.i64[0] = 0xF000F000F000F0;
        v64.i64[1] = 0xF000F000F000F0;
        v65 = vandq_s8(veorq_s8(vshrq_n_u64(v127.val[0], 4uLL), v127.val[0]), v64);
        v66 = veorq_s8(vshlq_n_s64(v65, 4uLL), v127.val[0]);
        v67 = veorq_s8(v66, v65);
        v68 = vandq_s8(veorq_s8(vshrq_n_u64(v67, 8uLL), v66), v54);
        v69 = veorq_s8(vshlq_n_s64(v68, 8uLL), v67);
        v70 = veorq_s8(v69, v68);
        v71 = vandq_s8(veorq_s8(vshrq_n_u64(v70, 0x10uLL), v69), v58);
        v72 = veorq_s8(vshlq_n_s64(v71, 0x10uLL), v70);
        v73 = vandq_s8(veorq_s8(vshrq_n_u64(v127.val[1], 4uLL), v127.val[1]), v64);
        v127.val[0] = veorq_s8(vshlq_n_s64(v73, 4uLL), v127.val[1]);
        v127.val[1] = veorq_s8(v127.val[0], v73);
        v127.val[0] = vandq_s8(veorq_s8(vshrq_n_u64(v127.val[1], 8uLL), v127.val[0]), v54);
        v127.val[1] = veorq_s8(vshlq_n_s64(v127.val[0], 8uLL), v127.val[1]);
        v127.val[0] = veorq_s8(v127.val[1], v127.val[0]);
        v127.val[1] = vandq_s8(veorq_s8(vshrq_n_u64(v127.val[0], 0x10uLL), v127.val[1]), v58);
        v74 = vshlq_n_s64(v127.val[1], 0x10uLL);
        v64.i64[0] = 0xFFFFFFFFLL;
        v64.i64[1] = 0xFFFFFFFFLL;
        v127.val[1] = vorrq_s8(vshlq_n_s64(veorq_s8(v127.val[1], v127.val[0]), 0x20uLL), veorq_s8(v71, vandq_s8(v70, v64)));
        v71.i64[0] = 0xFFFFFFFF00000000;
        v71.i64[1] = 0xFFFFFFFF00000000;
        v116 = v127.val[1];
        v118 = vsraq_n_u64(veorq_s8(v74, vandq_s8(v127.val[0], v71)), v72, 0x20uLL);
      }

      if (v47 != v48)
      {
        goto LABEL_19;
      }

LABEL_21:
      v93 = (v115.i64[1] ^ (v115.i64[0] >> 1)) & 0x5555555555555555;
      v94 = v115.i64[0] ^ (2 * v93);
      v95 = v93 ^ v115.i64[1];
      v96 = (*&v116.f64[1] ^ (*&v116.f64[0] >> 1)) & 0x5555555555555555;
      v97 = *&v116.f64[0] ^ (2 * v96);
      v98 = v96 ^ *&v116.f64[1];
      v99 = (v117.i64[1] ^ (v117.i64[0] >> 1)) & 0x5555555555555555;
      v100 = v117.i64[0] ^ (2 * v99);
      v101 = v99 ^ v117.i64[1];
      v102 = (v118.i64[1] ^ (v118.i64[0] >> 1)) & 0x5555555555555555;
      v103 = v118.i64[0] ^ (2 * v102);
      v104 = v102 ^ v118.i64[1];
      v105 = (v97 ^ (v94 >> 2)) & 0x3333333333333333;
      v106 = v94 ^ (4 * v105);
      v107 = v105 ^ v97;
      v108 = (v98 ^ (v95 >> 2)) & 0x3333333333333333;
      v115.i64[0] = v106;
      v115.i64[1] = v95 ^ (4 * v108);
      *&v116.f64[0] = v107;
      *&v116.f64[1] = v108 ^ v98;
      v109 = (v103 ^ (v100 >> 2)) & 0x3333333333333333;
      v110 = (v104 ^ (v101 >> 2)) & 0x3333333333333333;
      v117.i64[0] = v100 ^ (4 * v109);
      v117.i64[1] = v101 ^ (4 * v110);
      v118.i64[0] = v109 ^ v103;
      v118.i64[1] = v110 ^ v104;
      aes_nohw_encrypt_batch(v119, *(a4 + 240), &v115);
      result = aes_nohw_from_batch(v120, v47, &v115);
      v111 = 0;
      v112 = v47;
      do
      {
        v113 = (a2 + v111 * 8);
        v114 = v120[v111 + 1];
        *v113 = *&v120[v111] ^ *&v8[v111];
        v113[1] = *&v114 ^ *&v8[v111 + 1];
        v111 += 2;
        --v112;
      }

      while (v112);
      v6 -= v47;
      if (!v6)
      {
        return result;
      }

      v8 += 8;
      a2 += 64;
    }

    v48 = 0;
LABEL_19:
    v75 = v47 - v48;
    v76 = &v121 + 2 * v48 + 1;
    v77 = &v117 + v48;
    do
    {
      v78 = *(v76 - 1);
      v79 = (v78 ^ (v78 >> 4)) & 0xF000F000F000F0;
      v80 = v78 ^ (16 * v79);
      v81 = v80 ^ v79;
      v82 = (v80 ^ (v81 >> 8)) & 0xFF000000FF00;
      v83 = v81 ^ (v82 << 8);
      v84 = v83 ^ v82;
      v85 = ((v84 >> 16) ^ v83) & 0xFFFF0000;
      v86 = (*v76 ^ (*v76 >> 4)) & 0xF000F000F000F0;
      v87 = *v76 ^ (16 * v86);
      v88 = v87 ^ v86;
      v89 = (v87 ^ (v88 >> 8)) & 0xFF000000FF00;
      v90 = v88 ^ (v89 << 8);
      v91 = v90 ^ v89;
      v92 = ((v91 >> 16) ^ v90) & 0xFFFF0000;
      *(v77 - 4) = v85 ^ v84 | ((v92 ^ v91) << 32);
      *v77++ = (v91 & 0xFFFFFFFF00000000 ^ (v92 << 16)) & 0xFFFFFFFF00000000 | ((v84 ^ (v85 << 16)) >> 32);
      v76 += 2;
      --v75;
    }

    while (v75);
    goto LABEL_21;
  }

  return result;
}

void aes_nohw_encrypt_batch(void *a1, unint64_t a2, int8x16_t *a3)
{
  v6 = a3->i64[1];
  a3->i64[0] ^= *a1;
  a3->i64[1] = a1[1] ^ v6;
  v7 = a3[1].i64[1];
  a3[1].i64[0] ^= a1[2];
  a3[1].i64[1] = a1[3] ^ v7;
  v8 = a3[2].i64[1];
  a3[2].i64[0] ^= a1[4];
  a3[2].i64[1] = a1[5] ^ v8;
  v9 = a3[3].i64[1];
  a3[3].i64[0] ^= a1[6];
  a3[3].i64[1] = a1[7] ^ v9;
  if (a2 >= 2)
  {
    v10 = a2 - 1;
    v11 = a1 + 15;
    do
    {
      aes_nohw_sub_bytes(a3->i64);
      aes_nohw_shift_rows(a3);
      aes_nohw_mix_columns(a3);
      v12 = a3->i64[1];
      a3->i64[0] ^= *(v11 - 7);
      a3->i64[1] = *(v11 - 6) ^ v12;
      v13 = a3[1].i64[1];
      a3[1].i64[0] ^= *(v11 - 5);
      a3[1].i64[1] = *(v11 - 4) ^ v13;
      v14 = a3[2].i64[1];
      a3[2].i64[0] ^= *(v11 - 3);
      a3[2].i64[1] = *(v11 - 2) ^ v14;
      v15 = a3[3].i64[1];
      a3[3].i64[0] ^= *(v11 - 1);
      v16 = *v11;
      v11 += 8;
      a3[3].i64[1] = v16 ^ v15;
      --v10;
    }

    while (v10);
  }

  aes_nohw_sub_bytes(a3->i64);
  aes_nohw_shift_rows(a3);
  v17 = &a1[8 * a2];
  v18 = a3->i64[1];
  a3->i64[0] ^= *v17;
  a3->i64[1] = v17[1] ^ v18;
  v19 = a3[1].i64[1];
  a3[1].i64[0] ^= v17[2];
  a3[1].i64[1] = v17[3] ^ v19;
  v20 = a3[2].i64[1];
  a3[2].i64[0] ^= v17[4];
  a3[2].i64[1] = v17[5] ^ v20;
  v21 = a3[3].i64[1];
  a3[3].i64[0] ^= v17[6];
  a3[3].i64[1] = v17[7] ^ v21;
}

double *aes_nohw_from_batch(double *result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  v73 = *(a3 + 32);
  v4 = (v70 ^ (v69 >> 1)) & 0x5555555555555555;
  v5 = v69 ^ (2 * v4);
  v6 = v4 ^ v70;
  v7 = (v72 ^ (v71 >> 1)) & 0x5555555555555555;
  v8 = v71 ^ (2 * v7);
  v9 = v7 ^ v72;
  v10 = (*(&v73 + 1) ^ (v73 >> 1)) & 0x5555555555555555;
  v11 = v73 ^ (2 * v10);
  v12 = v10 ^ *(&v73 + 1);
  v13 = (*(&v3 + 1) ^ (v3 >> 1)) & 0x5555555555555555;
  v14 = v3 ^ (2 * v13);
  v15 = v13 ^ *(&v3 + 1);
  v16 = (v8 ^ (v5 >> 2)) & 0x3333333333333333;
  v17 = v5 ^ (4 * v16);
  v18 = v16 ^ v8;
  v19 = (v9 ^ (v6 >> 2)) & 0x3333333333333333;
  v69 = v17;
  v70 = v6 ^ (4 * v19);
  v71 = v18;
  v72 = v19 ^ v9;
  v20 = (v14 ^ (v11 >> 2)) & 0x3333333333333333;
  v21 = (v15 ^ (v12 >> 2)) & 0x3333333333333333;
  *&v73 = v11 ^ (4 * v20);
  *(&v73 + 1) = v12 ^ (4 * v21);
  v74 = v20 ^ v14;
  v75 = v21 ^ v15;
  if (a2)
  {
    if (a2 <= 3)
    {
      v22 = 0;
LABEL_4:
      v23 = a2 - v22;
      v24 = &result[2 * v22];
      v25 = &v73 + v22;
      v26.i64[0] = 4294901760;
      v26.i64[1] = 4294901760;
      v27.i64[0] = 0xFF000000FF00;
      v27.i64[1] = 0xFF000000FF00;
      v28.i64[0] = 0xF000F000F000F0;
      v28.i64[1] = 0xF000F000F000F0;
      do
      {
        v29 = vdupq_n_s64(*v25);
        v30.i64[0] = vshlq_u64(v29, xmmword_273BA6E60).u64[0];
        v29.i32[2] = 0;
        v31.i64[0] = *(v25 - 4);
        v32.i64[0] = v31.u32[0];
        v30.i64[1] = v29.i64[1];
        v32.i64[1] = vshrq_n_u64(vdupq_n_s64(*&v31), 0x20uLL).i64[1];
        v33 = vorrq_s8(v30, v32);
        v32.i64[0] = v30.i64[0] >> 16;
        v31.i64[1] = *v25 >> 16;
        v34 = vandq_s8(veorq_s8(v32, v31), v26);
        v35 = veorq_s8(vshlq_n_s64(v34, 0x10uLL), v33);
        v36 = veorq_s8(v35, v34);
        v37 = vandq_s8(veorq_s8(vshrq_n_u64(v36, 8uLL), v35), v27);
        v38 = veorq_s8(vshlq_n_s64(v37, 8uLL), v36);
        v39 = veorq_s8(v38, v37);
        v40 = vandq_s8(veorq_s8(vshrq_n_u64(v39, 4uLL), v38), v28);
        *v24++ = veorq_s8(veorq_s8(v39, v40), vshlq_n_s64(v40, 4uLL));
        ++v25;
        --v23;
      }

      while (v23);
      return result;
    }

    v22 = 0;
    v41 = 2 * (a2 - 1);
    if (&result[v41] < result)
    {
      goto LABEL_4;
    }

    if (&result[v41 + 1] < result + 1)
    {
      goto LABEL_4;
    }

    if ((a2 - 1) >> 60)
    {
      goto LABEL_4;
    }

    v22 = a2 & 0x1FFFFFFFFFFFFFFELL;
    v42 = &v73;
    v43.i64[0] = 4294901760;
    v43.i64[1] = 4294901760;
    v44.i64[0] = 0xFF000000FF00;
    v44.i64[1] = 0xFF000000FF00;
    v45.i64[0] = 0xF000F000F000F0;
    v45.i64[1] = 0xF000F000F000F0;
    v46 = a2 & 0x1FFFFFFFFFFFFFFELL;
    v47 = result;
    do
    {
      v48 = v42[-2];
      v49 = *v42++;
      v50 = vandq_s8(veorq_s8(vshlq_n_s64(v49, 0x10uLL), v48), v43);
      v51 = veorq_s8(vshlq_n_s64(v50, 0x10uLL), vsliq_n_s64(v48, v49, 0x20uLL));
      v52 = veorq_s8(v51, v50);
      v53 = vandq_s8(veorq_s8(vshrq_n_u64(v52, 8uLL), v51), v44);
      v54 = veorq_s8(vshlq_n_s64(v53, 8uLL), v52);
      v55 = veorq_s8(v54, v53);
      v56 = vsriq_n_s64(v49, v48, 0x20uLL);
      v57 = vandq_s8(veorq_s8(vshrq_n_u64(v55, 4uLL), v54), v45);
      v58 = vandq_s8(veorq_s8(vshrq_n_u64(v49, 0x10uLL), vshrq_n_u64(v48, 0x20uLL)), v43);
      v59 = veorq_s8(vshlq_n_s64(v58, 0x10uLL), v56);
      v60 = veorq_s8(v59, v58);
      v61 = vshlq_n_s64(v57, 4uLL);
      v62 = vandq_s8(veorq_s8(vshrq_n_u64(v60, 8uLL), v59), v44);
      v63 = veorq_s8(vshlq_n_s64(v62, 8uLL), v60);
      v64 = veorq_s8(v63, v62);
      v65 = veorq_s8(v55, v57);
      v66 = vandq_s8(veorq_s8(vshrq_n_u64(v64, 4uLL), v63), v45);
      v67 = vshlq_n_s64(v66, 4uLL);
      v68 = veorq_s8(v64, v66);
      v76.val[0] = veorq_s8(v65, v61);
      v76.val[1] = veorq_s8(v68, v67);
      vst2q_f64(v47, v76);
      v47 += 4;
      v46 -= 2;
    }

    while (v46);
    if (v22 != a2)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t *aes_nohw_decrypt_batch(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = &a1[8 * a2];
  v7 = *(a3 + 8);
  *a3 ^= *v6;
  *(a3 + 8) = v6[1] ^ v7;
  v8 = *(a3 + 24);
  *(a3 + 16) ^= v6[2];
  *(a3 + 24) = v6[3] ^ v8;
  v9 = *(a3 + 40);
  *(a3 + 32) ^= v6[4];
  *(a3 + 40) = v6[5] ^ v9;
  v10 = *(a3 + 56);
  *(a3 + 48) ^= v6[6];
  *(a3 + 56) = v6[7] ^ v10;
  aes_nohw_inv_shift_rows(a3);
  v11 = *(a3 + 40) ^ *(a3 + 16);
  v12 = v11 ^ *a3;
  v13 = *(a3 + 56);
  v14 = *(a3 + 24);
  v15 = veorq_s8(v14, *(a3 + 8));
  v16 = veorq_s8(v14, *a3);
  v17 = *(a3 + 40);
  v18 = veorq_s8(v15, *(a3 + 48));
  *a3 = v13 ^ ~v11;
  *(a3 + 8) = v17.i64[1] ^ v16.i64[0];
  *(a3 + 16) = v13 ^ ~v16.i64[1];
  *(a3 + 24) = v12;
  *(a3 + 32) = v18;
  *(a3 + 48) = veorq_s8(v16, v17);
  result = aes_nohw_sub_bytes(a3);
  v20 = *(a3 + 40) ^ *(a3 + 16);
  v21 = v20 ^ *a3;
  v22 = *(a3 + 56);
  v23 = v22 ^ ~v20;
  v24 = *(a3 + 24);
  v25 = veorq_s8(v24, *(a3 + 8));
  v26 = veorq_s8(v24, *a3);
  v27 = veorq_s8(v26, *(a3 + 40));
  v28 = veorq_s8(v25, *(a3 + 48));
  v29 = *(a3 + 48) ^ v26.i64[0];
  *a3 = v23;
  *(a3 + 8) = v29;
  v30 = v22 ^ ~v26.i64[1];
  *(a3 + 16) = v30;
  *(a3 + 24) = v21;
  v31 = v28.i64[1];
  *(a3 + 32) = v28;
  *(a3 + 48) = v27;
  v32 = v28.i64[0];
  v33 = v27.i64[1];
  v34 = v27.i64[0];
  v35 = a2 - 1;
  if (v35)
  {
    v36 = v6 - 4;
    do
    {
      v37 = *(v36 - 4) ^ v23;
      *a3 = v37;
      v38 = *(v36 - 3) ^ v29;
      *(a3 + 8) = v38;
      v39 = *(v36 - 2) ^ v30;
      *(a3 + 16) = v39;
      v40 = *(v36 - 1) ^ v21;
      *(a3 + 24) = v40;
      v41 = *v36 ^ v32;
      *(a3 + 32) = v41;
      v42 = v36[1] ^ v31;
      *(a3 + 40) = v42;
      v43 = v36[2] ^ v34;
      *(a3 + 48) = v43;
      v44 = v36[3] ^ v33;
      v45.i64[0] = v44;
      v45.i64[1] = v43;
      v46.i64[0] = 0xFF00FF00FF00FFLL;
      v46.i64[1] = 0xFF00FF00FF00FFLL;
      v47 = veorq_s8(vbslq_s8(v46, vshrq_n_u64(v45, 8uLL), vshlq_n_s64(v45, 8uLL)), v45);
      v48.i64[0] = v37;
      v48.i64[1] = v38;
      v49.i64[0] = v39;
      v49.i64[1] = v40;
      *a3 = v47.i64[1] ^ v37;
      *(a3 + 8) = v47.i64[0] ^ v47.i64[1] ^ v38;
      *(a3 + 16) = veorq_s8(veorq_s8(vbslq_s8(v46, vshrq_n_u64(v48, 8uLL), vshlq_n_s64(v48, 8uLL)), veorq_s8(v49, v48)), v47);
      *(a3 + 32) = __rev16(v39) ^ v39 ^ v41 ^ v47.i64[0] ^ v47.i64[1];
      *(a3 + 40) = __rev16(v40) ^ v40 ^ v42 ^ v47.i64[0];
      *(a3 + 48) = __rev16(v41) ^ v41 ^ v43;
      *(a3 + 56) = __rev16(v42) ^ v42 ^ v44;
      aes_nohw_mix_columns(a3);
      aes_nohw_inv_shift_rows(a3);
      v50 = *(a3 + 40) ^ *(a3 + 16);
      v51 = v50 ^ *a3;
      v52 = *(a3 + 56);
      v53 = *(a3 + 24);
      v54 = veorq_s8(v53, *(a3 + 8));
      v55 = veorq_s8(v53, *a3);
      v56 = *(a3 + 40);
      v57 = veorq_s8(v54, *(a3 + 48));
      *a3 = v52 ^ ~v50;
      *(a3 + 8) = v56.i64[1] ^ v55.i64[0];
      *(a3 + 16) = v52 ^ ~v55.i64[1];
      *(a3 + 24) = v51;
      *(a3 + 32) = v57;
      *(a3 + 48) = veorq_s8(v55, v56);
      result = aes_nohw_sub_bytes(a3);
      v58 = *(a3 + 40) ^ *(a3 + 16);
      v21 = v58 ^ *a3;
      v59 = *(a3 + 56);
      v23 = v59 ^ ~v58;
      v60 = *(a3 + 24);
      v61 = veorq_s8(v60, *(a3 + 8));
      v62 = veorq_s8(v60, *a3);
      v63 = veorq_s8(v62, *(a3 + 40));
      v64 = veorq_s8(v61, *(a3 + 48));
      v29 = *(a3 + 48) ^ v62.i64[0];
      *a3 = v23;
      *(a3 + 8) = v29;
      v30 = v59 ^ ~v62.i64[1];
      *(a3 + 16) = v30;
      *(a3 + 24) = v21;
      *(a3 + 32) = v64;
      *(a3 + 48) = v63;
      v31 = v64.i64[1];
      v32 = v64.i64[0];
      v33 = v63.i64[1];
      v34 = v63.i64[0];
      v36 -= 8;
      --v35;
    }

    while (v35);
  }

  *a3 = *a1 ^ v23;
  *(a3 + 8) = a1[1] ^ v29;
  *(a3 + 16) = a1[2] ^ v30;
  *(a3 + 24) = a1[3] ^ v21;
  *(a3 + 32) = a1[4] ^ v32;
  *(a3 + 40) = a1[5] ^ v31;
  *(a3 + 48) = a1[6] ^ v34;
  *(a3 + 56) = a1[7] ^ v33;
  return result;
}

double *aes_nohw_cbc_encrypt(double *result, uint64_t a2, unint64_t a3, uint64_t a4, double *a5, int a6)
{
  v179 = *MEMORY[0x277D85DE8];
  if (a3 < 0x10)
  {
    return result;
  }

  v8 = result;
  v9 = *(a4 + 240);
  if (v9)
  {
    v10 = (v9 + 1) & 0x1FFFFFFFELL;
    v11 = v173;
    v12.i64[0] = 0x5555555555555555;
    v12.i64[1] = 0x5555555555555555;
    v13.i64[0] = 0x3333333333333333;
    v13.i64[1] = 0x3333333333333333;
    v14 = v10;
    v15 = a4;
    do
    {
      v180 = vld2q_f64(v15);
      v15 += 4;
      v16 = vandq_s8(veorq_s8(vshrq_n_u64(v180.val[0], 1uLL), v180.val[0]), v12);
      v17 = veorq_s8(vaddq_s64(v16, v16), v180.val[0]);
      v18 = veorq_s8(v16, v180.val[0]);
      v19 = vandq_s8(veorq_s8(vshrq_n_u64(v180.val[1], 1uLL), v180.val[1]), v12);
      v20 = veorq_s8(vaddq_s64(v19, v19), v180.val[1]);
      v180.val[0] = veorq_s8(v19, v180.val[1]);
      v180.val[1] = vandq_s8(veorq_s8(vshrq_n_u64(v17, 2uLL), v17), v13);
      v21 = vandq_s8(veorq_s8(vshrq_n_u64(v18, 2uLL), v18), v13);
      v22 = vandq_s8(veorq_s8(vshrq_n_u64(v20, 2uLL), v20), v13);
      v23 = vandq_s8(veorq_s8(vshrq_n_u64(v180.val[0], 2uLL), v180.val[0]), v13);
      v24 = veorq_s8(vshlq_n_s64(v21, 2uLL), v18);
      v25 = veorq_s8(vshlq_n_s64(v180.val[1], 2uLL), v17);
      v180.val[1] = veorq_s8(v180.val[1], v17);
      v26 = veorq_s8(vshlq_n_s64(v23, 2uLL), v180.val[0]);
      v27 = veorq_s8(vshlq_n_s64(v22, 2uLL), v20);
      v28 = veorq_s8(v22, v20);
      v180.val[0] = veorq_s8(v23, v180.val[0]);
      v11[6] = vzip2q_s64(v27, v26);
      v11[7] = vzip2q_s64(v28, v180.val[0]);
      v29 = veorq_s8(v21, v18);
      v11[4] = vzip2q_s64(v25, v24);
      v11[5] = vzip2q_s64(v180.val[1], v29);
      v11[2] = vzip1q_s64(v27, v26);
      v11[3] = vzip1q_s64(v28, v180.val[0]);
      *v11 = vzip1q_s64(v25, v24);
      v11[1] = vzip1q_s64(v180.val[1], v29);
      v11 += 8;
      v14 -= 2;
    }

    while (v14);
    if (v9 + 1 == v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  v30 = v9 - v10 + 1;
  v31 = (a4 + 16 * v10 + 8);
  v32 = &v173[8 * v10 + 4];
  do
  {
    v33 = *(v31 - 1);
    v34 = (v33 ^ (v33 >> 1)) & 0x5555555555555555;
    v35 = v33 ^ (2 * v34);
    v36 = v34 ^ v33;
    v37 = (*v31 ^ (*v31 >> 1)) & 0x5555555555555555;
    v38 = *v31 ^ (2 * v37);
    v39 = v37 ^ *v31;
    v40 = (v35 ^ (v35 >> 2)) & 0x3333333333333333;
    v41 = v35 ^ (4 * v40);
    v42 = v40 ^ v35;
    v43 = (v36 ^ (v36 >> 2)) & 0x3333333333333333;
    *(v32 - 4) = v41;
    *(v32 - 3) = v36 ^ (4 * v43);
    *(v32 - 2) = v42;
    *(v32 - 1) = v43 ^ v36;
    v44 = (v38 ^ (v38 >> 2)) & 0x3333333333333333;
    v45 = (v39 ^ (v39 >> 2)) & 0x3333333333333333;
    *v32 = v38 ^ (4 * v44);
    v32[1] = v39 ^ (4 * v45);
    v32[2] = v44 ^ v38;
    v32[3] = v45 ^ v39;
    v31 += 2;
    v32 += 8;
    --v30;
  }

  while (v30);
LABEL_10:
  v46 = a3 >> 4;
  v47 = *a5;
  v48 = *(a5 + 1);
  if (a6)
  {
    do
    {
      v49 = *v8;
      v50 = *(v8 + 1);
      v8 += 2;
      v51 = v49 ^ *&v47;
      v52 = v50 ^ v48;
      v53 = (v51 ^ (v51 >> 4)) & 0xF000F000F000F0;
      v54 = v51 ^ (16 * v53);
      v55 = v54 ^ v53;
      v56 = (v54 ^ (v55 >> 8)) & 0xFF000000FF00;
      v57 = v55 ^ (v56 << 8);
      v58 = v57 ^ v56;
      v59 = ((v58 >> 16) ^ v57) & 0xFFFF0000;
      v60 = v58 ^ (v59 << 16);
      v61 = (v52 ^ (v52 >> 4)) & 0xF000F000F000F0;
      v62 = v52 ^ (16 * v61);
      v63 = v62 ^ v61;
      v64 = (v62 ^ (v63 >> 8)) & 0xFF000000FF00;
      v65 = v63 ^ (v64 << 8);
      v66 = v65 ^ v64;
      v67 = ((v66 >> 16) ^ v65) & 0xFFFF0000;
      v68 = v59 ^ v58 | ((v67 ^ v66) << 32);
      v69 = (v66 & 0xFFFFFFFF00000000 ^ (v67 << 16)) & 0xFFFFFFFF00000000 | HIDWORD(v60);
      v70 = (v68 >> 1) & 0x5555555555555555;
      v71 = v68 ^ (2 * v70);
      v72 = (v69 >> 1) & 0x5555555555555555;
      v73 = v69 ^ (2 * v72);
      v74 = (v68 >> 3) & 0x1111111111111111;
      __dst.i64[0] = v71 ^ (4 * ((v71 >> 2) & 0x3333333333333333));
      __dst.i64[1] = v70 ^ (4 * v74);
      v175.i64[0] = (v71 >> 2) & 0x3333333333333333;
      v175.i64[1] = v74;
      v75 = (v69 >> 3) & 0x1111111111111111;
      v176.i64[0] = v73 ^ (4 * ((v73 >> 2) & 0x3333333333333333));
      v176.i64[1] = v72 ^ (4 * v75);
      v177 = (v73 >> 2) & 0x3333333333333333;
      v178 = v75;
      aes_nohw_encrypt_batch(v173, *(a4 + 240), &__dst);
      result = aes_nohw_from_batch(a2, 1uLL, &__dst);
      v47 = *a2;
      v48 = *(a2 + 8);
      a2 += 16;
      --v46;
    }

    while (v46);
  }

  else
  {
    v76 = result + 4;
    do
    {
      if (v46 >= 4)
      {
        v77 = 4;
      }

      else
      {
        v77 = v46;
      }

      memcpy(&__dst, v76 - 4, 16 * v77);
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      if (v46)
      {
        v78 = *(v76 - 4);
        v79 = *(v76 - 3);
        v80 = (v78 ^ (v78 >> 4)) & 0xF000F000F000F0;
        v81 = v78 ^ (16 * v80);
        v82 = v81 ^ v80;
        v83 = (v81 ^ (v82 >> 8)) & 0xFF000000FF00;
        v84 = v82 ^ (v83 << 8);
        v85 = v84 ^ v83;
        v86 = ((v85 >> 16) ^ v84) & 0xFFFF0000;
        v87 = (v79 ^ (v79 >> 4)) & 0xF000F000F000F0;
        v88 = v79 ^ (16 * v87);
        v89 = v88 ^ v87;
        v90 = (v88 ^ (v89 >> 8)) & 0xFF000000FF00;
        v91 = v89 ^ (v90 << 8);
        v92 = v91 ^ v90;
        v93 = ((v92 >> 16) ^ v91) & 0xFFFF0000;
        *&v169 = v86 ^ v85 | ((v93 ^ v92) << 32);
        *&v171 = (v92 & 0xFFFFFFFF00000000 ^ (v93 << 16)) & 0xFFFFFFFF00000000 | ((v85 ^ (v86 << 16)) >> 32);
        if (v46 != 1)
        {
          v94 = *(v76 - 2);
          v95 = *(v76 - 1);
          v96 = (v94 ^ (v94 >> 4)) & 0xF000F000F000F0;
          v97 = v94 ^ (16 * v96);
          v98 = v97 ^ v96;
          v99 = (v97 ^ (v98 >> 8)) & 0xFF000000FF00;
          v100 = v98 ^ (v99 << 8);
          v101 = v100 ^ v99;
          v102 = ((v101 >> 16) ^ v100) & 0xFFFF0000;
          v103 = (v95 ^ (v95 >> 4)) & 0xF000F000F000F0;
          v104 = v95 ^ (16 * v103);
          v105 = v104 ^ v103;
          v106 = (v104 ^ (v105 >> 8)) & 0xFF000000FF00;
          v107 = v105 ^ (v106 << 8);
          v108 = v107 ^ v106;
          v109 = ((v108 >> 16) ^ v107) & 0xFFFF0000;
          *(&v169 + 1) = v102 ^ v101 | ((v109 ^ v108) << 32);
          *(&v171 + 1) = (v108 & 0xFFFFFFFF00000000 ^ (v109 << 16)) & 0xFFFFFFFF00000000 | ((v101 ^ (v102 << 16)) >> 32);
          if (v46 != 2)
          {
            v110 = v76[1];
            v111 = (*v76 ^ (*v76 >> 4)) & 0xF000F000F000F0;
            v112 = *v76 ^ (16 * v111);
            v113 = v112 ^ v111;
            v114 = (v112 ^ (v113 >> 8)) & 0xFF000000FF00;
            v115 = v113 ^ (v114 << 8);
            v116 = v115 ^ v114;
            v117 = ((v116 >> 16) ^ v115) & 0xFFFF0000;
            v118 = (v110 ^ (v110 >> 4)) & 0xF000F000F000F0;
            v119 = v110 ^ (16 * v118);
            v120 = v119 ^ v118;
            v121 = (v119 ^ (v120 >> 8)) & 0xFF000000FF00;
            v122 = v120 ^ (v121 << 8);
            v123 = v122 ^ v121;
            v124 = ((v123 >> 16) ^ v122) & 0xFFFF0000;
            *&v170 = v117 ^ v116 | ((v124 ^ v123) << 32);
            *&v172 = (v123 & 0xFFFFFFFF00000000 ^ (v124 << 16)) & 0xFFFFFFFF00000000 | ((v116 ^ (v117 << 16)) >> 32);
            if (v46 != 3)
            {
              v125 = v76[2];
              v126 = v76[3];
              v127 = (v125 ^ (v125 >> 4)) & 0xF000F000F000F0;
              v128 = v125 ^ (16 * v127);
              v129 = v128 ^ v127;
              v130 = (v128 ^ (v129 >> 8)) & 0xFF000000FF00;
              v131 = v129 ^ (v130 << 8);
              v132 = v131 ^ v130;
              v133 = ((v132 >> 16) ^ v131) & 0xFFFF0000;
              v134 = (v126 ^ (v126 >> 4)) & 0xF000F000F000F0;
              v135 = v126 ^ (16 * v134);
              v136 = v135 ^ v134;
              v137 = (v135 ^ (v136 >> 8)) & 0xFF000000FF00;
              v138 = v136 ^ (v137 << 8);
              v139 = v138 ^ v137;
              v140 = ((v139 >> 16) ^ v138) & 0xFFFF0000;
              *(&v170 + 1) = v133 ^ v132 | ((v140 ^ v139) << 32);
              *(&v172 + 1) = (v139 & 0xFFFFFFFF00000000 ^ (v140 << 16)) & 0xFFFFFFFF00000000 | ((v132 ^ (v133 << 16)) >> 32);
            }
          }
        }

        v141 = *(&v169 + 1);
        v142 = v169;
        v143 = *(&v170 + 1);
        v144 = v170;
        v145 = *(&v171 + 1);
        v146 = v171;
        v147 = *(&v172 + 1);
        v148 = v172;
      }

      else
      {
        v147 = 0;
        v148 = 0;
        v145 = 0;
        v146 = 0;
        v143 = 0;
        v144 = 0;
        v141 = 0;
        v142 = 0;
      }

      v149 = (v141 ^ (v142 >> 1)) & 0x5555555555555555;
      v150 = v142 ^ (2 * v149);
      v151 = v149 ^ v141;
      v152 = (v143 ^ (v144 >> 1)) & 0x5555555555555555;
      v153 = v144 ^ (2 * v152);
      v154 = v152 ^ v143;
      v155 = (v145 ^ (v146 >> 1)) & 0x5555555555555555;
      v156 = v146 ^ (2 * v155);
      v157 = v155 ^ v145;
      v158 = (v147 ^ (v148 >> 1)) & 0x5555555555555555;
      v159 = v148 ^ (2 * v158);
      v160 = v158 ^ v147;
      v161 = (v153 ^ (v150 >> 2)) & 0x3333333333333333;
      v162 = v150 ^ (4 * v161);
      v163 = v161 ^ v153;
      v164 = (v154 ^ (v151 >> 2)) & 0x3333333333333333;
      *&v169 = v162;
      *(&v169 + 1) = v151 ^ (4 * v164);
      *&v170 = v163;
      *(&v170 + 1) = v164 ^ v154;
      v165 = (v159 ^ (v156 >> 2)) & 0x3333333333333333;
      v166 = (v160 ^ (v157 >> 2)) & 0x3333333333333333;
      *&v171 = v156 ^ (4 * v165);
      *(&v171 + 1) = v157 ^ (4 * v166);
      *&v172 = v165 ^ v159;
      *(&v172 + 1) = v166 ^ v160;
      aes_nohw_decrypt_batch(v173, *(a4 + 240), &v169);
      result = aes_nohw_from_batch(a2, v77, &v169);
      v167 = *(a2 + 8) ^ v48;
      *a2 ^= *&v47;
      *(a2 + 8) = v167;
      if (v46 > 1)
      {
        *(a2 + 16) = veorq_s8(__dst, *(a2 + 16));
        if (v46 != 2)
        {
          *(a2 + 32) = veorq_s8(v175, *(a2 + 32));
          if (v46 != 3)
          {
            *(a2 + 48) = veorq_s8(v176, *(a2 + 48));
          }
        }
      }

      v47 = *&v173[2 * v77 + 118];
      v48 = v173[2 * v77 + 119];
      a2 += 64;
      v76 += 8;
      v46 -= v77;
    }

    while (v46);
  }

  *a5 = v47;
  *(a5 + 1) = v48;
  return result;
}

int8x16_t gcm_gmult_nohw(int8x16_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = vrev64q_s8(*a1);
  v6 = vextq_s8(v3, v3, 8uLL);
  gcm_polyval_nohw(&v6, *a2, a2[1]);
  v4 = vrev64q_s8(v6);
  result = vextq_s8(v4, v4, 8uLL);
  *a1 = result;
  return result;
}

int8x16_t gcm_ghash_nohw(int8x16_t *a1, uint64_t *a2, int8x16_t *a3, unint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = vrev64q_s8(*a1);
  v13 = vextq_s8(v5, v5, 8uLL);
  if (a4 >= 0x10)
  {
    v6 = a4;
    v8 = *a2;
    v9 = a2[1];
    do
    {
      v10 = *a3++;
      v11 = vrev64q_s8(v10);
      v13 = veorq_s8(v13, vextq_s8(v11, v11, 8uLL));
      gcm_polyval_nohw(&v13, v8, v9);
      v6 -= 16;
    }

    while (v6 > 0xF);
    v5 = vextq_s8(v13, v13, 8uLL);
  }

  result = vrev64q_s8(v5);
  *a1 = result;
  return result;
}

uint64_t CRYPTO_gcm128_init_ctx(uint64_t a1, unint64_t a2, int8x8_t *a3, unint64_t a4)
{
  v4 = a3;
  v30 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  if (a4 != 12)
  {
    if (a4 < 0x10)
    {
      v10 = 0;
      v11 = 0;
      i = a4;
      if (!a4)
      {
LABEL_16:
        v22 = v10 ^ bswap64(8 * a4);
        *(a2 + 8) = v22;
        v29.i64[0] = bswap64(v22);
        v29.i64[1] = bswap64(v11);
        gcm_polyval_nohw(&v29, *a1, *(a1 + 8));
        v23 = vrev64q_s8(v29);
        *a2 = vextq_s8(v23, v23, 8uLL);
        v8 = bswap32(v23.u32[1]) + 1;
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      for (i = a4; i > 0xF; i -= 16)
      {
        v13 = *v4 ^ v11;
        *a2 = v13;
        v14 = *&v4[1] ^ v10;
        *(a2 + 8) = v14;
        v29.i64[0] = bswap64(v14);
        v29.i64[1] = bswap64(v13);
        gcm_polyval_nohw(&v29, *a1, *(a1 + 8));
        v11 = bswap64(v29.u64[1]);
        v10 = bswap64(v29.u64[0]);
        *a2 = v11;
        *(a2 + 8) = v10;
        v4 += 2;
      }

      if (!i)
      {
        goto LABEL_16;
      }
    }

    if (i > 7 && (v4 + i <= a2 || v4 >= a2 + i))
    {
      v15 = i & 8;
      v25 = v15;
      v26 = a2;
      v27 = v4;
      do
      {
        v28 = *v27++;
        *v26 = veor_s8(*v26, v28);
        ++v26;
        v25 -= 8;
      }

      while (v25);
      if (i == v15)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = i - v15;
    v17 = (a2 + v15);
    v18 = v4 + v15;
    do
    {
      v19 = *v18++;
      *v17++ ^= v19;
      --v16;
    }

    while (v16);
LABEL_15:
    v20 = vrev64q_s8(*a2);
    v29 = vextq_s8(v20, v20, 8uLL);
    gcm_polyval_nohw(&v29, *a1, *(a1 + 8));
    v21 = v29.i64[0];
    v11 = bswap64(v29.u64[1]);
    *a2 = v11;
    v10 = bswap64(v21);
    goto LABEL_16;
  }

  v7 = *a3;
  *(a2 + 8) = a3[1].i32[0];
  *a2 = v7;
  *(a2 + 15) = 1;
  v8 = 2;
LABEL_17:
  result = (*(a1 + 528))(a2, a2 + 32, a1 + 272);
  *(a2 + 12) = bswap32(v8);
  return result;
}

uint64_t CRYPTO_gcm128_aad(uint64_t *a1, int8x16_t *a2, char *a3, unint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a2[3].i64[1];
  if (v4)
  {
    return 0;
  }

  v5 = a2[3].i64[0];
  v6 = __CFADD__(v5, a4);
  v7 = v5 + a4;
  v8 = v6;
  if (v7 <= 0x2000000000000000 && (v8 & 1) == 0)
  {
    a2[3].i64[0] = v7;
    v9 = a2[5].u32[1];
    if (v9)
    {
      if (!a4)
      {
        goto LABEL_28;
      }

      v10 = a2 + 4;
      do
      {
        v11 = *a3++;
        v10->i8[v9] ^= v11;
        v12 = a4 - 1;
        v9 = (v9 + 1) & 0xF;
        if (!v9)
        {
          break;
        }

        --a4;
      }

      while (a4);
      if (v9)
      {
        goto LABEL_28;
      }

      v13 = vrev64q_s8(*v10);
      v43 = vextq_s8(v13, v13, 8uLL);
      v14 = a1;
      v15 = a2;
      v16 = a3;
      gcm_polyval_nohw(&v43, *a1, a1[1]);
      a3 = v16;
      a2 = v15;
      v17 = vrev64q_s8(v43);
      *v10 = vextq_s8(v17, v17, 8uLL);
      v18 = v12 & 0xFFFFFFFFFFFFFFF0;
      if ((v12 & 0xFFFFFFFFFFFFFFF0) == 0)
      {
LABEL_15:
        v19 = a3;
        if (!v12)
        {
LABEL_16:
          v9 = 0;
LABEL_28:
          a2[5].i32[1] = v9;
          return 1;
        }

LABEL_21:
        if (v12 < 8 || &a2[4] < &a3[v12 + v18] && v19 < a2[4].u64 + v12)
        {
          v28 = 0;
LABEL_25:
          v29 = v12 - v28;
          v30 = &a2[4].i8[v28];
          v31 = &a3[v28 + v18];
          do
          {
            v32 = *v31++;
            *v30++ ^= v32;
            --v29;
          }

          while (v29);
LABEL_27:
          v9 = v12;
          goto LABEL_28;
        }

        if (v12 >= 0x20)
        {
          v28 = v12 & 0xFFFFFFFFFFFFFFE0;
          v34 = &a3[v18 + 16];
          v35 = a2 + 5;
          v36 = v12 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v37 = veorq_s8(*v35, *v34);
            v35[-1] = veorq_s8(v35[-1], v34[-1]);
            *v35 = v37;
            v34 += 2;
            v35 += 2;
            v36 -= 32;
          }

          while (v36);
          if (v12 == v28)
          {
            goto LABEL_27;
          }

          if ((v12 & 0x18) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v28 = 0;
        }

        v38 = v28;
        v28 = v12 & 0xFFFFFFFFFFFFFFF8;
        v39 = &a3[v38 + v18];
        v40 = &a2[4].i8[v38];
        v41 = v38 - (v12 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v42 = *v39++;
          *v40 = veor_s8(*v40, v42);
          ++v40;
          v41 += 8;
        }

        while (v41);
        if (v12 == v28)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v14 = a1;
      v12 = a4;
      v18 = a4 & 0xFFFFFFFFFFFFFFF0;
      if ((a4 & 0xFFFFFFFFFFFFFFF0) == 0)
      {
        goto LABEL_15;
      }
    }

    v20 = a2;
    v21 = vrev64q_s8(a2[4]);
    v43 = vextq_s8(v21, v21, 8uLL);
    v22 = *v14;
    v23 = v14[1];
    v24 = -(v12 & 0xFFFFFFFFFFFFFFF0);
    v25 = a3;
    v26 = (a3 + 8);
    do
    {
      v43.i64[0] ^= bswap64(*v26);
      v43.i64[1] ^= bswap64(*(v26 - 1));
      gcm_polyval_nohw(&v43, v22, v23);
      v26 += 2;
      v24 += 16;
    }

    while (v24);
    v27 = vrev64q_s8(v43);
    a2 = v20;
    v20[4] = vextq_s8(v27, v27, 8uLL);
    a3 = v25;
    v19 = &v25[v18];
    v12 &= 0xFu;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  return v4;
}

uint64_t CRYPTO_gcm128_encrypt(uint64_t a1, int8x16_t *a2, int8x16_t *a3, int8x16_t *a4, unint64_t a5)
{
  result = 0;
  v58 = *MEMORY[0x277D85DE8];
  v7 = a2[3].i64[1];
  v45 = __CFADD__(v7, a5);
  v8 = v7 + a5;
  v9 = v45;
  if (v8 <= 0xFFFFFFFE0 && (v9 & 1) == 0)
  {
    a2[3].i64[1] = v8;
    if (a2[5].i32[1])
    {
      v13 = vrev64q_s8(a2[4]);
      v57 = vextq_s8(v13, v13, 8uLL);
      v14 = a5;
      gcm_polyval_nohw(&v57, *a1, *(a1 + 8));
      a5 = v14;
      v15 = vrev64q_s8(v57);
      a2[4] = vextq_s8(v15, v15, 8uLL);
      a2[5].i32[1] = 0;
    }

    LODWORD(v16) = a2[5].i32[0];
    if (v16)
    {
      if (!a5)
      {
        goto LABEL_30;
      }

      v17 = a2 + 4;
      do
      {
        v18 = a3->i8[0];
        a3 = (a3 + 1);
        v19 = a2[1].i8[v16] ^ v18;
        a4->i8[0] = v19;
        a4 = (a4 + 1);
        v17->i8[v16] ^= v19;
        v20 = a5 - 1;
        LODWORD(v16) = (v16 + 1) & 0xF;
        if (!v16)
        {
          break;
        }

        --a5;
      }

      while (a5);
      if (v16)
      {
        goto LABEL_30;
      }

      v21 = vrev64q_s8(*v17);
      v57 = vextq_s8(v21, v21, 8uLL);
      gcm_polyval_nohw(&v57, *a1, *(a1 + 8));
      v22 = vrev64q_s8(v57);
      *v17 = vextq_s8(v22, v22, 8uLL);
      v23 = bswap32(a2->u32[3]);
      v24 = *(a1 + 520);
      if (v20 < 0xC00)
      {
LABEL_20:
        v30 = v20 & 0xFF0;
        if ((v20 & 0xFF0) != 0)
        {
          v56 = v20 & 0xFF0;
          v24(a3, a4, v20 >> 4, a1 + 272, a2);
          v23 += v20 >> 4;
          a2->i32[3] = bswap32(v23);
          v31 = vrev64q_s8(a2[4]);
          v57 = vextq_s8(v31, v31, 8uLL);
          v32 = *a1;
          v33 = *(a1 + 8);
          v34 = -v56;
          v35 = &a4->u64[1];
          do
          {
            v57.i64[0] ^= bswap64(*v35);
            v57.i64[1] ^= bswap64(*(v35 - 1));
            gcm_polyval_nohw(&v57, v32, v33);
            v35 += 2;
            v34 += 16;
          }

          while (v34);
          v30 = v20 & 0xFF0;
          v36 = (a3 + v56);
          v20 &= 0xFu;
          v37 = vrev64q_s8(v57);
          a2[4] = vextq_s8(v37, v37, 8uLL);
          v38 = (a4 + v56);
          if (v20)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v38 = a4;
          v36 = a3;
          if (v20)
          {
LABEL_24:
            v39 = a2 + 1;
            (*(a1 + 528))(a2, a2 + 1, a1 + 272);
            a2->i32[3] = bswap32(v23 + 1);
            if (v20 - 0x100000001 >= 0xFFFFFFFF0000000FLL)
            {
              LODWORD(v16) = 0;
              v42 = (a4 + v20 + v30);
              v43 = a2[4].u64 + v20;
              v44 = (a3 + v20 + v30);
              v45 = v38 >= v44 || v36 >= v42;
              v46 = !v45;
              v48 = v39 < v44 && v36 < v43;
              if (v39 >= v42 || v38 >= v43)
              {
                if (v46)
                {
                  v40 = v20;
                }

                else if (v48)
                {
                  v40 = v20;
                }

                else
                {
                  v16 = v20 & 0x1FFFFFFF0;
                  v40 = v20 & 0xF;
                  v50 = v20 & 0x1FFFFFFF0;
                  v51 = v38;
                  v52 = a2 + 4;
                  v53 = v36;
                  do
                  {
                    v54 = *v53++;
                    v55 = veorq_s8(v52[-3], v54);
                    *v51++ = v55;
                    *v52 = veorq_s8(*v52, v55);
                    ++v52;
                    v50 -= 16;
                  }

                  while (v50);
                  if (v20 == v16)
                  {
                    goto LABEL_30;
                  }
                }
              }

              else
              {
                v40 = v20;
              }
            }

            else
            {
              LODWORD(v16) = 0;
              v40 = v20;
            }

            do
            {
              v41 = v39->i8[v16] ^ v36->i8[v16];
              v38->i8[v16] = v41;
              a2[4].i8[v16] ^= v41;
              LODWORD(v16) = v16 + 1;
              --v40;
            }

            while (v40);
LABEL_30:
            a2[5].i32[0] = v16;
            return 1;
          }
        }

        LODWORD(v16) = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v20 = a5;
      v23 = bswap32(a2->u32[3]);
      v24 = *(a1 + 520);
      if (a5 < 0xC00)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v24(a3, a4, 192uLL, a1 + 272, a2);
      v25 = 0;
      v23 += 192;
      a2->i32[3] = bswap32(v23);
      v26 = vrev64q_s8(a2[4]);
      v57 = vextq_s8(v26, v26, 8uLL);
      v27 = *a1;
      v28 = *(a1 + 8);
      do
      {
        v57.i64[0] ^= bswap64(a4[v25].u64[1]);
        v57.i64[1] ^= bswap64(a4[v25].u64[0]);
        gcm_polyval_nohw(&v57, v27, v28);
        ++v25;
      }

      while (v25 != 192);
      v29 = vrev64q_s8(v57);
      a2[4] = vextq_s8(v29, v29, 8uLL);
      a4 += 192;
      a3 += 192;
      v20 -= 3072;
    }

    while (v20 > 0xBFF);
    goto LABEL_20;
  }

  return result;
}

uint64_t CRYPTO_gcm128_decrypt(uint64_t a1, int8x16_t *a2, int8x16_t *a3, int8x16_t *a4, unint64_t a5)
{
  result = 0;
  v60 = *MEMORY[0x277D85DE8];
  v7 = a2[3].i64[1];
  v44 = __CFADD__(v7, a5);
  v8 = v7 + a5;
  v9 = v44;
  if (v8 <= 0xFFFFFFFE0 && (v9 & 1) == 0)
  {
    a2[3].i64[1] = v8;
    if (a2[5].i32[1])
    {
      v13 = vrev64q_s8(a2[4]);
      v59 = vextq_s8(v13, v13, 8uLL);
      v14 = a5;
      gcm_polyval_nohw(&v59, *a1, *(a1 + 8));
      a5 = v14;
      v15 = vrev64q_s8(v59);
      a2[4] = vextq_s8(v15, v15, 8uLL);
      a2[5].i32[1] = 0;
    }

    LODWORD(v16) = a2[5].i32[0];
    if (v16)
    {
      if (!a5)
      {
        goto LABEL_31;
      }

      v17 = a2 + 4;
      do
      {
        v18 = a3->i8[0];
        a3 = (a3 + 1);
        a4->i8[0] = a2[1].i8[v16] ^ v18;
        a4 = (a4 + 1);
        v17->i8[v16] ^= v18;
        v19 = a5 - 1;
        LODWORD(v16) = (v16 + 1) & 0xF;
        if (!v16)
        {
          break;
        }

        --a5;
      }

      while (a5);
      if (v16)
      {
        goto LABEL_31;
      }

      v20 = vrev64q_s8(*v17);
      v59 = vextq_s8(v20, v20, 8uLL);
      gcm_polyval_nohw(&v59, *a1, *(a1 + 8));
      v21 = vrev64q_s8(v59);
      *v17 = vextq_s8(v21, v21, 8uLL);
      v22 = bswap32(a2->u32[3]);
      v23 = *(a1 + 520);
      if (v19 < 0xC00)
      {
LABEL_20:
        v29 = v19 & 0xFF0;
        if ((v19 & 0xFF0) != 0)
        {
          v57 = v19 & 0xFF0;
          v58 = v23;
          v30 = vrev64q_s8(a2[4]);
          v59 = vextq_s8(v30, v30, 8uLL);
          v31 = *a1;
          v32 = *(a1 + 8);
          v33 = -v57;
          v34 = &a3->u64[1];
          do
          {
            v59.i64[0] ^= bswap64(*v34);
            v59.i64[1] ^= bswap64(*(v34 - 1));
            gcm_polyval_nohw(&v59, v31, v32);
            v34 += 2;
            v33 += 16;
          }

          while (v33);
          v35 = vrev64q_s8(v59);
          a2[4] = vextq_s8(v35, v35, 8uLL);
          v58(a3, a4, v19 >> 4, a1 + 272, a2);
          v22 += v19 >> 4;
          a2->i32[3] = bswap32(v22);
          v29 = v19 & 0xFF0;
          v36 = (a4 + v57);
          v37 = (a3 + v57);
          v19 &= 0xFu;
          if (v19)
          {
LABEL_24:
            v38 = a2 + 1;
            (*(a1 + 528))(a2, a2 + 1, a1 + 272);
            a2->i32[3] = bswap32(v22 + 1);
            if (v19 - 0x100000001 >= 0xFFFFFFFF0000001FLL)
            {
              LODWORD(v16) = 0;
              v41 = a2[4].u64 + v19;
              v42 = (a4 + v19 + v29);
              v43 = (a3 + v19 + v29);
              v44 = v38 >= v43 || v37 >= v41;
              v45 = !v44;
              v47 = v36 < v43 && v37 < v42;
              v48 = v36 >= v41 || v38 >= v42;
              if (v48 && (v45 & 1) == 0 && !v47)
              {
                v16 = v19 & 0x1FFFFFFE0;
                v39 = v19 & 0x1F;
                v49 = (a3 + v29 + 16);
                v50 = a2 + 5;
                v51 = (a4 + v29 + 16);
                v52 = v19 & 0x1FFFFFFE0;
                do
                {
                  v53 = v49[-1];
                  v54 = *v49;
                  v55 = veorq_s8(*v50, *v49);
                  v50[-1] = veorq_s8(v50[-1], v53);
                  *v50 = v55;
                  v56 = veorq_s8(v50[-3], v54);
                  v51[-1] = veorq_s8(v50[-4], v53);
                  *v51 = v56;
                  v49 += 2;
                  v50 += 2;
                  v51 += 2;
                  v52 -= 32;
                }

                while (v52);
                if (v19 == v16)
                {
                  goto LABEL_31;
                }

                goto LABEL_27;
              }
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v39 = v19;
            do
            {
LABEL_27:
              v40 = v37->i8[v16];
              a2[4].i8[v16] ^= v40;
              v36->i8[v16] = v38->i8[v16] ^ v40;
              LODWORD(v16) = v16 + 1;
              --v39;
            }

            while (v39);
            goto LABEL_31;
          }
        }

        else
        {
          v36 = a4;
          v37 = a3;
          if (v19)
          {
            goto LABEL_24;
          }
        }

        LODWORD(v16) = 0;
LABEL_31:
        a2[5].i32[0] = v16;
        return 1;
      }
    }

    else
    {
      v19 = a5;
      v22 = bswap32(a2->u32[3]);
      v23 = *(a1 + 520);
      if (a5 < 0xC00)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v24 = 0;
      v25 = vrev64q_s8(a2[4]);
      v59 = vextq_s8(v25, v25, 8uLL);
      v26 = *a1;
      v27 = *(a1 + 8);
      do
      {
        v59.i64[0] ^= bswap64(a3[v24].u64[1]);
        v59.i64[1] ^= bswap64(a3[v24].u64[0]);
        gcm_polyval_nohw(&v59, v26, v27);
        ++v24;
      }

      while (v24 != 192);
      v28 = vrev64q_s8(v59);
      a2[4] = vextq_s8(v28, v28, 8uLL);
      v23(a3, a4, 192uLL, a1 + 272, a2);
      v22 += 192;
      a2->i32[3] = bswap32(v22);
      a4 += 192;
      a3 += 192;
      v19 -= 3072;
    }

    while (v19 > 0xBFF);
    goto LABEL_20;
  }

  return result;
}

uint64_t CRYPTO_gcm128_finish(uint64_t *a1, uint64_t a2, int8x16_t *a3, unint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a2 + 80) || *(a2 + 84))
  {
    v8 = vrev64q_s8(*(a2 + 64));
    v32 = vextq_s8(v8, v8, 8uLL);
    gcm_polyval_nohw(&v32, *a1, a1[1]);
    v9 = vrev64q_s8(v32);
    v10 = vextq_s8(v9, v9, 8uLL);
  }

  else
  {
    v10 = *(a2 + 64);
  }

  v11 = veorq_s8(vrev64q_s8(vshlq_n_s64(*(a2 + 48), 3uLL)), v10);
  *(a2 + 64) = v11;
  v12 = vrev64q_s8(v11);
  v32 = vextq_s8(v12, v12, 8uLL);
  gcm_polyval_nohw(&v32, *a1, a1[1]);
  result = 0;
  v15 = vrev64q_s8(v32);
  v16 = *(a2 + 32);
  *(a2 + 64) = veorq_s8(v16, vextq_s8(v15, v15, 8uLL));
  if (a3 && a4 <= 0x10)
  {
    if (!a4)
    {
      return 1;
    }

    if (a4 >= 4)
    {
      if (a4 >= 0x10)
      {
        v19 = veorq_s8(*a3, *(a2 + 64));
        *v19.i8 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
        v18 = v19.i64[0] | HIDWORD(v19.i64[0]) | ((v19.i64[0] | HIDWORD(v19.i64[0])) >> 16);
        LOBYTE(v18) = v18 | BYTE1(v18);
        return v18 == 0;
      }

      v17 = a4 & 0xC;
      v20 = 0;
      v21 = (a2 + 64);
      v22 = a3;
      v23 = -(a4 & 0x1C);
      do
      {
        v24 = *v21++;
        v16.i32[0] = v24;
        v25 = v22->i32[0];
        v22 = (v22 + 4);
        v13.i32[0] = v25;
        v13 = vmovl_u8(v13).u64[0];
        *v16.i8 = veor_s8(v13, *&vmovl_u8(*v16.i8));
        v20 = vorr_s8(*v16.i8, v20);
        v23 += 4;
      }

      while (v23);
      LOWORD(v18) = v20.i16[0] | v20.i16[2] | ((v20.i32[0] | v20.i32[1]) >> 16);
      if (v17 == a4)
      {
        return v18 == 0;
      }
    }

    else
    {
      v17 = 0;
      LOBYTE(v18) = 0;
    }

    v26 = a4 - v17;
    v27 = &a3->i8[v17];
    v28 = (v17 + a2 + 64);
    do
    {
      v30 = *v28++;
      v29 = v30;
      v31 = *v27++;
      LOBYTE(v18) = v31 ^ v29 | v18;
      --v26;
    }

    while (v26);
    return v18 == 0;
  }

  return result;
}

unint64_t *gcm_polyval_nohw(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = *result & 0x1111111111111110;
  v5 = *result & 0x2222222222222220;
  v6 = *result & 0x4444444444444440;
  v7 = *result & 0x8888888888888880;
  v8 = ((v4 * (a3 & 0x1111111111111111)) >> 64) ^ ((v5 * (a3 & 0x8888888888888888)) >> 64) ^ ((v6 * (a3 & 0x4444444444444444)) >> 64) ^ ((v7 * (a3 & 0x2222222222222222)) >> 64);
  v9 = (v4 * (a3 & 0x1111111111111111)) ^ (v5 * (a3 & 0x8888888888888888)) ^ (v6 * (a3 & 0x4444444444444444)) ^ (v7 * (a3 & 0x2222222222222222));
  v10 = ((v4 * (a3 & 0x2222222222222222)) >> 64) ^ ((v5 * (a3 & 0x1111111111111111)) >> 64) ^ ((v6 * (a3 & 0x8888888888888888)) >> 64) ^ ((v7 * (a3 & 0x4444444444444444)) >> 64);
  v11 = (v4 * (a3 & 0x2222222222222222)) ^ (v5 * (a3 & 0x1111111111111111)) ^ (v6 * (a3 & 0x8888888888888888)) ^ (v7 * (a3 & 0x4444444444444444));
  v12 = ((v4 * (a3 & 0x4444444444444444)) >> 64) ^ ((v5 * (a3 & 0x2222222222222222)) >> 64) ^ ((v6 * (a3 & 0x1111111111111111)) >> 64) ^ ((v7 * (a3 & 0x8888888888888888)) >> 64);
  v13 = (v4 * (a3 & 0x4444444444444444)) ^ (v5 * (a3 & 0x2222222222222222)) ^ (v6 * (a3 & 0x1111111111111111)) ^ (v7 * (a3 & 0x8888888888888888));
  v14 = a3 & ((*result << 62) >> 63);
  v15 = ((v4 * (a3 & 0x8888888888888888)) >> 64) ^ ((v5 * (a3 & 0x4444444444444444)) >> 64);
  v16 = ((*result << 63) >> 63) & a3;
  v17 = v16 ^ (2 * v14);
  v18 = a3 & ((*result << 61) >> 63);
  v19 = (v4 * (a3 & 0x8888888888888888)) ^ (v5 * (a3 & 0x4444444444444444));
  v20 = v14 >> 63;
  v21 = a3 & ((*result << 60) >> 63);
  v22 = (v9 & 0x1111111111111111 | v11 & 0x2222222222222222 | v13 & 0x4444444444444444 | (v19 ^ (v6 * (a3 & 0x2222222222222222)) ^ (v7 * (a3 & 0x1111111111111111))) & 0x8888888888888888) ^ v17 ^ (4 * v18) ^ (8 * v21);
  v23 = (v8 & 0x1111111111111111 | v10 & 0x2222222222222222 | v12 & 0x4444444444444444 | (v15 ^ ((v6 * (a3 & 0x2222222222222222)) >> 64) ^ ((v7 * (a3 & 0x1111111111111111)) >> 64)) & 0x8888888888888888) ^ v20 ^ (v18 >> 62) ^ (v21 >> 61);
  v24 = a2 & ((v3 << 62) >> 63);
  v25 = a2 & ((v3 << 61) >> 63);
  v26 = ((v3 << 63) >> 63) & a2 ^ (2 * v24) ^ (4 * v25);
  v27 = (v24 >> 63) ^ (v25 >> 62);
  v28 = a2 & ((v3 << 60) >> 63);
  v29 = ((((v3 & 0x1111111111111110) * (a2 & 0x1111111111111111)) ^ ((v3 & 0x2222222222222220) * (a2 & 0x8888888888888888)) ^ ((v3 & 0x4444444444444440) * (a2 & 0x4444444444444444)) ^ ((v3 & 0x8888888888888880) * (a2 & 0x2222222222222222))) & 0x1111111111111111 | (((v3 & 0x1111111111111110) * (a2 & 0x2222222222222222)) ^ ((v3 & 0x2222222222222220) * (a2 & 0x1111111111111111)) ^ ((v3 & 0x4444444444444440) * (a2 & 0x8888888888888888)) ^ ((v3 & 0x8888888888888880) * (a2 & 0x4444444444444444))) & 0x2222222222222222 | (((v3 & 0x1111111111111110) * (a2 & 0x4444444444444444)) ^ ((v3 & 0x2222222222222220) * (a2 & 0x2222222222222222)) ^ ((v3 & 0x4444444444444440) * (a2 & 0x1111111111111111)) ^ ((v3 & 0x8888888888888880) * (a2 & 0x8888888888888888))) & 0x4444444444444444 | (((v3 & 0x1111111111111110) * (a2 & 0x8888888888888888)) ^ ((v3 & 0x2222222222222220) * (a2 & 0x4444444444444444)) ^ ((v3 & 0x4444444444444440) * (a2 & 0x2222222222222222)) ^ ((v3 & 0x8888888888888880) * (a2 & 0x1111111111111111))) & 0x8888888888888888) ^ v26 ^ (8 * v28);
  v30 = (((((v3 & 0x1111111111111110) * (a2 & 0x1111111111111111)) >> 64) ^ (((v3 & 0x2222222222222220) * (a2 & 0x8888888888888888)) >> 64) ^ (((v3 & 0x4444444444444440) * (a2 & 0x4444444444444444)) >> 64) ^ (((v3 & 0x8888888888888880) * (a2 & 0x2222222222222222)) >> 64)) & 0x1111111111111111 | ((((v3 & 0x1111111111111110) * (a2 & 0x2222222222222222)) >> 64) ^ (((v3 & 0x2222222222222220) * (a2 & 0x1111111111111111)) >> 64) ^ (((v3 & 0x4444444444444440) * (a2 & 0x8888888888888888)) >> 64) ^ (((v3 & 0x8888888888888880) * (a2 & 0x4444444444444444)) >> 64)) & 0x2222222222222222 | ((((v3 & 0x1111111111111110) * (a2 & 0x4444444444444444)) >> 64) ^ (((v3 & 0x2222222222222220) * (a2 & 0x2222222222222222)) >> 64) ^ (((v3 & 0x4444444444444440) * (a2 & 0x1111111111111111)) >> 64) ^ (((v3 & 0x8888888888888880) * (a2 & 0x8888888888888888)) >> 64)) & 0x4444444444444444 | ((((v3 & 0x1111111111111110) * (a2 & 0x8888888888888888)) >> 64) ^ (((v3 & 0x2222222222222220) * (a2 & 0x4444444444444444)) >> 64) ^ (((v3 & 0x4444444444444440) * (a2 & 0x2222222222222222)) >> 64) ^ (((v3 & 0x8888888888888880) * (a2 & 0x1111111111111111)) >> 64)) & 0x8888888888888888) ^ v27 ^ (v28 >> 61);
  v31 = v3 ^ *result;
  v32 = a3 ^ a2;
  v33 = (a3 ^ a2) & 0x1111111111111111;
  v34 = (a3 ^ a2) & 0x2222222222222222;
  v35 = (((v31 & 0x1111111111111110) * v33) >> 64) ^ (((v31 & 0x2222222222222220) * (v32 & 0x8888888888888888)) >> 64) ^ (((v31 & 0x4444444444444440) * (v32 & 0x4444444444444444)) >> 64) ^ (((v31 & 0x8888888888888880) * v34) >> 64);
  v36 = ((v31 & 0x1111111111111110) * v33) ^ ((v31 & 0x2222222222222220) * (v32 & 0x8888888888888888)) ^ ((v31 & 0x4444444444444440) * (v32 & 0x4444444444444444)) ^ ((v31 & 0x8888888888888880) * v34);
  v37 = (((v31 & 0x1111111111111110) * v34) >> 64) ^ (((v31 & 0x2222222222222220) * v33) >> 64) ^ (((v31 & 0x4444444444444440) * (v32 & 0x8888888888888888)) >> 64) ^ (((v31 & 0x8888888888888880) * (v32 & 0x4444444444444444)) >> 64);
  v38 = ((v31 & 0x1111111111111110) * v34) ^ ((v31 & 0x2222222222222220) * v33) ^ ((v31 & 0x4444444444444440) * (v32 & 0x8888888888888888)) ^ ((v31 & 0x8888888888888880) * (v32 & 0x4444444444444444));
  v39 = (((v31 & 0x1111111111111110) * (v32 & 0x4444444444444444)) >> 64) ^ (((v31 & 0x2222222222222220) * v34) >> 64) ^ (((v31 & 0x4444444444444440) * v33) >> 64) ^ (((v31 & 0x8888888888888880) * (v32 & 0x8888888888888888)) >> 64);
  v40 = ((v31 & 0x1111111111111110) * (v32 & 0x4444444444444444)) ^ ((v31 & 0x2222222222222220) * v34) ^ ((v31 & 0x4444444444444440) * v33) ^ ((v31 & 0x8888888888888880) * (v32 & 0x8888888888888888));
  v41 = (((v31 & 0x1111111111111110) * (v32 & 0x8888888888888888)) >> 64) ^ (((v31 & 0x2222222222222220) * (v32 & 0x4444444444444444)) >> 64) ^ (((v31 & 0x4444444444444440) * v34) >> 64) ^ (((v31 & 0x8888888888888880) * v33) >> 64);
  v42 = ((v31 & 0x1111111111111110) * (v32 & 0x8888888888888888)) ^ ((v31 & 0x2222222222222220) * (v32 & 0x4444444444444444)) ^ ((v31 & 0x4444444444444440) * v34) ^ ((v31 & 0x8888888888888880) * v33);
  v43 = v32 & ((v31 << 62) >> 63);
  v44 = v43 >> 63;
  v45 = ((v31 << 63) >> 63) & v32 ^ (2 * v43);
  v46 = v32 & ((v31 << 61) >> 63);
  v47 = v32 & ((v31 << 60) >> 63);
  v48 = v44 ^ (v46 >> 62) ^ (v47 >> 61);
  v49 = (v36 & 0x1111111111111111 | v38 & 0x2222222222222222 | v40 & 0x4444444444444444 | v42 & 0x8888888888888888) ^ v45 ^ (4 * v46) ^ (8 * v47) ^ (v17 << 62) ^ (v16 << 63) ^ (v22 << 57) ^ v22 ^ v29 ^ v23;
  *result = v48 ^ (v22 >> 1) ^ (v22 >> 2) ^ (v22 >> 7) ^ (v35 & 0x1111111111111111 | v37 & 0x2222222222222222 | v39 & 0x4444444444444444 | v41 & 0x8888888888888888) ^ (v49 << 63) ^ (v49 << 62) ^ (v49 << 57) ^ v22 ^ v23 ^ v29 ^ v30;
  result[1] = (v49 >> 1) ^ (v49 >> 2) ^ (v49 >> 7) ^ v30 ^ v49;
  return result;
}

int BN_ucmp(const BIGNUM *a, const BIGNUM *b)
{
  d = a->d;
  top = a->top;
  v4 = b->d;
  v5 = b->top;
  v6 = top - v5;
  if (top >= v5)
  {
    v7 = b->top;
  }

  else
  {
    v7 = a->top;
  }

  if (v7)
  {
    v8 = 0;
    v9 = d;
    v10 = b->d;
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = *v10++;
      v14 = (((v13 ^ v11) - 1) & ~(v13 ^ v11)) >> 63;
      v8 = v14 & v8 | (((((v11 - v13) ^ v11 | v13 ^ v11) ^ v11) >> 63) | 1) & ~v14;
      --v7;
    }

    while (v7);
    if (top < v5)
    {
LABEL_8:
      v15 = v5 - top;
      if (v5 - top > 3)
      {
        v17 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + top;
        v20 = &v4[top + 2];
        v21 = 0uLL;
        v22 = v15 & 0xFFFFFFFFFFFFFFFCLL;
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
        v16 = vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
        if (v15 == (v15 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v16 = 0;
        v17 = top;
      }

      v25 = v5 - v17;
      v26 = &v4[v17];
      do
      {
        v27 = *v26++;
        *&v16 |= v27;
        --v25;
      }

      while (v25);
LABEL_19:
      LODWORD(v8) = v8 | ~(((*&v16 - 1) & ~*&v16) >> 63);
      return v8;
    }
  }

  else
  {
    LODWORD(v8) = 0;
    if (top < v5)
    {
      goto LABEL_8;
    }
  }

  if (v5 < top)
  {
    if (v6 > 3)
    {
      v19 = (v6 & 0xFFFFFFFFFFFFFFFCLL) + v5;
      v28 = &d[v5 + 2];
      v29 = 0uLL;
      v30 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v31 = 0uLL;
      do
      {
        v29 = vorrq_s8(v28[-1], v29);
        v31 = vorrq_s8(*v28, v31);
        v28 += 2;
        v30 -= 4;
      }

      while (v30);
      v32 = vorrq_s8(v31, v29);
      v18 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      if (v6 == (v6 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_25;
      }
    }

    else
    {
      v18 = 0;
      v19 = b->top;
    }

    v33 = top - v19;
    v34 = &d[v19];
    do
    {
      v35 = *v34++;
      *&v18 |= v35;
      --v33;
    }

    while (v33);
LABEL_25:
    LODWORD(v8) = (((((*&v18 - 1) & ~*&v18) >> 63) & 1) == 0) | (((*&v18 - 1) & ~*&v18) >> 63) & v8;
  }

  return v8;
}

int BN_usub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  result = bn_usub_consttime(r, a, b);
  if (result)
  {
    top = r->top;
    if (top < 1)
    {
      if (!top)
      {
LABEL_8:
        r->neg = 0;
      }
    }

    else
    {
      while (!r->d[top - 1])
      {
        v6 = __OFSUB__(top--, 1);
        if ((top < 0) ^ v6 | (top == 0))
        {
          r->top = 0;
          goto LABEL_8;
        }
      }

      r->top = top;
    }

    return 1;
  }

  return result;
}

int BN_uadd(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  result = bn_uadd_consttime(r, a, b);
  if (result)
  {
    top = r->top;
    if (top < 1)
    {
      if (!top)
      {
LABEL_8:
        r->neg = 0;
      }
    }

    else
    {
      while (!r->d[top - 1])
      {
        v6 = __OFSUB__(top--, 1);
        if ((top < 0) ^ v6 | (top == 0))
        {
          r->top = 0;
          goto LABEL_8;
        }
      }

      r->top = top;
    }

    return 1;
  }

  return result;
}

uint64_t bn_uadd_consttime(char **a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a3 + 8);
  if (v3 >= v4)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if (v3 >= v4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  v7 = *(v6 + 8);
  v8 = *(v5 + 8);
  v9 = v7 + 1;
  if (*(a1 + 3) >= (v7 + 1))
  {
    v14 = *a1;
    *(a1 + 2) = v9;
    v15 = *v6;
    if (!v8)
    {
LABEL_22:
      v17 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    if (v9 >= 0x800000)
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v11 = 3;
      v12 = 102;
      v13 = 301;
LABEL_51:
      ERR_put_error(v11, 0, v12, v10, v13);
      return 0;
    }

    if ((*(a1 + 20) & 2) != 0)
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v11 = 3;
      v12 = 106;
      v13 = 306;
      goto LABEL_51;
    }

    v22 = 8 * v9;
    v23 = malloc_type_malloc(v22 + 8, 0xB4E622C9uLL);
    if (!v23)
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v11 = 14;
      v12 = 65;
      v13 = 217;
      goto LABEL_51;
    }

    *v23 = v22;
    v14 = (v23 + 1);
    bzero(v23 + 1, 8 * v9);
    v24 = a1;
    v25 = *(a1 + 2);
    if (v25)
    {
      memcpy(v14, *a1, 8 * v25);
      v24 = a1;
    }

    v26 = *v24;
    if (*v24)
    {
      v28 = *(v26 - 8);
      v27 = (v26 - 8);
      v29 = v28 + 8;
      if (v28 != -8)
      {
        bzero(v27, v29);
      }

      free(v27);
      v24 = a1;
    }

    *v24 = v14;
    *(v24 + 2) = v9;
    *(v24 + 3) = v9;
    v15 = *v6;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  v16 = *v5;
  if (v8 >= 4)
  {
    v17 = 0;
    v18 = v8;
    v19 = v15;
    v20 = v14;
    do
    {
      v30 = *v19 + *v16;
      v31 = __CFADD__(*v19, *v16);
      v32 = __CFADD__(v30, v17);
      v33 = v30 + v17;
      v34 = v32 || v31;
      v32 = v34 != 0;
      *v20 = v33;
      v35 = v19[1];
      v36 = v16[1];
      v38 = v32;
      v32 = __CFADD__(v32, v35);
      v37 = v38 + v35;
      v32 |= __CFADD__(v36, v37);
      v20[1] = v36 + v37;
      v39 = v19[2];
      v40 = v16[2];
      v42 = v32;
      v32 = __CFADD__(v32, v39);
      v41 = v42 + v39;
      v32 |= __CFADD__(v40, v41);
      v20[2] = v40 + v41;
      v43 = v19[3];
      v44 = v16[3];
      v46 = v32 + v43;
      v32 = __CFADD__(v32, v43) | __CFADD__(v44, v46);
      v45 = v44 + v46;
      v17 = v32;
      v20[3] = v45;
      v19 += 4;
      v16 += 4;
      v20 += 4;
      v18 -= 4;
    }

    while (v18 >= 4);
    if (!v18)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v17 = 0;
    v18 = v8;
    v19 = v15;
    v20 = v14;
  }

  do
  {
    v48 = *v19++;
    v47 = v48;
    v49 = *v16++;
    v32 = __CFADD__(v47, v49);
    v50 = v47 + v49;
    v51 = v32;
    v32 = __CFADD__(v50, v17);
    v52 = v50 + v17;
    if (v32)
    {
      v17 = 1;
    }

    else
    {
      v17 = v51;
    }

    *v20++ = v52;
    --v18;
  }

  while (v18);
LABEL_42:
  if (v8 < v7)
  {
    v53 = v7 - v8;
    v54 = &v14[8 * v8];
    v55 = &v15[v8];
    do
    {
      v56 = *v55++;
      v57 = v56 + v17;
      v17 = __CFADD__(v56, v17);
      *v54 = v57;
      v54 += 8;
      --v53;
    }

    while (v53);
  }

  *&v14[8 * v7] = v17;
  return 1;
}

uint64_t bn_wexpand(uint64_t *a1, unint64_t a2)
{
  if (*(a1 + 3) >= a2)
  {
    return 1;
  }

  if (a2 >= 0x800000)
  {
    v2 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v3 = 3;
    v4 = 102;
    v5 = 301;
LABEL_16:
    ERR_put_error(v3, 0, v4, v2, v5);
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    v2 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v3 = 3;
    v4 = 106;
    v5 = 306;
    goto LABEL_16;
  }

  v8 = a2;
  v9 = 8 * a2;
  v10 = malloc_type_malloc(8 * a2 + 8, 0xB4E622C9uLL);
  if (!v10)
  {
    v2 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v3 = 14;
    v4 = 65;
    v5 = 217;
    goto LABEL_16;
  }

  *v10 = v9;
  v11 = v10 + 1;
  bzero(v10 + 1, v9);
  v12 = a1;
  v13 = *(a1 + 2);
  if (v13)
  {
    memcpy(v11, *a1, 8 * v13);
    v12 = a1;
  }

  v14 = *v12;
  if (*v12)
  {
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    v17 = v16 + 8;
    if (v16 != -8)
    {
      bzero(v15, v17);
    }

    free(v15);
    v12 = a1;
  }

  *v12 = v11;
  *(v12 + 3) = v8;
  return 1;
}

unint64_t bn_add_words(unint64_t *rp, const unint64_t *ap, const unint64_t *bp, int num)
{
  if (!*&num)
  {
    return 0;
  }

  if (*&num >= 4uLL)
  {
    v4 = 0;
    do
    {
      v6 = *ap + *bp;
      v7 = __CFADD__(*ap, *bp);
      v8 = __CFADD__(v6, v4);
      v9 = v6 + v4;
      v10 = v8 || v7;
      v8 = v10 != 0;
      *rp = v9;
      v11 = ap[1];
      v12 = bp[1];
      v14 = v8;
      v8 = __CFADD__(v8, v11);
      v13 = v14 + v11;
      v8 |= __CFADD__(v12, v13);
      rp[1] = v12 + v13;
      v15 = ap[2];
      v16 = bp[2];
      v18 = v8;
      v8 = __CFADD__(v8, v15);
      v17 = v18 + v15;
      v8 |= __CFADD__(v16, v17);
      rp[2] = v16 + v17;
      v19 = ap[3];
      v20 = bp[3];
      v22 = v8 + v19;
      v8 = __CFADD__(v8, v19) | __CFADD__(v20, v22);
      v21 = v20 + v22;
      v4 = v8;
      rp[3] = v21;
      ap += 4;
      bp += 4;
      rp += 4;
      *&num -= 4;
    }

    while (*&num >= 4uLL);
    if (!*&num)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
  }

  do
  {
    v24 = *ap++;
    v23 = v24;
    v25 = *bp++;
    v8 = __CFADD__(v23, v25);
    v26 = v23 + v25;
    v27 = v8;
    v8 = __CFADD__(v26, v4);
    v28 = v26 + v4;
    if (v8)
    {
      v4 = 1;
    }

    else
    {
      v4 = v27;
    }

    *rp++ = v28;
    --*&num;
  }

  while (*&num);
  return v4;
}

int BN_add_word(BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    return 1;
  }

  top = a->top;
  if (!top)
  {
LABEL_16:
    if (a->dmax)
    {
      d = a->d;
LABEL_18:
      a->neg = 0;
      *d = w;
      v16 = 1;
      a->top = 1;
      return v16;
    }

    if ((a->flags & 2) != 0)
    {
      v33 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v34 = 3;
      v35 = 106;
      v36 = 306;
    }

    else
    {
      v22 = w;
      v23 = a;
      v24 = malloc_type_malloc(0x10uLL, 0xB4E622C9uLL);
      if (v24)
      {
        *v24 = xmmword_273BA6E70;
        d = v24 + 1;
        a = v23;
        v25 = v23->top;
        if (v25)
        {
          memcpy(d, v23->d, 8 * v25);
          a = v23;
        }

        v26 = a->d;
        if (a->d)
        {
          v28 = *(v26 - 1);
          v27 = v26 - 1;
          v29 = v28 + 8;
          if (v28 != -8)
          {
            bzero(v27, v29);
          }

          free(v27);
          a = v23;
        }

        a->d = d;
        a->dmax = 1;
        w = v22;
        goto LABEL_18;
      }

      v33 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v34 = 14;
      v35 = 65;
      v36 = 217;
    }

    ERR_put_error(v34, 0, v35, v33, v36);
    return 0;
  }

  v3 = a->d;
  if (top < 4)
  {
    v4 = 0;
    v5 = 0;
LABEL_9:
    v12 = top - v4;
    v13 = &v3[v4];
    do
    {
      v14 = *v13++;
      *&v5 |= v14;
      --v12;
    }

    while (v12);
    goto LABEL_11;
  }

  v4 = top & 0xFFFFFFFFFFFFFFFCLL;
  v7 = (v3 + 2);
  v8 = 0uLL;
  v9 = top & 0xFFFFFFFFFFFFFFFCLL;
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
  if (v4 != top)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (!*&v5)
  {
    goto LABEL_16;
  }

  if (a->neg)
  {
    a->neg = 0;
    v15 = a;
    result = BN_sub_word(a, w);
    v16 = result;
    v17 = v15->top;
    if (!v17)
    {
      return v16;
    }

    v18 = v15->d;
    if (v17 >= 4)
    {
      v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
      v39 = v18 + 1;
      v40 = 0uLL;
      v41 = v17 & 0xFFFFFFFFFFFFFFFCLL;
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
      v20 = vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
      if (v19 == v17)
      {
LABEL_46:
        if (v20)
        {
          v15->neg = v15->neg == 0;
          return result;
        }

        return v16;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    v44 = v17 - v19;
    v45 = &v18->i64[v19];
    do
    {
      v46 = *v45++;
      *&v20 |= v46;
      --v44;
    }

    while (v44);
    goto LABEL_46;
  }

  if ((top & ~(top >> 31)) != 0)
  {
    v30 = __CFADD__(*v3, w);
    *v3 += w;
    if (!v30)
    {
      return 1;
    }

    v31 = v3 + 1;
    v32 = (top & ~(top >> 31)) - 1;
    w = 1;
    v16 = 1;
    while (v32)
    {
      --v32;
      v30 = __CFADD__((*v31++)++, 1);
      if (!v30)
      {
        return v16;
      }
    }
  }

  if ((top & 0x80000000) != 0)
  {
    return 1;
  }

  v37 = w;
  v38 = a;
  if (bn_wexpand(a, (top + 1)))
  {
    ++v38->top;
    v38->d[top] = v37;
    return 1;
  }

  return 0;
}

int BN_set_word(BIGNUM *a, unint64_t w)
{
  if (w)
  {
    if (a->dmax)
    {
      d = a->d;
LABEL_4:
      a->neg = 0;
      *d = w;
      a->top = 1;
      return 1;
    }

    if ((a->flags & 2) != 0)
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v13 = 3;
      v14 = 106;
      v15 = 306;
    }

    else
    {
      v4 = w;
      v5 = a;
      v6 = malloc_type_malloc(0x10uLL, 0xB4E622C9uLL);
      if (v6)
      {
        *v6 = xmmword_273BA6E70;
        d = v6 + 1;
        a = v5;
        top = v5->top;
        if (top)
        {
          memcpy(d, v5->d, 8 * top);
          a = v5;
        }

        v8 = a->d;
        if (a->d)
        {
          v10 = *(v8 - 1);
          v9 = v8 - 1;
          v11 = v10 + 8;
          if (v10 != -8)
          {
            bzero(v9, v11);
          }

          free(v9);
          a = v5;
        }

        a->d = d;
        a->dmax = 1;
        w = v4;
        goto LABEL_4;
      }

      v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v13 = 14;
      v14 = 65;
      v15 = 217;
    }

    ERR_put_error(v13, 0, v14, v12, v15);
    return 0;
  }

  else
  {
    a->neg = 0;
    a->top = 0;
    return 1;
  }
}

int BN_sub_word(BIGNUM *a, unint64_t w)
{
  top = a->top;
  if (!top)
  {
LABEL_12:
    if (a->dmax)
    {
      d = a->d;
    }

    else
    {
      if ((a->flags & 2) != 0)
      {
        ERR_put_error(3, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 306);
        return 0;
      }

      v17 = w;
      v18 = a;
      v19 = malloc_type_malloc(0x10uLL, 0xB4E622C9uLL);
      if (!v19)
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        return 0;
      }

      *v19 = xmmword_273BA6E70;
      d = v19 + 1;
      a = v18;
      v20 = v18->top;
      if (v20)
      {
        memcpy(d, v18->d, 8 * v20);
        a = v18;
      }

      v21 = a->d;
      if (a->d)
      {
        v23 = *(v21 - 1);
        v22 = v21 - 1;
        v24 = v23 + 8;
        if (v23 != -8)
        {
          bzero(v22, v24);
        }

        free(v22);
        a = v18;
      }

      a->d = d;
      a->dmax = 1;
      w = v17;
    }

    *d = w;
    a->top = 1;
    a->neg = 1;
    return 1;
  }

  v3 = a->d;
  if (top < 4)
  {
    v4 = 0;
    v5 = 0;
LABEL_7:
    v11 = top - v4;
    v12 = &v3[v4];
    do
    {
      v13 = *v12++;
      *&v5 |= v13;
      --v11;
    }

    while (v11);
    goto LABEL_9;
  }

  v4 = top & 0xFFFFFFFFFFFFFFFCLL;
  v6 = (v3 + 2);
  v7 = 0uLL;
  v8 = v4;
  v9 = 0uLL;
  do
  {
    v7 = vorrq_s8(v6[-1], v7);
    v9 = vorrq_s8(*v6, v9);
    v6 += 2;
    v8 -= 4;
  }

  while (v8);
  v10 = vorrq_s8(v9, v7);
  v5 = vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
  if (v4 != top)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (!*&v5)
  {
    goto LABEL_12;
  }

  if (a->neg)
  {
    a->neg = 0;
    v14 = a;
    result = BN_add_word(a, w);
    v14->neg = 1;
  }

  else
  {
    v25 = top - 1;
    if (top < 1)
    {
      goto LABEL_33;
    }

    while (!v3[top - 1])
    {
      v26 = __OFSUB__(top--, 1);
      if ((top < 0) ^ v26 | (top == 0))
      {
        goto LABEL_33;
      }
    }

    if (top == 1 && w > *v3)
    {
      *v3 = w - *v3;
      a->neg = 1;
      return 1;
    }

    else
    {
LABEL_33:
      v27 = *v3;
      if (*v3 >= w)
      {
        v29 = 0;
      }

      else
      {
        *v3 -= w;
        v28 = v3[1];
        ++v3;
        v27 = v28;
        if (v28)
        {
          w = 1;
          v29 = 1;
        }

        else
        {
          w = 1;
          v29 = 1;
          do
          {
            *v3 = -1;
            v30 = v3[1];
            ++v3;
            v27 = v30;
            ++v29;
          }

          while (!v30);
        }
      }

      v31 = v27 - w;
      *v3 = v31;
      if (v31)
      {
        v32 = 0;
      }

      else
      {
        v32 = v29 == v25;
      }

      if (v32)
      {
        a->top = v29;
      }

      return 1;
    }
  }

  return result;
}

int BN_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  neg = b->neg;
  if (a->neg)
  {
    if (neg)
    {
      v5 = a;
      v6 = b;
      if ((BN_ucmp(b, a) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_23:
      result = bn_usub_consttime(r, v5, v6);
      if (result)
      {
        top = r->top;
        if (top >= 1)
        {
          while (!r->d[top - 1])
          {
            v9 = __OFSUB__(top--, 1);
            if ((top < 0) ^ v9 | (top == 0))
            {
              top = 0;
              break;
            }
          }

          r->top = top;
        }

        r->neg = 1;
        return 1;
      }

      return result;
    }

    v10 = 1;
    result = bn_uadd_consttime(r, a, b);
    if (!result)
    {
      return result;
    }

LABEL_15:
    v8 = r->top;
    if (v8 < 1)
    {
LABEL_21:
      r->neg = v10;
      return 1;
    }

    while (!r->d[v8 - 1])
    {
      v9 = __OFSUB__(v8--, 1);
      if ((v8 < 0) ^ v9 | (v8 == 0))
      {
        v8 = 0;
        break;
      }
    }

LABEL_20:
    r->top = v8;
    goto LABEL_21;
  }

  if (neg)
  {
    v10 = 0;
    result = bn_uadd_consttime(r, a, b);
    if (!result)
    {
      return result;
    }

    goto LABEL_15;
  }

  v5 = b;
  v6 = a;
  if (BN_ucmp(a, b) < 0)
  {
    goto LABEL_23;
  }

LABEL_4:
  result = bn_usub_consttime(r, v6, v5);
  if (result)
  {
    v8 = r->top;
    if (v8 >= 1)
    {
      while (!r->d[v8 - 1])
      {
        v9 = __OFSUB__(v8--, 1);
        if ((v8 < 0) ^ v9 | (v8 == 0))
        {
          v8 = 0;
          break;
        }
      }

      v10 = 0;
      goto LABEL_20;
    }

    r->neg = 0;
    return 1;
  }

  return result;
}

uint64_t bn_usub_consttime(char **a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a2 + 2);
  v5 = v3;
  if (v3 <= v4)
  {
    goto LABEL_12;
  }

  v5 = *(a2 + 2);
  if (v3 <= v4)
  {
    goto LABEL_12;
  }

  v6 = *a3;
  v7 = v3 - v4;
  if (v7 < 4)
  {
    v8 = 0;
    v9 = v4;
LABEL_8:
    v15 = v3 - v9;
    v16 = &v6[v9];
    do
    {
      v17 = *v16++;
      *&v8 |= v17;
      --v15;
    }

    while (v15);
    goto LABEL_10;
  }

  v9 = (v7 & 0xFFFFFFFFFFFFFFFCLL) + v4;
  v10 = &v6[v4 + 2];
  v11 = 0uLL;
  v12 = v7 & 0xFFFFFFFFFFFFFFFCLL;
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
  if (v7 != (v7 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_8;
  }

LABEL_10:
  v5 = *(a2 + 2);
  if (v8)
  {
    v18 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/add.cc.inc";
    v19 = 3;
    v20 = 100;
    v21 = 188;
    goto LABEL_52;
  }

LABEL_12:
  if (*(a1 + 3) >= v4)
  {
    v22 = *a1;
    v23 = *a2;
    if (!v5)
    {
LABEL_27:
      v26 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    if (v4 >= 0x800000)
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v19 = 3;
      v20 = 102;
      v21 = 301;
      goto LABEL_52;
    }

    if ((*(a1 + 20) & 2) != 0)
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v19 = 3;
      v20 = 106;
      v21 = 306;
      goto LABEL_52;
    }

    v29 = a3;
    v30 = a2;
    v31 = a1;
    v32 = malloc_type_malloc(8 * v4 + 8, 0xB4E622C9uLL);
    if (!v32)
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v19 = 14;
      v20 = 65;
      v21 = 217;
      goto LABEL_52;
    }

    *v32 = 8 * v4;
    v22 = (v32 + 1);
    bzero(v32 + 1, 8 * v4);
    a1 = v31;
    v33 = *(v31 + 2);
    if (v33)
    {
      memcpy(v22, *v31, 8 * v33);
      a1 = v31;
    }

    v34 = *a1;
    if (*a1)
    {
      v36 = *(v34 - 1);
      v35 = v34 - 8;
      v37 = v36 + 8;
      if (v36 != -8)
      {
        bzero(v35, v37);
      }

      free(v35);
      a1 = v31;
    }

    *a1 = v22;
    *(a1 + 3) = v4;
    a2 = v30;
    a3 = v29;
    v23 = *v30;
    if (!v5)
    {
      goto LABEL_27;
    }
  }

  v24 = v5;
  v25 = *a3;
  if (v5 >= 4)
  {
    v26 = 0;
    v27 = v23;
    v28 = v22;
    do
    {
      v38 = *v27 - *v25;
      v39 = v38 >= v26;
      v40 = v38 - v26;
      v41 = !v39 || *v27 < *v25;
      v39 = !v41;
      *v28 = v40;
      v42 = v27[1];
      v43 = v25[1];
      v44 = v39;
      v39 = __CFSUB__(v42, v43, v39);
      v28[1] = v42 - (v43 + !v44);
      v45 = v27[2];
      v46 = v25[2];
      v47 = v39;
      v39 = __CFSUB__(v45, v46, v39);
      v28[2] = v45 - (v46 + !v47);
      v48 = v27[3];
      v49 = v25[3];
      v51 = v39;
      v39 = __CFSUB__(v48, v49, v39);
      v50 = v48 - (v49 + !v51);
      v26 = !v39;
      v28[3] = v50;
      v27 += 4;
      v25 += 4;
      v28 += 4;
      v24 -= 4;
    }

    while (v24 >= 4);
    if (!v24)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v26 = 0;
    v27 = v23;
    v28 = v22;
  }

  do
  {
    v53 = *v27++;
    v52 = v53;
    v54 = *v25++;
    v39 = v52 >= v54;
    v55 = v52 - v54;
    v56 = !v39;
    v39 = v55 >= v26;
    v57 = v55 - v26;
    if (v39)
    {
      v26 = v56;
    }

    else
    {
      v26 = 1;
    }

    *v28++ = v57;
    --v24;
  }

  while (v24);
LABEL_44:
  v58 = *(a2 + 2);
  if (v5 < v58)
  {
    v59 = v58 - v5;
    v60 = v5;
    v61 = &v22[v60 * 8];
    v62 = &v23[v60];
    do
    {
      v63 = *v62++;
      v64 = v63 - v26;
      v26 = v63 < v26;
      *v61 = v64;
      v61 += 8;
      --v59;
    }

    while (v59);
  }

  if (!v26)
  {
    *(a1 + 2) = v58;
    *(a1 + 4) = 0;
    return 1;
  }

  v18 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/add.cc.inc";
  v19 = 3;
  v20 = 100;
  v21 = 204;
LABEL_52:
  ERR_put_error(v19, 0, v20, v18, v21);
  return 0;
}

unint64_t bn_sub_words(unint64_t *rp, const unint64_t *ap, const unint64_t *bp, int num)
{
  if (!*&num)
  {
    return 0;
  }

  if (*&num >= 4uLL)
  {
    v4 = 0;
    do
    {
      v6 = *ap - *bp;
      v7 = v6 >= v4;
      v8 = v6 - v4;
      v9 = !v7 || *ap < *bp;
      v7 = !v9;
      *rp = v8;
      v10 = ap[1];
      v11 = bp[1];
      v12 = v7;
      v7 = __CFSUB__(v10, v11, v7);
      rp[1] = v10 - (v11 + !v12);
      v13 = ap[2];
      v14 = bp[2];
      v15 = v7;
      v7 = __CFSUB__(v13, v14, v7);
      rp[2] = v13 - (v14 + !v15);
      v16 = ap[3];
      v17 = bp[3];
      v19 = v7;
      v7 = __CFSUB__(v16, v17, v7);
      v18 = v16 - (v17 + !v19);
      v4 = !v7;
      rp[3] = v18;
      ap += 4;
      bp += 4;
      rp += 4;
      *&num -= 4;
    }

    while (*&num >= 4uLL);
    if (!*&num)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
  }

  do
  {
    v21 = *ap++;
    v20 = v21;
    v22 = *bp++;
    v7 = v20 >= v22;
    v23 = v20 - v22;
    v24 = !v7;
    v7 = v23 >= v4;
    v25 = v23 - v4;
    if (v7)
    {
      v4 = v24;
    }

    else
    {
      v4 = 1;
    }

    *rp++ = v25;
    --*&num;
  }

  while (*&num);
  return v4;
}

BIGNUM *BN_new(void)
{
  v0 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v0)
  {
    *v0 = 24;
    *(v0 + 1) = 0;
    *(v0 + 2) = 0;
    *(v0 + 3) = 0x100000000;
    return (v0 + 8);
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

void BN_free(BIGNUM *a)
{
  if (a)
  {
    flags = a->flags;
    if ((flags & 2) == 0)
    {
      d = a->d;
      if (a->d)
      {
        v3 = a;
        v5 = *(d - 1);
        v4 = d - 1;
        v6 = v5 + 8;
        if (v5 != -8)
        {
          bzero(v4, v6);
        }

        free(v4);
        a = v3;
        flags = v3->flags;
      }
    }

    if (flags)
    {
      v8 = *&a[-1].neg;
      p_neg = &a[-1].neg;
      v9 = v8 + 8;
      if (v8 != -8)
      {
        v10 = p_neg;
        bzero(p_neg, v9);
        p_neg = v10;
      }

      free(p_neg);
    }

    else
    {
      a->d = 0;
    }
  }
}

BIGNUM *__cdecl BN_dup(const BIGNUM *a)
{
  if (!a)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v2)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v3 = v2;
  *v2 = 24;
  *(v2 + 1) = 0;
  v4 = (v2 + 8);
  *(v2 + 2) = 0;
  *(v2 + 3) = 0x100000000;
  if (BN_copy((v2 + 8), a))
  {
    return v4;
  }

  v6 = v3[7];
  if ((v6 & 2) == 0)
  {
    d = v4->d;
    if (v4->d)
    {
      v9 = *(d - 1);
      v8 = d - 1;
      v10 = v9 + 8;
      if (v9 != -8)
      {
        bzero(v8, v10);
      }

      free(v8);
      v6 = v3[7];
    }
  }

  if (v6)
  {
    free(v3);
  }

  else
  {
    v4->d = 0;
  }

  return 0;
}

BIGNUM *__cdecl BN_copy(BIGNUM *a, const BIGNUM *b)
{
  if (b != a)
  {
    top = b->top;
    if (a->dmax < top)
    {
      if (top >= 0x800000)
      {
        v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
        v4 = 3;
        v5 = 102;
        v6 = 301;
LABEL_20:
        ERR_put_error(v4, 0, v5, v3, v6);
        return 0;
      }

      if ((a->flags & 2) != 0)
      {
        v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
        v4 = 3;
        v5 = 106;
        v6 = 306;
        goto LABEL_20;
      }

      v7 = b;
      v8 = a;
      v9 = malloc_type_malloc(8 * top + 8, 0xB4E622C9uLL);
      if (!v9)
      {
        v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
        v4 = 14;
        v5 = 65;
        v6 = 217;
        goto LABEL_20;
      }

      *v9 = 8 * top;
      v10 = v9 + 1;
      bzero(v9 + 1, 8 * top);
      a = v8;
      v11 = v8->top;
      if (v11)
      {
        memcpy(v10, v8->d, 8 * v11);
        a = v8;
      }

      d = a->d;
      if (a->d)
      {
        v14 = *(d - 1);
        v13 = d - 1;
        v15 = v14 + 8;
        if (v14 != -8)
        {
          bzero(v13, v15);
        }

        free(v13);
        a = v8;
      }

      a->d = v10;
      a->dmax = top;
      b = v7;
      LODWORD(top) = v7->top;
    }

    if (top)
    {
      v16 = a;
      v17 = b;
      memcpy(a->d, b->d, 8 * top);
      b = v17;
      a = v16;
      v18 = v17->top;
    }

    else
    {
      v18 = 0;
    }

    a->top = v18;
    a->neg = b->neg;
  }

  return a;
}

double BN_value_one_init(void)
{
  _MergedGlobals_95 = &BN_value_one_do_init(bignum_st *)::kOneLimbs;
  *&result = 0x100000001;
  *algn_2808D4518 = xmmword_273BA6E80;
  return result;
}

int BN_num_bits(const BIGNUM *a)
{
  top = a->top;
  if (top < 1)
  {
    if (!top)
    {
      return 0;
    }

    d = a->d;
  }

  else
  {
    d = a->d;
    while (!a->d[top - 1])
    {
      v3 = __OFSUB__(top--, 1);
      if ((top < 0) ^ v3 | (top == 0))
      {
        return 0;
      }
    }
  }

  v4 = top - 1;
  v5 = d[v4];
  v6 = v5 != 0;
  v7 = HIDWORD(v5) != 0;
  if (HIDWORD(v5))
  {
    v5 >>= 32;
  }

  v8 = v5 >> 16 != 0;
  if (v5 >> 16)
  {
    v5 >>= 16;
  }

  v9 = v5 > 0xFF;
  if (v5 > 0xFF)
  {
    v5 >>= 8;
  }

  v10 = v5 > 0xF;
  if (v5 > 0xF)
  {
    v5 >>= 4;
  }

  v11 = v5 > 3;
  if (v5 > 3)
  {
    v5 >>= 2;
  }

  v12 = v6 | (v4 << 6) | (32 * v7) | (16 * v8) | (8 * v9) | (4 * v10) | (2 * v11);
  if (v5 <= 1)
  {
    return v12;
  }

  else
  {
    return v12 + 1;
  }
}

uint64_t BN_one(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v1 = *a1;
LABEL_3:
    *(a1 + 16) = 0;
    *v1 = 1;
    *(a1 + 8) = 1;
    return 1;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v11 = 3;
    v12 = 106;
    v13 = 306;
  }

  else
  {
    v3 = a1;
    v4 = malloc_type_malloc(0x10uLL, 0xB4E622C9uLL);
    if (v4)
    {
      *v4 = xmmword_273BA6E70;
      v1 = v4 + 1;
      a1 = v3;
      v5 = *(v3 + 8);
      if (v5)
      {
        memcpy(v1, *v3, 8 * v5);
        a1 = v3;
      }

      v6 = *a1;
      if (*a1)
      {
        v8 = *(v6 - 1);
        v7 = v6 - 1;
        v9 = v8 + 8;
        if (v8 != -8)
        {
          bzero(v7, v9);
        }

        free(v7);
        a1 = v3;
      }

      *a1 = v1;
      *(a1 + 12) = 1;
      goto LABEL_3;
    }

    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v11 = 14;
    v12 = 65;
    v13 = 217;
  }

  ERR_put_error(v11, 0, v12, v10, v13);
  return 0;
}

uint64_t bn_set_words(uint64_t a1, const void *a2, unint64_t a3)
{
  if (*(a1 + 12) >= a3)
  {
    if (!a3)
    {
LABEL_7:
      *(a1 + 8) = a3;
      *(a1 + 16) = 0;
      return 1;
    }

    v9 = *a1;
    v10 = 8 * a3;
LABEL_6:
    memmove(v9, a2, v10);
    goto LABEL_7;
  }

  if (a3 < 0x800000)
  {
    if ((*(a1 + 20) & 2) != 0)
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v6 = 3;
      v7 = 106;
      v8 = 306;
      goto LABEL_19;
    }

    v12 = a2;
    v10 = 8 * a3;
    v13 = malloc_type_malloc(8 * a3 + 8, 0xB4E622C9uLL);
    if (!v13)
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v6 = 14;
      v7 = 65;
      v8 = 217;
      goto LABEL_19;
    }

    *v13 = v10;
    v14 = v13 + 1;
    bzero(v13 + 1, 8 * a3);
    v15 = *(a1 + 8);
    if (v15)
    {
      memcpy(v14, *a1, 8 * v15);
    }

    v16 = *a1;
    if (*a1)
    {
      v18 = *(v16 - 1);
      v17 = (v16 - 1);
      v19 = v18 + 8;
      if (v18 != -8)
      {
        bzero(v17, v19);
      }

      free(v17);
    }

    v9 = v14;
    *a1 = v14;
    *(a1 + 12) = a3;
    a2 = v12;
    goto LABEL_6;
  }

  v5 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
  v6 = 3;
  v7 = 102;
  v8 = 301;
LABEL_19:
  ERR_put_error(v6, 0, v7, v5, v8);
  return 0;
}

void bn_copy_words(void *a1, unint64_t a2, char **a3)
{
  if (*(a3 + 4))
  {
    v3 = 109;
    v4 = 265;

LABEL_4:
    ERR_put_error(3, 0, v3, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", v4);
    return;
  }

  v5 = *(a3 + 2);
  v6 = v5 - a2;
  if (v5 > a2)
  {
    v7 = *a3;
    if (v6 >= 4)
    {
      v9 = (v6 & 0xFFFFFFFFFFFFFFFCLL) + a2;
      v10 = &v7[8 * a2 + 16];
      v11 = 0uLL;
      v12 = v6 & 0xFFFFFFFFFFFFFFFCLL;
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
      if (v6 == (v6 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_13:
        v5 = a2;
        if (v8)
        {
          v3 = 102;
          v4 = 272;

          goto LABEL_4;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
      v9 = a2;
    }

    v15 = v5 - v9;
    v16 = &v7[8 * v9];
    do
    {
      v17 = *v16;
      v16 += 8;
      *&v8 |= v17;
      --v15;
    }

    while (v15);
    goto LABEL_13;
  }

LABEL_17:
  if (a2)
  {
    v18 = a1;
    v19 = a3;
    bzero(a1, 8 * a2);
    a1 = v18;
    a3 = v19;
  }

  if (v5)
  {
    v20 = *a3;

    memcpy(a1, v20, 8 * v5);
  }
}