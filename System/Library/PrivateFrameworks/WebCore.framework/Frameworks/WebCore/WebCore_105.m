uint64_t X509V3_BOOL_from_string(const char *a1, _DWORD *a2)
{
  if (!strcmp(a1, "TRUE") || !strcmp(a1, "true") || ((v4 = *a1, v4 == 121) || v4 == 89) && !a1[1] || !strcmp(a1, "YES") || !strcmp(a1, "yes"))
  {
    *a2 = 255;
    return 1;
  }

  if (!strcmp(a1, "FALSE") || !strcmp(a1, "false"))
  {
    goto LABEL_20;
  }

  if (v4 == 110)
  {
    if (!a1[1])
    {
      goto LABEL_20;
    }

    if (a1[1] == 111)
    {
      goto LABEL_18;
    }

LABEL_19:
    ERR_put_error(20, 0, 120, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_utl.cc", 265);
    return 0;
  }

  if (v4 != 78)
  {
    goto LABEL_19;
  }

  if (!a1[1])
  {
    goto LABEL_20;
  }

  if (a1[1] != 79)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (a1[2])
  {
    goto LABEL_19;
  }

LABEL_20:
  *a2 = 0;
  return 1;
}

int X509V3_get_value_int(CONF_VALUE *value, ASN1_INTEGER **aint)
{
  v4 = s2i_ASN1_INTEGER(value, value->value);
  if (v4)
  {
    v5 = v4;
    v6 = *aint;
    if (*aint)
    {
      data = v6->data;
      if (data)
      {
        v9 = *(data - 1);
        v8 = data - 8;
        v10 = v9 + 8;
        if (v9 != -8)
        {
          bzero(v8, v10);
        }

        free(v8);
      }

      flags = v6[-1].flags;
      p_flags = &v6[-1].flags;
      v13 = flags + 8;
      if (flags != -8)
      {
        bzero(p_flags, v13);
      }

      free(p_flags);
    }

    *aint = v5;
    return 1;
  }

  else
  {
    ERR_add_error_data(6, "section:", value->section, ",name:", value->name, ",value:", value->value);
    return 0;
  }
}

STACK *__cdecl X509V3_parse_list(STACK *line)
{
  v59 = 0;
  if (!line)
  {
    return line;
  }

  v1 = line;
  v2 = strlen(line);
  v3 = v2 + 1;
  if (v2 == -1)
  {
    return 0;
  }

  if (v3 > 0xFFFFFFFFFFFFFFF7 || (v4 = malloc_type_malloc(v2 + 9, 0xB4E622C9uLL)) == 0)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v5 = v4;
  *v4 = v3;
  v6 = v4 + 8;
  memcpy(v4 + 8, v1, v3);
  v7 = 0;
  v8 = v6;
  for (i = 1; ; i = 1)
  {
    while (1)
    {
      while (1)
      {
        v10 = *v6;
        if (v10 <= 0xD && ((1 << v10) & 0x2401) != 0)
        {
          v33 = *v8;
          if (i == 2)
          {
            if (!*v8)
            {
LABEL_60:
              v31 = 126;
              v32 = 367;
              goto LABEL_76;
            }

            while (v33 == 32 || (v33 - 14) >= 0xFFFFFFFB)
            {
              v34 = *++v8;
              v33 = v34;
              if (!v34)
              {
                goto LABEL_60;
              }
            }

            v35 = strlen(v8);
            while (1)
            {
              v36 = v35 - 1;
              if (v35 == 1)
              {
                break;
              }

              v37 = v8[v35 - 1];
              v38 = v37 == 32 || (v37 - 14) > 0xFFFFFFFA;
              --v35;
              if (!v38)
              {
                v8[v36 + 1] = 0;
                if (!*v8)
                {
                  goto LABEL_60;
                }

                break;
              }
            }

            v39 = strlen(v8);
            v40 = v7;
            v41 = v8;
            v42 = 0;
          }

          else
          {
            if (!*v8)
            {
LABEL_75:
              v31 = 125;
              v32 = 377;
              goto LABEL_76;
            }

            while (v33 == 32 || (v33 - 14) >= 0xFFFFFFFB)
            {
              v47 = *++v8;
              v33 = v47;
              if (!v47)
              {
                goto LABEL_75;
              }
            }

            v48 = strlen(v8);
            while (1)
            {
              v49 = v48 - 1;
              if (v48 == 1)
              {
                break;
              }

              v50 = v8[v48 - 1];
              v51 = v50 == 32 || (v50 - 14) > 0xFFFFFFFA;
              --v48;
              if (!v51)
              {
                v8[v49 + 1] = 0;
                if (!*v8)
                {
                  goto LABEL_75;
                }

                break;
              }
            }

            v40 = v8;
            v41 = 0;
            v39 = 0;
            v42 = 1;
          }

          x509V3_add_len_value(v40, v41, v39, v42, &v59);
          free(v5);
          return v59;
        }

        if (i != 1)
        {
          break;
        }

        if (v10 == 44)
        {
          *v6 = 0;
          v25 = *v8;
          if (!*v8)
          {
LABEL_73:
            v31 = 125;
            v32 = 335;
            goto LABEL_76;
          }

          v7 = v8;
          while (v25 == 32 || (v25 - 14) >= 0xFFFFFFFB)
          {
            v26 = *++v7;
            v25 = v26;
            if (!v26)
            {
              goto LABEL_73;
            }
          }

          v27 = strlen(v7);
          while (1)
          {
            v28 = v27 - 1;
            if (v27 == 1)
            {
              break;
            }

            v29 = v7[v27 - 1];
            v30 = v29 == 32 || (v29 - 14) > 0xFFFFFFFA;
            --v27;
            if (!v30)
            {
              v7[v28 + 1] = 0;
              if (!*v7)
              {
                goto LABEL_73;
              }

              break;
            }
          }

          v8 = v6 + 1;
          i = 1;
          x509V3_add_len_value(v7, 0, 0, 1, &v59);
          ++v6;
        }

        else
        {
          if (v10 != 58)
          {
            goto LABEL_41;
          }

          *v6 = 0;
          v12 = *v8;
          if (!*v8)
          {
LABEL_72:
            v31 = 125;
            v32 = 323;
            goto LABEL_76;
          }

          v7 = v8;
          while (v12 == 32 || (v12 - 14) >= 0xFFFFFFFB)
          {
            v13 = *++v7;
            v12 = v13;
            if (!v13)
            {
              goto LABEL_72;
            }
          }

          v14 = strlen(v7);
          while (1)
          {
            v15 = v14 - 1;
            if (v14 == 1)
            {
              break;
            }

            v16 = v7[v14 - 1];
            v17 = v16 == 32 || (v16 - 14) > 0xFFFFFFFA;
            --v14;
            if (!v17)
            {
              v7[v15 + 1] = 0;
              if (!*v7)
              {
                goto LABEL_72;
              }

              break;
            }
          }

          v8 = v6 + 1;
          i = 2;
          ++v6;
        }
      }

      if (v10 == 44)
      {
        break;
      }

      i = 2;
      ++v6;
    }

    *v6 = 0;
    v18 = *v8;
    if (!*v8)
    {
      break;
    }

    while (v18 == 32 || (v18 - 14) >= 0xFFFFFFFB)
    {
      v19 = *++v8;
      v18 = v19;
      if (!v19)
      {
        goto LABEL_57;
      }
    }

    v20 = strlen(v8);
    while (1)
    {
      v21 = v20 - 1;
      if (v20 == 1)
      {
        break;
      }

      v22 = v8[v20 - 1];
      v23 = v22 == 32 || (v22 - 14) > 0xFFFFFFFA;
      --v20;
      if (!v23)
      {
        v8[v21 + 1] = 0;
        if (!*v8)
        {
          goto LABEL_57;
        }

        break;
      }
    }

    v24 = strlen(v8);
    x509V3_add_len_value(v7, v8, v24, 0, &v59);
    v7 = 0;
    v8 = v6 + 1;
LABEL_41:
    ++v6;
  }

LABEL_57:
  v31 = 126;
  v32 = 351;
LABEL_76:
  ERR_put_error(20, 0, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_utl.cc", v32);
  free(v5);
  v43 = v59;
  if (v59)
  {
    v44 = *v59;
    if (*v59)
    {
      v45 = 0;
      do
      {
        v46 = *(v43[1] + 8 * v45);
        if (v46)
        {
          X509V3_conf_free(v46);
          v44 = *v43;
        }

        ++v45;
      }

      while (v45 < v44);
    }

    v52 = v43[1];
    if (v52)
    {
      v54 = *(v52 - 8);
      v53 = (v52 - 8);
      v55 = v54 + 8;
      if (v54 != -8)
      {
        bzero(v53, v55);
      }

      free(v53);
    }

    v57 = *(v43 - 1);
    v56 = v43 - 1;
    v58 = v57 + 8;
    if (v57 != -8)
    {
      bzero(v56, v58);
    }

    free(v56);
  }

  return 0;
}

void *x509v3_bytes_to_hex(_BYTE *a1, uint64_t a2)
{
  *v20 = 0u;
  v21 = 0u;
  v2 = 3 * a2 + 1;
  v19 = 0u;
  if (v2 >= 0xFFFFFFFFFFFFFFF8)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v4 = 65;
    v5 = 217;
LABEL_3:
    ERR_put_error(14, 0, v4, v3, v5);
    goto LABEL_4;
  }

  v11 = malloc_type_malloc(3 * a2 + 9, 0xB4E622C9uLL);
  if (v11)
  {
    *v11 = v2;
    v12 = v11 + 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    if (v2)
    {
      goto LABEL_4;
    }

    v12 = 0;
  }

  BYTE8(v19) = 0;
  *&v19 = 0;
  v20[0] = v12;
  v20[1] = 0;
  *&v21 = v2;
  BYTE8(v21) = 1;
  if (a2)
  {
    v13 = x509v3_bytes_to_hex::hex[*a1 >> 4];
    v22 = 0;
    if (!CBB_add_space(&v19, &v22, 1))
    {
      goto LABEL_4;
    }

    *v22 = v13;
    v14 = x509v3_bytes_to_hex::hex[*a1 & 0xF];
    v22 = 0;
    if (!CBB_add_space(&v19, &v22, 1))
    {
      goto LABEL_4;
    }

    *v22 = v14;
    v15 = a2 - 1;
    if (v15)
    {
      v16 = a1 + 1;
      do
      {
        v22 = 0;
        if (!CBB_add_space(&v19, &v22, 1))
        {
          goto LABEL_4;
        }

        *v22 = 58;
        v17 = x509v3_bytes_to_hex::hex[*v16 >> 4];
        v22 = 0;
        if (!CBB_add_space(&v19, &v22, 1))
        {
          goto LABEL_4;
        }

        *v22 = v17;
        v18 = x509v3_bytes_to_hex::hex[*v16 & 0xF];
        v22 = 0;
        if (!CBB_add_space(&v19, &v22, 1))
        {
          goto LABEL_4;
        }

        *v22 = v18;
        ++v16;
      }

      while (--v15);
    }
  }

  v22 = 0;
  if (CBB_add_space(&v19, &v22, 1))
  {
    *v22 = 0;
    if (BYTE8(v19))
    {
      v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc";
      v4 = 66;
      v5 = 126;
      goto LABEL_3;
    }

    if (CBB_flush(&v19))
    {
      return v20[0];
    }
  }

LABEL_4:
  if (!BYTE8(v19) && (BYTE8(v21) & 1) != 0 && v20[0])
  {
    v7 = v20[0] - 8;
    v6 = *(v20[0] - 1);
    if (v6 != -8)
    {
      bzero(v7, v6 + 8);
    }

    free(v7);
  }

  return 0;
}

_BYTE *x509v3_hex_to_bytes(const char *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = strlen(a1) >> 1;
    v5 = malloc_type_malloc(v4 + 8, 0xB4E622C9uLL);
    if (v5)
    {
      v6 = v5;
      *v5 = v4;
      result = v5 + 1;
      v8 = result;
LABEL_4:
      ++v3;
      while (1)
      {
        v9 = *(v3 - 1);
        if (!*(v3 - 1))
        {
          break;
        }

        ++v3;
        if (v9 != 58)
        {
          v10 = *(v3 - 1);
          if (!*(v3 - 1))
          {
            v13 = v6;
            ERR_put_error(20, 0, 146, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_utl.cc", 462);
            free(v13);
            return 0;
          }

          if ((v9 - 58) > 0xFFFFFFF5)
          {
            v11 = -48;
            if ((v10 - 58) > 0xFFFFFFF5)
            {
              goto LABEL_17;
            }

            goto LABEL_13;
          }

          if ((v9 - 97) >= 6)
          {
            if ((v9 - 65) <= 5)
            {
              v11 = -55;
              if ((v10 - 58) > 0xFFFFFFF5)
              {
                goto LABEL_17;
              }

              goto LABEL_13;
            }
          }

          else
          {
            v11 = -87;
            if ((v10 - 58) > 0xFFFFFFF5)
            {
LABEL_17:
              v12 = -48;
              goto LABEL_20;
            }

LABEL_13:
            if ((v10 - 97) < 6)
            {
              v12 = -87;
LABEL_20:
              *v8++ = (v12 + v10) | (16 * (v11 + v9));
              goto LABEL_4;
            }

            if ((v10 - 65) <= 5)
            {
              v12 = -55;
              goto LABEL_20;
            }
          }

          free(v6);
          ERR_put_error(20, 0, 118, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_utl.cc", 487);
          return 0;
        }
      }

      if (a2)
      {
        *a2 = v8 - result;
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
    ERR_put_error(20, 0, 124, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_utl.cc", 448);
    return 0;
  }

  return result;
}

BOOL x509v3_conf_name_matches(const char *a1, char *__s)
{
  v4 = strlen(__s);
  if (strncmp(a1, __s, v4))
  {
    return 0;
  }

  return !a1[v4] || a1[v4] == 46;
}

uint64_t do_x509_check(const x509_st *a1, const char *a2, size_t a3, uint64_t a4, int a5, char **a6)
{
  if (a5 == 1)
  {
    v9 = equal_email;
    v10 = 48;
    goto LABEL_8;
  }

  if (a5 == 2)
  {
    if ((a4 & 2) != 0)
    {
      v9 = equal_nocase;
    }

    else
    {
      v9 = equal_wildcard;
    }

    v10 = 13;
LABEL_8:
    n = v10;
    v11 = 1;
    v12 = 22;
    extensions = a1->cert_info->extensions;
    if (!extensions)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  v11 = 0;
  n = 0;
  v12 = 4;
  v9 = equal_case;
  extensions = a1->cert_info->extensions;
  if (!extensions)
  {
    goto LABEL_26;
  }

LABEL_11:
  if (!*&extensions->num)
  {
    goto LABEL_26;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = extensions->data[v14];
    if (OBJ_obj2nid(v16->object) == 85)
    {
      if (v15)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = v15;
    }

    ++v14;
    v15 = v16;
  }

  while (v14 < *&extensions->num);
  if (!v16 || (v17 = X509V3_EXT_d2i(v16)) == 0)
  {
LABEL_26:
    if ((v11 ^ 1 | ((a4 & 0x20) >> 5)))
    {
      return 0;
    }

    subject = a1->cert_info->subject;
    if (subject)
    {
      LODWORD(v24) = -1;
      v25 = a6;
      while (1)
      {
        result = OBJ_nid2obj(n);
        if (!result)
        {
          break;
        }

        v27 = result;
        entries = subject->entries;
        if (subject->entries)
        {
          num = entries->num;
          v24 = v24 + 1;
          if (v24 >= num)
          {
            return 0;
          }
        }

        else
        {
          num = 0;
          v24 = v24 + 1;
          if (v24 >= 0)
          {
            return 0;
          }
        }

        v31 = *&entries->num;
        data = entries->data;
        v32 = *(result + 20);
        if (v32)
        {
          v33 = v32;
          while (1)
          {
            v34 = *data[v24];
            if (*(v34 + 20) == v33 && !memcmp(*(v34 + 24), *(v27 + 24), v33))
            {
              break;
            }

            if (num == ++v24)
            {
              return 0;
            }
          }

          v25 = a6;
        }

        else
        {
          while (*(*data[v24] + 20))
          {
            if (num == ++v24)
            {
              return 0;
            }
          }
        }

        if (v24 < 0)
        {
          return 0;
        }

        if (v31 > v24 && (v35 = data[v24]) != 0)
        {
          v36 = *(v35 + 1);
        }

        else
        {
          v36 = 0;
        }

        result = do_check_string(v36, -1, v9, a4, a5, a2, a3, v25);
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
      OBJ_nid2obj(n);
      return 0;
    }

    return result;
  }

  v18 = v17;
  v19 = *v17;
  if (!*v17)
  {
LABEL_52:
    v37 = 0;
    goto LABEL_54;
  }

  v20 = 0;
  while (1)
  {
    v21 = *(*(v18 + 1) + 8 * v20);
    if (*v21 == a5)
    {
      break;
    }

LABEL_22:
    if (++v20 >= v19)
    {
      goto LABEL_52;
    }
  }

  v22 = do_check_string(*(v21 + 8), v12, v9, a4, a5, a2, a3, a6);
  if (!v22)
  {
    v19 = *v18;
    goto LABEL_22;
  }

  v37 = v22;
LABEL_54:
  pval = v18;
  ASN1_item_ex_free(&pval, &GENERAL_NAMES_it);
  return v37;
}

uint64_t X509_check_ip(uint64_t a1, const void *a2, size_t a3)
{
  if (!a2)
  {
    return 4294967294;
  }

  v3 = *(*a1 + 72);
  if (!v3 || !*v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(v3[1] + 8 * v6);
    if (OBJ_obj2nid(v8->object) == 85)
    {
      if (v7)
      {
        return 0;
      }
    }

    else
    {
      v8 = v7;
    }

    ++v6;
    v7 = v8;
  }

  while (v6 < *v3);
  if (!v8)
  {
    return 0;
  }

  result = X509V3_EXT_d2i(v8);
  if (result)
  {
    v10 = result;
    v11 = *result;
    v12 = a3;
    if (a3)
    {
      if (v11)
      {
        v13 = 0;
        v14 = *(result + 8);
        while (1)
        {
          v15 = *(v14 + 8 * v13);
          if (*v15 == 7)
          {
            v16 = *(v15 + 8);
            v17 = *(v16 + 1);
            if (v17)
            {
              v18 = *v16;
              if (*v16)
              {
                v19 = v16[1];
                if (v18 == v12 && v19 == 4)
                {
                  v21 = memcmp(v17, a2, a3);
                  v12 = a3;
                  if (!v21)
                  {
                    break;
                  }
                }
              }
            }
          }

          if (v11 == ++v13)
          {
            goto LABEL_32;
          }
        }

        v23 = 1;
        goto LABEL_33;
      }
    }

    else if (v11)
    {
        ;
      }
    }

LABEL_32:
    v23 = 0;
LABEL_33:
    pval = v10;
    ASN1_item_ex_free(&pval, &GENERAL_NAMES_it);
    return v23;
  }

  return result;
}

uint64_t x509v3_a2i_ipadd(unsigned __int8 *a1, char *__s)
{
  v2 = __s;
  v16 = *MEMORY[0x277D85DE8];
  if (!strchr(__s, 58))
  {
    return 4 * ipv4_from_asc(a1, v2);
  }

  v14 = 0xFFFFFFFF00000000;
  v15 = 0;
  if (!v2)
  {
    ERR_put_error(13, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/conf/conf.cc", 584);
    return 0;
  }

  do
  {
    while (1)
    {
      v5 = strchr(v2, 58);
      v6 = v5;
      if (v5 != v2)
      {
        if (*v2)
        {
          break;
        }
      }

      if (v14 == 16)
      {
        return 0;
      }

      if (HIDWORD(v14) == -1)
      {
        HIDWORD(v14) = v14;
        v8 = v15;
        if (v15 > 2)
        {
          return 0;
        }
      }

      else
      {
        if (HIDWORD(v14) != v14)
        {
          return 0;
        }

        v8 = v15;
        if (v15 > 2)
        {
          return 0;
        }
      }

      v15 = v8 + 1;
      v2 = v5 + 1;
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    v7 = v5;
    if (!v5)
    {
      v7 = &v2[strlen(v2)];
    }

    if (!ipv6_cb(v2, v7 - v2, &__src))
    {
      return 0;
    }

    v2 = v6 + 1;
  }

  while (v6);
LABEL_18:
  v9 = HIDWORD(v14);
  v10 = v14;
  if (HIDWORD(v14) == -1)
  {
    if (v14 != 16)
    {
      return 0;
    }

LABEL_27:
    *a1 = __src;
    return 16;
  }

  if (v14 > 15 || v15 > 3)
  {
    return 0;
  }

  if (v15 == 2)
  {
    if (HIDWORD(v14) && v14 != HIDWORD(v14))
    {
      return 0;
    }
  }

  else if (v15 == 3)
  {
    if (v14 > 0)
    {
      return 0;
    }
  }

  else if (!HIDWORD(v14) || v14 == HIDWORD(v14))
  {
    return 0;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (HIDWORD(v14))
  {
    memcpy(a1, &__src, HIDWORD(v14));
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = &a1[v11];
  bzero(v12, (16 - v10));
  if (v10 != v9)
  {
    memcpy(&v12[-v10 + 16], &__src + v11, v10 - v9);
  }

  return 16;
}

ASN1_OCTET_STRING *__cdecl a2i_IPADDRESS(const char *ipasc)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = x509v3_a2i_ipadd(data, ipasc);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v3)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  *(v3 + 1) = 0x400000000;
  v4 = (v3 + 8);
  *v3 = 24;
  *(v3 + 2) = 0;
  v5 = (v3 + 16);
  v6 = v3;
  *(v3 + 3) = 0;
  if (!ASN1_STRING_set((v3 + 8), data, v2))
  {
    v7 = *v5;
    if (*v5)
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

    free(v6);
    return 0;
  }

  return v4;
}

ASN1_OCTET_STRING *__cdecl a2i_IPADDRESS_NC(const char *ipasc)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = strchr(ipasc, 47);
  result = 0;
  if (ipasc && v2)
  {
    v4 = v2;
    v5 = strlen(ipasc);
    v6 = v5 + 1;
    if (v5 != -1)
    {
      if (v6 > 0xFFFFFFFFFFFFFFF7)
      {
        goto LABEL_15;
      }

      v7 = malloc_type_malloc(v5 + 9, 0xB4E622C9uLL);
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = v7;
      *v7 = v6;
      v9 = v7 + 8;
      memcpy(v7 + 8, ipasc, v6);
      v10 = &v9[v4 - ipasc];
      *v10 = 0;
      v11 = x509v3_a2i_ipadd(data, v9);
      if (!v11)
      {
LABEL_14:
        free(v8);
        return 0;
      }

      v12 = v11;
      v13 = x509v3_a2i_ipadd(&data[v11], v10 + 1);
      free(v8);
      if (v12 == v13)
      {
        v14 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
        if (v14)
        {
          *(v14 + 1) = 0x400000000;
          v15 = (v14 + 8);
          *v14 = 24;
          *(v14 + 2) = 0;
          v16 = (v14 + 16);
          v8 = v14;
          *(v14 + 3) = 0;
          v17 = ASN1_STRING_set((v14 + 8), data, 2 * v12);
          result = v15;
          if (v17)
          {
            return result;
          }

          v18 = *v16;
          if (*v16)
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

          goto LABEL_14;
        }

LABEL_15:
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      }
    }

    return 0;
  }

  return result;
}

BOOL ipv4_from_asc(unsigned __int8 *a1, const char *a2)
{
  LODWORD(v2) = 0;
  v5 = *a2;
  v3 = a2 + 7;
  LOBYTE(v4) = v5;
  while ((v4 - 58) >= 0xFFFFFFF6)
  {
    v2 = (v4 + 10 * v2 - 48);
    if (v2 > 0xFF)
    {
      break;
    }

    v4 = *(v3 - 6);
    if (!*(v3 - 6) || v4 == 46)
    {
      *a1 = v2;
      if (*(v3 - 6) == 46)
      {
        LODWORD(v2) = 0;
        LOBYTE(v7) = *(v3 - 5);
        while ((v7 - 58) >= 0xFFFFFFF6)
        {
          v2 = (v7 + 10 * v2 - 48);
          if (v2 > 0xFF)
          {
            break;
          }

          v7 = *(v3 - 4);
          if (!*(v3 - 4) || v7 == 46)
          {
            a1[1] = v2;
            if (*(v3 - 4) == 46)
            {
              v8 = 0;
              LOBYTE(v9) = *(v3 - 3);
              while ((v9 - 58) >= 0xFFFFFFF6)
              {
                v8 = v9 + 10 * v8 - 48;
                if (v8 > 0xFF)
                {
                  break;
                }

                v9 = *(v3 - 2);
                if (!*(v3 - 2) || v9 == 46)
                {
                  a1[2] = v8;
                  if (*(v3 - 2) == 46)
                  {
                    v10 = 0;
                    LOBYTE(v11) = *(v3 - 1);
                    while ((v11 - 58) >= 0xFFFFFFF6)
                    {
                      v10 = v11 + 10 * v10 - 48;
                      if (v10 > 0xFF)
                      {
                        break;
                      }

                      v11 = *v3;
                      if (!*v3 || v11 == 46)
                      {
                        a1[3] = v10;
                        return *v3 == 0;
                      }

                      v2 = 0;
                      ++v3;
                      if (!v10)
                      {
                        return v2;
                      }
                    }
                  }

                  return 0;
                }

                v2 = 0;
                ++v3;
                if (!v8)
                {
                  return v2;
                }
              }
            }

            return 0;
          }

          ++v3;
          if (!v2)
          {
            return v2;
          }
        }
      }

      return 0;
    }

    ++v3;
    if (!v2)
    {
      return v2;
    }
  }

  return 0;
}

BOOL equal_email(const unsigned __int8 *a1, size_t a2, const unsigned __int8 *__s2, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = -1;
  do
  {
    v5 = v4;
    if (a2 + v4 == -1)
    {
      goto LABEL_18;
    }

    if (a1[a2 + v4] == 64)
    {
      break;
    }

    --v4;
  }

  while (__s2[a2 + v5] != 64);
  if (v5)
  {
    v6 = &a1[a2];
    v7 = v5;
    do
    {
      v9 = v6[v7];
      if (!v6[v7])
      {
        return 0;
      }

      v10 = __s2[a2 + v7];
      if (v9 != v10)
      {
        if ((v9 - 65) < 0x1A)
        {
          v9 |= 0x20u;
        }

        if ((v10 - 65) < 0x1A)
        {
          v10 |= 0x20u;
        }

        if (v9 != v10)
        {
          return 0;
        }
      }
    }

    while (!__CFADD__(v7++, 1));
  }

  v12 = a2 + v5;
  if (v12)
  {
    return memcmp(a1, __s2, v12) == 0;
  }

LABEL_18:
  v12 = a2;
  if (a2)
  {
    return memcmp(a1, __s2, v12) == 0;
  }

  return 1;
}

uint64_t equal_nocase(const unsigned __int8 *a1, uint64_t a2, const unsigned __int8 *a3, uint64_t a4)
{
  if (a2 == a4)
  {
    if (!a2)
    {
      return 1;
    }

    while (1)
    {
      v5 = *a1;
      if (!*a1)
      {
        break;
      }

      v6 = *a3;
      if (v5 != v6)
      {
        if ((v5 - 65) < 0x1A)
        {
          v5 |= 0x20u;
        }

        if ((v6 - 65) < 0x1A)
        {
          v6 |= 0x20u;
        }

        if (v5 != v6)
        {
          break;
        }
      }

      ++a1;
      ++a3;
      if (!--a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t equal_wildcard(const unsigned __int8 *a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (a4 >= 2 && *a3 == 46)
  {
    goto LABEL_3;
  }

  if (!a2)
  {
    return a4 == 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = a1;
  v11 = a2;
  do
  {
    v12 = *v10;
    if (v12 == 42)
    {
      if (v11 == 1)
      {
        v13 = 1;
        if (v7)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v13 = v10[1] == 46;
        if (v7)
        {
          goto LABEL_3;
        }
      }

      if ((((v9 & 8 | v8) == 0) & v9 & v13) != 1)
      {
        goto LABEL_3;
      }

      v8 = 0;
      v9 &= 0xFFFFFFF6;
      v7 = v10;
    }

    else
    {
      v14 = (v12 - 58) > 0xFFFFFFF5 || (v12 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6;
      if (v14)
      {
        if ((v9 & 1) != 0 && v11 >= 4)
        {
          v15 = *v10;
          if ((v15 - 65) < 0x1A)
          {
            v15 |= 0x20u;
          }

          if (v15 == 120)
          {
            v16 = *(v10 + 1);
            if ((v16 - 65) < 0x1A)
            {
              v16 |= 0x20u;
            }

            if (v16 == 110)
            {
              v17 = *(v10 + 2);
              if ((v17 - 65) < 0x1A)
              {
                v17 |= 0x20u;
              }

              if (v17 == 45)
              {
                v18 = *(v10 + 3);
                if ((v18 - 65) < 0x1A)
                {
                  v18 |= 0x20u;
                }

                if (v18 == 45)
                {
                  v9 = 8;
                }
              }
            }
          }
        }

        v9 &= 0xFFFFFFFA;
      }

      else if (v12 == 45)
      {
        if (v9)
        {
          goto LABEL_3;
        }

        v9 |= 4u;
      }

      else
      {
        v19 = v9 & 5;
        if (v12 != 46 || v19 != 0)
        {
          goto LABEL_3;
        }

        ++v8;
        v9 = 1;
      }
    }

    ++v10;
    --v11;
  }

  while (v11);
  if ((v9 & 5) != 0 || v8 < 2 || !v7)
  {
LABEL_3:
    if (a2 != a4)
    {
      return 0;
    }

    if (a4)
    {
      while (1)
      {
        v5 = *a1;
        if (!*a1)
        {
          break;
        }

        v6 = *a3;
        if (v5 != v6)
        {
          if ((v5 - 65) < 0x1A)
          {
            v5 |= 0x20u;
          }

          if ((v6 - 65) < 0x1A)
          {
            v6 |= 0x20u;
          }

          if (v5 != v6)
          {
            break;
          }
        }

        ++a1;
        ++a3;
        if (!--a4)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  else
  {
    v21 = v7 - a1;
    v22 = &a1[a2 + ~v7];
    if (&v7[~v7 + a2] > a4)
    {
      return 0;
    }

    if (v21)
    {
      v23 = (a1 - v7);
      v24 = a1;
      v25 = a3;
      do
      {
        v26 = *v24;
        if (!*v24)
        {
          return 0;
        }

        v27 = *v25;
        if (v26 != v27)
        {
          if ((v26 - 65) < 0x1A)
          {
            v26 |= 0x20u;
          }

          if ((v27 - 65) < 0x1A)
          {
            v27 |= 0x20u;
          }

          if (v26 != v27)
          {
            return 0;
          }
        }

        ++v24;
        ++v25;
        v14 = __CFADD__(v23++, 1);
      }

      while (!v14);
    }

    v28 = (v7 + 1);
    if (v22)
    {
      v29 = &a3[a4];
      v30 = v7 - &a1[a2] + 1;
      v31 = v28;
      do
      {
        v32 = v29[v30];
        if (!v29[v30])
        {
          return 0;
        }

        v33 = *v31;
        if (v32 != v33)
        {
          if ((v32 - 65) < 0x1A)
          {
            v32 |= 0x20u;
          }

          if ((v33 - 65) < 0x1A)
          {
            v33 |= 0x20u;
          }

          if (v32 != v33)
          {
            return 0;
          }
        }

        ++v31;
        v14 = __CFADD__(v30++, 1);
      }

      while (!v14);
    }

    if (v21 || *v28 != 46)
    {
      if (a4 >= 4)
      {
        v34 = a2;
        v35 = a3;
        v36 = a4;
        result = OPENSSL_strncasecmp(a3, "xn--", 4);
        a2 = v34;
        a3 = v35;
        a4 = v36;
        if (!result)
        {
          return result;
        }
      }
    }

    else if (a4 == v22)
    {
      return 0;
    }

    v37 = &a3[v21];
    v38 = a4 - v22;
    if (&a3[a4 - v22] != &a3[v21 + 1])
    {
      if (v38 == v21)
      {
        return 1;
      }

LABEL_96:
      v39 = a4 - a2 + 1;
      result = 1;
      while (1)
      {
        v40 = *v37;
        v41 = v40 != 45 && (v40 - 48) >= 0xA;
        if (v41 && (v40 & 0xFFFFFFDF) - 65 > 0x19)
        {
          break;
        }

        ++v37;
        if (!--v39)
        {
          return result;
        }
      }

      return 0;
    }

    result = 1;
    if (v38 != v21 && *v37 != 42)
    {
      goto LABEL_96;
    }
  }

  return result;
}

BOOL equal_case(const unsigned __int8 *a1, size_t __n, const unsigned __int8 *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  if (__n)
  {
    return memcmp(a1, __s2, __n) == 0;
  }

  return 1;
}

uint64_t do_check_string(asn1_string_st *in, int a2, uint64_t (*a3)(unsigned __int8 *), uint64_t a4, int a5, const char *__s2, size_t __n, char **a8)
{
  if (!in->data || !in->length)
  {
    return 0;
  }

  if (a2 >= 1)
  {
    if (in->type == a2)
    {
      v8 = a8;
      if (a2 == 22)
      {
        v9 = in;
        result = a3(in->data);
        if (!v8)
        {
          return result;
        }

        goto LABEL_29;
      }

      if (in->length == __n)
      {
        v9 = in;
        if (!__n || !memcmp(in->data, __s2, __n))
        {
          result = 1;
          if (!v8)
          {
            return result;
          }

LABEL_29:
          if (result < 1)
          {
            return result;
          }

          v25 = v9;
          data = v9->data;
          length = v25->length;
          if (length)
          {
            v28 = 0;
            while (data[v28])
            {
              if (length == ++v28)
              {
                v28 = length;
                break;
              }
            }

            if (v28 == -1)
            {
              v33 = 523;
              goto LABEL_55;
            }

            if (v28 > 0xFFFFFFFFFFFFFFF6)
            {
              goto LABEL_43;
            }

            v29 = result;
            v30 = v28 + 1;
          }

          else
          {
            v29 = result;
            v28 = 0;
            v30 = 1;
          }

          v31 = malloc_type_malloc(v30 + 8, 0xB4E622C9uLL);
          if (v31)
          {
            *v31 = v30;
            v32 = (v31 + 1);
            if (v28)
            {
              memcpy(v31 + 1, data, v28);
            }

            v32[v28] = 0;
            *v8 = v32;
            return v29;
          }

LABEL_43:
          v33 = 217;
          goto LABEL_55;
        }
      }
    }

    return 0;
  }

  v8 = a8;
  out = 0;
  result = ASN1_STRING_to_UTF8(&out, in);
  if ((result & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a5 != 2)
  {
    v19 = result;
    v16 = out;
    v17 = __n;
    v18 = __s2;
    goto LABEL_21;
  }

  v16 = out;
  if (!result)
  {
    goto LABEL_80;
  }

  v17 = __n;
  v18 = __s2;
  v19 = result;
  v20 = result - (out[result - 1] == 46);
  if (v20 < 2)
  {
    v21 = out;
LABEL_45:
    if (!v20)
    {
      result = 0;
LABEL_81:
      v43 = result;
      v45 = *(v16 - 1);
      v44 = v16 - 8;
      v46 = v45 + 8;
      if (v45 != -8)
      {
        bzero(v44, v46);
      }

      free(v44);
      return v43;
    }

    goto LABEL_58;
  }

  if (*out == 42)
  {
    v21 = out;
    if (out[1] == 46)
    {
      v21 = out + 2;
      v20 -= 2;
      goto LABEL_45;
    }
  }

  else
  {
    v21 = out;
  }

LABEL_58:
  v36 = 0;
  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = v21[v37];
    if ((v39 - 58) > 0xFFFFFFF5 || (v39 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5)
    {
      goto LABEL_60;
    }

    if (v21[v37] <= 0x39u)
    {
      break;
    }

    if (v39 != 58 && v39 != 95)
    {
      goto LABEL_78;
    }

LABEL_60:
    v36 = ++v37 >= v20;
    if (v20 == v37)
    {
      goto LABEL_78;
    }
  }

  if (v39 == 45)
  {
    if (v37 <= v38)
    {
      goto LABEL_78;
    }

    goto LABEL_60;
  }

  if (v39 == 46 && v37 < v20 - 1 && v37 > v38)
  {
    v38 = v37 + 1;
    goto LABEL_60;
  }

LABEL_78:
  if (!v36)
  {
    result = 0;
    goto LABEL_80;
  }

LABEL_21:
  result = (a3)(v16, v19, v18, v17, a4);
  if (!v8 || result < 1)
  {
LABEL_80:
    if (!v16)
    {
      return result;
    }

    goto LABEL_81;
  }

  if (v19)
  {
    v22 = 0;
    while (1)
    {
      v23 = v22 + 1;
      if (!v16[v22])
      {
        break;
      }

      ++v22;
      if (v19 == v23)
      {
        v24 = result;
        v23 = v19 + 1;
        goto LABEL_50;
      }
    }

    v24 = result;
    v19 = v22;
  }

  else
  {
    v24 = result;
    v23 = 1;
  }

LABEL_50:
  v34 = malloc_type_malloc(v23 + 8, 0xB4E622C9uLL);
  if (v34)
  {
    *v34 = v23;
    v35 = (v34 + 1);
    if (v19)
    {
      memcpy(v34 + 1, v16, v19);
    }

    v35[v19] = 0;
    *v8 = v35;
    result = v24;
    goto LABEL_80;
  }

  v33 = 217;
LABEL_55:
  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", v33);
  *v8 = 0;
  return 0xFFFFFFFFLL;
}

BOOL ipv6_cb(const char *a1, unint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a3 + 4);
  if (v3 == 16)
  {
    return 0;
  }

  if (!a2)
  {
    v7 = *(a3 + 5);
    if (v7 == -1)
    {
      *(a3 + 5) = v3;
      v8 = *(a3 + 6);
      if (v8 > 2)
      {
        return 0;
      }
    }

    else
    {
      if (v7 != v3)
      {
        return 0;
      }

      v8 = *(a3 + 6);
      if (v8 > 2)
      {
        return 0;
      }
    }

    *(a3 + 6) = v8 + 1;
    return 1;
  }

  v5 = v3;
  if (a2 < 5)
  {
    v9 = *a1;
    if (v9 - 58 > 0xFFFFFFF5)
    {
      LOBYTE(v9) = v9 - 48;
      if (a2 == 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v9 - 97 < 6)
      {
        LOBYTE(v9) = v9 - 87;
        if (a2 != 1)
        {
          goto LABEL_17;
        }

LABEL_27:
        LOBYTE(v15) = 0;
        goto LABEL_45;
      }

      if (v9 - 65 > 5)
      {
        return 0;
      }

      LOBYTE(v9) = v9 - 55;
      if (a2 == 1)
      {
        goto LABEL_27;
      }
    }

LABEL_17:
    v10 = a1[1];
    if ((v10 - 58) > 0xFFFFFFF5)
    {
      v11 = (v10 - 48) | (16 * v9);
      if (a2 != 2)
      {
        goto LABEL_20;
      }
    }

    else if ((v10 - 97) >= 6)
    {
      if ((v10 - 65) > 5)
      {
        return 0;
      }

      v11 = (v10 - 55) | (16 * v9);
      if (a2 != 2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = (v10 - 87) | (16 * v9);
      if (a2 != 2)
      {
LABEL_20:
        v12 = a1[2];
        if ((v12 - 58) > 0xFFFFFFF5)
        {
          v9 = (v12 - 48) | (16 * v11);
          if (a2 != 3)
          {
            goto LABEL_23;
          }
        }

        else if ((v12 - 97) >= 6)
        {
          if ((v12 - 65) > 5)
          {
            return 0;
          }

          v9 = (v12 - 55) | (16 * v11);
          if (a2 != 3)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v9 = (v12 - 87) | (16 * v11);
          if (a2 != 3)
          {
LABEL_23:
            v13 = a1[3];
            if ((v13 - 58) > 0xFFFFFFF5)
            {
              v14 = -48;
              goto LABEL_44;
            }

            if ((v13 - 97) < 6)
            {
              v14 = -87;
LABEL_44:
              v16 = v14 + v13;
              LOBYTE(v15) = v9 >> 4;
              LOBYTE(v9) = v16 | (16 * v9);
              goto LABEL_45;
            }

            if ((v13 - 65) <= 5)
            {
              v14 = -55;
              goto LABEL_44;
            }

            return 0;
          }
        }

        v15 = v11 >> 4;
LABEL_45:
        v17 = &a3[v5];
        *v17 = v15;
        v17[1] = v9;
        *(a3 + 4) += 2;
        return 1;
      }
    }

    LOBYTE(v15) = v9 >> 4;
    LOBYTE(v9) = v11;
    goto LABEL_45;
  }

  if (v3 > 12 || a1[a2])
  {
    return 0;
  }

  result = ipv4_from_asc(&a3[v3], a1);
  if (result)
  {
    *(a3 + 4) += 4;
    return 1;
  }

  return result;
}

int X509_NAME_cmp(const X509_NAME *a, const X509_NAME *b)
{
  if (!a->hash || a->modified)
  {
    v9 = a;
    if ((asn1_item_ex_i2d_opt(&v9, 0, &X509_NAME_ENTRY_it.sname, -1, 0, 0) & 0x80000000) != 0)
    {
      return -2;
    }
  }

  if (!b->hash || b->modified)
  {
    v9 = b;
    if ((asn1_item_ex_i2d_opt(&v9, 0, &X509_NAME_ENTRY_it.sname, -1, 0, 0) & 0x80000000) != 0)
    {
      return -2;
    }
  }

  entries_low = SLODWORD(a[1].entries);
  entries = b[1].entries;
  result = entries_low - entries;
  if (entries_low == entries)
  {
    if (entries_low)
    {
      hash = b->hash;
      v8 = a->hash;

      return memcmp(v8, hash, entries_low);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int X509_subject_name_cmp(const X509 *a, const X509 *b)
{
  subject = a->cert_info->subject;
  v3 = b->cert_info->subject;
  if (!subject->hash || subject->modified)
  {
    v9 = a->cert_info->subject;
    if ((asn1_item_ex_i2d_opt(&v9, 0, &X509_NAME_ENTRY_it.sname, -1, 0, 0) & 0x80000000) != 0)
    {
      return -2;
    }
  }

  if (!v3->hash || v3->modified)
  {
    v9 = v3;
    if ((asn1_item_ex_i2d_opt(&v9, 0, &X509_NAME_ENTRY_it.sname, -1, 0, 0) & 0x80000000) != 0)
    {
      return -2;
    }
  }

  entries_low = SLODWORD(subject[1].entries);
  entries = v3[1].entries;
  result = entries_low - entries;
  if (entries_low == entries)
  {
    if (entries_low)
    {
      hash = v3->hash;
      v8 = subject->hash;

      return memcmp(v8, hash, entries_low);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int X509_CRL_cmp(const X509_CRL *a, const X509_CRL *b)
{
  issuer = a->crl->issuer;
  v3 = b->crl->issuer;
  if (!issuer->hash || issuer->modified)
  {
    v9 = a->crl->issuer;
    if ((asn1_item_ex_i2d_opt(&v9, 0, &X509_NAME_ENTRY_it.sname, -1, 0, 0) & 0x80000000) != 0)
    {
      return -2;
    }
  }

  if (!v3->hash || v3->modified)
  {
    v9 = v3;
    if ((asn1_item_ex_i2d_opt(&v9, 0, &X509_NAME_ENTRY_it.sname, -1, 0, 0) & 0x80000000) != 0)
    {
      return -2;
    }
  }

  entries_low = SLODWORD(issuer[1].entries);
  entries = v3[1].entries;
  result = entries_low - entries;
  if (entries_low == entries)
  {
    if (entries_low)
    {
      hash = v3->hash;
      v8 = issuer->hash;

      return memcmp(v8, hash, entries_low);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int X509_cmp(const X509 *a, const X509 *b)
{
  x509v3_cache_extensions(a);
  x509v3_cache_extensions(b);
  v4 = bswap64(a->skid);
  v5 = bswap64(b->skid);
  if (v4 == v5)
  {
    v4 = bswap64(a->akid);
    v5 = bswap64(b->akid);
    if (v4 == v5)
    {
      v4 = bswap64(a->policy_cache);
      v5 = bswap64(b->policy_cache);
      if (v4 == v5)
      {
        v4 = bswap64(*a->sha1_hash);
        v5 = bswap64(*b->sha1_hash);
        if (v4 == v5)
        {
          return 0;
        }
      }
    }
  }

  if (v4 < v5)
  {
    return -1;
  }

  return 1;
}

X509_STORE *X509_STORE_new(void)
{
  v0 = malloc_type_malloc(0xF8uLL, 0xB4E622C9uLL);
  if (!v0)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v1 = v0;
  *v0 = 240;
  *(v0 + 8) = 0u;
  v2 = (v0 + 8);
  *(v0 + 232) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 60) = 1;
  if (pthread_rwlock_init((v0 + 16), 0))
  {
LABEL_63:
    abort();
  }

  v3 = malloc_type_malloc(0x30uLL, 0xB4E622C9uLL);
  if (v3)
  {
    v4 = v3;
    *v3 = 40;
    *(v3 + 8) = 0u;
    v5 = v3 + 8;
    *(v3 + 24) = 0u;
    *(v3 + 5) = 0;
    v6 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
    if (v6)
    {
      *v6 = 32;
      *(v6 + 24) = 0u;
      *(v6 + 8) = 0u;
      v4[2] = v6 + 8;
      v4[4] = 4;
      v4[5] = x509_object_cmp_sk;
      goto LABEL_10;
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    free(v4);
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  }

  v5 = 0;
LABEL_10:
  *(v1 + 1) = v5;
  *(v1 + 27) = OPENSSL_sk_new_null();
  v7 = malloc_type_malloc(0x68uLL, 0xB4E622C9uLL);
  if (v7)
  {
    *v7 = 96;
    *(v7 + 8) = 0u;
    v8 = v7 + 8;
    *(v7 + 24) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 8) = -1;
    *(v1 + 28) = v7 + 8;
    if (!*(v1 + 1))
    {
      goto LABEL_16;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v8 = 0;
    *(v1 + 28) = 0;
    if (!*(v1 + 1))
    {
LABEL_16:
      v9 = atomic_load(v1 + 60);
      if (v9 != -1)
      {
        while (1)
        {
          if (!v9)
          {
            goto LABEL_63;
          }

          v10 = v9;
          atomic_compare_exchange_strong(v1 + 60, &v10, v9 - 1);
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

        if (v9 == 1)
        {
          pthread_rwlock_destroy((v1 + 16));
          v11 = *(v1 + 27);
          if (v11)
          {
            v12 = *v11;
            if (*v11)
            {
              v13 = 0;
              do
              {
                v14 = v11[1];
                v15 = *(v14 + 8 * v13);
                if (v15)
                {
                  if (*v15)
                  {
                    v16 = *(*v15 + 8);
                    if (v16)
                    {
                      v16(*(v14 + 8 * v13));
                    }
                  }

                  v18 = *(v15 - 8);
                  v17 = (v15 - 8);
                  v19 = v18 + 8;
                  if (v18 != -8)
                  {
                    bzero(v17, v19);
                  }

                  free(v17);
                  v12 = *v11;
                }

                ++v13;
              }

              while (v13 < v12);
            }

            v20 = v11[1];
            if (v20)
            {
              v22 = *(v20 - 8);
              v21 = (v20 - 8);
              v23 = v22 + 8;
              if (v22 != -8)
              {
                bzero(v21, v23);
              }

              free(v21);
            }

            v25 = *(v11 - 1);
            v24 = v11 - 1;
            v26 = v25 + 8;
            if (v25 != -8)
            {
              bzero(v24, v26);
            }

            free(v24);
          }

          v27 = *&v2->cache;
          if (v27)
          {
            v28 = *v27;
            if (*v27)
            {
              v29 = 0;
              while (1)
              {
                v30 = *(v27[1] + 8 * v29);
                if (!v30)
                {
                  goto LABEL_44;
                }

                if (*v30 != 2)
                {
                  break;
                }

                pval = *(v30 + 8);
                ASN1_item_ex_free(&pval, &X509_CRL_INFO_it.sname);
                *v30 = 0;
                *(v30 + 8) = 0;
                v34 = *(v30 - 8);
                v31 = (v30 - 8);
                v33 = v34 + 8;
                if (v34 != -8)
                {
                  goto LABEL_52;
                }

LABEL_43:
                free(v31);
                v28 = *v27;
LABEL_44:
                if (++v29 >= v28)
                {
                  goto LABEL_53;
                }
              }

              if (*v30 == 1)
              {
                X509_free(*(v30 + 8));
              }

              *v30 = 0;
              *(v30 + 8) = 0;
              v32 = *(v30 - 8);
              v31 = (v30 - 8);
              v33 = v32 + 8;
              if (v32 == -8)
              {
                goto LABEL_43;
              }

LABEL_52:
              bzero(v31, v33);
              goto LABEL_43;
            }

LABEL_53:
            v35 = v27[1];
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

            v40 = *(v27 - 1);
            v39 = v27 - 1;
            v41 = v40 + 8;
            if (v40 != -8)
            {
              bzero(v39, v41);
            }

            free(v39);
          }

          X509_VERIFY_PARAM_free(*(v1 + 28));
          free(v1);
        }
      }

      return 0;
    }
  }

  if (!v8 || !*(v1 + 27))
  {
    goto LABEL_16;
  }

  return v2;
}

uint64_t x509_object_cmp_sk(const X509_CRL ***a1, const X509_CRL ***a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = **a2;
  result = (v4 - v5);
  if (v4 == v5)
  {
    if (v4 == 2)
    {
      return X509_CRL_cmp(v2[1], v3[1]);
    }

    else if (v4 == 1)
    {
      return X509_subject_name_cmp(v2[1], v3[1]);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void X509_STORE_free(X509_STORE *v)
{
  if (v)
  {
    v2 = atomic_load(&v[1].ex_data);
    if (v2 != -1)
    {
      while (1)
      {
        if (!v2)
        {
          abort();
        }

        v3 = v2;
        atomic_compare_exchange_strong(&v[1].ex_data, &v3, v2 - 1);
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
        pthread_rwlock_destroy(&v->objs);
        check_crl = v[1].check_crl;
        if (check_crl)
        {
          v5 = *check_crl;
          if (*check_crl)
          {
            v6 = 0;
            do
            {
              v7 = *(check_crl + 1);
              v8 = *(v7 + 8 * v6);
              if (v8)
              {
                if (*v8)
                {
                  v9 = *(*v8 + 8);
                  if (v9)
                  {
                    v9(*(v7 + 8 * v6));
                  }
                }

                v11 = *(v8 - 8);
                v10 = (v8 - 8);
                v12 = v11 + 8;
                if (v11 != -8)
                {
                  bzero(v10, v12);
                }

                free(v10);
                v5 = *check_crl;
              }

              ++v6;
            }

            while (v6 < v5);
          }

          v13 = *(check_crl + 1);
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

          v18 = *(check_crl - 1);
          v17 = check_crl - 8;
          v19 = v18 + 8;
          if (v18 != -8)
          {
            bzero(v17, v19);
          }

          free(v17);
        }

        v20 = *&v->cache;
        if (*&v->cache)
        {
          v21 = *v20;
          if (*v20)
          {
            v22 = 0;
            while (1)
            {
              v23 = *(v20[1] + 8 * v22);
              if (!v23)
              {
                goto LABEL_31;
              }

              if (*v23 != 2)
              {
                break;
              }

              pval = *(v23 + 8);
              ASN1_item_ex_free(&pval, &X509_CRL_INFO_it.sname);
              *v23 = 0;
              *(v23 + 8) = 0;
              v27 = *(v23 - 8);
              v24 = (v23 - 8);
              v26 = v27 + 8;
              if (v27 != -8)
              {
                goto LABEL_39;
              }

LABEL_30:
              free(v24);
              v21 = *v20;
LABEL_31:
              if (++v22 >= v21)
              {
                goto LABEL_40;
              }
            }

            if (*v23 == 1)
            {
              X509_free(*(v23 + 8));
            }

            *v23 = 0;
            *(v23 + 8) = 0;
            v25 = *(v23 - 8);
            v24 = (v23 - 8);
            v26 = v25 + 8;
            if (v25 == -8)
            {
              goto LABEL_30;
            }

LABEL_39:
            bzero(v24, v26);
            goto LABEL_30;
          }

LABEL_40:
          v28 = v20[1];
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

          v33 = *(v20 - 1);
          v32 = v20 - 1;
          v34 = v33 + 8;
          if (v33 != -8)
          {
            bzero(v32, v34);
          }

          free(v32);
        }

        X509_VERIFY_PARAM_free(v[1].cert_crl);
        v36 = *&v[-1].references;
        p_references = &v[-1].references;
        v37 = v36 + 8;
        if (v36 != -8)
        {
          bzero(p_references, v37);
        }

        free(p_references);
      }
    }
  }
}

uint64_t X509_STORE_CTX_get_by_subject(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  if (pthread_rwlock_wrlock((a1 + 8)))
  {
LABEL_61:
    abort();
  }

  v8 = *a1;
  v34 = a2;
  if (a2 == 1)
  {
    v39 = &v32;
    v9 = &v33;
    v10 = &v39;
  }

  else
  {
    v38 = &v30;
    v9 = &v31;
    v10 = &v38;
  }

  v35 = v10;
  *v9 = a3;
  OPENSSL_sk_sort(v8, sk_X509_OBJECT_call_cmp_func);
  if (!v8)
  {
    goto LABEL_32;
  }

  if (*(v8 + 32))
  {
    v11 = *v8;
    if (*(v8 + 16))
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 >= 2;
    }

    if (!v12)
    {
      if (v11)
      {
        v13 = 0;
        while (1)
        {
          v14 = v13 + ((v11 - v13 - 1) >> 1);
          v15 = *(v8 + 32);
          v36 = *(*(v8 + 8) + 8 * v14);
          v37 = &v34;
          v16 = v15(&v37, &v36);
          if (v16 >= 1)
          {
            v13 = v14 + 1;
          }

          else if (v16 < 0)
          {
            v11 = v13 + ((v11 - v13 - 1) >> 1);
          }

          else
          {
            if (v11 - v13 == 1)
            {
              goto LABEL_29;
            }

            v11 = v14 + 1;
          }

          if (v13 >= v11)
          {
            goto LABEL_32;
          }
        }
      }

      goto LABEL_32;
    }

    v14 = 0;
    while (1)
    {
      v17 = *(v8 + 32);
      v36 = *(*(v8 + 8) + 8 * v14);
      v37 = &v34;
      if (!v17(&v37, &v36))
      {
        break;
      }

      if (++v14 >= *v8)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (!*v8)
    {
      goto LABEL_32;
    }

    v14 = 0;
    while (*(*(v8 + 8) + 8 * v14) != &v34)
    {
      if (*v8 == ++v14)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_29:
  if (v14 != -1 && *v8 > v14)
  {
    v18 = *(*(v8 + 8) + 8 * v14);
    goto LABEL_33;
  }

LABEL_32:
  v18 = 0;
LABEL_33:
  if (pthread_rwlock_unlock((a1 + 8)))
  {
    goto LABEL_61;
  }

  if (a2 == 2 || !v18)
  {
    v19 = *(a1 + 208);
    if (v19)
    {
      v20 = 0;
      while (v20 < *v19)
      {
        v21 = *(v19[1] + 8 * v20);
        if (*v21)
        {
          v22 = *(*v21 + 24);
          if (v22)
          {
            if (v22() > 0)
            {
              v23 = v39;
              *a4 = v39;
              v24 = v40;
              *(a4 + 8) = v40;
              if (v23 != 2)
              {
                goto LABEL_46;
              }

              goto LABEL_54;
            }

            v19 = *(a1 + 208);
          }
        }

        ++v20;
        if (!v19)
        {
          break;
        }
      }
    }

    if (!v18)
    {
      return 0;
    }
  }

  v23 = *v18;
  *a4 = *v18;
  v24 = *(v18 + 1);
  *(a4 + 8) = v24;
  if (v23 != 2)
  {
LABEL_46:
    if (v23 == 1)
    {
      v25 = atomic_load((v24 + 24));
      if (v25 != -1)
      {
        v26 = v25;
        result = 1;
        do
        {
          atomic_compare_exchange_strong((v24 + 24), &v26, v25 + 1);
          if (v26 == v25)
          {
            break;
          }

          v25 = v26;
        }

        while (v26 != -1);
        return result;
      }
    }

    return 1;
  }

LABEL_54:
  v28 = atomic_load((v24 + 24));
  if (v28 == -1)
  {
    return 1;
  }

  v29 = v28;
  result = 1;
  do
  {
    atomic_compare_exchange_strong((v24 + 24), &v29, v28 + 1);
    if (v29 == v28)
    {
      break;
    }

    v28 = v29;
  }

  while (v29 != -1);
  return result;
}

uint64_t x509_store_add(x509_store_st *a1, unsigned int *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x18uLL, 0xB4E622C9uLL);
  if (!v6)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v7 = v6;
  *v6 = 16;
  v6[1] = 0;
  v8 = (v6 + 1);
  v6[2] = 0;
  if (a3)
  {
    *(v6 + 2) = 2;
    v6[2] = a2;
    v9 = atomic_load(a2 + 6);
    if (v9 != -1)
    {
      for (i = v9; i != -1; v9 = i)
      {
        atomic_compare_exchange_strong(a2 + 6, &i, v9 + 1);
        if (i == v9)
        {
          break;
        }
      }
    }
  }

  else
  {
    *(v6 + 2) = 1;
    v6[2] = a2;
    v12 = atomic_load(a2 + 6);
    if (v12 != -1)
    {
      for (j = v12; j != -1; v12 = j)
      {
        atomic_compare_exchange_strong(a2 + 6, &j, v12 + 1);
        if (j == v12)
        {
          break;
        }
      }
    }
  }

  if (pthread_rwlock_wrlock(&a1->objs))
  {
    goto LABEL_102;
  }

  v14 = *&a1->cache;
  OPENSSL_sk_sort(*&a1->cache, sk_X509_OBJECT_call_cmp_func);
  if (!v14)
  {
    goto LABEL_78;
  }

  if (!v14[4])
  {
    if (!*v14)
    {
      goto LABEL_78;
    }

    v18 = 0;
    while (*(v14[1] + 8 * v18) != v8)
    {
      if (*v14 == ++v18)
      {
        goto LABEL_78;
      }
    }

LABEL_40:
    v22 = *v14;
    if ((*v8 - 1) > 1)
    {
      if (v22 <= v18 || !*(v14[1] + 8 * v18))
      {
        goto LABEL_78;
      }

LABEL_43:
      if (!pthread_rwlock_unlock(&a1->objs))
      {
        v23 = 1;
        goto LABEL_96;
      }

LABEL_102:
      abort();
    }

    while (1)
    {
      if (v18 >= v22)
      {
        goto LABEL_78;
      }

      v37 = *(v14[1] + 8 * v18);
      v38 = *v37;
      if (*v37 != *v8)
      {
        goto LABEL_78;
      }

      if (v38 == 2)
      {
        v39 = X509_CRL_cmp(v37[1], v7[2]);
      }

      else
      {
        if (v38 != 1)
        {
          goto LABEL_64;
        }

        v39 = X509_subject_name_cmp(v37[1], v7[2]);
      }

      if (v39)
      {
        goto LABEL_78;
      }

      v38 = *v8;
LABEL_64:
      if (v38 == 2)
      {
        v24 = v37[1];
        v25 = v7[2];
        v26 = *(&v24[1].signature + 4);
        v27 = *(&v25[1].signature + 4);
        v28 = *(&v24[1].references + 1);
        v29 = *(&v25[1].references + 1);
        v30 = *(&v24[2].crl + 4);
        v31 = *(&v25[2].crl + 4);
        v32 = *(&v24[2].sig_alg + 4);
        v33 = *(&v25[2].sig_alg + 4);
        if (v26 == v27 && v28 == v29 && v30 == v31 && v32 == v33)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v38 != 1)
        {
          goto LABEL_43;
        }

        v40 = v37[1];
        v41 = v7[2];
        x509v3_cache_extensions(v40);
        x509v3_cache_extensions(v41);
        v42 = v40[3].sig_alg == v41[3].sig_alg && v40[3].signature == v41[3].signature;
        v43 = v42 && *&v40[3].references == *&v41[3].references;
        if (v43 && v40[4].crl == v41[4].crl)
        {
          goto LABEL_43;
        }
      }

      ++v18;
      v22 = *v14;
    }
  }

  v15 = *v14;
  if (*(v14 + 4))
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 >= 2;
  }

  if (v16)
  {
    v18 = 0;
    while (1)
    {
      v21 = v14[4];
      v54 = *(v14[1] + 8 * v18);
      pval = v8;
      if (!v21(&pval, &v54))
      {
        goto LABEL_40;
      }

      if (++v18 >= *v14)
      {
        goto LABEL_78;
      }
    }
  }

  if (v15)
  {
    v17 = 0;
    do
    {
      v18 = v17 + ((v15 - v17 - 1) >> 1);
      v19 = v14[4];
      v54 = *(v14[1] + 8 * v18);
      pval = v8;
      v20 = v19(&pval, &v54);
      if (v20 >= 1)
      {
        v17 = v18 + 1;
      }

      else if (v20 < 0)
      {
        v15 = v17 + ((v15 - v17 - 1) >> 1);
      }

      else
      {
        if (v15 - v17 == 1)
        {
          goto LABEL_40;
        }

        v15 = v18 + 1;
      }
    }

    while (v17 < v15);
  }

LABEL_78:
  v45 = *&a1->cache;
  v46 = **&a1->cache;
  if (v46 >= 0x7FFFFFFF)
  {
    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
    v47 = 1;
    goto LABEL_93;
  }

  v48 = v45[3];
  if (v48 <= v46 + 1)
  {
    v51 = OPENSSL_realloc(v45[1], 16 * v48);
    if (!v51)
    {
      v47 = 1;
      goto LABEL_93;
    }

    v45[1] = v51;
    v45[3] = 2 * v48;
    v49 = *v45;
    v52 = *v45 - v46;
    if (*v45 <= v46)
    {
      v50 = &v51[v49];
    }

    else
    {
      if (8 * v52)
      {
        memmove(&v51[v46 + 1], &v51[v46], 8 * v52);
        v49 = *v45;
        v51 = v45[1];
      }

      v50 = &v51[v46];
    }
  }

  else
  {
    v49 = **&a1->cache;
    v50 = (v45[1] + 8 * v46);
  }

  *v50 = v8;
  v16 = __CFADD__(v49, 1);
  v53 = v49 + 1;
  v47 = v16;
  *v45 = v53;
  *(v45 + 4) = 0;
LABEL_93:
  if (pthread_rwlock_unlock(&a1->objs))
  {
    goto LABEL_102;
  }

  if (!v47)
  {
    return 1;
  }

  v23 = 0;
LABEL_96:
  if (*v8 == 2)
  {
    pval = v7[2];
    ASN1_item_ex_free(&pval, &X509_CRL_INFO_it.sname);
  }

  else if (*v8 == 1)
  {
    X509_free(v7[2]);
  }

  free(v7);
  return v23;
}

char *X509_STORE_CTX_get1_certs(uint64_t **a1, uint64_t a2)
{
  v4 = OPENSSL_sk_new_null();
  if (!v4)
  {
    return v4;
  }

  v29 = 0;
  if (pthread_rwlock_wrlock((*a1 + 1)))
  {
    goto LABEL_49;
  }

  v5 = x509_object_idx_cnt(**a1, 1, a2, &v29);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_4:
    if (v29 < 1)
    {
LABEL_23:
      if (!pthread_rwlock_unlock((*a1 + 1)))
      {
        return v4;
      }
    }

    else
    {
      v6 = 0;
      v7 = v5;
      while (1)
      {
        v8 = *v4;
        if (*v4 >= 0x7FFFFFFFuLL)
        {
          break;
        }

        v9 = *(*(*(**a1 + 8) + 8 * v7) + 8);
        v10 = *(v4 + 3);
        if (v10 <= v8 + 1)
        {
          v11 = OPENSSL_realloc(*(v4 + 1), 16 * v10);
          if (!v11)
          {
            goto LABEL_31;
          }

          *(v4 + 1) = v11;
          *(v4 + 3) = 2 * v10;
          v12 = *v4;
          v13 = *v4 - v8;
          if (*v4 <= v8)
          {
            v11[v12] = v9;
            *(v4 + 4) = 0;
            *v4 = v12 + 1;
            if (v12 == -1)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (8 * v13)
            {
              memmove(&v11[v8 + 1], &v11[v8], 8 * v13);
              v12 = *v4;
              v11 = *(v4 + 1);
            }

            v11[v8] = v9;
            *(v4 + 4) = 0;
            *v4 = v12 + 1;
            if (v12 == -1)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          *(*(v4 + 1) + 8 * v8) = v9;
          *(v4 + 4) = 0;
          *v4 = v8 + 1;
          if (v8 == -1)
          {
            goto LABEL_31;
          }
        }

        v14 = atomic_load((v9 + 24));
        if (v14 != -1)
        {
          for (i = v14; i != -1; v14 = i)
          {
            atomic_compare_exchange_strong((v9 + 24), &i, v14 + 1);
            if (i == v14)
            {
              break;
            }
          }
        }

        ++v6;
        ++v7;
        if (v6 >= v29)
        {
          goto LABEL_23;
        }
      }

      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_31:
      if (!pthread_rwlock_unlock((*a1 + 1)))
      {
        v16 = *v4;
        if (*v4)
        {
          v17 = 0;
          do
          {
            v18 = *(*(v4 + 1) + 8 * v17);
            if (v18)
            {
              X509_free(v18);
              v16 = *v4;
            }

            ++v17;
          }

          while (v17 < v16);
        }

        goto LABEL_41;
      }
    }

LABEL_49:
    abort();
  }

  if (pthread_rwlock_unlock((*a1 + 1)))
  {
    goto LABEL_49;
  }

  if (X509_STORE_CTX_get_by_subject(*a1, 1, a2, &v27))
  {
    if (v27 == 2)
    {
      pval = a;
      ASN1_item_ex_free(&pval, &X509_CRL_INFO_it.sname);
    }

    else if (v27 == 1)
    {
      X509_free(a);
    }

    if (pthread_rwlock_wrlock((*a1 + 1)))
    {
      goto LABEL_49;
    }

    v5 = x509_object_idx_cnt(**a1, 1, a2, &v29);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    if (pthread_rwlock_unlock((*a1 + 1)))
    {
      goto LABEL_49;
    }
  }

LABEL_41:
  v19 = *(v4 + 1);
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

  v24 = *(v4 - 1);
  v23 = v4 - 8;
  v25 = v24 + 8;
  if (v24 != -8)
  {
    bzero(v23, v25);
  }

  free(v23);
  return 0;
}

uint64_t x509_object_idx_cnt(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  v26[43] = *MEMORY[0x277D85DE8];
  v22 = a2;
  v26[0] = &v19;
  if (a2 == 1)
  {
    v6 = &v21;
  }

  else
  {
    v6 = &v20;
  }

  b = v26;
  *v6 = a3;
  OPENSSL_sk_sort(a1, sk_X509_OBJECT_call_cmp_func);
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 32))
  {
    v7 = *a1;
    if (!*(a1 + 16) && v7 >= 2)
    {
      v8 = 0;
      while (1)
      {
        v9 = *(a1 + 32);
        v24 = *(*(a1 + 8) + 8 * v8);
        v25 = &v22;
        if (!v9(&v25, &v24))
        {
          break;
        }

        if (++v8 >= *a1)
        {
          return 0xFFFFFFFFLL;
        }
      }

      goto LABEL_28;
    }

    if (v7)
    {
      v10 = 0;
      do
      {
        v8 = v10 + ((v7 - v10 - 1) >> 1);
        v11 = *(a1 + 32);
        v24 = *(*(a1 + 8) + 8 * v8);
        v25 = &v22;
        v12 = v11(&v25, &v24);
        if (v12 >= 1)
        {
          v10 = v8 + 1;
        }

        else if (v12 < 0)
        {
          v7 = v10 + ((v7 - v10 - 1) >> 1);
        }

        else
        {
          if (v7 - v10 == 1)
          {
            goto LABEL_28;
          }

          v7 = v8 + 1;
        }
      }

      while (v10 < v7);
    }

    return 0xFFFFFFFFLL;
  }

  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  while (*(*(a1 + 8) + 8 * v8) != &v22)
  {
    if (*a1 == ++v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

LABEL_28:
  if (a4)
  {
    *a4 = 1;
    v14 = v8 + 1;
    v15 = *a1;
    if ((v8 + 1) < *a1)
    {
      v16 = 1;
      do
      {
        v17 = *(*(a1 + 8) + 8 * v14);
        v18 = *v17;
        if (*v17 != v22)
        {
          return v8;
        }

        if (v18 == 2)
        {
          if (X509_CRL_cmp(v17[1], b))
          {
            return v8;
          }
        }

        else
        {
          if (v18 != 1)
          {
            goto LABEL_33;
          }

          if (X509_subject_name_cmp(v17[1], b))
          {
            return v8;
          }
        }

        v16 = *a4;
        v15 = *a1;
LABEL_33:
        *a4 = ++v16;
        ++v14;
      }

      while (v14 < v15);
    }
  }

  return v8;
}

char *X509_STORE_CTX_get1_crls(uint64_t **a1, uint64_t a2)
{
  v4 = OPENSSL_sk_new_null();
  if (!v4)
  {
    return v4;
  }

  v29 = 0;
  if (X509_STORE_CTX_get_by_subject(*a1, 2, a2, &v27))
  {
    if (v27 == 2)
    {
      pval = a;
      ASN1_item_ex_free(&pval, &X509_CRL_INFO_it.sname);
    }

    else if (v27 == 1)
    {
      X509_free(a);
    }

    if (pthread_rwlock_wrlock((*a1 + 1)))
    {
      goto LABEL_45;
    }

    v5 = x509_object_idx_cnt(**a1, 2, a2, &v29);
    if ((v5 & 0x80000000) == 0)
    {
      if (v29 < 1)
      {
LABEL_26:
        if (!pthread_rwlock_unlock((*a1 + 1)))
        {
          return v4;
        }
      }

      else
      {
        v6 = 0;
        v7 = v5;
        while (1)
        {
          v8 = *(*(*(**a1 + 8) + 8 * v7) + 8);
          v9 = atomic_load((v8 + 24));
          if (v9 != -1)
          {
            for (i = v9; i != -1; v9 = i)
            {
              atomic_compare_exchange_strong((v8 + 24), &i, v9 + 1);
              if (i == v9)
              {
                break;
              }
            }
          }

          v11 = *v4;
          if (*v4 >= 0x7FFFFFFFuLL)
          {
            break;
          }

          v12 = *(v4 + 3);
          if (v12 <= v11 + 1)
          {
            v15 = OPENSSL_realloc(*(v4 + 1), 16 * v12);
            if (!v15)
            {
              goto LABEL_31;
            }

            *(v4 + 1) = v15;
            *(v4 + 3) = 2 * v12;
            v13 = *v4;
            v16 = *v4 - v11;
            if (*v4 <= v11)
            {
              v14 = &v15[v13];
            }

            else
            {
              if (8 * v16)
              {
                memmove(&v15[v11 + 1], &v15[v11], 8 * v16);
                v13 = *v4;
                v15 = *(v4 + 1);
              }

              v14 = &v15[v11];
            }
          }

          else
          {
            v13 = *v4;
            v14 = (*(v4 + 1) + 8 * v11);
          }

          *v14 = v8;
          *(v4 + 4) = 0;
          *v4 = v13 + 1;
          if (v13 == -1)
          {
            goto LABEL_31;
          }

          ++v6;
          ++v7;
          if (v6 >= v29)
          {
            goto LABEL_26;
          }
        }

        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_31:
        if (!pthread_rwlock_unlock((*a1 + 1)))
        {
          pval = v8;
          ASN1_item_ex_free(&pval, &X509_CRL_INFO_it.sname);
          v17 = *v4;
          if (*v4)
          {
            v18 = 0;
            do
            {
              if (*(*(v4 + 1) + 8 * v18))
              {
                pval = *(*(v4 + 1) + 8 * v18);
                ASN1_item_ex_free(&pval, &X509_CRL_INFO_it.sname);
                v17 = *v4;
              }

              ++v18;
            }

            while (v18 < v17);
          }

          goto LABEL_37;
        }
      }

LABEL_45:
      abort();
    }

    if (pthread_rwlock_unlock((*a1 + 1)))
    {
      goto LABEL_45;
    }
  }

LABEL_37:
  v19 = *(v4 + 1);
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

  v24 = *(v4 - 1);
  v23 = v4 - 8;
  v25 = v24 + 8;
  if (v24 != -8)
  {
    bzero(v23, v25);
  }

  free(v23);
  return 0;
}

int X509_STORE_CTX_get1_issuer(X509 **issuer, X509_STORE_CTX *ctx, X509 *x)
{
  pval[43] = *MEMORY[0x277D85DE8];
  v6 = x->cert_info->issuer;
  result = X509_STORE_CTX_get_by_subject(ctx->ctx, 1, v6, &v29);
  if (result)
  {
    v8 = v30;
    if (x509_check_issued_with_callback(ctx, x, v30))
    {
      *issuer = v8;
      return 1;
    }

    if (v29 == 2)
    {
      pval[0] = v8;
      ASN1_item_ex_free(pval, &X509_CRL_INFO_it.sname);
    }

    else if (v29 == 1)
    {
      X509_free(v8);
    }

    if (pthread_rwlock_wrlock(&ctx->ctx->objs))
    {
      goto LABEL_56;
    }

    v9 = *&ctx->ctx->cache;
    v33 = 1;
    v34 = pval;
    pval[0] = &v31;
    v32 = v6;
    OPENSSL_sk_sort(v9, sk_X509_OBJECT_call_cmp_func);
    if (!v9)
    {
      goto LABEL_34;
    }

    if (*(v9 + 32))
    {
      v10 = *v9;
      if (*(v9 + 16))
      {
        v11 = 0;
      }

      else
      {
        v11 = v10 >= 2;
      }

      if (!v11)
      {
        if (v10)
        {
          v12 = 0;
          while (1)
          {
            v13 = v12 + ((v10 - v12 - 1) >> 1);
            v14 = *(v9 + 32);
            v35 = *(*(v9 + 8) + 8 * v13);
            v36 = &v33;
            v15 = v14(&v36, &v35);
            if (v15 >= 1)
            {
              v12 = v13 + 1;
            }

            else if (v15 < 0)
            {
              v10 = v12 + ((v10 - v12 - 1) >> 1);
            }

            else
            {
              if (v10 - v12 == 1)
              {
                goto LABEL_33;
              }

              v10 = v13 + 1;
            }

            if (v12 >= v10)
            {
              goto LABEL_34;
            }
          }
        }

        goto LABEL_34;
      }

      v13 = 0;
      while (1)
      {
        v16 = *(v9 + 32);
        v35 = *(*(v9 + 8) + 8 * v13);
        v36 = &v33;
        if (!v16(&v36, &v35))
        {
          break;
        }

        if (++v13 >= *v9)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (!*v9)
      {
LABEL_34:
        v17 = 0;
        goto LABEL_35;
      }

      v13 = 0;
      while (*(*(v9 + 8) + 8 * v13) != &v33)
      {
        if (*v9 == ++v13)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_33:
    if (v13 == -1)
    {
      goto LABEL_34;
    }

    v21 = v13;
    do
    {
      v22 = *&ctx->ctx->cache;
      if (!v22)
      {
        goto LABEL_34;
      }

      if (v21 >= *v22)
      {
        goto LABEL_34;
      }

      v23 = *(v22[1] + 8 * v21);
      if (*v23 != 1 || X509_NAME_cmp(v6, *(**(v23 + 8) + 40)))
      {
        goto LABEL_34;
      }

      ++v21;
    }

    while (!x509_check_issued_with_callback(ctx, x, *(v23 + 8)));
    v24 = *(v23 + 8);
    *issuer = v24;
    if (*v23 == 2)
    {
      v27 = atomic_load(&v24->valid);
      if (v27 != -1)
      {
        for (i = v27; i != -1; v27 = i)
        {
          atomic_compare_exchange_strong(&v24->valid, &i, v27 + 1);
          v17 = 1;
          if (i == v27)
          {
            break;
          }
        }

LABEL_35:
        v18 = ctx->ctx;
        v19 = v17;
        v20 = pthread_rwlock_unlock(&v18->objs);
        result = v19;
        if (!v20)
        {
          return result;
        }

LABEL_56:
        abort();
      }
    }

    else if (*v23 == 1)
    {
      v25 = atomic_load(&v24->valid);
      if (v25 != -1)
      {
        for (j = v25; j != -1; v25 = j)
        {
          atomic_compare_exchange_strong(&v24->valid, &j, v25 + 1);
          v17 = 1;
          if (j == v25)
          {
            break;
          }
        }

        goto LABEL_35;
      }
    }

    v17 = 1;
    goto LABEL_35;
  }

  return result;
}

char *__cdecl X509_NAME_oneline(X509_NAME *a, char *buf, int size)
{
  v3 = buf;
  v62 = *MEMORY[0x277D85DE8];
  if (buf)
  {
    v4 = size;
    if (size < 1)
    {
      return 0;
    }

    if (a)
    {
      v5 = a;
      v6 = 0;
      goto LABEL_10;
    }

    if (size == 1)
    {
      goto LABEL_77;
    }

    *buf = 78;
    v43 = buf + 1;
    if (size == 2)
    {
LABEL_117:
      *v43 = 0;
      return v3;
    }

    buf[1] = 79;
    if (size == 3)
    {
      buf[2] = 0;
      return v3;
    }

    buf[2] = 32;
    if (size == 4)
    {
      buf[3] = 0;
      return v3;
    }

    buf[3] = 88;
    if (size == 5)
    {
      buf[4] = 0;
      return v3;
    }

    buf[4] = 53;
    if (size == 6)
    {
      buf[5] = 0;
      return v3;
    }

    buf[5] = 48;
    if (size == 7)
    {
      buf[6] = 0;
      return v3;
    }

    buf[6] = 57;
    if (size == 8)
    {
      buf[7] = 0;
      return v3;
    }

    buf[7] = 95;
    if (size == 9)
    {
      buf[8] = 0;
      return v3;
    }

    buf[8] = 78;
    if (size == 10)
    {
      buf[9] = 0;
      return v3;
    }

    buf[9] = 65;
    if (size == 11)
    {
      buf[10] = 0;
      return v3;
    }

    buf[10] = 77;
    if (size == 12)
    {
      v43 = buf + 11;
      goto LABEL_117;
    }

LABEL_79:
    v3[11] = 69;
    v3[12] = 0;
    return v3;
  }

  v5 = a;
  v7 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v7)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v8 = v7;
  *v7 = 24;
  v7[1] = 0;
  v6 = v7 + 1;
  v7[2] = 0;
  v7[3] = 0;
  v9 = OPENSSL_realloc(0, 0x10CuLL);
  if (!v9)
  {
LABEL_83:
    v48 = v6[1];
    if (v48)
    {
LABEL_84:
      v50 = *(v48 - 8);
      v49 = (v48 - 8);
      v51 = v50 + 8;
      if (v50 != -8)
      {
        bzero(v49, v51);
      }

      free(v49);
    }

    goto LABEL_87;
  }

  v8[2] = v9;
  v8[3] = 268;
  v10 = v8[1];
  if (v10 <= 0xC7)
  {
    bzero(v9 + v10, 200 - v10);
    v9 = v8[2];
  }

  v4 = 200;
  *v6 = 200;
  *v9 = 0;
  if (!v5)
  {
    v3 = v8[2];
    free(v8);
    qmemcpy(v3, "NO X509_NAM", 11);
    goto LABEL_79;
  }

LABEL_10:
  v58 = v3;
  entries = v5->entries;
  if (!v5->entries)
  {
    v13 = 0;
LABEL_71:
    if (v6)
    {
      v45 = *(v6 - 1);
      v44 = v6 - 1;
      v3 = v44[2];
      v46 = v45 + 8;
      if (v45 != -8)
      {
        bzero(v44, v46);
      }

      free(v44);
      if (v13)
      {
        return v3;
      }
    }

    else
    {
LABEL_76:
      v3 = v58;
      if (v13)
      {
        return v3;
      }
    }

LABEL_77:
    *v3 = 0;
    return v3;
  }

  v12 = v5;
  v59 = 0;
  v13 = 0;
  while (1)
  {
    if (v13 >= *&entries->num)
    {
      goto LABEL_71;
    }

    v14 = entries->data[v13];
    v15 = OBJ_obj2nid(*v14);
    if (!v15 || (v16 = OBJ_nid2obj(v15)) == 0 || (sn = v16->sn) == 0)
    {
      sn = bufa;
      OBJ_obj2txt(bufa, 80, *v14, 0);
    }

    v18 = strlen(sn);
    v19 = *(v14 + 1);
    v20 = *v19;
    if (v20 > 0x100000)
    {
      v47 = 79;
      goto LABEL_82;
    }

    v21 = v18;
    v22 = v19[1];
    v23 = *(v19 + 1);
    if ((v20 & 3) != 0 || v22 != 27)
    {
      goto LABEL_35;
    }

    v61 = 0uLL;
    if (v20 < 1)
    {
      goto LABEL_42;
    }

    if (v20 >= 8 && (v20 - 5) > 0xFFFFFFFFFFFFFFFBLL)
    {
      if (v20 < 0x10)
      {
        while (1)
        {
          v23 += 8;
        }
      }

      while (1)
      {
        v23 += 16;
      }
    }

    for (i = 0; i != v20; ++i)
    {
      if (*(v23 + i))
      {
        *(&v61 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))) = 1;
      }
    }

    if (!(DWORD1(v61) | v61 | DWORD2(v61)))
    {
LABEL_42:
      v61 = xmmword_273B8E9C0;
      if (v20 < 1)
      {
LABEL_43:
        v29 = 0;
        goto LABEL_44;
      }
    }

    else
    {
LABEL_35:
      *&v27 = 0x100000001;
      *(&v27 + 1) = 0x100000001;
      v61 = v27;
      if (v20 < 1)
      {
        goto LABEL_43;
      }
    }

    v28 = 0;
    v29 = 0;
    do
    {
      if (*(&v61 & 0xFFFFFFFFFFFFFFF3 | (4 * (v28 & 3))))
      {
        if (*(v23 + v28) - 127 >= 0xFFFFFFA1)
        {
          ++v29;
        }

        else
        {
          v29 += 4;
        }
      }

      ++v28;
    }

    while (v20 != v28);
LABEL_44:
    v30 = v14;
    v31 = v59 + v18 + v29 + 2;
    if (v31 > 0x100000)
    {
      v47 = 115;
LABEL_82:
      ERR_put_error(11, 0, 135, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x509_obj.cc", v47);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_83;
    }

    if (!v6)
    {
      v34 = v58;
      if (v31 >= v4)
      {
        goto LABEL_76;
      }

      goto LABEL_56;
    }

    v32 = (v59 + v18 + v29 + 3);
    if (v6[2] < v32)
    {
      break;
    }

LABEL_51:
    if (v32 > *v6)
    {
      bzero((v6[1] + *v6), v32 - *v6);
    }

    *v6 = v32;
    if (v31 == -1)
    {
      goto LABEL_83;
    }

    v34 = v6[1];
LABEL_56:
    v35 = v6;
    v36 = &v34[v59];
    *v36 = 47;
    v37 = v36 + 1;
    if (v21)
    {
      memcpy(v37, sn, v21);
    }

    v38 = &v37[v21];
    *v38 = 61;
    v39 = v38 + 1;
    if (v20 < 1)
    {
      v6 = v35;
    }

    else
    {
      v40 = 0;
      v41 = *(*(v30 + 1) + 8);
      v6 = v35;
      do
      {
        if (*(&v61 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))))
        {
          v42 = *(v41 + v40);
          if ((v42 - 127) > 0xFFFFFFA0)
          {
            *v39++ = v42;
          }

          else
          {
            *v39 = 30812;
            v39[2] = X509_NAME_oneline::hex[v42 >> 4];
            v39[3] = X509_NAME_oneline::hex[v42 & 0xF];
            v39 += 4;
          }
        }

        ++v40;
      }

      while (v20 != v40);
    }

    *v39 = 0;
    ++v13;
    entries = v12->entries;
    v59 = v31;
    if (!v12->entries)
    {
      goto LABEL_71;
    }
  }

  if (v32 <= 0xFFFFFFFC)
  {
    if (v31 < -1)
    {
      v56 = 50;
      goto LABEL_101;
    }

    v57 = v18;
    v33 = OPENSSL_realloc(v6[1], (2 * (((v32 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v33)
    {
      goto LABEL_83;
    }

    v6[1] = v33;
    v6[2] = (2 * (((v32 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
    v21 = v57;
    goto LABEL_51;
  }

  v56 = 44;
LABEL_101:
  ERR_put_error(7, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/buf/buf.cc", v56);
  v48 = v6[1];
  if (v48)
  {
    goto LABEL_84;
  }

LABEL_87:
  v53 = *(v6 - 1);
  v52 = v6 - 1;
  v54 = v53 + 8;
  if (v53 != -8)
  {
    bzero(v52, v54);
  }

  free(v52);
  return 0;
}

int X509_check_trust(X509 *x, int id, int flags)
{
  if (id > 2)
  {
    if (id > 4)
    {
      if (id == 5)
      {
        v10 = &unk_2882A7178;
      }

      else
      {
        if (id != 8)
        {
          goto LABEL_25;
        }

        v10 = &unk_2882A7190;
      }
    }

    else if (id == 3)
    {
      v10 = &unk_2882A7148;
    }

    else
    {
      v10 = &unk_2882A7160;
    }

LABEL_22:
    check_trust = v10->check_trust;

    return check_trust(v10, x);
  }

  if (id > 0)
  {
    if (id == 1)
    {
      v10 = &trstandard;
    }

    else
    {
      v10 = &unk_2882A7130;
    }

    goto LABEL_22;
  }

  if (id == -1)
  {
    return 1;
  }

  if (!id)
  {
    v5 = *&x->sha1_hash[8];
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v7 = v5[1];
        if (!v7 || v6 >= *v7)
        {
          break;
        }

        v8 = OBJ_obj2nid(*(v7[1] + 8 * v6++));
        if (v8 == 910)
        {
          return 2;
        }
      }

      v16 = 0;
      while (1)
      {
        v17 = *v5;
        if (!*v5 || v16 >= *v17)
        {
          break;
        }

        v18 = OBJ_obj2nid(*(v17[1] + 8 * v16++));
        if (v18 == 910)
        {
          return 1;
        }
      }
    }

    v19 = x509v3_cache_extensions(x);
    result = 3;
    if (v19)
    {
      if ((x->ex_data.dummy & 0x2000) != 0)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    return result;
  }

LABEL_25:
  v12 = *&x->sha1_hash[8];
  if (v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = v12[1];
      if (!v14 || v13 >= *v14)
      {
        break;
      }

      v15 = OBJ_obj2nid(*(v14[1] + 8 * v13++));
      if (v15 == id)
      {
        return 2;
      }
    }

    v20 = 0;
    while (1)
    {
      v21 = *v12;
      if (!*v12 || v20 >= *v21)
      {
        break;
      }

      v22 = OBJ_obj2nid(*(v21[1] + 8 * v20++));
      if (v22 == id)
      {
        return 1;
      }
    }
  }

  return 3;
}

uint64_t trust_compat(const x509_trust_st *a1, x509_st *a2)
{
  v3 = x509v3_cache_extensions(a2);
  result = 3;
  if (v3)
  {
    if ((a2->ex_data.dummy & 0x2000) != 0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t trust_1oidany(const x509_trust_st *a1, x509_st *a2)
{
  v3 = *&a2->sha1_hash[8];
  if (v3 && (*v3 || v3[1]))
  {
    v4 = 0;
    name = a1->name;
    while (1)
    {
      v6 = v3[1];
      if (!v6 || v4 >= *v6)
      {
        break;
      }

      v7 = OBJ_obj2nid(*(v6[1] + 8 * v4++));
      if (v7 == name)
      {
        return 2;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = *v3;
      if (!*v3 || v10 >= *v11)
      {
        break;
      }

      v12 = OBJ_obj2nid(*(v11[1] + 8 * v10++));
      if (v12 == name)
      {
        return 1;
      }
    }

    return 3;
  }

  else
  {
    v9 = x509v3_cache_extensions(a2);
    result = 3;
    if (v9)
    {
      if ((a2->ex_data.dummy & 0x2000) != 0)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

int X509_verify_cert(X509_STORE_CTX *ctx)
{
  if (!*&ctx->current_method)
  {
    v2 = 122;
    v3 = 143;
    goto LABEL_7;
  }

  if (ctx->verify_cb)
  {
    v2 = 66;
    v3 = 151;
LABEL_7:
    ERR_put_error(11, 0, v2, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x509_vfy.cc", v3);
    result = 0;
    v6 = 65;
    goto LABEL_8;
  }

  crls = ctx->crls;
  if ((BYTE1(crls->data) & 0x30) != 0)
  {
    v2 = 66;
    v3 = 161;
    goto LABEL_7;
  }

  v7 = OPENSSL_sk_new_null();
  ctx->verify_cb = v7;
  if (!v7)
  {
LABEL_21:
    v16 = 0;
    HIDWORD(ctx->get_issuer) = 17;
    goto LABEL_22;
  }

  v8 = *v7;
  if (*v7 >= 0x7FFFFFFFuLL)
  {
    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
    goto LABEL_21;
  }

  v9 = *&ctx->current_method;
  v10 = *(v7 + 3);
  if (v10 <= v8 + 1)
  {
    v13 = v7;
    v14 = OPENSSL_realloc(*(v7 + 1), 16 * v10);
    if (!v14)
    {
      goto LABEL_21;
    }

    v7 = v13;
    *(v13 + 1) = v14;
    *(v13 + 3) = 2 * v10;
    v11 = *v13;
    v15 = *v13 - v8;
    if (*v13 <= v8)
    {
      v12 = &v14[v11];
    }

    else
    {
      if (8 * v15)
      {
        memmove(&v14[v8 + 1], &v14[v8], 8 * v15);
        v7 = v13;
        v11 = *v13;
        v14 = *(v13 + 1);
      }

      v12 = &v14[v8];
    }
  }

  else
  {
    v11 = *v7;
    v12 = (*(v7 + 1) + 8 * v8);
  }

  *v12 = v9;
  *(v7 + 4) = 0;
  *v7 = v11 + 1;
  if (v11 == -1)
  {
    goto LABEL_21;
  }

  v17 = (*&ctx->current_method + 24);
  v18 = atomic_load(v17);
  if (v18 != -1)
  {
    for (i = v18; i != -1; v18 = i)
    {
      atomic_compare_exchange_strong(v17, &i, v18 + 1);
      if (i == v18)
      {
        break;
      }
    }
  }

  LODWORD(ctx->verify) = 1;
  cert = ctx->cert;
  if (cert)
  {
    v21 = OPENSSL_sk_dup(cert);
    if (!v21)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = 0;
  }

  verify_cb = ctx->verify_cb;
  if (verify_cb)
  {
    v23 = *verify_cb;
  }

  else
  {
    LODWORD(v23) = 0;
  }

  comp = crls->comp;
  if (comp <= 2147483644)
  {
    v25 = comp + 2;
  }

  else
  {
    v25 = 0x7FFFFFFF;
  }

  v133 = v25;
  if (v25 <= v23)
  {
LABEL_98:
    v28 = v23;
    goto LABEL_99;
  }

  if (verify_cb && (v26 = v23 - 1, *verify_cb > v26))
  {
    v27 = *(*(verify_cb + 1) + 8 * v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = v23;
LABEL_45:
  v29 = v27;
  if (!x509v3_cache_extensions(v27))
  {
    v16 = 0;
    v115 = 41;
    goto LABEL_310;
  }

  if ((*(v27 + 49) & 0x20) != 0)
  {
    goto LABEL_99;
  }

  if ((BYTE1(ctx->crls->data) & 0x80) != 0)
  {
    param = ctx->param;
    if (param)
    {
      name = param->name;
      if (!param->name)
      {
        goto LABEL_48;
      }

      v39 = 0;
      while (1)
      {
        v40 = name <= v39 ? 0 : *(param->check_time + 8 * v39);
        if (X509_NAME_cmp(v40->cert_info->subject, *(*v29 + 24)))
        {
          v41 = 29;
        }

        else if (x509v3_cache_extensions(v40) && x509v3_cache_extensions(v29))
        {
          v42 = *(v29 + 72);
          if (!v42 || (v41 = X509_check_akid(v40, v42)) == 0)
          {
            if ((v40->ex_data.dummy & 2) == 0 || (*(&v40->ex_data.dummy + 1) & 4) != 0)
            {
              break;
            }

            v41 = 32;
          }
        }

        else
        {
          v41 = 1;
        }

        if (ctx->crls->data)
        {
          HIDWORD(ctx->get_issuer) = v41;
          ctx->check_issued = v29;
          v43 = (ctx->other_ctx)(0, ctx);
          if (v43 >= 2)
          {
            goto LABEL_328;
          }

          if (v43)
          {
            break;
          }
        }

        ++v39;
        name = param->name;
        if (v39 >= param->name)
        {
          goto LABEL_48;
        }
      }

      v122 = atomic_load(&v40->valid);
      if (v122 != -1)
      {
        for (j = v122; j != -1; v122 = j)
        {
          atomic_compare_exchange_strong(&v40->valid, &j, v122 + 1);
          if (j == v122)
          {
            break;
          }
        }
      }
    }

    else
    {
      issuer = 0;
      if (!X509_STORE_CTX_get1_issuer(&issuer, ctx, v27))
      {
        goto LABEL_48;
      }

      v40 = issuer;
      if (!issuer)
      {
        goto LABEL_48;
      }
    }

    X509_free(v40);
    goto LABEL_99;
  }

LABEL_48:
  if (!v21)
  {
    goto LABEL_98;
  }

  v30 = *v21;
  if (*v21)
  {
    for (k = 0; k < *v21; ++k)
    {
      if (v30 <= k)
      {
        v27 = 0;
        if (X509_NAME_cmp(*(MEMORY[0] + 40), *(*v29 + 24)))
        {
LABEL_54:
          v32 = 29;
          goto LABEL_64;
        }
      }

      else
      {
        v27 = *(v21[1] + 8 * k);
        if (X509_NAME_cmp(*(*v27 + 40), *(*v29 + 24)))
        {
          goto LABEL_54;
        }
      }

      if (x509v3_cache_extensions(v27) && x509v3_cache_extensions(v29))
      {
        v33 = *(v29 + 72);
        if (!v33 || (v32 = X509_check_akid(v27, v33)) == 0)
        {
          if ((*(v27 + 48) & 2) == 0 || (*(v27 + 52) & 4) != 0)
          {
            goto LABEL_67;
          }

          v32 = 32;
        }
      }

      else
      {
        v32 = 1;
      }

LABEL_64:
      if (ctx->crls->data)
      {
        HIDWORD(ctx->get_issuer) = v32;
        ctx->check_issued = v29;
        v34 = (ctx->other_ctx)(0, ctx);
        if (v34 >= 2)
        {
          goto LABEL_328;
        }

        if (v34)
        {
LABEL_67:
          if (OPENSSL_sk_push(ctx->verify_cb, v27))
          {
            v35 = atomic_load((v27 + 24));
            if (v35 != -1)
            {
              for (m = v35; m != -1; v35 = m)
              {
                atomic_compare_exchange_strong((v27 + 24), &m, v35 + 1);
                if (m == v35)
                {
                  break;
                }
              }
            }

            OPENSSL_sk_delete_ptr(v21, v27);
            ++LODWORD(ctx->verify);
            if (++v28 == v133)
            {
              v28 = v133;
              break;
            }

            goto LABEL_45;
          }

          v16 = 0;
          HIDWORD(ctx->get_issuer) = 17;
          v124 = v21[1];
          if (v124)
          {
LABEL_313:
            v126 = *(v124 - 8);
            v125 = (v124 - 8);
            v127 = v126 + 8;
            if (v126 != -8)
            {
              bzero(v125, v127);
            }

            free(v125);
          }

LABEL_316:
          v129 = *(v21 - 1);
          v128 = v21 - 1;
          v130 = v129 + 8;
          if (v129 != -8)
          {
            bzero(v128, v130);
          }

          free(v128);
LABEL_22:
          X509_free(v16);
          if (HIDWORD(ctx->get_issuer))
          {
            return 0;
          }

          result = 0;
          v6 = 1;
LABEL_8:
          HIDWORD(ctx->get_issuer) = v6;
          return result;
        }
      }

      v30 = *v21;
    }
  }

LABEL_99:
  v132 = 0;
  v16 = 0;
  v44 = ctx->verify_cb;
  LODWORD(v45) = v28;
LABEL_100:
  if (v44)
  {
    v46 = *v44 - 1;
    v47 = v46;
    if (*v44 <= v46)
    {
      v48 = 0;
    }

    else
    {
      v48 = *(*(v44 + 1) + 8 * v46);
    }
  }

  else
  {
    v48 = 0;
    v46 = -1;
    v47 = -1;
  }

  if (!x509v3_cache_extensions(v48))
  {
LABEL_287:
    v115 = 41;
    goto LABEL_310;
  }

  if ((*(v48 + 49) & 0x20) == 0)
  {
    v49 = v48;
    goto LABEL_143;
  }

  v50 = ctx->verify_cb;
  if (!v50 || !*v50)
  {
    v16 = 0;
    goto LABEL_138;
  }

  v51 = *v50 - 1;
  if (*v50 != 1)
  {
    v16 = *(*(v50 + 1) + 8 * v51);
    *v50 = v51;
LABEL_138:
    --LODWORD(ctx->verify);
    LODWORD(v45) = v45 - 1;
    if (v50 && (v60 = v28 - 2, *v50 > v60))
    {
      v49 = *(*(v50 + 1) + 8 * v60);
    }

    else
    {
      v49 = 0;
    }

    --v28;
    goto LABEL_143;
  }

  v134 = v28;
  v52 = ctx->param;
  if (v52)
  {
    v53 = v52->name;
    if (v52->name)
    {
      v54 = 0;
      while (1)
      {
        v49 = v53 <= v54 ? 0 : *(v52->check_time + 8 * v54);
        if (X509_NAME_cmp(v49->cert_info->subject, *(*v48 + 24)))
        {
          v55 = 29;
        }

        else if (x509v3_cache_extensions(v49) && x509v3_cache_extensions(v48))
        {
          v56 = *(v48 + 72);
          if (!v56 || (v55 = X509_check_akid(v49, v56)) == 0)
          {
            if ((v49->ex_data.dummy & 2) == 0 || (*(&v49->ex_data.dummy + 1) & 4) != 0)
            {
              break;
            }

            v55 = 32;
          }
        }

        else
        {
          v55 = 1;
        }

        if (ctx->crls->data)
        {
          HIDWORD(ctx->get_issuer) = v55;
          ctx->check_issued = v48;
          v57 = (ctx->other_ctx)(0, ctx);
          if (v57 >= 2)
          {
            goto LABEL_328;
          }

          if (v57)
          {
            break;
          }
        }

        ++v54;
        v53 = v52->name;
        if (v54 >= v52->name)
        {
          goto LABEL_276;
        }
      }

      v58 = atomic_load(&v49->valid);
      if (v58 != -1)
      {
        for (n = v58; n != -1; v58 = n)
        {
          atomic_compare_exchange_strong(&v49->valid, &n, v58 + 1);
          if (n == v58)
          {
            break;
          }
        }
      }

      goto LABEL_271;
    }

LABEL_276:
    v49 = 0;
    goto LABEL_277;
  }

  issuer = 0;
  if (!X509_STORE_CTX_get1_issuer(&issuer, ctx, v48))
  {
    goto LABEL_276;
  }

  v49 = issuer;
  if (!issuer)
  {
LABEL_277:
    X509_free(v49);
    ctx->check_issued = v48;
    LODWORD(ctx->get_issuer) = v46;
    HIDWORD(ctx->get_issuer) = 18;
    v112 = (ctx->other_ctx)(0, ctx);
    if (v112 >= 2)
    {
      goto LABEL_328;
    }

    if (!v112)
    {
      goto LABEL_311;
    }

    v132 = 1;
    v49 = v48;
    v28 = v134;
    goto LABEL_143;
  }

LABEL_271:
  if (X509_cmp(v48, v49))
  {
    goto LABEL_277;
  }

  X509_free(v48);
  v111 = ctx->verify_cb;
  if (v111 && *v111 > v47)
  {
    *(*(v111 + 1) + 8 * v47) = v49;
  }

  LODWORD(ctx->verify) = 0;
  v28 = v134;
LABEL_143:
  v135 = v28;
  if (v28 >= v133)
  {
    goto LABEL_184;
  }

  while (1)
  {
    if (!x509v3_cache_extensions(v49))
    {
      goto LABEL_287;
    }

    if ((v49->ex_data.dummy & 0x2000) != 0)
    {
      goto LABEL_184;
    }

    v61 = ctx->param;
    if (!v61)
    {
      break;
    }

    v62 = v61->name;
    if (!v61->name)
    {
      goto LABEL_184;
    }

    v63 = 0;
    while (1)
    {
      if (v62 <= v63)
      {
        v64 = 0;
        if (X509_NAME_cmp(*(MEMORY[0] + 40), v49->cert_info->issuer))
        {
LABEL_152:
          v65 = 29;
          goto LABEL_162;
        }
      }

      else
      {
        v64 = *(v61->check_time + 8 * v63);
        if (X509_NAME_cmp(v64->cert_info->subject, v49->cert_info->issuer))
        {
          goto LABEL_152;
        }
      }

      if (x509v3_cache_extensions(v64) && x509v3_cache_extensions(v49))
      {
        ex_flags = v49->ex_flags;
        if (!ex_flags || (v65 = X509_check_akid(v64, ex_flags)) == 0)
        {
          if ((v64->ex_data.dummy & 2) == 0 || (*(&v64->ex_data.dummy + 1) & 4) != 0)
          {
            break;
          }

          v65 = 32;
        }
      }

      else
      {
        v65 = 1;
      }

LABEL_162:
      if (ctx->crls->data)
      {
        HIDWORD(ctx->get_issuer) = v65;
        ctx->check_issued = v49;
        v67 = (ctx->other_ctx)(0, ctx);
        if (v67 >= 2)
        {
          goto LABEL_328;
        }

        if (v67)
        {
          break;
        }
      }

      ++v63;
      v62 = v61->name;
      if (v63 >= v61->name)
      {
        goto LABEL_184;
      }
    }

    v68 = atomic_load(&v64->valid);
    if (v68 != -1)
    {
      for (ii = v68; ii != -1; v68 = ii)
      {
        atomic_compare_exchange_strong(&v64->valid, &ii, v68 + 1);
        if (ii == v68)
        {
          break;
        }
      }
    }

LABEL_172:
    v70 = ctx->verify_cb;
    v71 = *v70;
    if (*v70 >= 0x7FFFFFFFuLL)
    {
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_308:
      X509_free(v64);
LABEL_309:
      v115 = 17;
LABEL_310:
      HIDWORD(ctx->get_issuer) = v115;
LABEL_311:
      if (v21)
      {
        v124 = v21[1];
        if (v124)
        {
          goto LABEL_313;
        }

        goto LABEL_316;
      }

      goto LABEL_22;
    }

    v72 = *(v70 + 3);
    if (v72 > v71 + 1)
    {
      v73 = *v70;
      v74 = (*(v70 + 1) + 8 * v71);
      goto LABEL_181;
    }

    v75 = OPENSSL_realloc(*(v70 + 1), 16 * v72);
    if (!v75)
    {
      goto LABEL_308;
    }

    *(v70 + 1) = v75;
    *(v70 + 3) = 2 * v72;
    v73 = *v70;
    v76 = *v70 - v71;
    if (*v70 <= v71)
    {
      v74 = &v75[v73];
    }

    else
    {
      if (8 * v76)
      {
        memmove(&v75[v71 + 1], &v75[v71], 8 * v76);
        v73 = *v70;
        v75 = *(v70 + 1);
      }

      v74 = &v75[v71];
    }

LABEL_181:
    *v74 = v64;
    *(v70 + 4) = 0;
    *v70 = v73 + 1;
    if (v73 == -1)
    {
      goto LABEL_308;
    }

    v49 = v64;
    if (++v135 == v133)
    {
      v135 = v133;
      v49 = v64;
      goto LABEL_184;
    }
  }

  issuer = 0;
  if (X509_STORE_CTX_get1_issuer(&issuer, ctx, v49))
  {
    v64 = issuer;
    if (issuer)
    {
      goto LABEL_172;
    }
  }

LABEL_184:
  v77 = ctx->verify_cb;
  if (!v77)
  {
LABEL_193:
    if ((BYTE2(ctx->crls->data) & 8) == 0)
    {
      goto LABEL_224;
    }

    if ((ctx->verify & 0x80000000) == 0)
    {
LABEL_195:
      v83 = 0;
      v84 = X509_STORE_CTX_get1_certs(ctx, *(MEMORY[0] + 40));
      if (!v84)
      {
        goto LABEL_224;
      }

      goto LABEL_196;
    }

    goto LABEL_285;
  }

  verify_low = SLODWORD(ctx->verify);
  while (1)
  {
    v79 = *v77;
    if (verify_low >= *v77)
    {
      break;
    }

    v80 = *(*(v77 + 1) + 8 * verify_low);
    v81 = X509_check_trust(v80, ctx->crls->num_alloc, 0);
    if (v81 == 2)
    {
      ctx->check_issued = v80;
      LODWORD(ctx->get_issuer) = verify_low;
      HIDWORD(ctx->get_issuer) = 28;
      v82 = (ctx->other_ctx)(0, ctx);
      if (v82 >= 2)
      {
        goto LABEL_328;
      }

      if (!v82)
      {
        goto LABEL_311;
      }
    }

    else if (v81 == 1)
    {
      goto LABEL_285;
    }

    ++verify_low;
    v77 = ctx->verify_cb;
    if (!v77)
    {
      goto LABEL_193;
    }
  }

  if ((BYTE2(ctx->crls->data) & 8) == 0)
  {
    goto LABEL_224;
  }

  if (SLODWORD(ctx->verify) < v79)
  {
LABEL_285:
    v114 = v132;
    if (!check_chain_extensions(ctx))
    {
      goto LABEL_311;
    }

    goto LABEL_295;
  }

  if (!v79)
  {
    goto LABEL_195;
  }

  v83 = **(v77 + 1);
  v84 = X509_STORE_CTX_get1_certs(ctx, *(*v83 + 40));
  if (!v84)
  {
    goto LABEL_224;
  }

LABEL_196:
  v85 = v84;
  v86 = *v84;
  if (!*v84)
  {
    goto LABEL_223;
  }

  v87 = 0;
  do
  {
    if (v86 <= v87)
    {
      v88 = 0;
    }

    else
    {
      v88 = *(v85[1] + 8 * v87);
    }

    x509v3_cache_extensions(v88);
    x509v3_cache_extensions(v83);
    v91 = *(v88 + 104) == *(v83 + 104) && *(v88 + 112) == *(v83 + 112) && *(v88 + 120) == *(v83 + 120) && *(v88 + 128) == *(v83 + 128);
    v86 = *v85;
    if (v91)
    {
      break;
    }

    ++v87;
  }

  while (v87 < v86);
  if (v87 >= v86)
  {
LABEL_223:
    OPENSSL_sk_pop_free_ex(v85, sk_X509_call_free_func, X509_free);
    goto LABEL_224;
  }

  v92 = atomic_load((v88 + 24));
  if (v92 == -1)
  {
    OPENSSL_sk_pop_free_ex(v85, sk_X509_call_free_func, X509_free);
LABEL_323:
    v131 = ctx->verify_cb;
    if (v131 && *v131)
    {
      **(v131 + 1) = v88;
    }

    X509_free(v83);
    LODWORD(ctx->verify) = 0;
    v114 = v132;
    if (!check_chain_extensions(ctx))
    {
      goto LABEL_311;
    }
  }

  else
  {
    do
    {
      v93 = v92;
      atomic_compare_exchange_strong((v88 + 24), &v93, v92 + 1);
      if (v93 == v92)
      {
        break;
      }

      v92 = v93;
    }

    while (v93 != -1);
    OPENSSL_sk_pop_free_ex(v85, sk_X509_call_free_func, X509_free);
    if (v88)
    {
      goto LABEL_323;
    }

LABEL_224:
    v94 = (*(&ctx->crls->data + 1) & 0x1080) != 0 || v45 < 2;
    if (!v94)
    {
      v95 = v45;
      v45 = (v45 - 1);
      while (1)
      {
        v96 = ctx->verify_cb;
        if (v96 && *v96 > (v95 - 2))
        {
          v97 = *(*(v96 + 1) + 8 * (v95 - 2));
          v98 = ctx->param;
          if (!v98)
          {
            goto LABEL_233;
          }
        }

        else
        {
          v97 = 0;
          v98 = ctx->param;
          if (!v98)
          {
LABEL_233:
            issuer = 0;
            if (X509_STORE_CTX_get1_issuer(&issuer, ctx, v97))
            {
              v99 = issuer;
              if (issuer)
              {
                goto LABEL_259;
              }
            }

            goto LABEL_229;
          }
        }

        v100 = v98->name;
        if (v98->name)
        {
          break;
        }

LABEL_229:
        --v95;
        v94 = v45-- < 2;
        if (v94)
        {
          goto LABEL_280;
        }
      }

      v101 = 0;
      while (1)
      {
        if (v100 <= v101)
        {
          v99 = 0;
          if (X509_NAME_cmp(*(MEMORY[0] + 40), v97->cert_info->issuer))
          {
LABEL_242:
            v102 = 29;
            goto LABEL_252;
          }
        }

        else
        {
          v99 = *(v98->check_time + 8 * v101);
          if (X509_NAME_cmp(v99->cert_info->subject, v97->cert_info->issuer))
          {
            goto LABEL_242;
          }
        }

        if (x509v3_cache_extensions(v99) && x509v3_cache_extensions(v97))
        {
          v103 = v97->ex_flags;
          if (!v103 || (v102 = X509_check_akid(v99, v103)) == 0)
          {
            if ((v99->ex_data.dummy & 2) == 0 || (*(&v99->ex_data.dummy + 1) & 4) != 0)
            {
              goto LABEL_255;
            }

            v102 = 32;
          }
        }

        else
        {
          v102 = 1;
        }

LABEL_252:
        if (ctx->crls->data)
        {
          HIDWORD(ctx->get_issuer) = v102;
          ctx->check_issued = v97;
          v104 = (ctx->other_ctx)(0, ctx);
          if (v104 >= 2)
          {
            goto LABEL_328;
          }

          if (v104)
          {
LABEL_255:
            v105 = atomic_load(&v99->valid);
            if (v105 != -1)
            {
              for (jj = v105; jj != -1; v105 = jj)
              {
                atomic_compare_exchange_strong(&v99->valid, &jj, v105 + 1);
                if (jj == v105)
                {
                  break;
                }
              }
            }

LABEL_259:
            v28 = v135;
            X509_free(v99);
            if (v135 >= v95)
            {
              v107 = v135 + 1;
              do
              {
                while (1)
                {
                  v108 = ctx->verify_cb;
                  if (v108)
                  {
                    if (*v108)
                    {
                      break;
                    }
                  }

                  X509_free(0);
                  if (--v107 <= v95)
                  {
                    goto LABEL_265;
                  }
                }

                v109 = *v108 - 1;
                v110 = *(*(v108 + 1) + 8 * v109);
                *v108 = v109;
                X509_free(v110);
                --v107;
              }

              while (v107 > v95);
LABEL_265:
              v28 = v95 - 1;
            }

            v44 = ctx->verify_cb;
            if (v44)
            {
              LODWORD(ctx->verify) = *v44;
            }

            else
            {
              LODWORD(ctx->verify) = 0;
            }

            goto LABEL_100;
          }
        }

        ++v101;
        v100 = v98->name;
        if (v101 >= v98->name)
        {
          goto LABEL_229;
        }
      }
    }

LABEL_280:
    if (!v132)
    {
      if (v16 && x509_check_issued_with_callback(ctx, v49, v16))
      {
        if (!OPENSSL_sk_push(ctx->verify_cb, v16))
        {
          goto LABEL_309;
        }

        v113 = v135;
        LODWORD(ctx->verify) = v135 + 1;
        ctx->check_issued = v16;
        HIDWORD(ctx->get_issuer) = 19;
        v16 = 0;
      }

      else
      {
        if (SLODWORD(ctx->verify) >= v135)
        {
          v116 = 20;
        }

        else
        {
          v116 = 2;
        }

        HIDWORD(ctx->get_issuer) = v116;
        ctx->check_issued = v49;
        v113 = v135 - 1;
      }

      LODWORD(ctx->get_issuer) = v113;
      v117 = (ctx->other_ctx)(0, ctx);
      if (v117 >= 2)
      {
LABEL_328:
        abort();
      }

      if (!v117)
      {
        goto LABEL_311;
      }
    }

    v114 = 1;
    if (!check_chain_extensions(ctx))
    {
      goto LABEL_311;
    }
  }

LABEL_295:
  if (!check_id(ctx) || !check_revocation(ctx) || !internal_verify(ctx) || !check_name_constraints(ctx) || !v114 && !check_policy(ctx, v118, v119, v120, v121))
  {
    goto LABEL_311;
  }

  ASN1_STRING_free(v21);
  X509_free(v16);
  return 1;
}

uint64_t x509_check_issued_with_callback(uint64_t a1, void **a2, _BYTE *a3)
{
  if (X509_NAME_cmp(*(*a3 + 40), (*a2)[3]))
  {
    v6 = 29;
    if ((*(*(a1 + 32) + 8) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (x509v3_cache_extensions(a3) && x509v3_cache_extensions(a2))
  {
    v7 = a2[9];
    if (!v7 || (v6 = X509_check_akid(a3, v7)) == 0)
    {
      if ((a3[48] & 2) == 0 || (a3[52] & 4) != 0)
      {
        return 1;
      }

      v6 = 32;
    }

    if ((*(*(a1 + 32) + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v6 = 1;
    if ((*(*(a1 + 32) + 8) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_14:
  *(a1 + 76) = v6;
  *(a1 + 80) = a2;
  result = (*(a1 + 48))(0, a1);
  if (result >= 2)
  {
    abort();
  }

  return result;
}

uint64_t check_chain_extensions(x509_store_ctx_st *a1)
{
  if (SLODWORD(a1->verify) < 1)
  {
    return 1;
  }

  crls = a1->crls;
  sorted = crls->sorted;
  verify_cb = a1->verify_cb;
  if (verify_cb && *verify_cb)
  {
    v5 = **(verify_cb + 1);
    if ((crls->data & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v6 = crls->sorted;
    if ((*(v5 + 49) & 2) != 0)
    {
      a1->get_issuer = 0x2200000000;
      a1->check_issued = v5;
      result = (a1->other_ctx)(0, a1);
      if (result > 1)
      {
        goto LABEL_152;
      }

      if (!result)
      {
        return result;
      }

      v6 = a1->crls->sorted;
    }

    if (v6 < 1)
    {
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  v5 = 0;
  if ((crls->data & 0x10) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (sorted < 1)
  {
    goto LABEL_32;
  }

LABEL_13:
  if (x509v3_cache_extensions(v5))
  {
    if (sorted > 4)
    {
      if (sorted <= 6)
      {
        if (sorted == 5)
        {
          if (off_2882A7040(&unk_2882A7038, v5, 0) == 1)
          {
            goto LABEL_32;
          }
        }

        else if (off_2882A7058(&unk_2882A7050, v5, 0) == 1)
        {
          goto LABEL_32;
        }
      }

      else if (sorted == 7)
      {
        if (off_2882A7070(&unk_2882A7068, v5) == 1)
        {
          goto LABEL_32;
        }
      }

      else if (sorted == 8)
      {
        if (off_2882A7088(&unk_2882A7080, v5) == 1)
        {
          goto LABEL_32;
        }
      }

      else if (sorted == 9 && off_2882A70A0(&unk_2882A7098, v5, 0))
      {
        goto LABEL_32;
      }
    }

    else if (sorted <= 1)
    {
      if (sorted == -1 || sorted == 1 && off_2882A6FE0(&xstandard, v5, 0))
      {
        goto LABEL_32;
      }
    }

    else if (sorted == 2)
    {
      if (off_2882A6FF8(&unk_2882A6FF0, v5, 0))
      {
        goto LABEL_32;
      }
    }

    else if (sorted == 3)
    {
      if (off_2882A7010(&unk_2882A7008, v5, 0) == 1)
      {
        goto LABEL_32;
      }
    }

    else if (off_2882A7028(&unk_2882A7020, v5, 0))
    {
      goto LABEL_32;
    }
  }

  a1->get_issuer = 0x1A00000000;
  a1->check_issued = v5;
  result = (a1->other_ctx)(0, a1);
  if (result > 1)
  {
    goto LABEL_152;
  }

  if (!result)
  {
    return result;
  }

LABEL_32:
  result = 1;
  if (SLODWORD(a1->verify) <= 1)
  {
    return result;
  }

  v8 = a1->verify_cb;
  if (v8 && *v8 >= 2uLL)
  {
    v9 = *(*(v8 + 1) + 8);
    v10 = *(v5 + 48);
    if ((a1->crls->data & 0x10) != 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v9 = 0;
    v10 = *(v5 + 48);
    if ((a1->crls->data & 0x10) != 0)
    {
      goto LABEL_41;
    }
  }

  if ((*(v9 + 49) & 2) != 0)
  {
    a1->get_issuer = 0x2200000001;
    a1->check_issued = v9;
    result = (a1->other_ctx)(0, a1);
    if (result > 1)
    {
      goto LABEL_152;
    }

    if (!result)
    {
      return result;
    }
  }

LABEL_41:
  if (!x509v3_cache_extensions(v9) || (v11 = *(v9 + 48), (v11 & 2) != 0) && (*(v9 + 52) & 4) == 0 || (~v11 & 0x2040) != 0 && (*(v9 + 48) & 0x11) != 0x11)
  {
    a1->get_issuer = 0x1800000001;
    a1->check_issued = v9;
    result = (a1->other_ctx)(0, a1);
    if (result > 1)
    {
      goto LABEL_152;
    }

    if (!result)
    {
      return result;
    }
  }

  if (a1->crls->sorted < 1)
  {
    goto LABEL_90;
  }

  if (x509v3_cache_extensions(v9))
  {
    v12 = &xstandard;
    if (sorted > 4)
    {
      if (sorted <= 6)
      {
        if (sorted == 5)
        {
          v12 = &unk_2882A7038;
        }

        else
        {
          v12 = &unk_2882A7050;
        }
      }

      else
      {
        switch(sorted)
        {
          case 7:
            v12 = &unk_2882A7068;
LABEL_87:
            if (v12[1](v12, v9, 1))
            {
              goto LABEL_90;
            }

            goto LABEL_88;
          case 8:
            v12 = &unk_2882A7080;
            break;
          case 9:
            v12 = &unk_2882A7098;
            break;
          default:
            goto LABEL_88;
        }
      }
    }

    else if (sorted <= 1)
    {
      if (sorted == -1)
      {
        goto LABEL_90;
      }

      if (sorted != 1)
      {
        goto LABEL_88;
      }
    }

    else if (sorted == 2)
    {
      v12 = &unk_2882A6FF0;
    }

    else if (sorted == 3)
    {
      v12 = &unk_2882A7008;
    }

    else
    {
      v12 = &unk_2882A7020;
    }

    v13 = *(v9 + 48);
    if ((v13 & 2) != 0 && (*(v9 + 52) & 4) == 0 || (~v13 & 0x2040) != 0 && (*(v9 + 48) & 0x11) != 0x11)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_88:
  a1->get_issuer = 0x1A00000001;
  a1->check_issued = v9;
  result = (a1->other_ctx)(0, a1);
  if (result > 1)
  {
LABEL_152:
    abort();
  }

  if (!result)
  {
    return result;
  }

LABEL_90:
  result = 1;
  if (SLODWORD(a1->verify) >= 3)
  {
    v14 = (((*(v9 + 48) >> 5) & 1) == 0) + (((v10 >> 5) & 1) == 0);
    for (i = 2; i < SLODWORD(a1->verify); ++i)
    {
      v17 = a1->verify_cb;
      if (v17 && *v17 > i)
      {
        v18 = *(*(v17 + 1) + 8 * i);
        if ((a1->crls->data & 0x10) != 0)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v18 = 0;
        if ((a1->crls->data & 0x10) != 0)
        {
          goto LABEL_103;
        }
      }

      if ((*(v18 + 49) & 2) != 0)
      {
        LODWORD(a1->get_issuer) = i;
        HIDWORD(a1->get_issuer) = 34;
        a1->check_issued = v18;
        result = (a1->other_ctx)(0, a1);
        if (result >= 2)
        {
          goto LABEL_152;
        }

        if (!result)
        {
          return result;
        }
      }

LABEL_103:
      if (!x509v3_cache_extensions(v18) || (v19 = *(v18 + 48), (v19 & 2) != 0) && (*(v18 + 52) & 4) == 0 || (~v19 & 0x2040) != 0 && (*(v18 + 48) & 0x11) != 0x11)
      {
        LODWORD(a1->get_issuer) = i;
        HIDWORD(a1->get_issuer) = 24;
        a1->check_issued = v18;
        result = (a1->other_ctx)(0, a1);
        if (result >= 2)
        {
          goto LABEL_152;
        }

        if (!result)
        {
          return result;
        }
      }

      if (a1->crls->sorted < 1)
      {
        goto LABEL_133;
      }

      if (x509v3_cache_extensions(v18))
      {
        if (sorted > 4)
        {
          if (sorted <= 6)
          {
            if (sorted == 5)
            {
              v20 = &unk_2882A7038;
              v21 = *(v18 + 48);
              if ((v21 & 2) == 0)
              {
                goto LABEL_128;
              }
            }

            else
            {
              v20 = &unk_2882A7050;
              v21 = *(v18 + 48);
              if ((v21 & 2) == 0)
              {
                goto LABEL_128;
              }
            }
          }

          else
          {
            switch(sorted)
            {
              case 7:
                if (off_2882A7070(&unk_2882A7068, v18) == 1)
                {
                  goto LABEL_133;
                }

                goto LABEL_131;
              case 8:
                v20 = &unk_2882A7080;
                v21 = *(v18 + 48);
                if ((v21 & 2) == 0)
                {
LABEL_128:
                  if (((~v21 & 0x2040) == 0 || (v21 & 0x11) == 0x11) && v20[1](v20, v18, 1))
                  {
                    goto LABEL_133;
                  }

                  goto LABEL_131;
                }

                break;
              case 9:
                v20 = &unk_2882A7098;
                v21 = *(v18 + 48);
                if ((v21 & 2) == 0)
                {
                  goto LABEL_128;
                }

                break;
              default:
                goto LABEL_131;
            }
          }
        }

        else if (sorted <= 1)
        {
          if (sorted == -1)
          {
            goto LABEL_133;
          }

          v20 = &xstandard;
          if (sorted != 1)
          {
            goto LABEL_131;
          }

          v21 = *(v18 + 48);
          if ((v21 & 2) == 0)
          {
            goto LABEL_128;
          }
        }

        else if (sorted == 2)
        {
          v20 = &unk_2882A6FF0;
          v21 = *(v18 + 48);
          if ((v21 & 2) == 0)
          {
            goto LABEL_128;
          }
        }

        else if (sorted == 3)
        {
          v20 = &unk_2882A7008;
          v21 = *(v18 + 48);
          if ((v21 & 2) == 0)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v20 = &unk_2882A7020;
          v21 = *(v18 + 48);
          if ((v21 & 2) == 0)
          {
            goto LABEL_128;
          }
        }

        if ((*(v18 + 52) & 4) != 0)
        {
          goto LABEL_128;
        }
      }

LABEL_131:
      LODWORD(a1->get_issuer) = i;
      HIDWORD(a1->get_issuer) = 26;
      a1->check_issued = v18;
      result = (a1->other_ctx)(0, a1);
      if (result >= 2)
      {
        goto LABEL_152;
      }

      if (!result)
      {
        return result;
      }

LABEL_133:
      v16 = *(v18 + 48);
      if ((v16 & 0x20) == 0)
      {
        v22 = *(v18 + 40);
        if (v22 != -1 && v22 + 1 < v14)
        {
          LODWORD(a1->get_issuer) = i;
          HIDWORD(a1->get_issuer) = 25;
          a1->check_issued = v18;
          result = (a1->other_ctx)(0, a1);
          if (result >= 2)
          {
            goto LABEL_152;
          }

          if (!result)
          {
            return result;
          }

          v16 = *(v18 + 48);
        }
      }

      result = 1;
      v14 += ((v16 >> 5) & 1) == 0;
    }
  }

  return result;
}

uint64_t check_id(x509_store_ctx_st *a1)
{
  crls = a1->crls;
  v3 = *&a1->current_method;
  if (LOBYTE(crls[2].comp))
  {
    a1->check_issued = v3;
    a1->get_issuer = 0x4100000000;
    result = (a1->other_ctx)(0, a1);
    if (result >= 2)
    {
      goto LABEL_29;
    }

    if (!result)
    {
      return result;
    }
  }

  data = crls[1].data;
  if (data)
  {
    v6 = *data;
    if (*data)
    {
      v7 = 0;
      do
      {
        v8 = crls[1].data;
        if (v8)
        {
          if (*v8 > v7)
          {
            v9 = *&v8[1][8 * v7];
            v10 = strlen(v9);
            if (v9)
            {
              v11 = v10;
              sorted = crls[1].sorted;
              if ((!v10 || !memchr(v9, 0, v10)) && do_x509_check(v3, v9, v11, sorted, 2, 0) > 0)
              {
                goto LABEL_17;
              }
            }
          }
        }

        ++v7;
      }

      while (v6 != v7);
      a1->check_issued = *&a1->current_method;
      a1->get_issuer = 0x3E00000000;
      result = (a1->other_ctx)(0, a1);
      if (result >= 2)
      {
        goto LABEL_29;
      }

      if (!result)
      {
        return result;
      }
    }
  }

LABEL_17:
  comp = crls[1].comp;
  if (comp)
  {
    if ((v14 = *&crls[2].num) != 0 && memchr(crls[1].comp, 0, *&crls[2].num) || do_x509_check(v3, comp, v14, 0, 1, 0) <= 0)
    {
      a1->check_issued = *&a1->current_method;
      a1->get_issuer = 0x3F00000000;
      result = (a1->other_ctx)(0, a1);
      if (result >= 2)
      {
        goto LABEL_29;
      }

      if (!result)
      {
        return result;
      }
    }
  }

  v15 = crls[2].data;
  if (v15 && X509_check_ip(v3, v15, *&crls[2].sorted) <= 0)
  {
    a1->check_issued = *&a1->current_method;
    a1->get_issuer = 0x4000000000;
    result = (a1->other_ctx)(0, a1);
    if (result < 2)
    {
      if (!result)
      {
        return result;
      }

      return 1;
    }

LABEL_29:
    abort();
  }

  return 1;
}

BOOL check_revocation(x509_store_ctx_st *a1)
{
  data = a1->crls->data;
  if ((data & 4) == 0)
  {
    return 1;
  }

  if ((data & 8) == 0)
  {
    v4 = 0;
LABEL_7:
    v8 = 0;
    v9 = 0;
    v10 = v4;
    v11 = (v4 + 1);
    while (1)
    {
      LODWORD(a1->get_issuer) = v8;
      verify_cb = a1->verify_cb;
      if (verify_cb && *verify_cb > v8)
      {
        v13 = *(*(verify_cb + 1) + 8 * v8);
      }

      else
      {
        v13 = 0;
      }

      a1->check_issued = v13;
      a1->get_crl = 0;
      LODWORD(a1->check_crl) = 0;
      *&v63 = 0;
      v60 = 0;
      v61 = 0;
      if (!get_crl_sk(a1, &v61, &v63, &v60, &a1->untrusted->num))
      {
        v17 = X509_STORE_CTX_get1_crls(a1, *(*v13 + 24));
        v14 = v61;
        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v61 == 0;
        }

        if (!v18)
        {
          goto LABEL_30;
        }

        v19 = v17;
        get_crl_sk(a1, &v61, &v63, &v60, v17);
        if (v19)
        {
          v20 = *v19;
          if (*v19)
          {
            v21 = 0;
            do
            {
              if (*(*(v19 + 1) + 8 * v21))
              {
                pval[0] = *(*(v19 + 1) + 8 * v21);
                ASN1_item_ex_free(pval, &X509_CRL_INFO_it.sname);
                v20 = *v19;
              }

              ++v21;
            }

            while (v21 < v20);
          }

          v28 = *(v19 + 1);
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

          v33 = *(v19 - 1);
          v32 = v19 - 8;
          v34 = v33 + 8;
          if (v33 != -8)
          {
            bzero(v32, v34);
          }

          free(v32);
        }
      }

      v14 = v61;
      if (!v61)
      {
        HIDWORD(a1->get_issuer) = 3;
        v15 = (a1->other_ctx)(0, a1);
        if (v15 >= 2)
        {
          goto LABEL_121;
        }

        v16 = v15;
        pval[0] = 0;
        ASN1_item_ex_free(pval, &X509_CRL_INFO_it.sname);
        a1->check_revocation = 0;
        if (!v16)
        {
          return v9;
        }

        goto LABEL_9;
      }

LABEL_30:
      v22 = v63;
      LODWORD(a1->check_crl) = v60;
      a1->check_revocation = v14;
      a1->get_crl = v22;
      v23 = a1->verify_cb;
      if (v23)
      {
        v24 = *v23 - 1;
        if (v22)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v24 = -1;
        if (v22)
        {
          goto LABEL_66;
        }
      }

      get_issuer_low = SLODWORD(a1->get_issuer);
      if (get_issuer_low >= v24)
      {
        if (v23 && *v23 > v24)
        {
          v22 = *(*(v23 + 1) + 8 * v24);
          if (!X509_NAME_cmp(*(*v22 + 40), *(*v22 + 24)))
          {
LABEL_42:
            if (!x509v3_cache_extensions(v22) || !x509v3_cache_extensions(v22))
            {
              v27 = 1;
              if (a1->crls->data)
              {
                goto LABEL_60;
              }

              goto LABEL_64;
            }

            v26 = *(v22 + 72);
            if (!v26 || (v27 = X509_check_akid(v22, v26)) == 0)
            {
              if ((*(v22 + 48) & 2) == 0 || (*(v22 + 52) & 4) != 0)
              {
                goto LABEL_66;
              }

              v27 = 32;
              if (a1->crls->data)
              {
LABEL_60:
                HIDWORD(a1->get_issuer) = v27;
                a1->check_issued = v22;
                v35 = (a1->other_ctx)(0, a1);
                if (v35 >= 2)
                {
                  goto LABEL_121;
                }

                if (v35)
                {
                  goto LABEL_66;
                }
              }

LABEL_64:
              HIDWORD(a1->get_issuer) = 33;
              v36 = (a1->other_ctx)(0, a1);
              if (v36 >= 2)
              {
                goto LABEL_121;
              }

              if (!v36)
              {
                goto LABEL_118;
              }

              goto LABEL_66;
            }

LABEL_59:
            if (a1->crls->data)
            {
              goto LABEL_60;
            }

            goto LABEL_64;
          }
        }

        else
        {
          v22 = 0;
          if (!X509_NAME_cmp(*(MEMORY[0] + 40), *(MEMORY[0] + 24)))
          {
            goto LABEL_42;
          }
        }

        v27 = 29;
        goto LABEL_59;
      }

      if (!v23)
      {
        goto LABEL_108;
      }

      if (*v23 <= (get_issuer_low + 1))
      {
        goto LABEL_108;
      }

      v22 = *(*(v23 + 1) + 8 * (get_issuer_low + 1));
      if (!v22)
      {
        goto LABEL_108;
      }

LABEL_66:
      if ((*(v22 + 48) & 2) != 0 && (*(v22 + 52) & 2) == 0)
      {
        HIDWORD(a1->get_issuer) = 35;
        v37 = (a1->other_ctx)(0, a1);
        if (v37 >= 2)
        {
          goto LABEL_121;
        }

        if (!v37)
        {
          goto LABEL_118;
        }
      }

      if ((a1->check_crl & 0x80) == 0)
      {
        HIDWORD(a1->get_issuer) = 44;
        v38 = (a1->other_ctx)(0, a1);
        if (v38 >= 2)
        {
          goto LABEL_121;
        }

        if (!v38)
        {
          goto LABEL_118;
        }
      }

      if ((*(v14 + 48) & 2) != 0)
      {
        HIDWORD(a1->get_issuer) = 41;
        v39 = (a1->other_ctx)(0, a1);
        if (v39 >= 2)
        {
          goto LABEL_121;
        }

        if (!v39)
        {
          goto LABEL_118;
        }
      }

      if ((a1->check_crl & 0x40) != 0)
      {
        goto LABEL_99;
      }

      crls = a1->crls;
      v41 = crls->data;
      if ((v41 & 0x200000) != 0)
      {
        goto LABEL_99;
      }

      a1->check_revocation = v14;
      if ((v41 & 2) != 0)
      {
        v42 = *&crls->num;
        v45 = *(*v14 + 24);
        pval[0] = 0;
        if (!ASN1_TIME_to_posix(v45, pval))
        {
LABEL_84:
          HIDWORD(a1->get_issuer) = 15;
          v44 = (a1->other_ctx)();
          if (v44 >= 2)
          {
            goto LABEL_121;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v42 = time(0);
        v43 = *(*v14 + 24);
        pval[0] = 0;
        if (!ASN1_TIME_to_posix(v43, pval))
        {
          goto LABEL_84;
        }
      }

      if (pval[0] <= v42)
      {
        goto LABEL_86;
      }

      HIDWORD(a1->get_issuer) = 11;
      v44 = (a1->other_ctx)(0, a1);
      if (v44 >= 2)
      {
        goto LABEL_121;
      }

LABEL_85:
      if (!v44)
      {
        goto LABEL_118;
      }

LABEL_86:
      v46 = *(*v14 + 32);
      if (v46)
      {
        v61 = 0;
        v47 = v46[1];
        if (v47 == 24)
        {
          v50 = *(v46 + 1);
          v51 = *v46;
          *&v63 = v50;
          *(&v63 + 1) = v51;
          if (!CBS_parse_rfc5280_time_internal(&v63, 1, 0, pval))
          {
            goto LABEL_95;
          }
        }

        else if (v47 != 23 || (v48 = *(v46 + 1), v49 = *v46, *&v63 = v48, *(&v63 + 1) = v49, !CBS_parse_rfc5280_time_internal(&v63, 0, 0, pval)))
        {
LABEL_95:
          v52 = 16;
LABEL_96:
          HIDWORD(a1->get_issuer) = v52;
          v53 = (a1->other_ctx)(0, a1);
          if (v53 >= 2)
          {
            goto LABEL_121;
          }

          if (!v53)
          {
            goto LABEL_118;
          }

          goto LABEL_98;
        }

        if (!OPENSSL_tm_to_posix(pval, &v61))
        {
          goto LABEL_95;
        }

        if (v61 <= v42)
        {
          v52 = 12;
          goto LABEL_96;
        }
      }

LABEL_98:
      a1->check_revocation = 0;
LABEL_99:
      v54 = *(*v22 + 48);
      if (!v54)
      {
        goto LABEL_105;
      }

      v55 = *(v54 + 16);
      if (!v55)
      {
        ERR_put_error(11, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x_pubkey.cc", 122);
LABEL_105:
        v56 = 6;
        goto LABEL_106;
      }

      if (X509_ALGOR_cmp(*(v14 + 1), *(*v14 + 8)))
      {
        ERR_put_error(11, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x_crl.cc", 277);
LABEL_103:
        v56 = 8;
LABEL_106:
        HIDWORD(a1->get_issuer) = v56;
        v57 = (a1->other_ctx)(0, a1);
        if (v57 >= 2)
        {
          goto LABEL_121;
        }

        if (!v57)
        {
          goto LABEL_118;
        }

        goto LABEL_108;
      }

      if (!ASN1_item_verify(&X509_CRL_INFO_it, *(v14 + 1), *(v14 + 2), *v14, v55))
      {
        goto LABEL_103;
      }

LABEL_108:
      if ((a1->crls->data & 0x10) == 0 && (*(v14 + 29) & 2) != 0)
      {
        HIDWORD(a1->get_issuer) = 36;
        v58 = (a1->other_ctx)(0, a1);
        if (v58 >= 2)
        {
          goto LABEL_121;
        }

        if (!v58)
        {
          goto LABEL_118;
        }
      }

      pval[0] = 0;
      if (crl_lookup(v14, pval, *(*v13 + 8), *(*v13 + 24)))
      {
        HIDWORD(a1->get_issuer) = 23;
        v59 = (a1->other_ctx)(0, a1);
        if (v59 >= 2)
        {
LABEL_121:
          abort();
        }

        if (!v59)
        {
LABEL_118:
          pval[0] = v14;
          ASN1_item_ex_free(pval, &X509_CRL_INFO_it.sname);
          a1->check_revocation = 0;
          return v9;
        }
      }

      pval[0] = v14;
      ASN1_item_ex_free(pval, &X509_CRL_INFO_it.sname);
      a1->check_revocation = 0;
LABEL_9:
      v9 = v8++ >= v10;
      if (v8 == v11)
      {
        return v9;
      }
    }
  }

  v5 = a1->verify_cb;
  if (v5)
  {
    v6 = *v5;
    v7 = __OFSUB__(v6, 1);
    v4 = v6 - 1;
    if (v4 < 0 == v7)
    {
      goto LABEL_7;
    }
  }

  return 1;
}

uint64_t internal_verify(x509_store_ctx_st *a1)
{
  verify_cb = a1->verify_cb;
  if (!verify_cb)
  {
    LODWORD(v3) = 0;
    v6 = 0;
    LODWORD(v4) = -1;
    LODWORD(a1->get_issuer) = -1;
    p_get_issuer = &a1->get_issuer;
    if (!X509_NAME_cmp(*(MEMORY[0] + 40), *(MEMORY[0] + 24)))
    {
      goto LABEL_4;
    }

LABEL_13:
    v8 = 29;
LABEL_14:
    data = a1->crls->data;
    if ((data & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v3 = *verify_cb;
  LODWORD(v4) = *verify_cb - 1;
  LODWORD(a1->get_issuer) = v4;
  p_get_issuer = &a1->get_issuer;
  if (v3 <= v4)
  {
    v6 = 0;
    if (!X509_NAME_cmp(*(MEMORY[0] + 40), *(MEMORY[0] + 24)))
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v6 = *(*(verify_cb + 1) + 8 * v4);
  if (X509_NAME_cmp(*(*v6 + 40), *(*v6 + 24)))
  {
    goto LABEL_13;
  }

LABEL_4:
  if (x509v3_cache_extensions(v6) && x509v3_cache_extensions(v6))
  {
    v7 = *(v6 + 9);
    if (!v7 || (v8 = X509_check_akid(v6, v7)) == 0)
    {
      if ((*(v6 + 48) & 2) == 0 || (*(v6 + 52) & 4) != 0)
      {
        goto LABEL_17;
      }

      v8 = 32;
      data = a1->crls->data;
      if (data)
      {
        goto LABEL_15;
      }

LABEL_21:
      if ((data & 0x80000) != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v8 = 1;
  data = a1->crls->data;
  if ((data & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  HIDWORD(a1->get_issuer) = v8;
  a1->check_issued = v6;
  v10 = (a1->other_ctx)(0, a1);
  if (v10 >= 2)
  {
    goto LABEL_76;
  }

  if (v10)
  {
LABEL_17:
    v11 = v6;
    goto LABEL_33;
  }

  if ((a1->crls->data & 0x80000) != 0)
  {
LABEL_26:
    v11 = v6;
    goto LABEL_46;
  }

LABEL_22:
  if (v3 > 1)
  {
    v4 = (v3 - 2);
    LODWORD(a1->get_issuer) = v4;
    v13 = a1->verify_cb;
    if (v13 && *v13 > v4)
    {
      goto LABEL_32;
    }

    v11 = 0;
    while (1)
    {
LABEL_33:
      if ((v4 & 0x80000000) != 0)
      {
        return 1;
      }

      *p_get_issuer = v4;
      if (v11 != v6 || (BYTE1(a1->crls->data) & 0x40) != 0)
      {
        break;
      }

LABEL_46:
      crls = a1->crls;
      v17 = crls->data;
      if ((v17 & 0x200000) != 0)
      {
        goto LABEL_68;
      }

      if ((v17 & 2) != 0)
      {
        v18 = *&crls->num;
      }

      else
      {
        v18 = time(0);
      }

      v19 = **(*v11 + 32);
      v26 = 0;
      v20 = ASN1_TIME_to_posix(v19, &v26);
      if (v20)
      {
        if (v26 <= v18)
        {
          goto LABEL_56;
        }

        HIDWORD(a1->get_issuer) = 9;
        a1->check_issued = v11;
        result = (a1->other_ctx)(0, a1);
        if (result >= 2)
        {
          goto LABEL_76;
        }
      }

      else
      {
        HIDWORD(a1->get_issuer) = 13;
        a1->check_issued = v11;
        result = (a1->other_ctx)(v20, a1);
        if (result >= 2)
        {
          goto LABEL_76;
        }
      }

      if (!result)
      {
        return result;
      }

LABEL_56:
      v21 = *(*(*v11 + 32) + 8);
      v26 = 0;
      v22 = ASN1_TIME_to_posix(v21, &v26);
      if (v22)
      {
        v23 = v26 <= v18;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      if (!v22)
      {
        HIDWORD(a1->get_issuer) = 14;
        a1->check_issued = v11;
        result = (a1->other_ctx)(v22, a1);
        if (result >= 2)
        {
          goto LABEL_76;
        }

        if (!result)
        {
          return result;
        }
      }

      if (v24)
      {
        HIDWORD(a1->get_issuer) = 10;
        a1->check_issued = v11;
        result = (a1->other_ctx)(0, a1);
        if (result >= 2)
        {
          goto LABEL_76;
        }

        if (!result)
        {
          return result;
        }
      }

LABEL_68:
      a1->check_issued = v11;
      result = (a1->other_ctx)(1, a1);
      if (result >= 2)
      {
        goto LABEL_76;
      }

      if (!result)
      {
        return result;
      }

      v25 = __OFSUB__(v4, 1);
      v4 = (v4 - 1);
      if (((v4 & 0x80000000) != 0) == v25)
      {
        v13 = a1->verify_cb;
        if (v13)
        {
          v6 = v11;
          v11 = 0;
          if (*v13 > v4)
          {
LABEL_32:
            v11 = *(*(v13 + 1) + 8 * v4);
          }
        }

        else
        {
          v6 = v11;
          v11 = 0;
        }
      }
    }

    if (v6)
    {
      v14 = *(*v6 + 48);
      if (v14)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          if (X509_ALGOR_cmp(*(v11 + 1), *(*v11 + 16)))
          {
            ERR_put_error(11, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x_all.cc", 33);
          }

          else if (ASN1_item_verify(&X509_CINF_it, *(v11 + 1), *(v11 + 2), *v11, v15))
          {
            goto LABEL_46;
          }

          HIDWORD(a1->get_issuer) = 7;
          a1->check_issued = v11;
          result = (a1->other_ctx)(0, a1);
          if (result >= 2)
          {
            goto LABEL_76;
          }

          goto LABEL_45;
        }

        ERR_put_error(11, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x_pubkey.cc", 122);
      }
    }

    HIDWORD(a1->get_issuer) = 6;
    a1->check_issued = v6;
    result = (a1->other_ctx)(0, a1);
    if (result >= 2)
    {
      goto LABEL_76;
    }

LABEL_45:
    if (!result)
    {
      return result;
    }

    goto LABEL_46;
  }

  HIDWORD(a1->get_issuer) = 21;
  a1->check_issued = v6;
  result = (a1->other_ctx)(0, a1);
  if (result >= 2)
  {
LABEL_76:
    abort();
  }

  return result;
}

uint64_t check_name_constraints(x509_store_ctx_st *a1)
{
  verify_cb = a1->verify_cb;
  if (!verify_cb)
  {
    return 1;
  }

  v2 = *verify_cb;
  if (*verify_cb < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = (v2 - 1);
  do
  {
    v6 = a1->verify_cb;
    if (v6 && *v6 > v5)
    {
      v7 = *(*(v6 + 1) + 8 * v5);
      if (v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = 0;
      if (v5)
      {
LABEL_10:
        if ((*(v7 + 48) & 0x20) != 0)
        {
          goto LABEL_4;
        }
      }
    }

    if (v6)
    {
      v8 = *v6;
      if (v2 < *v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = 0;
      while (v8 > v2)
      {
LABEL_18:
        v9 = *(*(*(a1->verify_cb + 1) + 8 * --v8) + 96);
        if (v9)
        {
          v10 = NAME_CONSTRAINTS_check(v7, v9);
          if (v10)
          {
            if (v10 == 17)
            {
LABEL_95:
              result = 0;
              HIDWORD(a1->get_issuer) = 17;
              return result;
            }

            LODWORD(a1->get_issuer) = v5;
            HIDWORD(a1->get_issuer) = v10;
            a1->check_issued = v7;
            result = (a1->other_ctx)(0, a1);
            if (result >= 2)
            {
              goto LABEL_96;
            }

            if (!result)
            {
              return result;
            }
          }

          v4 = 1;
        }
      }
    }

LABEL_4:
    LODWORD(v2) = v5;
    v36 = v5-- <= 0;
  }

  while (!v36);
  v12 = a1->verify_cb;
  if (!v12 || !*v12)
  {
    v13 = 0;
    if (v4)
    {
      goto LABEL_29;
    }

    return 1;
  }

  v13 = **(v12 + 1);
  if (!v4)
  {
    return 1;
  }

LABEL_29:
  if (*(v13 + 11))
  {
    return 1;
  }

  v14 = *(*v13 + 40);
  LODWORD(v15) = -1;
  while (2)
  {
    v16 = OBJ_nid2obj(13);
    if (v16)
    {
      if (!v14)
      {
        return 1;
      }

      v17 = v16;
      v18 = *v14;
      v19 = *v14 ? *v18 : 0;
      v21 = v15 < 0 ? -1 : v15;
      v15 = v21 + 1;
      if (v15 >= v19)
      {
        return 1;
      }

      v23 = *v18;
      v22 = v18[1];
      length = v16->length;
      if (length)
      {
        v25 = length;
        while (1)
        {
          v26 = **(v22 + 8 * v15);
          if (*(v26 + 20) == v25 && !memcmp(*(v26 + 24), v17->data, v25))
          {
            break;
          }

          if (v19 == ++v15)
          {
            return 1;
          }
        }
      }

      else
      {
        while (*(**(v22 + 8 * v15) + 20))
        {
          if (v19 == ++v15)
          {
            return 1;
          }
        }
      }

      if (v15 < 0 || v23 <= v15 || (v27 = *(v22 + 8 * v15)) == 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v27 + 8);
      }
    }

    else
    {
      v20 = 0;
      LODWORD(v15) = -2;
    }

    out = 0;
    v28 = ASN1_STRING_to_UTF8(&out, v20);
    if ((v28 & 0x80000000) != 0)
    {
      goto LABEL_95;
    }

    if (!v28)
    {
      v31 = 0;
      goto LABEL_87;
    }

    v29 = v28 - (out[v28 - 1] == 46);
    if (v29 < 2)
    {
      v30 = out;
      goto LABEL_63;
    }

    if (*out == 42)
    {
      v30 = out;
      if (out[1] == 46)
      {
        v30 = out + 2;
        v29 -= 2;
LABEL_63:
        if (!v29)
        {
          v31 = 0;
          goto LABEL_88;
        }
      }
    }

    else
    {
      v30 = out;
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    while (2)
    {
      v35 = v30[v33];
      v36 = (v35 - 58) > 0xFFFFFFF5 || (v35 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
      if (v36)
      {
LABEL_68:
        v32 = ++v33 >= v29;
        if (v29 == v33)
        {
          goto LABEL_86;
        }

        continue;
      }

      break;
    }

    if (v30[v33] > 0x39u)
    {
      if (v35 != 58 && v35 != 95)
      {
        goto LABEL_86;
      }

      goto LABEL_68;
    }

    if (v35 == 45)
    {
      if (v33 <= v34)
      {
        goto LABEL_86;
      }

      goto LABEL_68;
    }

    if (v35 == 46 && v33 < v29 - 1 && v33 > v34)
    {
      v34 = v33 + 1;
      goto LABEL_68;
    }

LABEL_86:
    v31 = v32;
LABEL_87:
    if (out)
    {
LABEL_88:
      v40 = out - 8;
      v39 = *(out - 1);
      if (v39 != -8)
      {
        bzero(out - 8, v39 + 8);
      }

      free(v40);
    }

    if (!v31)
    {
      continue;
    }

    break;
  }

  a1->get_issuer = 0x43FFFFFFFFLL;
  a1->check_issued = v13;
  result = (a1->other_ctx)(0, a1);
  if (result >= 2)
  {
LABEL_96:
    abort();
  }

  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t check_policy(x509_store_ctx_st *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  *&policy_oids.num = 0;
  v6 = X509_policy_check(a1->verify_cb, *&a1->crls[1].num, a1->crls->data, &policy_oids, a5);
  if (!v6)
  {
    return 1;
  }

  a1->check_issued = *&policy_oids.num;
  HIDWORD(a1->get_issuer) = v6;
  if (v6 == 17)
  {
    return 0;
  }

  result = (a1->other_ctx)(0, a1);
  if (result >= 2)
  {
    abort();
  }

  return result;
}

void X509_STORE_CTX_free(X509_STORE_CTX *ctx)
{
  if (ctx)
  {
    CRYPTO_free_ex_data(&g_ex_data_class, ctx, &ctx->cert_crl);
    X509_VERIFY_PARAM_free(ctx->crls);
    verify_cb = ctx->verify_cb;
    if (verify_cb)
    {
      v3 = *verify_cb;
      if (*verify_cb)
      {
        v4 = 0;
        do
        {
          v5 = *(*(verify_cb + 1) + 8 * v4);
          if (v5)
          {
            X509_free(v5);
            v3 = *verify_cb;
          }

          ++v4;
        }

        while (v4 < v3);
      }

      v6 = *(verify_cb + 1);
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

      v11 = *(verify_cb - 1);
      v10 = verify_cb - 8;
      v12 = v11 + 8;
      if (v11 != -8)
      {
        bzero(v10, v12);
      }

      free(v10);
    }

    ctx->cert_crl = 0;
    *&ctx->check_issued = 0u;
    *&ctx->get_crl = 0u;
    *&ctx->other_ctx = 0u;
    *&ctx->verify_cb = 0u;
    *&ctx->cert = 0u;
    *&ctx->crls = 0u;
    *&ctx->ctx = 0u;
    v14 = *&ctx[-1].ex_data.dummy;
    p_dummy = &ctx[-1].ex_data.dummy;
    v15 = v14 + 8;
    if (v14 != -8)
    {
      bzero(p_dummy, v15);
    }

    free(p_dummy);
  }
}

int X509_STORE_CTX_init(X509_STORE_CTX *ctx, X509_STORE *store, X509 *x509, STACK *chain)
{
  CRYPTO_free_ex_data(&g_ex_data_class, ctx, &ctx->cert_crl);
  X509_VERIFY_PARAM_free(ctx->crls);
  verify_cb = ctx->verify_cb;
  if (verify_cb)
  {
    v9 = *verify_cb;
    if (*verify_cb)
    {
      v10 = 0;
      do
      {
        v11 = *(*(verify_cb + 1) + 8 * v10);
        if (v11)
        {
          X509_free(v11);
          v9 = *verify_cb;
        }

        ++v10;
      }

      while (v10 < v9);
    }

    v12 = *(verify_cb + 1);
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

    v17 = *(verify_cb - 1);
    v16 = verify_cb - 8;
    v18 = v17 + 8;
    if (v17 != -8)
    {
      bzero(v16, v18);
    }

    free(v16);
  }

  ctx->check_crl = 0;
  ctx->cert_crl = 0;
  *&ctx->check_revocation = 0u;
  *&ctx->get_issuer = 0u;
  *&ctx->verify = 0u;
  *&ctx->param = 0u;
  *&ctx->untrusted = 0u;
  ctx->ctx = store;
  *&ctx->current_method = x509;
  ctx->cert = chain;
  if (store)
  {
    v19 = malloc_type_malloc(0x68uLL, 0xB4E622C9uLL);
    if (v19)
    {
      *v19 = 96;
      *(v19 + 24) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 8) = 0u;
      *(v19 + 8) = -1;
      ctx->crls = (v19 + 8);
      cert_crl = store[1].cert_crl;
      ctx->other_ctx = store[1].cleanup;
      if (x509_verify_param_copy((v19 + 8), cert_crl, 0) && x509_verify_param_copy(ctx->crls, &kDefaultParam, 0))
      {
        cleanup = store[1].cleanup;
        if (!cleanup)
        {
          cleanup = null_callback;
        }

        ctx->other_ctx = cleanup;
        return 1;
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      ctx->crls = 0;
    }
  }

  else
  {
    ERR_put_error(11, 0, 67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x509_vfy.cc", 1509);
  }

  CRYPTO_free_ex_data(&g_ex_data_class, ctx, &ctx->cert_crl);
  crls = ctx->crls;
  if (crls)
  {
    X509_VERIFY_PARAM_free(crls);
  }

  result = 0;
  ctx->cert_crl = 0;
  *&ctx->check_issued = 0u;
  *&ctx->get_crl = 0u;
  *&ctx->other_ctx = 0u;
  *&ctx->verify_cb = 0u;
  *&ctx->cert = 0u;
  *&ctx->crls = 0u;
  *&ctx->ctx = 0u;
  return result;
}

int X509_STORE_CTX_set_default(X509_STORE_CTX *ctx, const char *name)
{
  if (!strcmp(name, "default"))
  {
    v5 = &kDefaultParam;
    crls = ctx->crls;
  }

  else if (!strcmp(name, "pkcs7") || !strcmp(name, "smime_sign"))
  {
    v5 = &kSMIMESignParam;
    crls = ctx->crls;
  }

  else if (!strcmp(name, "ssl_client"))
  {
    v5 = &kSSLClientParam;
    crls = ctx->crls;
  }

  else
  {
    if (strcmp(name, "ssl_server"))
    {
      return 0;
    }

    v5 = &kSSLServerParam;
    crls = ctx->crls;
  }

  return x509_verify_param_copy(crls, v5, 0);
}

BOOL get_crl_sk(uint64_t a1, ASN1_VALUE **a2, void *a3, int *a4, void *a5)
{
  v5 = *a4;
  if (a5)
  {
    v64 = *a4;
    if (*a5)
    {
      v8 = 0;
      v62 = 0;
      v9 = 0;
      v10 = *(a1 + 80);
      v65 = v10;
      while (1)
      {
        v11 = *(a5[1] + 8 * v9);
        if ((v11[48] & 0x62) != 0 || X509_NAME_cmp(*(*v10 + 24), *(*v11 + 16)))
        {
          goto LABEL_5;
        }

        if ((v11[29] & 2) != 0)
        {
          v12 = 32;
        }

        else
        {
          v12 = 288;
        }

        v13 = *(a1 + 32);
        v14 = v13[1];
        if ((v14 & 0x200000) != 0)
        {
LABEL_28:
          v12 |= 0x40u;
          goto LABEL_29;
        }

        if ((v14 & 2) != 0)
        {
          v15 = *v13;
        }

        else
        {
          v15 = time(0);
        }

        v16 = *(*v11 + 24);
        pval[0] = 0;
        if (ASN1_TIME_to_posix(v16, pval))
        {
          v17 = pval[0] <= v15;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v18 = *(*v11 + 32);
          if (!v18)
          {
            goto LABEL_28;
          }

          v66 = 0;
          v19 = v18[1];
          if (v19 == 24)
          {
            v22 = *(v18 + 1);
            v23 = *v18;
            *&v68 = v22;
            *(&v68 + 1) = v23;
            if (!CBS_parse_rfc5280_time_internal(&v68, 1, 0, pval))
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v19 != 23)
            {
              goto LABEL_29;
            }

            v20 = *(v18 + 1);
            v21 = *v18;
            *&v68 = v20;
            *(&v68 + 1) = v21;
            if (!CBS_parse_rfc5280_time_internal(&v68, 0, 0, pval))
            {
              goto LABEL_29;
            }
          }

          if (OPENSSL_tm_to_posix(pval, &v66) && v66 > v15)
          {
            goto LABEL_28;
          }
        }

LABEL_29:
        v24 = *(*v11 + 16);
        v25 = *(a1 + 72);
        v26 = *(a1 + 64);
        if (v26)
        {
          v27 = *v26 - 1;
          v28 = v27 != v25;
          if (v27 == v25)
          {
            v29 = *(a1 + 72);
          }

          else
          {
            v29 = v25 + 1;
          }

          if (*v26 <= v29)
          {
            v30 = 0;
            if (!X509_check_akid(0, *(v11 + 4)))
            {
LABEL_53:
              v35 = *(v11 + 12);
              v63 = v12 | 0x1C;
              if ((v35 & 0x10) == 0)
              {
                goto LABEL_54;
              }

LABEL_98:
              if (v63 >= v64)
              {
                if (v63 == v64 && v8)
                {
                  LODWORD(pval[0]) = 0;
                  LODWORD(v68) = 0;
                  v10 = v65;
                  if (ASN1_TIME_diff(pval, &v68, *(*v8 + 24), *(*v11 + 24)) && (SLODWORD(pval[0]) > 0 || v68 >= 1))
                  {
                    v64 = v63;
                    v8 = v11;
                    v62 = v30;
                  }
                }

                else
                {
                  v64 = v63;
                  v8 = v11;
                  v62 = v30;
                  v10 = v65;
                }

                goto LABEL_5;
              }

              goto LABEL_4;
            }
          }

          else
          {
            v30 = *(v26[1] + 8 * v29);
            if (!X509_check_akid(v30, *(v11 + 4)))
            {
              goto LABEL_53;
            }
          }
        }

        else
        {
          v30 = 0;
          v28 = v25 != -1;
          if (!X509_check_akid(0, *(v11 + 4)))
          {
            goto LABEL_53;
          }
        }

        v31 = *(a1 + 64);
        if (v31)
        {
          v32 = v25 + v28 + 1;
          while (1)
          {
            if (v32 >= *v31)
            {
              goto LABEL_4;
            }

            if ((v30 = *(*(v31 + 1) + 8 * v32), v33 = *(*v30 + 40), *(v33 + 24)) && !*(v33 + 8) || (pval[0] = *(*v30 + 40), (asn1_item_ex_i2d_opt(pval, 0, &X509_NAME_ENTRY_it.sname, -1, 0, 0) & 0x80000000) == 0))
            {
              if (*(v24 + 24) && !*(v24 + 8) || (pval[0] = v24, (asn1_item_ex_i2d_opt(pval, 0, &X509_NAME_ENTRY_it.sname, -1, 0, 0) & 0x80000000) == 0))
              {
                v34 = *(v33 + 32);
                if (v34 == *(v24 + 32) && (!v34 || !memcmp(*(v33 + 24), *(v24 + 24), v34)) && !X509_check_akid(v30, *(v11 + 4)))
                {
                  break;
                }
              }
            }

            v31 = *(a1 + 64);
            ++v32;
            if (!v31)
            {
              goto LABEL_4;
            }
          }

          v35 = *(v11 + 12);
          v63 = v12 | 0xC;
          if ((v35 & 0x10) != 0)
          {
            goto LABEL_98;
          }

LABEL_54:
          if ((*(v65 + 48) & 0x10) != 0)
          {
            if ((v35 & 4) != 0)
            {
              goto LABEL_98;
            }
          }

          else if ((v35 & 8) != 0)
          {
            goto LABEL_98;
          }

          v36 = *(v65 + 80);
          if (!v36)
          {
LABEL_95:
            v53 = *(v11 + 5);
            if (!v53 || !*v53)
            {
LABEL_97:
              v63 |= 0x80u;
            }

            goto LABEL_98;
          }

          v37 = 0;
          while (2)
          {
            if (v37 >= *v36)
            {
              goto LABEL_95;
            }

            v38 = *(v36[1] + 8 * v37);
            if (!v38[1] && !v38[2])
            {
              v39 = *(v11 + 5);
              if (!v39)
              {
                goto LABEL_97;
              }

              v40 = *v39;
              v58 = *v38;
              if (!*v38 || v40 == 0)
              {
                goto LABEL_97;
              }

              if (*v58 == 1)
              {
                v42 = *(v58 + 16);
                if (v42)
                {
                  if (*v40 == 1)
                  {
                    v43 = *(v40 + 16);
                    if (v43 && !X509_NAME_cmp(*(v58 + 16), v43))
                    {
                      goto LABEL_97;
                    }

                    goto LABEL_60;
                  }

                  v58 = *v39;
LABEL_88:
                  v49 = *(v58 + 8);
                  if (v49)
                  {
                    v50 = *v49;
                    if (*v49)
                    {
                      for (i = 0; i < v50; ++i)
                      {
                        v52 = *(v49[1] + 8 * i);
                        if (*v52 == 4)
                        {
                          if (!X509_NAME_cmp(v42, *(v52 + 8)))
                          {
                            goto LABEL_97;
                          }

                          v50 = *v49;
                        }
                      }
                    }
                  }
                }
              }

              else if (*v40 == 1)
              {
                v42 = *(v40 + 16);
                if (v42)
                {
                  goto LABEL_88;
                }
              }

              else
              {
                v44 = *(v58 + 8);
                if (v44)
                {
                  v57 = 0;
                  do
                  {
                    if (v57 >= *v44)
                    {
                      break;
                    }

                    v45 = 0;
                    v46 = *(v44[1] + 8 * v57);
                    while (1)
                    {
                      v47 = *(v40 + 8);
                      if (!v47 || v45 >= *v47)
                      {
                        break;
                      }

                      if (!GENERAL_NAME_cmp(v46, *(v47[1] + 8 * v45++)))
                      {
                        goto LABEL_97;
                      }
                    }

                    ++v57;
                    v44 = *(v58 + 8);
                  }

                  while (v44);
                }
              }
            }

LABEL_60:
            ++v37;
            v36 = *(v65 + 80);
            if (!v36)
            {
              goto LABEL_95;
            }

            continue;
          }
        }

LABEL_4:
        v10 = v65;
LABEL_5:
        if (++v9 >= *a5)
        {
          goto LABEL_109;
        }
      }
    }

    v62 = 0;
    v8 = 0;
LABEL_109:
    v5 = v64;
    if (v8)
    {
      if (*a2)
      {
        pval[0] = *a2;
        ASN1_item_ex_free(pval, &X509_CRL_INFO_it.sname);
      }

      *a2 = v8;
      *a3 = v62;
      *a4 = v64;
      v54 = atomic_load(v8 + 6);
      if (v54 != -1)
      {
        for (j = v54; j != -1; v54 = j)
        {
          atomic_compare_exchange_strong(v8 + 6, &j, v54 + 1);
          if (j == v54)
          {
            break;
          }
        }
      }
    }
  }

  return v5 > 447;
}

void X509_VERIFY_PARAM_free(X509_VERIFY_PARAM *param)
{
  if (param)
  {
    v2 = *&param->purpose;
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = 0;
        do
        {
          v5 = *(v2[1] + 8 * v4);
          if (v5)
          {
            ASN1_OBJECT_free(v5);
            v3 = *v2;
          }

          ++v4;
        }

        while (v4 < v3);
      }

      v6 = v2[1];
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

      v11 = *(v2 - 1);
      v10 = v2 - 1;
      v12 = v11 + 8;
      if (v11 != -8)
      {
        bzero(v10, v12);
      }

      free(v10);
    }

    v13 = *&param->depth;
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = 0;
        do
        {
          v16 = *(v13[1] + 8 * v15);
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
            v14 = *v13;
          }

          ++v15;
        }

        while (v15 < v14);
      }

      v20 = v13[1];
      if (v20)
      {
        v22 = *(v20 - 8);
        v21 = (v20 - 8);
        v23 = v22 + 8;
        if (v22 != -8)
        {
          bzero(v21, v23);
        }

        free(v21);
      }

      v25 = *(v13 - 1);
      v24 = v13 - 1;
      v26 = v25 + 8;
      if (v25 != -8)
      {
        bzero(v24, v26);
      }

      free(v24);
    }

    name = param[1].name;
    if (name)
    {
      v29 = *(name - 1);
      v28 = name - 8;
      v30 = v29 + 8;
      if (v29 != -8)
      {
        bzero(v28, v30);
      }

      free(v28);
    }

    inh_flags = param[1].inh_flags;
    if (inh_flags)
    {
      v33 = *(inh_flags - 8);
      v32 = (inh_flags - 8);
      v34 = v33 + 8;
      if (v33 != -8)
      {
        bzero(v32, v34);
      }

      free(v32);
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
}

void str_free(char *a1)
{
  if (a1)
  {
    v3 = *(a1 - 1);
    v2 = a1 - 8;
    v4 = v3 + 8;
    if (v3 != -8)
    {
      v5 = v2;
      bzero(v2, v4);
      v2 = v5;
    }

    free(v2);
  }
}

uint64_t x509_verify_param_copy(X509_VERIFY_PARAM_st *a1, const X509_VERIFY_PARAM_st *a2, int a3)
{
  if (!a2)
  {
    return 1;
  }

  inh_flags = a2->inh_flags;
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = LODWORD(a1->inh_flags) == 0;
  }

  v8 = !v7;
  if (inh_flags && (v8 & 1) == 0)
  {
    LODWORD(a1->inh_flags) = inh_flags;
  }

  inh_flags_high = HIDWORD(a2->inh_flags);
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = HIDWORD(a1->inh_flags) == 0;
  }

  v11 = !v10;
  if (inh_flags_high && (v11 & 1) == 0)
  {
    HIDWORD(a1->inh_flags) = inh_flags_high;
  }

  flags = a2->flags;
  if (a3)
  {
    v13 = 1;
  }

  else
  {
    v13 = LODWORD(a1->flags) == -1;
  }

  v14 = !v13;
  if (flags != -1 && (v14 & 1) == 0)
  {
    LODWORD(a1->flags) = flags;
  }

  check_time = a1->check_time;
  if ((check_time & 2) == 0)
  {
    a1->name = a2->name;
  }

  a1->check_time = a2->check_time | check_time;
  v16 = *&a1->purpose;
  v17 = *&a2->purpose;
  if (a3)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16 == 0;
  }

  v19 = !v18;
  if (!v17 || (v19 & 1) != 0)
  {
    goto LABEL_54;
  }

  if (v16)
  {
    v20 = *v16;
    if (*v16)
    {
      v21 = 0;
      do
      {
        v22 = *(v16[1] + 8 * v21);
        if (v22)
        {
          ASN1_OBJECT_free(v22);
          v20 = *v16;
        }

        ++v21;
      }

      while (v21 < v20);
    }

    v24 = v16[1];
    if (v24)
    {
      v26 = *(v24 - 8);
      v25 = (v24 - 8);
      v27 = v26 + 8;
      if (v26 != -8)
      {
        bzero(v25, v27);
      }

      free(v25);
    }

    v29 = *(v16 - 1);
    v28 = v16 - 1;
    v30 = v29 + 8;
    if (v29 != -8)
    {
      bzero(v28, v30);
    }

    free(v28);
  }

  result = OPENSSL_sk_deep_copy(v17, sk_ASN1_OBJECT_call_copy_func, OBJ_dup, sk_ASN1_OBJECT_call_free_func, ASN1_OBJECT_free);
  *&a1->purpose = result;
  if (result)
  {
LABEL_54:
    v31 = *&a1->depth;
    if (a3)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31 == 0;
    }

    v33 = !v32;
    if (*&a2->depth && (v33 & 1) == 0)
    {
      if (v31)
      {
        v34 = *v31;
        if (*v31)
        {
          v35 = 0;
          do
          {
            v36 = *(v31[1] + 8 * v35);
            if (v36)
            {
              v38 = *(v36 - 8);
              v37 = (v36 - 8);
              v39 = v38 + 8;
              if (v38 != -8)
              {
                bzero(v37, v39);
              }

              free(v37);
              v34 = *v31;
            }

            ++v35;
          }

          while (v35 < v34);
        }

        v40 = v31[1];
        if (v40)
        {
          v42 = *(v40 - 8);
          v41 = (v40 - 8);
          v43 = v42 + 8;
          if (v42 != -8)
          {
            bzero(v41, v43);
          }

          free(v41);
        }

        v45 = *(v31 - 1);
        v44 = v31 - 1;
        v46 = v45 + 8;
        if (v45 != -8)
        {
          bzero(v44, v46);
        }

        free(v44);
      }

      *&a1->depth = 0;
      v47 = *&a2->depth;
      if (v47)
      {
        result = OPENSSL_sk_deep_copy(v47, sk_OPENSSL_STRING_call_copy_func, OPENSSL_strdup, sk_OPENSSL_STRING_call_free_func, str_free);
        *&a1->depth = result;
        if (!result)
        {
          return result;
        }

        LODWORD(a1->policies) = a2->policies;
      }
    }

    name = a2[1].name;
    if (a3)
    {
      v49 = 1;
    }

    else
    {
      v49 = a1[1].name == 0;
    }

    v50 = !v49;
    if (name && (v50 & 1) == 0)
    {
      v51 = a2[1].check_time;
      if (!v51 || memchr(a2[1].name, 0, a2[1].check_time))
      {
        goto LABEL_115;
      }

      if (v51 > 0xFFFFFFFFFFFFFFF7)
      {
        goto LABEL_114;
      }

      v52 = malloc_type_malloc(v51 + 8, 0xB4E622C9uLL);
      if (!v52)
      {
        goto LABEL_114;
      }

      *v52 = v51;
      v53 = (v52 + 1);
      memcpy(v52 + 1, name, v51);
      v54 = a1[1].name;
      if (v54)
      {
        v56 = *(v54 - 1);
        v55 = v54 - 8;
        v57 = v56 + 8;
        if (v56 != -8)
        {
          bzero(v55, v57);
        }

        free(v55);
      }

      a1[1].name = v53;
      a1[1].check_time = v51;
    }

    v58 = a2[1].inh_flags;
    if (a3)
    {
      v59 = 1;
    }

    else
    {
      v59 = a1[1].inh_flags == 0;
    }

    v60 = !v59;
    if (!v58 || (v60 & 1) != 0)
    {
LABEL_113:
      purpose = a2[1].purpose;
      result = 1;
LABEL_116:
      LOBYTE(a1[1].purpose) = purpose;
      return result;
    }

    v61 = a2[1].flags;
    if (v61 != 16 && v61 != 4)
    {
LABEL_115:
      result = 0;
      purpose = 1;
      goto LABEL_116;
    }

    v62 = malloc_type_malloc(v61 + 8, 0xB4E622C9uLL);
    if (v62)
    {
      *v62 = v61;
      v63 = (v62 + 1);
      memcpy(v62 + 1, v58, v61);
      v64 = a1[1].inh_flags;
      if (v64)
      {
        v66 = *(v64 - 8);
        v65 = (v64 - 8);
        v67 = v66 + 8;
        if (v66 != -8)
        {
          bzero(v65, v67);
        }

        free(v65);
      }

      a1[1].inh_flags = v63;
      a1[1].flags = v61;
      goto LABEL_113;
    }

LABEL_114:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    goto LABEL_115;
  }

  return result;
}

uint64_t int_x509_param_set_hosts(X509_VERIFY_PARAM_st *a1, int a2, char *__s, size_t __n)
{
  result = 0;
  if (!__s || !__n)
  {
    return result;
  }

  if (memchr(__s, 0, __n))
  {
    return 0;
  }

  if (!a2)
  {
    v9 = *&a1->depth;
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = 0;
        do
        {
          v12 = *(v9[1] + 8 * v11);
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
            v10 = *v9;
          }

          ++v11;
        }

        while (v11 < v10);
      }

      v16 = v9[1];
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

      v21 = *(v9 - 1);
      v20 = v9 - 1;
      v22 = v21 + 8;
      if (v21 != -8)
      {
        bzero(v20, v22);
      }

      free(v20);
      *&a1->depth = 0;
    }
  }

  v23 = 0;
  while (__s[v23])
  {
    if (__n == ++v23)
    {
      v23 = __n;
      break;
    }
  }

  if (v23 == -1)
  {
    v29 = 523;
    goto LABEL_37;
  }

  if (v23 > 0xFFFFFFFFFFFFFFF6 || (v24 = malloc_type_malloc(v23 + 9, 0xB4E622C9uLL)) == 0)
  {
    v29 = 217;
LABEL_37:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", v29);
    return 0;
  }

  v25 = v24;
  *v24 = v23 + 1;
  v26 = v24 + 1;
  if (v23)
  {
    memcpy(v24 + 1, __s, v23);
  }

  *(v26 + v23) = 0;
  v27 = *&a1->depth;
  if (!v27)
  {
    v27 = OPENSSL_sk_new_null();
    *&a1->depth = v27;
    if (!v27)
    {
      free(v25);
      return 0;
    }
  }

  v28 = *v27;
  if (*v27 < 0x7FFFFFFFuLL)
  {
    v30 = *(v27 + 3);
    if (v30 <= v28 + 1)
    {
      v33 = OPENSSL_realloc(*(v27 + 1), 16 * v30);
      if (!v33)
      {
        goto LABEL_49;
      }

      *(v27 + 1) = v33;
      *(v27 + 3) = 2 * v30;
      v31 = *v27;
      v34 = *v27 - v28;
      if (*v27 <= v28)
      {
        v32 = &v33[v31];
      }

      else
      {
        if (8 * v34)
        {
          memmove(&v33[v28 + 1], &v33[v28], 8 * v34);
          v31 = *v27;
          v33 = *(v27 + 1);
        }

        v32 = &v33[v28];
      }
    }

    else
    {
      v31 = *v27;
      v32 = (*(v27 + 1) + 8 * v28);
    }

    *v32 = v26;
    *(v27 + 4) = 0;
    *v27 = v31 + 1;
    if (v31 != -1)
    {
      return 1;
    }

    goto LABEL_49;
  }

  ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_49:
  free(v25);
  v35 = *&a1->depth;
  if (v35 && *&v35->length)
  {
    return 0;
  }

  ASN1_STRING_free(v35);
  result = 0;
  *&a1->depth = 0;
  return result;
}

uint64_t sk_X509_REVOKED_call_cmp_func(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

X509_NAME_ENTRY *__cdecl X509_NAME_ENTRY_create_by_OBJ(X509_NAME_ENTRY **ne, ASN1_OBJECT *obj, int type, const unsigned __int8 *bytes, int len)
{
  v5 = *&len;
  if (!ne || (v10 = *ne) == 0)
  {
    pval = 0;
    v11 = ASN1_item_ex_new(&pval, &X509_NAME_ENTRY_it);
    v10 = pval;
    if (!v11 || pval == 0)
    {
      return 0;
    }
  }

  if (!obj)
  {
    ERR_put_error(11, 0, 67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x509name.cc", 322);
    goto LABEL_16;
  }

  ASN1_OBJECT_free(v10->object);
  v13 = OBJ_dup(obj);
  v10->object = v13;
  if (!v13 || !bytes && v5)
  {
LABEL_16:
    if (!ne || v10 != *ne)
    {
      pval = v10;
      ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it);
    }

    return 0;
  }

  if (type >= 1 && (type & 0x1000) != 0)
  {
    v14 = OBJ_obj2nid(v13);
    if (!ASN1_STRING_set_by_NID(&v10->value, bytes, v5, type, v14))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 < 0)
    {
      LODWORD(v5) = strlen(bytes);
    }

    if (!ASN1_STRING_set(v10->value, bytes, v5))
    {
      goto LABEL_16;
    }

    if (type != -1)
    {
      v10->value->type = type;
    }
  }

  if (ne && !*ne)
  {
    *ne = v10;
  }

  return v10;
}