STACK *__cdecl i2v_GENERAL_NAMES(STACK *method, GENERAL_NAMES *gen, STACK *extlist)
{
  if (extlist)
  {
    method = extlist;
    if (gen)
    {
      v4 = 0;
      do
      {
        if (v4 >= *&gen->num)
        {
          break;
        }

        method = i2v_GENERAL_NAME(method, gen->data[v4++], method);
      }

      while (method);
    }

    return method;
  }

  if (gen)
  {
    v5 = *&gen->num;
    if (*&gen->num)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        if (v5 <= v6)
        {
          method = i2v_GENERAL_NAME(method, 0, v7);
          if (!method)
          {
LABEL_19:
            if (v7)
            {
              v8 = *&v7->num;
              if (*&v7->num)
              {
                v9 = 0;
                do
                {
                  v10 = v7->data[v9];
                  if (v10)
                  {
                    X509V3_conf_free(v10);
                    v8 = *&v7->num;
                  }

                  ++v9;
                }

                while (v9 < v8);
              }

              data = v7->data;
              if (data)
              {
                v13 = *(data - 1);
                v12 = data - 1;
                v14 = v13 + 8;
                if (v13 != -8)
                {
                  bzero(v12, v14);
                }

                free(v12);
              }

              comp = v7[-1].comp;
              p_comp = &v7[-1].comp;
              v17 = comp + 8;
              if (comp != -8)
              {
                bzero(p_comp, v17);
              }

              free(p_comp);
            }

            return 0;
          }
        }

        else
        {
          method = i2v_GENERAL_NAME(method, gen->data[v6], v7);
          if (!method)
          {
            goto LABEL_19;
          }
        }

        ++v6;
        v5 = *&gen->num;
        v7 = method;
        if (v6 >= *&gen->num)
        {
          return method;
        }
      }
    }
  }

  return OPENSSL_sk_new_null();
}

STACK *__cdecl i2v_GENERAL_NAME(X509V3_EXT_METHOD *method, GENERAL_NAME *gen, STACK *ret)
{
  v61 = *MEMORY[0x277D85DE8];
  v59 = ret;
  type = gen->type;
  if (gen->type <= 3)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        if (x509V3_add_len_value("DNS", *(gen->d.ptr + 1), *gen->d.ptr, 0, &v59))
        {
          return v59;
        }

        return 0;
      }

      if (type != 3)
      {
        return v59;
      }

      v5 = "X400Name";
    }

    else
    {
      if (type)
      {
        if (type == 1 && !x509V3_add_len_value("email", *(gen->d.ptr + 1), *gen->d.ptr, 0, &v59))
        {
          return 0;
        }

        return v59;
      }

      v5 = "othername";
    }

    goto LABEL_20;
  }

  if (type > 5)
  {
    if (type == 6)
    {
      if (x509V3_add_len_value("URI", *(gen->d.ptr + 1), *gen->d.ptr, 0, &v59))
      {
        return v59;
      }
    }

    else
    {
      if (type != 7)
      {
        if (type == 8)
        {
          OBJ_obj2txt(buf, 256, gen->d.registeredID, 0);
          v4 = strlen(buf);
          if (!x509V3_add_len_value("Registered ID", buf, v4, 0, &v59))
          {
            return 0;
          }
        }

        return v59;
      }

      ptr = gen->d.ptr;
      v9 = *(ptr + 1);
      v10 = *ptr;
      if (v10 == 16)
      {
        buf[0] = 0;
        snprintf(__str, 5uLL, "%X", __rev16(*v9));
        v11 = buf;
        v12 = 255;
        while (*v11)
        {
          ++v11;
          if (--v12 == -1)
          {
            goto LABEL_44;
          }
        }

        if (v12)
        {
          v13 = __str;
          do
          {
            v14 = *v13;
            if (!*v13)
            {
              break;
            }

            ++v13;
            *v11++ = v14;
            --v12;
          }

          while (v12);
        }

        *v11 = 0;
LABEL_44:
        v15 = buf;
        v16 = 255;
        while (*v15)
        {
          ++v15;
          if (--v16 == -1)
          {
            goto LABEL_51;
          }
        }

        if (v16)
        {
          *v15++ = 58;
        }

        *v15 = 0;
LABEL_51:
        snprintf(__str, 5uLL, "%X", __rev16(v9[1]));
        v17 = buf;
        v18 = 255;
        while (*v17)
        {
          ++v17;
          if (--v18 == -1)
          {
            goto LABEL_60;
          }
        }

        if (v18)
        {
          v19 = __str;
          do
          {
            v20 = *v19;
            if (!*v19)
            {
              break;
            }

            ++v19;
            *v17++ = v20;
            --v18;
          }

          while (v18);
        }

        *v17 = 0;
LABEL_60:
        v21 = buf;
        v22 = 255;
        while (*v21)
        {
          ++v21;
          if (--v22 == -1)
          {
            goto LABEL_67;
          }
        }

        if (v22)
        {
          *v21++ = 58;
        }

        *v21 = 0;
LABEL_67:
        snprintf(__str, 5uLL, "%X", __rev16(v9[2]));
        v23 = buf;
        v24 = 255;
        while (*v23)
        {
          ++v23;
          if (--v24 == -1)
          {
            goto LABEL_76;
          }
        }

        if (v24)
        {
          v25 = __str;
          do
          {
            v26 = *v25;
            if (!*v25)
            {
              break;
            }

            ++v25;
            *v23++ = v26;
            --v24;
          }

          while (v24);
        }

        *v23 = 0;
LABEL_76:
        v27 = buf;
        v28 = 255;
        while (*v27)
        {
          ++v27;
          if (--v28 == -1)
          {
            goto LABEL_83;
          }
        }

        if (v28)
        {
          *v27++ = 58;
        }

        *v27 = 0;
LABEL_83:
        snprintf(__str, 5uLL, "%X", __rev16(v9[3]));
        v29 = buf;
        v30 = 255;
        while (*v29)
        {
          ++v29;
          if (--v30 == -1)
          {
            goto LABEL_92;
          }
        }

        if (v30)
        {
          v31 = __str;
          do
          {
            v32 = *v31;
            if (!*v31)
            {
              break;
            }

            ++v31;
            *v29++ = v32;
            --v30;
          }

          while (v30);
        }

        *v29 = 0;
LABEL_92:
        v33 = buf;
        v34 = 255;
        while (*v33)
        {
          ++v33;
          if (--v34 == -1)
          {
            goto LABEL_99;
          }
        }

        if (v34)
        {
          *v33++ = 58;
        }

        *v33 = 0;
LABEL_99:
        snprintf(__str, 5uLL, "%X", __rev16(v9[4]));
        v35 = buf;
        v36 = 255;
        while (*v35)
        {
          ++v35;
          if (--v36 == -1)
          {
            goto LABEL_108;
          }
        }

        if (v36)
        {
          v37 = __str;
          do
          {
            v38 = *v37;
            if (!*v37)
            {
              break;
            }

            ++v37;
            *v35++ = v38;
            --v36;
          }

          while (v36);
        }

        *v35 = 0;
LABEL_108:
        v39 = buf;
        v40 = 255;
        while (*v39)
        {
          ++v39;
          if (--v40 == -1)
          {
            goto LABEL_115;
          }
        }

        if (v40)
        {
          *v39++ = 58;
        }

        *v39 = 0;
LABEL_115:
        snprintf(__str, 5uLL, "%X", __rev16(v9[5]));
        v41 = buf;
        v42 = 255;
        while (*v41)
        {
          ++v41;
          if (--v42 == -1)
          {
            goto LABEL_124;
          }
        }

        if (v42)
        {
          v43 = __str;
          do
          {
            v44 = *v43;
            if (!*v43)
            {
              break;
            }

            ++v43;
            *v41++ = v44;
            --v42;
          }

          while (v42);
        }

        *v41 = 0;
LABEL_124:
        v45 = buf;
        v46 = 255;
        while (*v45)
        {
          ++v45;
          if (--v46 == -1)
          {
            goto LABEL_131;
          }
        }

        if (v46)
        {
          *v45++ = 58;
        }

        *v45 = 0;
LABEL_131:
        snprintf(__str, 5uLL, "%X", __rev16(v9[6]));
        v47 = buf;
        v48 = 255;
        while (*v47)
        {
          ++v47;
          if (--v48 == -1)
          {
            goto LABEL_140;
          }
        }

        if (v48)
        {
          v49 = __str;
          do
          {
            v50 = *v49;
            if (!*v49)
            {
              break;
            }

            ++v49;
            *v47++ = v50;
            --v48;
          }

          while (v48);
        }

        *v47 = 0;
LABEL_140:
        v51 = buf;
        v52 = 255;
        while (*v51)
        {
          ++v51;
          if (--v52 == -1)
          {
            goto LABEL_147;
          }
        }

        if (v52)
        {
          *v51++ = 58;
        }

        *v51 = 0;
LABEL_147:
        snprintf(__str, 5uLL, "%X", __rev16(v9[7]));
        v53 = buf;
        v54 = 255;
        while (*v53)
        {
          ++v53;
          if (--v54 == -1)
          {
            goto LABEL_156;
          }
        }

        if (v54)
        {
          v55 = __str;
          do
          {
            v56 = *v55;
            if (!*v55)
            {
              break;
            }

            ++v55;
            *v53++ = v56;
            --v54;
          }

          while (v54);
        }

        *v53 = 0;
LABEL_156:
        v57 = strlen(buf);
        if (!x509V3_add_len_value("IP Address", buf, v57, 0, &v59))
        {
          return 0;
        }

        return v59;
      }

      if (v10 == 4)
      {
        snprintf(buf, 0x100uLL, "%d.%d.%d.%d", *v9, *(v9 + 1), *(v9 + 2), *(v9 + 3));
        goto LABEL_156;
      }

      if (x509V3_add_len_value("IP Address", "<invalid>", 9uLL, 0, &v59))
      {
        return v59;
      }
    }

    return 0;
  }

  if (type != 4)
  {
    if (type != 5)
    {
      return v59;
    }

    v5 = "EdiPartyName";
LABEL_20:
    if (x509V3_add_len_value(v5, "<unsupported>", 0xDuLL, 0, &v59))
    {
      return v59;
    }

    return 0;
  }

  result = X509_NAME_oneline(gen->d.directoryName, buf, 256);
  if (result)
  {
    v7 = strlen(buf);
    if (x509V3_add_len_value("DirName", buf, v7, 0, &v59))
    {
      return v59;
    }

    return 0;
  }

  return result;
}

int GENERAL_NAME_print(BIO *out, GENERAL_NAME *gen)
{
  type = gen->type;
  if (gen->type <= 3)
  {
    if (type > 1)
    {
      if (type != 2)
      {
        BIO_printf(out, "X400Name:<unsupported>");
        return 1;
      }

      v6 = "DNS:";
    }

    else
    {
      if (!type)
      {
        BIO_printf(out, "othername:<unsupported>");
        return 1;
      }

      if (type != 1)
      {
        return 1;
      }

      v6 = "email:";
    }

LABEL_19:
    BIO_printf(out, v6);
    ASN1_STRING_print(out, gen->d.rfc822Name);
    return 1;
  }

  if (type <= 5)
  {
    if (type == 4)
    {
      BIO_printf(out, "DirName: ");
      X509_NAME_print_ex(out, gen->d.directoryName, 0, 0x82031FuLL);
      return 1;
    }

    BIO_printf(out, "EdiPartyName:<unsupported>");
    return 1;
  }

  if (type == 6)
  {
    v6 = "URI:";
    goto LABEL_19;
  }

  if (type != 7)
  {
    if (type == 8)
    {
      BIO_printf(out, "Registered ID");
      i2a_ASN1_OBJECT(out, gen->d.registeredID);
    }

    return 1;
  }

  ptr = gen->d.ptr;
  v10 = *(ptr + 1);
  v11 = *ptr;
  if (v11 == 16)
  {
    BIO_printf(out, "IP Address");
    BIO_printf(out, ":%X", __rev16(*v10));
    BIO_printf(out, ":%X", __rev16(v10[1]));
    BIO_printf(out, ":%X", __rev16(v10[2]));
    BIO_printf(out, ":%X", __rev16(v10[3]));
    BIO_printf(out, ":%X", __rev16(v10[4]));
    BIO_printf(out, ":%X", __rev16(v10[5]));
    BIO_printf(out, ":%X", __rev16(v10[6]));
    BIO_printf(out, ":%X", __rev16(v10[7]));
    BIO_puts(out, "\n");
    return 1;
  }

  if (v11 == 4)
  {
    BIO_printf(out, "IP Address:%d.%d.%d.%d");
  }

  else
  {
    BIO_printf(out, "IP Address:<invalid>");
  }

  return 1;
}

GENERAL_NAMES *__cdecl v2i_GENERAL_NAMES(X509V3_EXT_METHOD *method, X509V3_CTX *ctx, STACK *nval)
{
  v6 = OPENSSL_sk_new_null();
  if (v6 && nval)
  {
    v7 = 0;
    while (1)
    {
      while (1)
      {
        if (v7 >= *&nval->num)
        {
          return v6;
        }

        v10 = v2i_GENERAL_NAME_ex(0, v5, ctx, nval->data[v7], 0);
        if (!v10)
        {
          goto LABEL_17;
        }

        v11 = *&v6->num;
        if (*&v6->num >= 0x7FFFFFFFuLL)
        {
          ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_17:
          pval = v10;
          ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
          v14 = *&v6->num;
          if (*&v6->num)
          {
            v15 = 0;
            do
            {
              if (v6->data[v15])
              {
                pval = v6->data[v15];
                ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
                v14 = *&v6->num;
              }

              ++v15;
            }

            while (v15 < v14);
          }

          data = v6->data;
          if (data)
          {
            v18 = *(data - 1);
            v17 = data - 1;
            v19 = v18 + 8;
            if (v18 != -8)
            {
              bzero(v17, v19);
            }

            free(v17);
          }

          comp = v6[-1].comp;
          p_comp = &v6[-1].comp;
          v22 = comp + 8;
          if (comp != -8)
          {
            bzero(p_comp, v22);
          }

          free(p_comp);
          return 0;
        }

        v12 = v6->comp;
        if (v12 <= v11 + 1)
        {
          break;
        }

        v8 = v6->data;
        v9 = *&v6->num;
LABEL_5:
        v8[v11] = v10;
        v6->sorted = 0;
        ++v7;
        *&v6->num = v9 + 1;
        if (v9 == -1)
        {
          goto LABEL_17;
        }
      }

      v8 = OPENSSL_realloc(v6->data, 16 * v12);
      if (!v8)
      {
        goto LABEL_17;
      }

      v6->data = v8;
      v6->comp = (2 * v12);
      v9 = *&v6->num;
      v13 = *&v6->num - v11;
      if (*&v6->num > v11)
      {
        if (8 * v13)
        {
          memmove(&v8[v11 + 1], &v8[v11], 8 * v13);
          v9 = *&v6->num;
          v8 = v6->data;
        }

        goto LABEL_5;
      }

      v8[v9] = v10;
      v6->sorted = 0;
      ++v7;
      *&v6->num = v9 + 1;
      if (v9 == -1)
      {
        goto LABEL_17;
      }
    }
  }

  return v6;
}

GENERAL_NAME *__cdecl v2i_GENERAL_NAME_ex(GENERAL_NAME *out, X509V3_EXT_METHOD *method, X509V3_CTX *ctx, CONF_VALUE *cnf, int is_nc)
{
  value = cnf->value;
  if (!value)
  {
    ERR_put_error(20, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_alt.cc", 541);
    return 0;
  }

  name = cnf->name;
  if (!strncmp(name, "email", 5uLL))
  {
    v12 = 1;
    if (!name[5] || name[5] == 46)
    {
      goto LABEL_27;
    }
  }

  v10 = *name;
  if (v10 != 68)
  {
    if (v10 != 82)
    {
      if (v10 != 85 || name[1] != 82 || name[2] != 73)
      {
        goto LABEL_22;
      }

      v11 = name[3];
      v12 = 6;
      if (!name[3])
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    if (name[1] != 73 || name[2] != 68)
    {
      goto LABEL_22;
    }

    v11 = name[3];
    v12 = 8;
    if (name[3])
    {
      goto LABEL_21;
    }

LABEL_27:
    v13 = out;
    if (out)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (name[1] != 78 || name[2] != 83)
  {
    goto LABEL_22;
  }

  v11 = name[3];
  v12 = 2;
  if (!name[3])
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v11 == 46)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (x509v3_conf_name_matches(name, "IP"))
  {
    v12 = 7;
    v13 = out;
    if (out)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (x509v3_conf_name_matches(name, "dirName"))
  {
    v12 = 4;
    goto LABEL_27;
  }

  if (!x509v3_conf_name_matches(name, "otherName"))
  {
    ERR_put_error(20, 0, 160, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_alt.cc", 561);
    ERR_add_error_data(2, "name=", name);
    return 0;
  }

  v12 = 0;
  v13 = out;
  if (out)
  {
LABEL_30:
    if (v12 <= 5)
    {
      if ((v12 - 1) >= 2)
      {
        if (v12)
        {
          if (v12 == 4)
          {
            db_meth = ctx->db_meth;
            if (db_meth)
            {
              section = NCONF_get_section(db_meth, value);
            }

            else
            {
              ERR_put_error(20, 0, 147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_conf.cc", 350);
              section = 0;
            }

            pval = 0;
            if (ASN1_item_ex_new(&pval, &X509_NAME_ENTRY_it.sname))
            {
              v37 = pval;
            }

            else
            {
              v37 = 0;
            }

            if (v37)
            {
              if (section)
              {
                v38 = 0;
                while (1)
                {
                  if (v38 >= *&section->num)
                  {
                    v13->type = 4;
                    v13->d.ptr = v37;
                    return v13;
                  }

                  v43 = section->data[v38];
                  v39 = *(v43 + 1);
                  for (i = v39 + 1; ; ++i)
                  {
                    v45 = *(i - 1);
                    if (v45 <= 0x2D)
                    {
                      break;
                    }

                    if (v45 == 58 || v45 == 46)
                    {
                      goto LABEL_77;
                    }

LABEL_88:
                    ;
                  }

                  if (!*(i - 1))
                  {
                    goto LABEL_79;
                  }

                  if (v45 != 44)
                  {
                    goto LABEL_88;
                  }

LABEL_77:
                  if (*i)
                  {
                    v39 = i;
                  }

LABEL_79:
                  v40 = *v39;
                  if (v40 == 43)
                  {
                    v41 = (v39 + 1);
                  }

                  else
                  {
                    v41 = v39;
                  }

                  if (v40 == 43)
                  {
                    v42 = -1;
                  }

                  else
                  {
                    v42 = 0;
                  }

                  ++v38;
                  if (!X509_NAME_add_entry_by_txt(v37, v41, 4097, *(v43 + 2), -1, -1, v42))
                  {
                    goto LABEL_100;
                  }
                }
              }

              ERR_put_error(20, 0, 153, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_alt.cc", 616);
              ERR_add_error_data(2, "section=", value);
            }

LABEL_100:
            pval = v37;
            ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
            v25 = 105;
            v26 = 509;
          }

          else
          {
            v25 = 161;
            v26 = 521;
          }

          goto LABEL_117;
        }

        v27 = strchr(value, 59);
        if (!v27 || (v28 = v27, pval = 0, !ASN1_item_ex_new(&pval, &OTHERNAME_it)) || (v29 = pval) == 0)
        {
LABEL_116:
          v25 = 148;
          v26 = 516;
LABEL_117:
          ERR_put_error(20, 0, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_alt.cc", v26);
LABEL_118:
          if (!out)
          {
            goto LABEL_119;
          }

          return 0;
        }

        v30 = 0;
        if (v28 == value)
        {
          v31 = 1;
        }

        else
        {
          while (value[v30])
          {
            if (v28 - value == ++v30)
            {
              v30 = v28 - value;
              break;
            }
          }

          if (v30 == -1)
          {
            v51 = 523;
            goto LABEL_114;
          }

          if (v30 > 0xFFFFFFFFFFFFFFF6)
          {
LABEL_112:
            v51 = 217;
LABEL_114:
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", v51);
LABEL_115:
            pval = v29;
            ASN1_item_ex_free(&pval, &OTHERNAME_it);
            goto LABEL_116;
          }

          v31 = v30 + 1;
        }

        v47 = malloc_type_malloc(v31 + 8, 0xB4E622C9uLL);
        if (v47)
        {
          v48 = v47;
          *v47 = v31;
          v49 = v47 + 8;
          if (v30)
          {
            memcpy(v47 + 8, value, v30);
          }

          v49[v30] = 0;
          ASN1_OBJECT_free(*v29);
          *v29 = OBJ_txt2obj(v49, 0);
          free(v48);
          if (*v29)
          {
            pval = *(v29 + 1);
            ASN1_item_ex_free(&pval, &ASN1_OBJECT_it.sname);
            v50 = ASN1_generate_v3(v28 + 1, ctx);
            *(v29 + 1) = v50;
            if (v50)
            {
              v13->type = 0;
              v13->d.ptr = v29;
              return v13;
            }
          }

          goto LABEL_115;
        }

        goto LABEL_112;
      }

LABEL_38:
      v18 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (v18)
      {
        *v18 = 24;
        v18[1] = 0x1600000000;
        v19 = (v18 + 1);
        v18[2] = 0;
        v20 = v18 + 2;
        v21 = v18;
        v18[3] = 0;
        v22 = strlen(value);
        if (ASN1_STRING_set(v19, value, v22))
        {
          v13->type = v12;
          v13->d.ptr = v19;
          return v13;
        }

        v33 = *v20;
        if (*v20)
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

        free(v21);
        if (out)
        {
          return 0;
        }

        goto LABEL_119;
      }

      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      if (!out)
      {
LABEL_119:
        pval = v13;
        ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
      }

      return 0;
    }

    if (v12 != 8)
    {
      if (v12 != 7)
      {
        goto LABEL_38;
      }

      v13->type = 7;
      if (is_nc)
      {
        v32 = a2i_IPADDRESS_NC(value);
        v13->d.ptr = v32;
        if (v32)
        {
          return v13;
        }
      }

      else
      {
        v46 = a2i_IPADDRESS(value);
        v13->d.ptr = v46;
        if (v46)
        {
          return v13;
        }
      }

      ERR_put_error(20, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_alt.cc", 501);
      ERR_add_error_data(2, "value=", value);
      goto LABEL_118;
    }

    v23 = OBJ_sn2nid(value);
    if (v23 || (v23 = OBJ_ln2nid(value)) != 0)
    {
      object_with_text_oid = OBJ_nid2obj(v23);
      if (object_with_text_oid)
      {
LABEL_46:
        v13->type = 8;
        v13->d.ptr = object_with_text_oid;
        return v13;
      }
    }

    else
    {
      object_with_text_oid = create_object_with_text_oid(0, value, 0, 0);
      if (object_with_text_oid)
      {
        goto LABEL_46;
      }
    }

    ERR_put_error(20, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_alt.cc", 484);
    ERR_add_error_data(2, "value=", value);
    if (!out)
    {
      goto LABEL_119;
    }

    return 0;
  }

LABEL_28:
  pval = 0;
  v14 = ASN1_item_ex_new(&pval, &GENERAL_NAME_it);
  result = 0;
  if (v14)
  {
    v13 = pval;
    if (pval)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t copy_email(uint64_t a1, unint64_t *a2, int a3)
{
  if (a1)
  {
    if (*a1 == 1)
    {
      return 1;
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *(*v3 + 40);
      v5 = a2;
      if (a3)
      {
        goto LABEL_5;
      }

      goto LABEL_62;
    }

    v41 = *(a1 + 24);
    if (v41)
    {
      v4 = *(*v41 + 32);
      v5 = a2;
      if (a3)
      {
LABEL_5:
        if (v4)
        {
          v6 = -1;
          while (1)
          {
            v7 = OBJ_nid2obj(48);
            if (!v7)
            {
              return 1;
            }

            v8 = v7;
            v9 = *v4;
            if (*v4)
            {
              v10 = *v9;
              if (v6 < 0)
              {
                v11 = -1;
              }

              else
              {
                v11 = v6;
              }

              v12 = v11 + 1;
              if (v12 >= v10)
              {
                return 1;
              }
            }

            else
            {
              v10 = 0;
              if (v6 < 0)
              {
                v13 = -1;
              }

              else
              {
                v13 = v6;
              }

              v12 = v13 + 1;
              if (v12 >= 0)
              {
                return 1;
              }
            }

            v14 = *v9;
            v15 = v9[1];
            length = v7->length;
            if (length)
            {
              v17 = length;
              while (1)
              {
                v18 = **(v15 + 8 * v12);
                if (*(v18 + 20) == v17 && !memcmp(*(v18 + 24), v8->data, v17))
                {
                  break;
                }

                if (v10 == ++v12)
                {
                  return 1;
                }
              }
            }

            else
            {
              while (*(**(v15 + 8 * v12) + 20))
              {
                ++v12;
                result = 1;
                if (v10 == v12)
                {
                  return result;
                }
              }
            }

            if (v12 < 0)
            {
              return 1;
            }

            v20 = v12;
            if (v14 <= v12)
            {
              v21 = 0;
            }

            else
            {
              v21 = *(v15 + 8 * v12);
              if (v21)
              {
                v22 = ASN1_STRING_dup(*(v21 + 8));
                v23 = *v4;
                if (*v4)
                {
                  goto LABEL_33;
                }

                goto LABEL_44;
              }
            }

            v22 = ASN1_STRING_dup(0);
            v23 = *v4;
            if (*v4)
            {
LABEL_33:
              v24 = *v23;
              if (*v23 > v12)
              {
                v25 = v24 - 1;
                if (v24 - 1 == v12)
                {
                  *v23 = v12;
                  *(v4 + 8) = 1;
                }

                else
                {
                  v26 = (v23[1] + 8 * v12);
                  v27 = *v26;
                  v28 = 8 * (v24 + ~v12);
                  if (v28)
                  {
                    memmove(v26, v26 + 1, v28);
                    v25 = *v23 - 1;
                  }

                  *v23 = v25;
                  *(v4 + 8) = 1;
                  if (v25 != v12)
                  {
                    if (v12)
                    {
                      v29 = v23[1];
                      v30 = *(*(v29 + 8 * (v12 - 1)) + 16) + 1;
                    }

                    else
                    {
                      v30 = *(v27 + 16);
                      v29 = v23[1];
                    }

                    if (v30 < *(*(v29 + 8 * v12) + 16))
                    {
                      do
                      {
                        --*(*(v29 + 8 * v20++) + 16);
                      }

                      while (v25 != v20);
                    }
                  }
                }
              }
            }

LABEL_44:
            pval = v21;
            ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it);
            if (!v22)
            {
              goto LABEL_97;
            }

            pval = 0;
            v31 = ASN1_item_ex_new(&pval, &GENERAL_NAME_it);
            v32 = pval;
            if (v31)
            {
              v33 = pval == 0;
            }

            else
            {
              v33 = 1;
            }

            if (v33)
            {
              goto LABEL_103;
            }

            *(pval + 1) = v22;
            *v32 = 1;
            v34 = *v5;
            if (*v5 >= 0x7FFFFFFF)
            {
              goto LABEL_110;
            }

            v35 = v5;
            v36 = v5[3];
            if (v36 <= v34 + 1)
            {
              v39 = OPENSSL_realloc(v5[1], 16 * v36);
              if (!v39)
              {
                goto LABEL_98;
              }

              v35 = v5;
              v5[1] = v39;
              v5[3] = 2 * v36;
              v37 = *v5;
              v40 = *v5 - v34;
              if (*v5 <= v34)
              {
                v38 = &v39[v37];
              }

              else
              {
                if (8 * v40)
                {
                  memmove(&v39[v34 + 1], &v39[v34], 8 * v40);
                  v35 = v5;
                  v37 = *v5;
                  v39 = v5[1];
                }

                v38 = &v39[v34];
              }
            }

            else
            {
              v37 = *v5;
              v38 = (v5[1] + 8 * v34);
            }

            v6 = v12 - 1;
            *v38 = v32;
            *(v35 + 4) = 0;
            *v35 = v37 + 1;
            if (v37 == -1)
            {
              goto LABEL_98;
            }
          }
        }

LABEL_100:
        OBJ_nid2obj(48);
        return 1;
      }

LABEL_62:
      if (v4)
      {
        LODWORD(v42) = -1;
        while (1)
        {
          v43 = OBJ_nid2obj(48);
          if (!v43)
          {
            return 1;
          }

          v44 = v43;
          v45 = *v4;
          if (*v4)
          {
            v46 = *v45;
            v42 = v42 + 1;
            if (v42 >= v46)
            {
              return 1;
            }
          }

          else
          {
            v46 = 0;
            v42 = v42 + 1;
            if (v42 >= 0)
            {
              return 1;
            }
          }

          v47 = *v45;
          v48 = v45[1];
          v49 = v43->length;
          if (v49)
          {
            v50 = v49;
            while (1)
            {
              v51 = **(v48 + 8 * v42);
              if (*(v51 + 20) == v50 && !memcmp(*(v51 + 24), v44->data, v50))
              {
                break;
              }

              if (v46 == ++v42)
              {
                return 1;
              }
            }
          }

          else
          {
            while (*(**(v48 + 8 * v42) + 20))
            {
              ++v42;
              result = 1;
              if (v46 == v42)
              {
                return result;
              }
            }
          }

          if (v42 < 0)
          {
            return 1;
          }

          if (v47 > v42 && (v52 = *(v48 + 8 * v42)) != 0)
          {
            v53 = *(v52 + 8);
          }

          else
          {
            v53 = 0;
          }

          v54 = ASN1_STRING_dup(v53);
          if (!v54)
          {
            goto LABEL_97;
          }

          v22 = v54;
          pval = 0;
          if (!ASN1_item_ex_new(&pval, &GENERAL_NAME_it) || (v32 = pval) == 0)
          {
LABEL_103:
            pval = 0;
            ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
            data = v22->data;
            if (data)
            {
              v64 = *(data - 1);
              v63 = data - 8;
              v65 = v64 + 8;
              if (v64 != -8)
              {
                bzero(v63, v65);
              }

              free(v63);
            }

            flags = v22[-1].flags;
            p_flags = &v22[-1].flags;
            v68 = flags + 8;
            if (flags != -8)
            {
              bzero(p_flags, v68);
            }

            free(p_flags);
            return 0;
          }

          *(pval + 1) = v22;
          *v32 = 1;
          v55 = *v5;
          if (*v5 >= 0x7FFFFFFF)
          {
LABEL_110:
            ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
            goto LABEL_98;
          }

          v56 = v5;
          v57 = v5[3];
          if (v57 <= v55 + 1)
          {
            v60 = OPENSSL_realloc(v5[1], 16 * v57);
            if (!v60)
            {
              goto LABEL_98;
            }

            v56 = v5;
            v5[1] = v60;
            v5[3] = 2 * v57;
            v58 = *v5;
            v61 = *v5 - v55;
            if (*v5 <= v55)
            {
              v59 = &v60[v58];
            }

            else
            {
              if (8 * v61)
              {
                memmove(&v60[v55 + 1], &v60[v55], 8 * v61);
                v56 = v5;
                v58 = *v5;
                v60 = v5[1];
              }

              v59 = &v60[v55];
            }
          }

          else
          {
            v58 = *v5;
            v59 = (v5[1] + 8 * v55);
          }

          *v59 = v32;
          *(v56 + 4) = 0;
          *v56 = v58 + 1;
          if (v58 == -1)
          {
            goto LABEL_98;
          }
        }
      }

      goto LABEL_100;
    }
  }

  ERR_put_error(20, 0, 145, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_alt.cc", 382);
LABEL_97:
  v32 = 0;
LABEL_98:
  pval = v32;
  ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
  return 0;
}

char *i2v_BASIC_CONSTRAINTS(uint64_t a1, uint64_t a2, char *a3)
{
  v13 = a3;
  if (*a2)
  {
    v4 = x509V3_add_len_value("CA", "TRUE", 4uLL, 0, &v13);
    v5 = *(a2 + 8);
    if (!v5)
    {
      return v13;
    }
  }

  else
  {
    v4 = x509V3_add_len_value("CA", "FALSE", 5uLL, 0, &v13);
    v5 = *(a2 + 8);
    if (!v5)
    {
      return v13;
    }
  }

  v7 = i2s_ASN1_INTEGER(v4, v5);
  if (!v7)
  {
    return v13;
  }

  v8 = v7;
  v9 = strlen(v7);
  x509V3_add_len_value("pathlen", v8, v9, 0, &v13);
  v11 = *(v8 - 1);
  v10 = v8 - 8;
  v12 = v11 + 8;
  if (v11 != -8)
  {
    bzero(v10, v12);
  }

  free(v10);
  return v13;
}

ASN1_VALUE *v2i_BASIC_CONSTRAINTS(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  pval = 0;
  v4 = ASN1_item_ex_new(&pval, &AUTHORITY_KEYID_it.sname);
  result = pval;
  if (v4)
  {
    v6 = pval;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (a3)
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = 0;
      while (1)
      {
        if (v7 <= v8)
        {
          v9 = 0;
          name = MEMORY[8];
          if (*MEMORY[8] != 67)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v9 = *(a3[1] + 8 * v8);
          name = v9->name;
          if (*name != 67)
          {
            goto LABEL_14;
          }
        }

        if (name[1] != 65 || name[2])
        {
LABEL_14:
          if (strcmp(name, "pathlen"))
          {
            ERR_put_error(20, 0, 123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_bcons.cc", 85);
            ERR_add_error_data(6, "section:", v9->section, ",name:", v9->name, ",value:", v9->value);
            goto LABEL_23;
          }

          if (!X509V3_get_value_int(v9, v6 + 1))
          {
            goto LABEL_23;
          }

          goto LABEL_16;
        }

        value = v9->value;
        if (!value)
        {
          ERR_put_error(20, 0, 120, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_utl.cc", 272);
LABEL_26:
          ERR_add_error_data(6, "section:", v9->section, ",name:", v9->name, ",value:", v9->value);
LABEL_23:
          pval = v6;
          ASN1_item_ex_free(&pval, &AUTHORITY_KEYID_it.sname);
          return 0;
        }

        if (!X509V3_BOOL_from_string(value, v6))
        {
          goto LABEL_26;
        }

LABEL_16:
        ++v8;
        v7 = *a3;
        if (v8 >= *a3)
        {
          return v6;
        }
      }
    }
  }

  return result;
}

char *i2v_ASN1_BIT_STRING(uint64_t a1, uint64_t a2, char *a3)
{
  v11 = a3;
  v3 = *(a1 + 96);
  v4 = *(v3 + 8);
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return a3;
  }

  do
  {
    v8 = *v3 + 7;
    if (*v3 >= 0)
    {
      v8 = *v3;
    }

    v9 = v8 >> 3;
    if (*a2 > v9)
    {
      v10 = *(a2 + 8);
      if (v10)
      {
        if ((*(v10 + v9) >> (~*v3 & 7)))
        {
          x509V3_add_len_value(v4, 0, 0, 1, &v11);
        }
      }
    }

    v4 = *(v3 + 32);
    v3 += 24;
  }

  while (v4);
  return v11;
}

ASN1_BIT_STRING *v2i_ASN1_BIT_STRING(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v5)
  {
    *v5 = 24;
    v5[1] = 0x300000000;
    v6 = (v5 + 1);
    v5[2] = 0;
    v7 = v5 + 2;
    v5[3] = 0;
    if (a3)
    {
      v8 = v5;
      v9 = 0;
      while (v9 < *a3)
      {
        v10 = *(a3[1] + 8 * v9);
        v11 = *(a1 + 96);
        v12 = *(v11 + 8);
        if (!v12)
        {
          goto LABEL_13;
        }

        v13 = v10[1];
        v14 = (v11 + 16);
        while (strcmp(*v14, v13) && strcmp(v12, v13))
        {
          v12 = v14[2];
          v14 += 3;
          if (!v12)
          {
            goto LABEL_13;
          }
        }

        if (!ASN1_BIT_STRING_set_bit(v6, *(v14 - 4), 1))
        {
          goto LABEL_14;
        }

        ++v9;
        if (!*(v14 - 1))
        {
LABEL_13:
          ERR_put_error(20, 0, 156, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_bitst.cc", 83);
          ERR_add_error_data(6, "section:", *v10, ",name:", v10[1], ",value:", v10[2]);
LABEL_14:
          v15 = *v7;
          if (*v7)
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

          free(v8);
          return 0;
        }
      }
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  return v6;
}

STACK *__cdecl X509V3_get_section(X509V3_CTX *ctx, char *section)
{
  db_meth = ctx->db_meth;
  if (db_meth)
  {

    return NCONF_get_section(db_meth, section);
  }

  else
  {
    ERR_put_error(20, 0, 147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_conf.cc", 350);
    return 0;
  }
}

uint64_t i2r_certpol(const v3_ext_method *a1, void *a2, bio_st *bio, int a4)
{
  if (a2 && *a2)
  {
    v5 = 0;
    v6 = a4 + 2;
    v7 = a4 + 4;
    v50 = a2;
    while (1)
    {
      v52 = v5;
      v8 = *(a2[1] + 8 * v5);
      BIO_printf(bio, "%*sPolicy: ", a4, "");
      i2a_ASN1_OBJECT(bio, *v8);
      BIO_puts(bio, "\n");
      v9 = *(v8 + 8);
      if (v9)
      {
        if (*v9)
        {
          break;
        }
      }

LABEL_4:
      v5 = v52 + 1;
      a2 = v50;
      if ((v52 + 1) >= *v50)
      {
        return 1;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = *(v9[1] + 8 * v10);
      v12 = OBJ_obj2nid(*v11);
      if (v12 != 165)
      {
        if (v12 == 164)
        {
          BIO_printf(bio, "%*sCPS: %.*s\n");
        }

        else
        {
          BIO_printf(bio, "%*sUnknown Qualifier: ", v7, "");
          i2a_ASN1_OBJECT(bio, *v11);
          if (bio && bio->method && (bwrite = bio->method->bwrite) != 0)
          {
            if (LODWORD(bio->cb_arg))
            {
              v19 = (bwrite)(bio, "\n", 1);
              if (v19 >= 1)
              {
                bio->prev_bio = (bio->prev_bio + v19);
              }
            }

            else
            {
              ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 125);
            }
          }

          else
          {
            ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 121);
          }
        }

        goto LABEL_9;
      }

      BIO_printf(bio, "%*sUser Notice:\n", v6, "");
      v13 = *(v11 + 8);
      v14 = *v13;
      if (*v13)
      {
        break;
      }

LABEL_82:
      if (v13[1])
      {
        goto LABEL_83;
      }

LABEL_9:
      if (++v10 >= *v9)
      {
        goto LABEL_4;
      }
    }

    BIO_printf(bio, "%*sOrganization: %.*s\n", v7, "", **v14, *(*v14 + 8));
    v15 = *(v14 + 8);
    if (v15)
    {
      v16 = *v15 > 1uLL;
      v17 = "s";
      if (!v16)
      {
        v17 = "";
      }
    }

    else
    {
      v17 = "";
    }

    BIO_printf(bio, "%*sNumber%s: ", v7, "", v17);
    v20 = *(v14 + 8);
    if (v20 && *v20)
    {
      v21 = **(v20 + 8);
      if (v21)
      {
        v22 = i2s_ASN1_INTEGER(0, v21);
        if (!v22)
        {
          goto LABEL_9;
        }

        v23 = v22;
        BIO_puts(bio, v22);
        v25 = *(v23 - 1);
        v24 = v23 - 8;
        v26 = v25 + 8;
        if (v25 != -8)
        {
          bzero(v24, v26);
        }

        free(v24);
        v27 = *(v14 + 8);
        if (!v27)
        {
          goto LABEL_74;
        }

LABEL_34:
        v28 = 1;
        while (1)
        {
          if (v28 >= *v27)
          {
            goto LABEL_74;
          }

          v29 = *(v27[1] + 8 * v28);
          if (!bio)
          {
            break;
          }

          if (!bio->method)
          {
            break;
          }

          v30 = bio->method->bwrite;
          if (!v30)
          {
            break;
          }

          if (LODWORD(bio->cb_arg))
          {
            v31 = (v30)(bio, ", ", 2);
            if (v31 >= 1)
            {
              bio->prev_bio = (bio->prev_bio + v31);
              if (v29)
              {
                goto LABEL_52;
              }

              goto LABEL_44;
            }

            goto LABEL_51;
          }

          ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 125);
          if (v29)
          {
LABEL_52:
            v34 = i2s_ASN1_INTEGER(0, v29);
            if (!v34)
            {
              goto LABEL_9;
            }

            v35 = v34;
            v36 = strlen(v34);
            if (v36 >> 31)
            {
              ERR_put_error(17, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 155);
              v38 = *(v35 - 1);
              v37 = v35 - 8;
              v39 = v38 + 8;
              if (v38 == -8)
              {
                goto LABEL_35;
              }

LABEL_68:
              bzero(v37, v39);
            }

            else
            {
              if (bio && bio->method && (v40 = bio->method->bwrite) != 0)
              {
                if (!LODWORD(bio->cb_arg))
                {
                  ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 125);
                  v46 = *(v35 - 1);
                  v37 = v35 - 8;
                  v39 = v46 + 8;
                  if (v46 == -8)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_68;
                }

                if (v36)
                {
                  v41 = (v40)(bio, v35, v36);
                  if (v41 >= 1)
                  {
                    bio->prev_bio = (bio->prev_bio + v41);
                    v42 = *(v35 - 1);
                    v37 = v35 - 8;
                    v39 = v42 + 8;
                    if (v42 == -8)
                    {
                      goto LABEL_35;
                    }

                    goto LABEL_68;
                  }
                }
              }

              else
              {
                ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 121);
              }

              v45 = *(v35 - 1);
              v37 = v35 - 8;
              v39 = v45 + 8;
              if (v45 != -8)
              {
                goto LABEL_68;
              }
            }

LABEL_35:
            free(v37);
            goto LABEL_36;
          }

LABEL_44:
          if (bio && bio->method && (v32 = bio->method->bwrite) != 0)
          {
            if (LODWORD(bio->cb_arg))
            {
              v33 = (v32)(bio, "(null)", 6);
              if (v33 >= 1)
              {
                bio->prev_bio = (bio->prev_bio + v33);
              }

              goto LABEL_36;
            }

            v43 = 114;
            v44 = 125;
          }

          else
          {
            v43 = 115;
            v44 = 121;
          }

          ERR_put_error(17, 0, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v44);
LABEL_36:
          ++v28;
          v27 = *(v14 + 8);
          if (!v27)
          {
            goto LABEL_74;
          }
        }

        ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 121);
LABEL_51:
        if (v29)
        {
          goto LABEL_52;
        }

        goto LABEL_44;
      }

      BIO_puts(bio, "(null)");
      v27 = *(v14 + 8);
      if (v27)
      {
        goto LABEL_34;
      }
    }

LABEL_74:
    if (bio && bio->method && (v47 = bio->method->bwrite) != 0)
    {
      if (!LODWORD(bio->cb_arg))
      {
        ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 125);
        if (!v13[1])
        {
          goto LABEL_9;
        }

LABEL_83:
        BIO_printf(bio, "%*sExplicit Text: %.*s\n");
        goto LABEL_9;
      }

      v48 = (v47)(bio, "\n", 1);
      if (v48 >= 1)
      {
        bio->prev_bio = (bio->prev_bio + v48);
        if (!v13[1])
        {
          goto LABEL_9;
        }

        goto LABEL_83;
      }
    }

    else
    {
      ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 121);
    }

    goto LABEL_82;
  }

  return 1;
}

char *r2i_certpol(const v3_ext_method *a1, const v3_ext_ctx *a2, const char *a3)
{
  v5 = OPENSSL_sk_new_null();
  if (!v5)
  {
    return v5;
  }

  v6 = X509V3_parse_list(a3);
  if (!v6)
  {
    ERR_put_error(20, 0, 20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_cpols.cc", 123);
    v101 = *v5;
    if (*v5)
    {
      goto LABEL_217;
    }

    goto LABEL_221;
  }

  v7 = v6;
  v8 = *&v6->num;
  if (!*&v6->num)
  {
LABEL_181:
    data = v7->data;
    if (data)
    {
      v123 = *(data - 1);
      v122 = data - 1;
      v124 = v123 + 8;
      if (v123 != -8)
      {
        bzero(v122, v124);
      }

      free(v122);
    }

    comp = v7[-1].comp;
    p_comp = &v7[-1].comp;
    v127 = comp + 8;
    if (comp != -8)
    {
      bzero(p_comp, v127);
    }

    goto LABEL_228;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = v7->data[v10];
    if (*(v11 + 2) || (v12 = *(v11 + 1)) == 0)
    {
      v99 = 131;
      v100 = 130;
      goto LABEL_192;
    }

    if (!strcmp(*(v11 + 1), "ia5org"))
    {
      v9 = 1;
      if (++v10 < v8)
      {
        continue;
      }

LABEL_176:
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          v120 = v7->data[i];
          if (v120)
          {
            X509V3_conf_free(v120);
            v8 = *&v7->num;
          }
        }
      }

      goto LABEL_181;
    }

    if (*v12 != 64)
    {
      v91 = OBJ_sn2nid(v12);
      if (v91 || (v91 = OBJ_ln2nid(v12)) != 0)
      {
        object_with_text_oid = OBJ_nid2obj(v91);
        if (object_with_text_oid)
        {
          goto LABEL_133;
        }
      }

      else
      {
        object_with_text_oid = create_object_with_text_oid(0, v12, 0, 0);
        if (object_with_text_oid)
        {
LABEL_133:
          pval = 0;
          if (ASN1_item_ex_new(&pval, &POLICYINFO_it))
          {
            v18 = pval;
            if (pval)
            {
              *pval = object_with_text_oid;
              goto LABEL_136;
            }
          }

          ASN1_OBJECT_free(object_with_text_oid);
          goto LABEL_205;
        }
      }

      v99 = 129;
      v100 = 154;
LABEL_192:
      ERR_put_error(20, 0, v99, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_cpols.cc", v100);
      ERR_add_error_data(6, "section:", *v11, ",name:", *(v11 + 1), ",value:", *(v11 + 2));
      goto LABEL_205;
    }

    db_meth = a2->db_meth;
    if (!db_meth)
    {
      ERR_put_error(20, 0, 147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_conf.cc", 350);
LABEL_191:
      v99 = 134;
      v100 = 142;
      goto LABEL_192;
    }

    section = NCONF_get_section(db_meth, v12 + 1);
    if (!section)
    {
      goto LABEL_191;
    }

    v15 = section;
    pval = 0;
    v16 = ASN1_item_ex_new(&pval, &POLICYINFO_it);
    v17 = 0;
    if (!v16 || (v18 = pval) == 0)
    {
LABEL_203:
      pval = v17;
      goto LABEL_204;
    }

    if (v9)
    {
      v19 = 22;
    }

    else
    {
      v19 = 26;
    }

    v154 = v19;
    if (!*&v15->num)
    {
      goto LABEL_128;
    }

    v20 = 0;
    v151 = v9;
    v149 = a2;
    v150 = v15;
    do
    {
      v155 = v20;
      v21 = v15->data[v20];
      v22 = *(v21 + 1);
      if (!strcmp(v22, "policyIdentifier"))
      {
        v80 = *(v21 + 2);
        v81 = OBJ_sn2nid(v80);
        if (v81 || (v81 = OBJ_ln2nid(v80)) != 0)
        {
          v82 = OBJ_nid2obj(v81);
          if (v82)
          {
LABEL_106:
            *v18 = v82;
            goto LABEL_127;
          }
        }

        else
        {
          v82 = create_object_with_text_oid(0, v80, 0, 0);
          if (v82)
          {
            goto LABEL_106;
          }
        }

        v128 = 129;
        v129 = 193;
        goto LABEL_201;
      }

      if (*v22 == 67 && *(v22 + 1) == 80 && *(v22 + 2) == 83)
      {
        v23 = *(v22 + 3);
        if (v23 == 46 || v23 == 0)
        {
          if (!*(v18 + 1))
          {
            *(v18 + 1) = OPENSSL_sk_new_null();
          }

          pval = 0;
          if (!ASN1_item_ex_new(&pval, &POLICYQUALINFO_it))
          {
            goto LABEL_202;
          }

          v25 = pval;
          if (!pval)
          {
            goto LABEL_202;
          }

          v26 = v18;
          v27 = *(v18 + 1);
          v28 = *v27;
          if (*v27 >= 0x7FFFFFFF)
          {
            ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
            pval = v26;
            goto LABEL_204;
          }

          v29 = v27[3];
          if (v29 <= v28 + 1)
          {
            v85 = OPENSSL_realloc(v27[1], 16 * v29);
            if (!v85)
            {
              pval = v26;
              goto LABEL_204;
            }

            v27[1] = v85;
            v27[3] = 2 * v29;
            v30 = *v27;
            v86 = *v27 - v28;
            if (*v27 <= v28)
            {
              v31 = &v85[v30];
            }

            else
            {
              if (8 * v86)
              {
                memmove(&v85[v28 + 1], &v85[v28], 8 * v86);
                v30 = *v27;
                v85 = v27[1];
              }

              v31 = &v85[v28];
            }
          }

          else
          {
            v30 = *v27;
            v31 = (v27[1] + 8 * v28);
          }

          v18 = v26;
          *v31 = v25;
          *(v27 + 4) = 0;
          *v27 = v30 + 1;
          if (v30 == -1)
          {
            goto LABEL_202;
          }

          v87 = OBJ_nid2obj(164);
          *v25 = v87;
          if (!v87)
          {
            ERR_put_error(20, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_cpols.cc", 211);
            goto LABEL_202;
          }

          v88 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
          if (!v88)
          {
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            *(v25 + 1) = 0;
            goto LABEL_202;
          }

          *v88 = 24;
          v88[1] = 0x1600000000;
          v89 = (v88 + 1);
          v88[2] = 0;
          v88[3] = 0;
          *(v25 + 1) = v88 + 1;
          v90 = strlen(*(v21 + 2));
          v9 = v151;
          v15 = v150;
          if (!ASN1_STRING_set(v89, *(v21 + 2), v90))
          {
            goto LABEL_202;
          }

          goto LABEL_127;
        }
      }

      if (strncmp(v22, "userNotice", 0xAuLL) || ((v32 = *(v22 + 10), v32 != 46) ? (v33 = v32 == 0) : (v33 = 1), !v33))
      {
        v128 = 130;
        v129 = 245;
        goto LABEL_201;
      }

      v34 = *(v21 + 2);
      if (*v34 != 64)
      {
        v128 = 111;
        v129 = 223;
        goto LABEL_201;
      }

      v35 = a2->db_meth;
      if (!v35)
      {
        ERR_put_error(20, 0, 147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_conf.cc", 350);
LABEL_197:
        v128 = 134;
        v129 = 230;
LABEL_201:
        ERR_put_error(20, 0, v128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_cpols.cc", v129);
        ERR_add_error_data(6, "section:", *v21, ",name:", *(v21 + 1), ",value:", *(v21 + 2));
        goto LABEL_202;
      }

      v36 = NCONF_get_section(v35, (v34 + 1));
      if (!v36)
      {
        goto LABEL_197;
      }

      v37 = v36;
      pval = 0;
      v38 = ASN1_item_ex_new(&pval, &POLICYQUALINFO_it);
      v39 = 0;
      if (!v38)
      {
        goto LABEL_175;
      }

      v40 = pval;
      if (!pval)
      {
        goto LABEL_175;
      }

      v41 = OBJ_nid2obj(165);
      *v40 = v41;
      if (!v41)
      {
        ERR_put_error(20, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_cpols.cc", 273);
        v39 = v40;
        goto LABEL_175;
      }

      pval = 0;
      if (!ASN1_item_ex_new(&pval, &USERNOTICE_it) || (v42 = pval) == 0)
      {
        v39 = v40;
        goto LABEL_175;
      }

      v153 = v40;
      *(v40 + 1) = pval;
      v43 = v42;
      if (!*&v37->num)
      {
        goto LABEL_95;
      }

      v44 = 0;
      v152 = v37;
      v147 = v42;
      do
      {
        while (1)
        {
          v45 = v37->data[v44];
          v46 = *(v45 + 1);
          if (strcmp(v46, "explicitText"))
          {
            break;
          }

          v60 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
          if (!v60)
          {
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            *(v43 + 1) = 0;
            goto LABEL_174;
          }

          *v60 = 24;
          v60[1] = 0x1A00000000;
          v61 = (v60 + 1);
          v60[2] = 0;
          v60[3] = 0;
          *(v43 + 1) = v60 + 1;
LABEL_80:
          v63 = *(v45 + 2);
          v64 = strlen(v63);
          if (!ASN1_STRING_set(v61, v63, v64))
          {
            goto LABEL_174;
          }

          ++v44;
          v37 = v152;
          if (v44 >= *&v152->num)
          {
            goto LABEL_95;
          }
        }

        if (!strcmp(v46, "organization"))
        {
          v62 = *v43;
          if (!*v43)
          {
            pval = 0;
            if (!ASN1_item_ex_new(&pval, &NOTICEREF_it))
            {
              goto LABEL_174;
            }

            v62 = pval;
            if (!pval)
            {
              goto LABEL_174;
            }

            *v43 = pval;
          }

          v61 = *v62;
          *(*v62 + 4) = v154;
          goto LABEL_80;
        }

        if (strcmp(v46, "noticeNumbers"))
        {
          ERR_put_error(20, 0, 130, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_cpols.cc", 333);
          ERR_add_error_data(6, "section:", *v45, ",name:", *(v45 + 1), ",value:", *(v45 + 2));
LABEL_174:
          v39 = v153;
LABEL_175:
          pval = v39;
          ASN1_item_ex_free(&pval, &POLICYQUALINFO_it);
          goto LABEL_202;
        }

        v47 = *v43;
        if (!v47)
        {
          pval = 0;
          if (!ASN1_item_ex_new(&pval, &NOTICEREF_it))
          {
            goto LABEL_174;
          }

          v47 = pval;
          if (!pval)
          {
            goto LABEL_174;
          }

          *v147 = pval;
        }

        v48 = X509V3_parse_list(*(v45 + 2));
        v49 = v48;
        if (!v48 || !*&v48->num)
        {
          ERR_put_error(20, 0, 128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_cpols.cc", 322);
          ERR_add_error_data(6, "section:", *v45, ",name:", *(v45 + 1), ",value:", *(v45 + 2));
          OPENSSL_sk_pop_free_ex(v49, sk_CONF_VALUE_call_free_func, X509V3_conf_free);
          goto LABEL_174;
        }

        v148 = v18;
        v50 = 0;
        v51 = *(v47 + 1);
        while (1)
        {
          v54 = *v49;
          if (v50 >= *v49)
          {
            break;
          }

          v55 = s2i_ASN1_INTEGER(0, *(*(v49[1] + 8 * v50) + 8));
          if (!v55)
          {
            ERR_put_error(20, 0, 127, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_cpols.cc", 358);
            v18 = v148;
            goto LABEL_162;
          }

          v56 = v55;
          v57 = *v51;
          if (*v51 >= 0x7FFFFFFF)
          {
            ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_155:
            v102 = v56->data;
            v18 = v148;
            if (v102)
            {
              v104 = *(v102 - 1);
              v103 = v102 - 8;
              v105 = v104 + 8;
              if (v104 != -8)
              {
                bzero(v103, v105);
              }

              free(v103);
            }

            flags = v56[-1].flags;
            p_flags = &v56[-1].flags;
            v108 = flags + 8;
            if (flags != -8)
            {
              bzero(p_flags, v108);
            }

            free(p_flags);
LABEL_162:
            v109 = *v49;
            if (*v49)
            {
              v110 = 0;
              do
              {
                v111 = *(v49[1] + 8 * v110);
                if (v111)
                {
                  X509V3_conf_free(v111);
                  v109 = *v49;
                }

                ++v110;
              }

              while (v110 < v109);
            }

            v112 = v49[1];
            if (v112)
            {
              v114 = *(v112 - 8);
              v113 = (v112 - 8);
              v115 = v114 + 8;
              if (v114 != -8)
              {
                bzero(v113, v115);
              }

              free(v113);
            }

            v117 = *(v49 - 1);
            v116 = v49 - 1;
            v118 = v117 + 8;
            if (v117 != -8)
            {
              bzero(v116, v118);
            }

            free(v116);
            goto LABEL_174;
          }

          v58 = v51[3];
          if (v58 > v57 + 1)
          {
            v52 = v51[1];
            v53 = *v51;
LABEL_62:
            v52[v57] = v56;
            *(v51 + 4) = 0;
            ++v50;
            *v51 = v53 + 1;
            if (v53 == -1)
            {
              goto LABEL_155;
            }
          }

          else
          {
            v52 = OPENSSL_realloc(v51[1], 16 * v58);
            if (!v52)
            {
              goto LABEL_155;
            }

            v51[1] = v52;
            v51[3] = 2 * v58;
            v53 = *v51;
            v59 = *v51 - v57;
            if (*v51 > v57)
            {
              if (8 * v59)
              {
                memmove(&v52[v57 + 1], &v52[v57], 8 * v59);
                v53 = *v51;
                v52 = v51[1];
              }

              goto LABEL_62;
            }

            v52[v53] = v56;
            *(v51 + 4) = 0;
            ++v50;
            *v51 = v53 + 1;
            if (v53 == -1)
            {
              goto LABEL_155;
            }
          }
        }

        v18 = v148;
        if (v54)
        {
          for (j = 0; j < v54; ++j)
          {
            v66 = *(v49[1] + 8 * j);
            if (v66)
            {
              X509V3_conf_free(v66);
              v54 = *v49;
            }
          }
        }

        v67 = v49[1];
        v43 = v147;
        if (v67)
        {
          v69 = *(v67 - 8);
          v68 = (v67 - 8);
          v70 = v69 + 8;
          if (v69 != -8)
          {
            bzero(v68, v70);
          }

          free(v68);
        }

        v72 = *(v49 - 1);
        v71 = v49 - 1;
        v73 = v72 + 8;
        if (v72 != -8)
        {
          bzero(v71, v73);
        }

        free(v71);
        ++v44;
        v37 = v152;
      }

      while (v44 < *&v152->num);
LABEL_95:
      v74 = *v43;
      if (*v43 && (!*(v74 + 1) || !*v74))
      {
        ERR_put_error(20, 0, 138, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_cpols.cc", 341);
        goto LABEL_174;
      }

      v75 = *(v18 + 1);
      if (!v75)
      {
        v75 = OPENSSL_sk_new_null();
        *(v18 + 1) = v75;
      }

      v76 = *v75;
      v9 = v151;
      if (*v75 >= 0x7FFFFFFFuLL)
      {
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
        goto LABEL_202;
      }

      v77 = *(v75 + 3);
      if (v77 > v76 + 1)
      {
        v78 = *(v75 + 1);
        v79 = *v75;
        a2 = v149;
        goto LABEL_112;
      }

      v78 = OPENSSL_realloc(*(v75 + 1), 16 * v77);
      a2 = v149;
      if (!v78)
      {
        goto LABEL_202;
      }

      *(v75 + 1) = v78;
      *(v75 + 3) = 2 * v77;
      v79 = *v75;
      v83 = *v75 - v76;
      if (*v75 <= v76)
      {
LABEL_112:
        v15 = v150;
        v84 = &v78[v79];
      }

      else
      {
        v15 = v150;
        if (8 * v83)
        {
          memmove(&v78[v76 + 1], &v78[v76], 8 * v83);
          v79 = *v75;
          v78 = *(v75 + 1);
        }

        v84 = &v78[v76];
      }

      *v84 = v153;
      *(v75 + 4) = 0;
      *v75 = v79 + 1;
      if (v79 == -1)
      {
LABEL_202:
        v17 = v18;
        goto LABEL_203;
      }

LABEL_127:
      v20 = v155 + 1;
    }

    while ((v155 + 1) < *&v15->num);
LABEL_128:
    if (!*v18)
    {
      ERR_put_error(20, 0, 142, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_cpols.cc", 252);
      goto LABEL_202;
    }

LABEL_136:
    v93 = *v5;
    if (*v5 >= 0x7FFFFFFFuLL)
    {
      break;
    }

    v94 = *(v5 + 3);
    if (v94 > v93 + 1)
    {
      v95 = *v5;
      v96 = (*(v5 + 1) + 8 * v93);
      goto LABEL_145;
    }

    v97 = OPENSSL_realloc(*(v5 + 1), 16 * v94);
    if (!v97)
    {
      goto LABEL_188;
    }

    *(v5 + 1) = v97;
    *(v5 + 3) = 2 * v94;
    v95 = *v5;
    v98 = *v5 - v93;
    if (*v5 <= v93)
    {
      v96 = &v97[v95];
    }

    else
    {
      if (8 * v98)
      {
        memmove(&v97[v93 + 1], &v97[v93], 8 * v98);
        v95 = *v5;
        v97 = *(v5 + 1);
      }

      v96 = &v97[v93];
    }

LABEL_145:
    *v96 = v18;
    *(v5 + 4) = 0;
    *v5 = v95 + 1;
    if (v95 == -1)
    {
      goto LABEL_188;
    }

    v8 = *&v7->num;
    if (++v10 >= *&v7->num)
    {
      goto LABEL_176;
    }
  }

  ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_188:
  pval = v18;
LABEL_204:
  ASN1_item_ex_free(&pval, &POLICYINFO_it);
LABEL_205:
  v130 = *&v7->num;
  if (*&v7->num)
  {
    v131 = 0;
    do
    {
      v132 = v7->data[v131];
      if (v132)
      {
        X509V3_conf_free(v132);
        v130 = *&v7->num;
      }

      ++v131;
    }

    while (v131 < v130);
  }

  v133 = v7->data;
  if (v133)
  {
    v135 = *(v133 - 1);
    v134 = v133 - 1;
    v136 = v135 + 8;
    if (v135 != -8)
    {
      bzero(v134, v136);
    }

    free(v134);
  }

  v138 = v7[-1].comp;
  v137 = &v7[-1].comp;
  v139 = v138 + 8;
  if (v138 != -8)
  {
    bzero(v137, v139);
  }

  free(v137);
  v101 = *v5;
  if (*v5)
  {
LABEL_217:
    v140 = 0;
    do
    {
      if (*(*(v5 + 1) + 8 * v140))
      {
        pval = *(*(v5 + 1) + 8 * v140);
        ASN1_item_ex_free(&pval, &POLICYINFO_it);
        v101 = *v5;
      }

      ++v140;
    }

    while (v140 < v101);
  }

LABEL_221:
  v141 = *(v5 + 1);
  if (v141)
  {
    v143 = *(v141 - 8);
    v142 = (v141 - 8);
    v144 = v143 + 8;
    if (v143 != -8)
    {
      bzero(v142, v144);
    }

    free(v142);
  }

  v145 = *(v5 - 1);
  p_comp = v5 - 8;
  if (v145 != -8)
  {
    bzero(v5 - 8, v145 + 8);
  }

  v5 = 0;
LABEL_228:
  free(p_comp);
  return v5;
}

char *v2i_crld(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OPENSSL_sk_new_null();
  if (!v6)
  {
    pval = 0;
    ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
    pval = 0;
    ASN1_item_ex_free(&pval, &GENERAL_NAMES_it);
    return v6;
  }

  if (a3 && *a3)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(a3[1] + 8 * v7);
      if (!v8->value)
      {
        break;
      }

      v9 = v2i_GENERAL_NAME_ex(0, v5, a2, v8, 0);
      if (!v9 || ((pval = 0, v10 = ASN1_item_ex_new(&pval, &GENERAL_NAMES_it), v11 = pval, v10) ? (v12 = pval == 0) : (v12 = 1), v12))
      {
        v11 = 0;
        goto LABEL_97;
      }

      v13 = *pval;
      if (*pval >= 0x7FFFFFFFuLL)
      {
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
        goto LABEL_97;
      }

      v14 = *(pval + 3);
      if (v14 <= v13 + 1)
      {
        v42 = OPENSSL_realloc(*(pval + 1), 16 * v14);
        if (!v42)
        {
          goto LABEL_97;
        }

        *(v11 + 1) = v42;
        *(v11 + 3) = 2 * v14;
        v15 = *v11;
        v43 = *v11 - v13;
        if (*v11 <= v13)
        {
          v16 = &v42[v15];
        }

        else
        {
          if (8 * v43)
          {
            memmove(&v42[v13 + 1], &v42[v13], 8 * v43);
            v15 = *v11;
            v42 = *(v11 + 1);
          }

          v16 = &v42[v13];
        }
      }

      else
      {
        v15 = *pval;
        v16 = (*(pval + 1) + 8 * v13);
      }

      *v16 = v9;
      *(v11 + 4) = 0;
      *v11 = v15 + 1;
      if (v15 == -1)
      {
        goto LABEL_97;
      }

      pval = 0;
      if (!ASN1_item_ex_new(&pval, &DIST_POINT_it))
      {
        goto LABEL_96;
      }

      v48 = pval;
      if (!pval)
      {
        goto LABEL_96;
      }

      v49 = *v6;
      if (*v6 >= 0x7FFFFFFFuLL)
      {
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_87:
        pval = v48;
        ASN1_item_ex_free(&pval, &DIST_POINT_it);
LABEL_96:
        v9 = 0;
LABEL_97:
        pval = v9;
        ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
        pval = v11;
        ASN1_item_ex_free(&pval, &GENERAL_NAMES_it);
        v59 = *v6;
        if (*v6)
        {
          v60 = 0;
          do
          {
            if (*(*(v6 + 1) + 8 * v60))
            {
              pval = *(*(v6 + 1) + 8 * v60);
              ASN1_item_ex_free(&pval, &DIST_POINT_it);
              v59 = *v6;
            }

            ++v60;
          }

          while (v60 < v59);
        }

        v61 = *(v6 + 1);
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

        v66 = *(v6 - 1);
        v65 = v6 - 8;
        v67 = v66 + 8;
        if (v66 != -8)
        {
          bzero(v65, v67);
        }

        free(v65);
        return 0;
      }

      v50 = *(v6 + 3);
      if (v50 <= v49 + 1)
      {
        v53 = OPENSSL_realloc(*(v6 + 1), 16 * v50);
        if (!v53)
        {
          goto LABEL_87;
        }

        *(v6 + 1) = v53;
        *(v6 + 3) = 2 * v50;
        v51 = *v6;
        v54 = *v6 - v49;
        if (*v6 <= v49)
        {
          v52 = &v53[v51];
        }

        else
        {
          if (8 * v54)
          {
            memmove(&v53[v49 + 1], &v53[v49], 8 * v54);
            v51 = *v6;
            v53 = *(v6 + 1);
          }

          v52 = &v53[v49];
        }
      }

      else
      {
        v51 = *v6;
        v52 = (*(v6 + 1) + 8 * v49);
      }

      *v52 = v48;
      *(v6 + 4) = 0;
      *v6 = v51 + 1;
      if (v51 == -1)
      {
        goto LABEL_87;
      }

      pval = 0;
      v55 = ASN1_item_ex_new(&pval, &CRL_DIST_POINTS_it.sname);
      v56 = pval;
      if (!v55)
      {
        v56 = 0;
      }

      *v48 = v56;
      if (!v56)
      {
        goto LABEL_96;
      }

      *(v56 + 1) = v11;
      **v48 = 0;
LABEL_81:
      if (++v7 >= *a3)
      {
        return v6;
      }
    }

    v17 = *(a2 + 40);
    if (v17)
    {
      section = NCONF_get_section(v17, v8->name);
      if (!section)
      {
        goto LABEL_95;
      }

      v19 = section;
      pval = 0;
      if (!ASN1_item_ex_new(&pval, &DIST_POINT_it) || (v20 = pval) == 0)
      {
        pval = 0;
        goto LABEL_94;
      }

      v21 = *&v19->num;
      if (*&v19->num)
      {
        for (i = 0; i < *&v19->num; ++i)
        {
          if (v21 <= i)
          {
            v23 = 0;
            v24 = set_dist_point_name(v20, a2, 0);
            if (v24 > 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v23 = v19->data[i];
            v24 = set_dist_point_name(v20, a2, v23);
            if (v24 > 0)
            {
              goto LABEL_21;
            }
          }

          if (v24 < 0)
          {
            goto LABEL_93;
          }

          v25 = *(v23 + 8);
          if (!strcmp(v25, "reasons"))
          {
            if (!set_reasons(v20 + 1, *(v23 + 16)))
            {
              goto LABEL_93;
            }
          }

          else if (!strcmp(v25, "CRLissuer"))
          {
            pval = *(v20 + 2);
            ASN1_item_ex_free(&pval, &GENERAL_NAMES_it);
            v26 = *(v23 + 16);
            if (*v26 == 64)
            {
              if (!*(a2 + 40))
              {
                ERR_put_error(20, 0, 147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_conf.cc", 350);
LABEL_92:
                ERR_put_error(20, 0, 153, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_crld.cc", 79);
                *(v20 + 2) = 0;
                goto LABEL_93;
              }

              v27 = NCONF_get_section(*(a2 + 40), v26 + 1);
              if (!v27)
              {
                goto LABEL_92;
              }

              v28 = v2i_GENERAL_NAMES(0, a2, v27);
              *(v20 + 2) = v28;
              if (!v28)
              {
                goto LABEL_93;
              }
            }

            else
            {
              v29 = X509V3_parse_list(v26);
              if (!v29)
              {
                goto LABEL_92;
              }

              v30 = v29;
              v31 = v2i_GENERAL_NAMES(0, a2, v29);
              v32 = *&v30->num;
              if (*&v30->num)
              {
                v33 = 0;
                do
                {
                  v34 = v30->data[v33];
                  if (v34)
                  {
                    X509V3_conf_free(v34);
                    v32 = *&v30->num;
                  }

                  ++v33;
                }

                while (v33 < v32);
              }

              data = v30->data;
              if (data)
              {
                v37 = *(data - 1);
                v36 = data - 1;
                v38 = v37 + 8;
                if (v37 != -8)
                {
                  bzero(v36, v38);
                }

                free(v36);
              }

              comp = v30[-1].comp;
              p_comp = &v30[-1].comp;
              v41 = comp + 8;
              if (comp != -8)
              {
                bzero(p_comp, v41);
              }

              free(p_comp);
              *(v20 + 2) = v31;
              if (!v31)
              {
                goto LABEL_93;
              }
            }
          }

LABEL_21:
          v21 = *&v19->num;
        }
      }

      v44 = *v6;
      if (*v6 >= 0x7FFFFFFFuLL)
      {
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
        goto LABEL_93;
      }

      v45 = *(v6 + 3);
      if (v45 <= v44 + 1)
      {
        v57 = OPENSSL_realloc(*(v6 + 1), 16 * v45);
        if (!v57)
        {
          goto LABEL_93;
        }

        *(v6 + 1) = v57;
        *(v6 + 3) = 2 * v45;
        v46 = *v6;
        v58 = *v6 - v44;
        if (*v6 <= v44)
        {
          v47 = &v57[v46];
        }

        else
        {
          if (8 * v58)
          {
            memmove(&v57[v44 + 1], &v57[v44], 8 * v58);
            v46 = *v6;
            v57 = *(v6 + 1);
          }

          v47 = &v57[v44];
        }
      }

      else
      {
        v46 = *v6;
        v47 = (*(v6 + 1) + 8 * v44);
      }

      *v47 = v20;
      *(v6 + 4) = 0;
      *v6 = v46 + 1;
      if (v46 != -1)
      {
        goto LABEL_81;
      }

LABEL_93:
      pval = v20;
LABEL_94:
      ASN1_item_ex_free(&pval, &DIST_POINT_it);
    }

    else
    {
      ERR_put_error(20, 0, 147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_conf.cc", 350);
    }

LABEL_95:
    v11 = 0;
    goto LABEL_96;
  }

  return v6;
}

uint64_t i2r_crldp(const v3_ext_method *a1, void *a2, bio_st *bp, int a4)
{
  if (a2 && *a2)
  {
    v6 = 0;
    v7 = a4 + 2;
    while (1)
    {
      BIO_puts(bp, "\n");
      v8 = *(a2[1] + 8 * v6);
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_8;
      }

      if (*v9)
      {
        nm.entries = *(v9 + 8);
        BIO_printf(bp, "%*sRelative Name:\n%*s", a4, "", v7, "");
        X509_NAME_print_ex(bp, &nm, 0, 0x82031FuLL);
        BIO_puts(bp, "\n");
        goto LABEL_8;
      }

      BIO_printf(bp, "%*sFull Name:\n", a4, "");
      v17 = *(v9 + 8);
      if (v17)
      {
        if (*v17)
        {
          break;
        }
      }

LABEL_8:
      v10 = v8[1];
      if (v10)
      {
        print_reasons(bp, "Reasons", v10, a4);
      }

      if (v8[2])
      {
        BIO_printf(bp, "%*sCRL Issuer:\n", a4, "");
        v11 = v8[2];
        if (v11)
        {
          if (*v11)
          {
            for (i = 0; i < *v11; ++i)
            {
              BIO_printf(bp, "%*s", v7, "");
              if (*v11 <= i)
              {
                GENERAL_NAME_print(bp, 0);
                if (!bp)
                {
                  goto LABEL_14;
                }
              }

              else
              {
                GENERAL_NAME_print(bp, *(v11[1] + 8 * i));
                if (!bp)
                {
                  goto LABEL_14;
                }
              }

              if (!bp->method || (bwrite = bp->method->bwrite) == 0)
              {
LABEL_14:
                v13 = 115;
                v14 = 121;
                goto LABEL_15;
              }

              if (LODWORD(bp->cb_arg))
              {
                v16 = (bwrite)(bp, "\n", 1);
                if (v16 >= 1)
                {
                  bp->prev_bio = (bp->prev_bio + v16);
                }

                continue;
              }

              v13 = 114;
              v14 = 125;
LABEL_15:
              ERR_put_error(17, 0, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v14);
            }
          }
        }
      }

      if (++v6 >= *a2)
      {
        return 1;
      }
    }

    v18 = 0;
    while (1)
    {
      BIO_printf(bp, "%*s", v7, "");
      if (*v17 <= v18)
      {
        GENERAL_NAME_print(bp, 0);
        if (!bp)
        {
          goto LABEL_30;
        }
      }

      else
      {
        GENERAL_NAME_print(bp, *(v17[1] + 8 * v18));
        if (!bp)
        {
          goto LABEL_30;
        }
      }

      if (!bp->method || (v21 = bp->method->bwrite) == 0)
      {
LABEL_30:
        v19 = 115;
        v20 = 121;
        goto LABEL_31;
      }

      if (LODWORD(bp->cb_arg))
      {
        v22 = (v21)(bp, "\n", 1);
        if (v22 >= 1)
        {
          bp->prev_bio = (bp->prev_bio + v22);
        }

        goto LABEL_32;
      }

      v19 = 114;
      v20 = 125;
LABEL_31:
      ERR_put_error(17, 0, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v20);
LABEL_32:
      if (++v18 >= *v17)
      {
        goto LABEL_8;
      }
    }
  }

  return 1;
}

ASN1_VALUE *v2i_idp(uint64_t a1, uint64_t a2, void *a3)
{
  pval = 0;
  if (ASN1_item_ex_new(&pval, &ISSUING_DIST_POINT_it))
  {
    v5 = pval;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    pval = 0;
    ASN1_item_ex_free(&pval, &ISSUING_DIST_POINT_it);
    return v5;
  }

  if (!a3)
  {
    return pval;
  }

  if (*a3)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a3[1] + 8 * v6);
      v8 = v7[1];
      v9 = v7[2];
      v10 = set_dist_point_name(v5, a2, v7);
      if (v10 > 0)
      {
        goto LABEL_9;
      }

      if (v10 < 0)
      {
        goto LABEL_31;
      }

      if (!strcmp(v8, "onlyuser"))
      {
        break;
      }

      if (!strcmp(v8, "onlyCA"))
      {
        v11 = v7[2];
        if (!v11)
        {
          goto LABEL_29;
        }

        v12 = (v5 + 12);
        goto LABEL_8;
      }

      if (!strcmp(v8, "onlyAA"))
      {
        v11 = v7[2];
        if (!v11)
        {
          goto LABEL_29;
        }

        v12 = (v5 + 28);
        goto LABEL_8;
      }

      if (!strcmp(v8, "indirectCRL"))
      {
        v11 = v7[2];
        if (!v11)
        {
LABEL_29:
          ERR_put_error(20, 0, 120, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_utl.cc", 272);
LABEL_30:
          ERR_add_error_data(6, "section:", *v7, ",name:", v7[1], ",value:", v7[2]);
          goto LABEL_31;
        }

        v12 = (v5 + 24);
        goto LABEL_8;
      }

      if (strcmp(v8, "onlysomereasons"))
      {
        ERR_put_error(20, 0, 123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_crld.cc", 441);
        ERR_add_error_data(6, "section:", *v7, ",name:", v7[1], ",value:", v7[2]);
LABEL_31:
        pval = v5;
        ASN1_item_ex_free(&pval, &ISSUING_DIST_POINT_it);
        return 0;
      }

      if (!set_reasons(v5 + 2, v9))
      {
        goto LABEL_31;
      }

LABEL_9:
      if (++v6 >= *a3)
      {
        return v5;
      }
    }

    v11 = v7[2];
    if (!v11)
    {
      goto LABEL_29;
    }

    v12 = (v5 + 8);
LABEL_8:
    if (!X509V3_BOOL_from_string(v11, v12))
    {
      goto LABEL_30;
    }

    goto LABEL_9;
  }

  return v5;
}

uint64_t i2r_idp(const v3_ext_method *a1, int *a2, bio_st *a3, int a4)
{
  v7 = *a2;
  if (*a2)
  {
    if (*v7)
    {
      nm.entries = *(v7 + 8);
      BIO_printf(a3, "%*sRelative Name:\n%*s", a4, "", a4 + 2, "");
      X509_NAME_print_ex(a3, &nm, 0, 0x82031FuLL);
      BIO_puts(a3, "\n");
    }

    else
    {
      BIO_printf(a3, "%*sFull Name:\n", a4, "");
      v10 = *(v7 + 8);
      if (v10 && *v10)
      {
        v11 = 0;
        do
        {
          BIO_printf(a3, "%*s", a4 + 2, "");
          if (*v10 > v11)
          {
            v12 = *(v10[1] + 8 * v11);
          }

          else
          {
            v12 = 0;
          }

          GENERAL_NAME_print(a3, v12);
          BIO_puts(a3, "\n");
          ++v11;
        }

        while (v11 < *v10);
      }
    }
  }

  if (a2[2] >= 1)
  {
    BIO_printf(a3, "%*sOnly User Certificates\n", a4, "");
  }

  if (a2[3] >= 1)
  {
    BIO_printf(a3, "%*sOnly CA Certificates\n", a4, "");
  }

  if (a2[6] >= 1)
  {
    BIO_printf(a3, "%*sIndirect CRL\n", a4, "");
  }

  v8 = *(a2 + 2);
  if (v8)
  {
    print_reasons(a3, "Only Some Reasons", v8, a4);
  }

  if (a2[7] >= 1)
  {
    BIO_printf(a3, "%*sOnly Attribute Certificates\n", a4, "");
  }

  if (!*a2 && a2[2] <= 0 && a2[3] <= 0 && a2[6] <= 0 && !*(a2 + 2) && a2[7] <= 0)
  {
    BIO_printf(a3, "%*s<EMPTY>\n", a4, "");
  }

  return 1;
}

uint64_t DIST_POINT_set_dpname(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1 == 1)
  {
    v3 = *(a1 + 8);
    result = ASN1_item_dup(&X509_NAME_ENTRY_it.sname, a2);
    *(a1 + 16) = result;
    if (!result)
    {
      return result;
    }

    if (v3)
    {
      v5 = 0;
      while (v5 < *v3)
      {
        v6 = X509_NAME_add_entry(*(a1 + 16), *(v3[1] + 8 * v5), -1, v5 == 0);
        ++v5;
        if (!v6)
        {
          goto LABEL_14;
        }
      }

      result = *(a1 + 16);
    }

    pval = result;
    if ((asn1_item_ex_i2d_opt(&pval, 0, &X509_NAME_ENTRY_it.sname, -1, 0, 0) & 0x80000000) != 0)
    {
LABEL_14:
      pval = *(a1 + 16);
      ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
      result = 0;
      *(a1 + 16) = 0;
      return result;
    }
  }

  return 1;
}

uint64_t set_dist_point_name(ASN1_VALUE **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (!strncmp(v6, "fullname", 9uLL))
  {
    v8 = *(a3 + 16);
    if (!v8)
    {
      ERR_put_error(20, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_crld.cc", 99);
      return 0xFFFFFFFFLL;
    }

    if (*v8 == 64)
    {
      if (*(a2 + 40))
      {
        section = NCONF_get_section(*(a2 + 40), v8 + 1);
        if (section)
        {
          v10 = v2i_GENERAL_NAMES(0, a2, section);
          if (!v10)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_51;
        }
      }

      else
      {
        ERR_put_error(20, 0, 147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_conf.cc", 350);
      }
    }

    else
    {
      v28 = X509V3_parse_list(v8);
      if (v28)
      {
        v29 = v28;
        v10 = v2i_GENERAL_NAMES(0, a2, v28);
        v30 = *&v29->num;
        if (*&v29->num)
        {
          v31 = 0;
          do
          {
            v32 = v29->data[v31];
            if (v32)
            {
              X509V3_conf_free(v32);
              v30 = *&v29->num;
            }

            ++v31;
          }

          while (v31 < v30);
        }

        data = v29->data;
        if (data)
        {
          v35 = *(data - 1);
          v34 = data - 1;
          v36 = v35 + 8;
          if (v35 != -8)
          {
            bzero(v34, v36);
          }

          free(v34);
        }

        comp = v29[-1].comp;
        p_comp = &v29[-1].comp;
        v39 = comp + 8;
        if (comp != -8)
        {
          bzero(p_comp, v39);
        }

        free(p_comp);
        if (!v10)
        {
          return 0xFFFFFFFFLL;
        }

LABEL_51:
        v40 = 0;
        if (!*a1)
        {
          goto LABEL_90;
        }

        goto LABEL_52;
      }
    }

    ERR_put_error(20, 0, 153, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_crld.cc", 79);
    return 0xFFFFFFFFLL;
  }

  if (strcmp(v6, "relativename"))
  {
    return 0;
  }

  v11 = *(a3 + 16);
  if (!v11)
  {
    ERR_put_error(20, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_crld.cc", 110);
    return 0xFFFFFFFFLL;
  }

  v12 = *(a2 + 40);
  if (!v12)
  {
    ERR_put_error(20, 0, 147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_conf.cc", 350);
    goto LABEL_60;
  }

  v13 = NCONF_get_section(v12, v11);
  if (!v13)
  {
LABEL_60:
    ERR_put_error(20, 0, 153, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_crld.cc", 115);
    return 0xFFFFFFFFLL;
  }

  v14 = v13;
  pval = 0;
  v15 = ASN1_item_ex_new(&pval, &X509_NAME_ENTRY_it.sname);
  result = 0xFFFFFFFFLL;
  if (v15)
  {
    v16 = pval;
    if (pval)
    {
      v17 = 0;
      while (1)
      {
        v23 = v17;
        v24 = *&v14->num;
        if (v17 >= *&v14->num)
        {
LABEL_70:
          v40 = *v16;
          *v16 = 0;
          pval = v16;
          ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
          if (v23 < v24)
          {
            goto LABEL_71;
          }

          if (!v40)
          {
            return 0xFFFFFFFFLL;
          }

          if (!*v40)
          {
            goto LABEL_81;
          }

          if (*(*(v40[1] + 8 * *v40 - 8) + 16))
          {
            ERR_put_error(20, 0, 122, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_crld.cc", 131);
            v50 = *v40;
            if (!*v40)
            {
              goto LABEL_81;
            }

            goto LABEL_73;
          }

          v10 = 0;
          if (!*a1)
          {
LABEL_90:
            pval = 0;
            v59 = ASN1_item_ex_new(&pval, &CRL_DIST_POINTS_it.sname);
            v60 = pval;
            if (!v59)
            {
              v60 = 0;
            }

            *a1 = v60;
            if (v60)
            {
              if (v10)
              {
                *v60 = 0;
                *(v60 + 1) = v10;
                return 1;
              }

              else
              {
                result = 1;
                *v60 = 1;
                *(v60 + 1) = v40;
              }

              return result;
            }

LABEL_53:
            if (v10)
            {
              v41 = *&v10->num;
              if (*&v10->num)
              {
                v42 = 0;
                do
                {
                  if (v10->data[v42])
                  {
                    pval = v10->data[v42];
                    ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
                    v41 = *&v10->num;
                  }

                  ++v42;
                }

                while (v42 < v41);
              }

              v43 = v10->data;
              if (v43)
              {
                v45 = *(v43 - 1);
                v44 = v43 - 1;
                v46 = v45 + 8;
                if (v45 != -8)
                {
                  bzero(v44, v46);
                }

                free(v44);
              }

              v48 = v10[-1].comp;
              v47 = &v10[-1].comp;
              v49 = v48 + 8;
              if (v48 != -8)
              {
                bzero(v47, v49);
              }

              free(v47);
            }

LABEL_71:
            if (v40)
            {
              v50 = *v40;
              if (!*v40)
              {
                goto LABEL_81;
              }

LABEL_73:
              v51 = 0;
              do
              {
                if (*(v40[1] + 8 * v51))
                {
                  pval = *(v40[1] + 8 * v51);
                  ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it);
                  v50 = *v40;
                }

                ++v51;
              }

              while (v51 < v50);
LABEL_81:
              v52 = v40[1];
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

              v57 = *(v40 - 1);
              v56 = v40 - 1;
              v58 = v57 + 8;
              if (v57 != -8)
              {
                bzero(v56, v58);
              }

              free(v56);
            }

            return 0xFFFFFFFFLL;
          }

LABEL_52:
          ERR_put_error(20, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_crld.cc", 139);
          goto LABEL_53;
        }

        v25 = v14->data[v17];
        v18 = *(v25 + 1);
        for (i = v18 + 1; ; ++i)
        {
          v27 = *(i - 1);
          if (v27 <= 0x2D)
          {
            break;
          }

          if (v27 == 58 || v27 == 46)
          {
            goto LABEL_17;
          }

LABEL_28:
          ;
        }

        if (!*(i - 1))
        {
          goto LABEL_19;
        }

        if (v27 != 44)
        {
          goto LABEL_28;
        }

LABEL_17:
        if (*i)
        {
          v18 = i;
        }

LABEL_19:
        v19 = *v18;
        if (v19 == 43)
        {
          v20 = (v18 + 1);
        }

        else
        {
          v20 = v18;
        }

        if (v19 == 43)
        {
          v21 = -1;
        }

        else
        {
          v21 = 0;
        }

        v22 = X509_NAME_add_entry_by_txt(v16, v20, 4097, *(v25 + 2), -1, -1, v21);
        v17 = v23 + 1;
        if (!v22)
        {
          goto LABEL_70;
        }
      }
    }
  }

  return result;
}

uint64_t set_reasons(asn1_string_st **a1, const char *line)
{
  if (*a1)
  {
    ERR_put_error(20, 0, 163, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_crld.cc", 178);
    return 0;
  }

  v4 = X509V3_parse_list(line);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  while (1)
  {
    v8 = *&v5->num;
    if (v6 >= *&v5->num)
    {
      v2 = 1;
      if (!v8)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    v9 = v5->data[v6];
    v10 = *(v9 + 1);
    v11 = *a1;
    if (*a1)
    {
      if (!strcmp("unused", *(v9 + 1)))
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    v12 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v12)
    {
      break;
    }

    *v12 = 24;
    *(v12 + 1) = 0x300000000;
    v11 = (v12 + 8);
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *a1 = (v12 + 8);
    if (!strcmp("unused", v10))
    {
LABEL_5:
      v7 = &reason_flags;
      goto LABEL_6;
    }

LABEL_13:
    if (!strcmp("keyCompromise", v10))
    {
      v7 = &dword_279EA12C8;
    }

    else if (!strcmp("CACompromise", v10))
    {
      v7 = &dword_279EA12E0;
    }

    else if (!strcmp("affiliationChanged", v10))
    {
      v7 = &dword_279EA12F8;
    }

    else if (!strcmp("superseded", v10))
    {
      v7 = &dword_279EA1310;
    }

    else if (!strcmp("cessationOfOperation", v10))
    {
      v7 = &dword_279EA1328;
    }

    else if (!strcmp("certificateHold", v10))
    {
      v7 = &dword_279EA1340;
    }

    else if (!strcmp("privilegeWithdrawn", v10))
    {
      v7 = &dword_279EA1358;
    }

    else
    {
      v13 = strcmp("AACompromise", v10);
      v7 = &dword_279EA1370;
      if (v13)
      {
        goto LABEL_33;
      }
    }

LABEL_6:
    ++v6;
    if (!ASN1_BIT_STRING_set_bit(v11, *v7, 1))
    {
      goto LABEL_33;
    }
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  *a1 = 0;
LABEL_33:
  v2 = 0;
  v8 = *&v5->num;
  if (!*&v5->num)
  {
    goto LABEL_38;
  }

LABEL_34:
  v14 = 0;
  do
  {
    v15 = v5->data[v14];
    if (v15)
    {
      X509V3_conf_free(v15);
      v8 = *&v5->num;
    }

    ++v14;
  }

  while (v14 < v8);
LABEL_38:
  data = v5->data;
  if (data)
  {
    v18 = *(data - 1);
    v17 = data - 1;
    v19 = v18 + 8;
    if (v18 != -8)
    {
      bzero(v17, v19);
    }

    free(v17);
  }

  comp = v5[-1].comp;
  p_comp = &v5[-1].comp;
  v22 = comp + 8;
  if (comp != -8)
  {
    bzero(p_comp, v22);
  }

  free(p_comp);
  return v2;
}

uint64_t dpn_cb(int a1, ASN1_VALUE_st **a2, const ASN1_ITEM_st *a3, void *a4)
{
  v6 = *a2;
  if (a1 == 3)
  {
    pval[1] = v4;
    pval[2] = v5;
    pval[0] = *(v6 + 16);
    ASN1_item_ex_free(pval, &X509_NAME_ENTRY_it.sname);
  }

  else if (a1 == 1)
  {
    *(v6 + 16) = 0;
    return 1;
  }

  return 1;
}

uint64_t print_reasons(bio_st *a1, const char *a2, asn1_string_st *a3, int a4)
{
  BIO_printf(a1, "%*s%s:\n%*s", a4, "", a2, a4 + 2, "");
  if (!a3 || a3->length < 1 || (data = a3->data) == 0)
  {
LABEL_14:
    v8 = "<EMPTY>\n";
    v9 = a1;

    return BIO_puts(v9, v8);
  }

  if (*data < 0)
  {
    BIO_puts(a1, "Unused");
    length = a3->length;
    if (a3->length < 1)
    {
      goto LABEL_51;
    }

    v12 = a3->data;
    if (!v12)
    {
      goto LABEL_46;
    }

    if ((*v12 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    BIO_puts(a1, ", ");
  }

  else
  {
    v7 = *data;
    if (v7 < 0x40)
    {
      if (v7 < 0x20)
      {
        if (v7 < 0x10)
        {
          if (v7 < 8)
          {
            if (v7 < 4)
            {
              if (v7 < 2)
              {
                if (!*data)
                {
                  if (a3->length == 1 || (data[1] & 0x80000000) == 0)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_50;
                }

                goto LABEL_45;
              }

              goto LABEL_41;
            }

            goto LABEL_37;
          }

          goto LABEL_33;
        }

        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  BIO_puts(a1, "Key Compromise");
  length = a3->length;
  if (a3->length < 1)
  {
    goto LABEL_51;
  }

LABEL_22:
  v13 = a3->data;
  if (!v13)
  {
    goto LABEL_46;
  }

  if ((*v13 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  BIO_puts(a1, ", ");
LABEL_25:
  BIO_puts(a1, "CA Compromise");
  length = a3->length;
  if (a3->length < 1)
  {
    goto LABEL_51;
  }

LABEL_26:
  v14 = a3->data;
  if (!v14)
  {
    goto LABEL_46;
  }

  if ((*v14 & 0x10) == 0)
  {
    goto LABEL_30;
  }

  BIO_puts(a1, ", ");
LABEL_29:
  BIO_puts(a1, "Affiliation Changed");
  length = a3->length;
  if (a3->length < 1)
  {
    goto LABEL_51;
  }

LABEL_30:
  v15 = a3->data;
  if (!v15)
  {
    goto LABEL_46;
  }

  if ((*v15 & 8) == 0)
  {
    goto LABEL_34;
  }

  BIO_puts(a1, ", ");
LABEL_33:
  BIO_puts(a1, "Superseded");
  length = a3->length;
  if (a3->length < 1)
  {
    goto LABEL_51;
  }

LABEL_34:
  v16 = a3->data;
  if (!v16)
  {
    goto LABEL_46;
  }

  if ((*v16 & 4) == 0)
  {
    goto LABEL_38;
  }

  BIO_puts(a1, ", ");
LABEL_37:
  BIO_puts(a1, "Cessation Of Operation");
  length = a3->length;
  if (a3->length < 1)
  {
    goto LABEL_51;
  }

LABEL_38:
  v17 = a3->data;
  if (!v17)
  {
    goto LABEL_46;
  }

  if ((*v17 & 2) == 0)
  {
    goto LABEL_42;
  }

  BIO_puts(a1, ", ");
LABEL_41:
  BIO_puts(a1, "Certificate Hold");
  length = a3->length;
  if (a3->length < 1)
  {
    goto LABEL_51;
  }

LABEL_42:
  v18 = a3->data;
  if (v18 && (*v18 & 1) != 0)
  {
    BIO_puts(a1, ", ");
LABEL_45:
    BIO_puts(a1, "Privilege Withdrawn");
    length = a3->length;
  }

LABEL_46:
  if (length >= 2)
  {
    v19 = a3->data;
    if (v19)
    {
      if (v19[1] < 0)
      {
        BIO_puts(a1, ", ");
LABEL_50:
        BIO_puts(a1, "AA Compromise");
      }
    }
  }

LABEL_51:
  v8 = "\n";
  v9 = a1;

  return BIO_puts(v9, v8);
}

char *i2s_ASN1_ENUMERATED_TABLE(v3_ext_method *a1, asn1_string_st *a2)
{
  if (a2)
  {
    v14 = 0;
    if (asn1_string_get_int64(&v14, a2, 10))
    {
      v4 = v14;
      usr_data = a1->usr_data;
      v6 = *(usr_data + 1);
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      ERR_clear_error();
      v4 = -1;
      usr_data = a1->usr_data;
      v6 = *(usr_data + 1);
      if (!v6)
      {
LABEL_18:

        return i2s_ASN1_ENUMERATED(a1, a2);
      }
    }
  }

  else
  {
    v4 = 0;
    usr_data = a1->usr_data;
    v6 = *(usr_data + 1);
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v4 != *usr_data)
  {
    v7 = (usr_data + 32);
    do
    {
      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_18;
      }

      v8 = *(v7 - 2);
      v7 += 3;
    }

    while (v4 != v8);
  }

  v9 = strlen(v6);
  v10 = v9 + 1;
  if (v9 == -1)
  {
    return 0;
  }

  if (v10 > 0xFFFFFFFFFFFFFFF7 || (v11 = malloc_type_malloc(v9 + 9, 0xB4E622C9uLL)) == 0)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  *v11 = v10;
  v12 = v11 + 1;

  return memcpy(v12, v6, v10);
}

char *i2v_EXTENDED_KEY_USAGE(uint64_t a1, unint64_t *a2, char *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = 0;
      do
      {
        if (v4 > v5)
        {
          v6 = *(a2[1] + 8 * v5);
        }

        else
        {
          v6 = 0;
        }

        OBJ_obj2txt(buf, 80, v6, 0);
        v7 = strlen(buf);
        x509V3_add_len_value(0, buf, v7, 0, &v9);
        ++v5;
        v4 = *a2;
      }

      while (v5 < *a2);
      return v9;
    }
  }

  return a3;
}

char *v2i_EXTENDED_KEY_USAGE(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = OPENSSL_sk_new_null();
  if (v4 && a3)
  {
    v5 = 0;
    while (1)
    {
      if (v5 >= *a3)
      {
        return v4;
      }

      v8 = *(a3[1] + 8 * v5);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = OBJ_sn2nid(*(v8 + 16));
        if (v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = *(v8 + 8);
        v10 = OBJ_sn2nid(v9);
        if (v10)
        {
          goto LABEL_12;
        }
      }

      v10 = OBJ_ln2nid(v9);
      if (!v10)
      {
        object_with_text_oid = create_object_with_text_oid(0, v9, 0, 0);
        if (!object_with_text_oid)
        {
          goto LABEL_24;
        }

        goto LABEL_13;
      }

LABEL_12:
      object_with_text_oid = OBJ_nid2obj(v10);
      if (!object_with_text_oid)
      {
        goto LABEL_24;
      }

LABEL_13:
      v12 = *v4;
      if (*v4 >= 0x7FFFFFFFuLL)
      {
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_24:
        ASN1_OBJECT_free(object_with_text_oid);
        v15 = *v4;
        if (*v4)
        {
          v16 = 0;
          do
          {
            v17 = *(*(v4 + 1) + 8 * v16);
            if (v17)
            {
              ASN1_OBJECT_free(v17);
              v15 = *v4;
            }

            ++v16;
          }

          while (v16 < v15);
        }

        v18 = *(v4 + 1);
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

        v23 = *(v4 - 1);
        v22 = v4 - 8;
        v24 = v23 + 8;
        if (v23 != -8)
        {
          bzero(v22, v24);
        }

        free(v22);
        ERR_put_error(20, 0, 129, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_extku.cc", 88);
        ERR_add_error_data(6, "section:", *v8, ",name:", *(v8 + 8), ",value:", *(v8 + 16));
        return 0;
      }

      v13 = *(v4 + 3);
      if (v13 > v12 + 1)
      {
        v6 = *(v4 + 1);
        v7 = *v4;
LABEL_5:
        v6[v12] = object_with_text_oid;
        *(v4 + 4) = 0;
        ++v5;
        *v4 = v7 + 1;
        if (v7 == -1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v6 = OPENSSL_realloc(*(v4 + 1), 16 * v13);
        if (!v6)
        {
          goto LABEL_24;
        }

        *(v4 + 1) = v6;
        *(v4 + 3) = 2 * v13;
        v7 = *v4;
        v14 = *v4 - v12;
        if (*v4 > v12)
        {
          if (8 * v14)
          {
            memmove(&v6[v12 + 1], &v6[v12], 8 * v14);
            v7 = *v4;
            v6 = *(v4 + 1);
          }

          goto LABEL_5;
        }

        v6[v7] = object_with_text_oid;
        *(v4 + 4) = 0;
        ++v5;
        *v4 = v7 + 1;
        if (v7 == -1)
        {
          goto LABEL_24;
        }
      }
    }
  }

  return v4;
}

uint64_t GENERAL_NAME_cmp(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v4 = *a1;
  if (*a1 != *a2)
  {
    return result;
  }

  if (v4 <= 4)
  {
    if (v4 <= 2)
    {
      if ((v4 - 1) >= 2)
      {
        if (!v4)
        {
          v5 = *(a1 + 8);
          if (v5)
          {
            v6 = *(a2 + 8);
            if (v6)
            {
              result = OBJ_cmp(*v5, *v6);
              if (!result)
              {
                v7 = *(v5 + 8);
                v8 = *(v6 + 8);

                return ASN1_TYPE_cmp(v7, v8);
              }
            }
          }
        }

        return result;
      }

      goto LABEL_26;
    }

    if (v4 != 3)
    {
      v13 = *(a1 + 8);
      v14 = *(a2 + 8);

      return X509_NAME_cmp(v13, v14);
    }

LABEL_26:
    v15 = *(a1 + 8);
    v16 = *(a2 + 8);

    return ASN1_STRING_cmp(v15, v16);
  }

  if (v4 <= 6)
  {
    if (v4 != 5)
    {
      goto LABEL_26;
    }

    v17 = *(a1 + 8);
    v18 = *(a2 + 8);
    v19 = *v18;
    if (*v17)
    {
      if (!v19 || ASN1_STRING_cmp(*v17, v19))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v19)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = v17[1];
    v16 = v18[1];

    return ASN1_STRING_cmp(v15, v16);
  }

  if (v4 == 7)
  {
    goto LABEL_26;
  }

  if (v4 == 8)
  {
    v9 = *(a1 + 8);
    v10 = *(a2 + 8);
    v11 = *(v9 + 20);
    v12 = *(v10 + 20);
    if (v11 >= v12)
    {
      if (v11 <= v12)
      {
        if (v11)
        {
          v20 = *(v10 + 24);
          v21 = *(v9 + 24);

          return memcmp(v21, v20, v11);
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

_BYTE *i2s_ASN1_IA5STRING(const v3_ext_method *a1, const void **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + 1;
  if ((v2 + 1) <= 0xFFFFFFF7 && (v5 = malloc_type_malloc(v2 + 9, 0xB4E622C9uLL)) != 0)
  {
    *v5 = v3;
    result = v5 + 1;
    v7 = *a2;
    if (v7)
    {
      v8 = result;
      memcpy(result, a2[1], v7);
      result = v8;
      v8[*a2] = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  return result;
}

ASN1_STRING *s2i_ASN1_IA5STRING(const v3_ext_method *a1, const v3_ext_ctx *a2, const char *a3)
{
  if (!a3)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_ia5.cc";
    v11 = 20;
    v12 = 124;
    v13 = 47;
LABEL_7:
    ERR_put_error(v11, 0, v12, v10, v13);
    return 0;
  }

  v4 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v4)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v11 = 14;
    v12 = 65;
    v13 = 217;
    goto LABEL_7;
  }

  *v4 = 24;
  v4[1] = 0x1600000000;
  v5 = (v4 + 1);
  v4[2] = 0;
  v6 = v4 + 2;
  v7 = v4;
  v4[3] = 0;
  v8 = strlen(a3);
  if (ASN1_STRING_set(v5, a3, v8))
  {
    return v5;
  }

  v14 = *v6;
  if (*v6)
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

  free(v7);
  return 0;
}

char *i2v_AUTHORITY_INFO_ACCESS(X509V3_EXT_METHOD *method, void *a2, STACK *ret)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a2 && *a2)
  {
    v6 = 0;
    v33 = 0;
    v7 = ret;
    while (1)
    {
      v8 = v7;
      v9 = *(a2[1] + 8 * v6);
      v10 = i2v_GENERAL_NAME(method, *(v9 + 8), v7);
      if (!v10)
      {
        break;
      }

      v7 = v10;
      if (*&v10->num <= v6)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10->data[v6];
      }

      OBJ_obj2txt(buf, 80, *v9, 0);
      if (OPENSSL_asprintf(&v33, "%s - %s", v12, v13, v14, v15, v16, v17, buf) == -1)
      {
        v8 = v7;
        break;
      }

      v18 = *(v11 + 1);
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

      *(v11 + 1) = v33;
      if (++v6 >= *a2)
      {
        return v7;
      }
    }

    v7 = 0;
    if (!ret && v8)
    {
      v23 = *&v8->num;
      if (*&v8->num)
      {
        v24 = 0;
        do
        {
          v25 = v8->data[v24];
          if (v25)
          {
            X509V3_conf_free(v25);
            v23 = *&v8->num;
          }

          ++v24;
        }

        while (v24 < v23);
      }

      data = v8->data;
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

      comp = v8[-1].comp;
      p_comp = &v8[-1].comp;
      v32 = comp + 8;
      if (comp != -8)
      {
        bzero(p_comp, v32);
      }

      free(p_comp);
      return 0;
    }

    return v7;
  }

  v7 = ret;
  if (ret)
  {
    return v7;
  }

  return OPENSSL_sk_new_null();
}

char *v2i_AUTHORITY_INFO_ACCESS(X509V3_EXT_METHOD *a1, X509V3_CTX *a2, unint64_t *a3)
{
  v6 = OPENSSL_sk_new_null();
  if (v6 && a3 && *a3)
  {
    v7 = 0;
    v44 = a2;
    while (1)
    {
      v8 = *(a3[1] + 8 * v7);
      pval.section = 0;
      v9 = ASN1_item_ex_new(&pval, &AUTHORITY_INFO_ACCESS_it.sname);
      section = pval.section;
      if (v9)
      {
        v11 = pval.section == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_50;
      }

      v12 = strchr(*(v8 + 8), 59);
      if (!v12)
      {
        v30 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_info.cc";
        v31 = 20;
        v32 = 135;
        v33 = 136;
        goto LABEL_48;
      }

      v13 = v12;
      v14 = *(v8 + 16);
      pval.name = v12 + 1;
      pval.value = v14;
      if (!v2i_GENERAL_NAME_ex(*(section + 1), a1, a2, &pval, 0))
      {
        goto LABEL_49;
      }

      v15 = *(v8 + 8);
      v16 = 0;
      if (v13 == v15)
      {
        v17 = 1;
        v18 = malloc_type_malloc(9uLL, 0xB4E622C9uLL);
        if (!v18)
        {
          goto LABEL_41;
        }
      }

      else
      {
        while (v15[v16])
        {
          if (v13 - v15 == ++v16)
          {
            v16 = v13 - v15;
            break;
          }
        }

        if (v16 == -1)
        {
          v30 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
          v31 = 14;
          v32 = 65;
          v33 = 523;
LABEL_48:
          ERR_put_error(v31, 0, v32, v30, v33);
LABEL_49:
          pval.section = section;
          ASN1_item_ex_free(&pval, &AUTHORITY_INFO_ACCESS_it.sname);
          goto LABEL_50;
        }

        if (v16 > 0xFFFFFFFFFFFFFFF6 || (v17 = v16 + 1, (v18 = malloc_type_malloc(v16 + 9, 0xB4E622C9uLL)) == 0))
        {
LABEL_41:
          v30 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
          v31 = 14;
          v32 = 65;
          v33 = 217;
          goto LABEL_48;
        }
      }

      v19 = v18;
      *v18 = v17;
      v20 = (v18 + 1);
      if (v16)
      {
        memcpy(v18 + 1, v15, v16);
      }

      v20[v16] = 0;
      v21 = OBJ_sn2nid(v20);
      if (v21 || (v21 = OBJ_ln2nid(v20)) != 0)
      {
        v22 = OBJ_nid2obj(v21);
        *section = v22;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

      else
      {
        object_with_text_oid = create_object_with_text_oid(0, v20, 0, 0);
        *section = object_with_text_oid;
        if (!object_with_text_oid)
        {
LABEL_38:
          ERR_put_error(20, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_info.cc", 151);
          ERR_add_error_data(2, "value=", v20);
          if (*v19 != -8)
          {
            bzero(v19, *v19 + 8);
          }

          free(v19);
          goto LABEL_49;
        }
      }

      v23 = *v6;
      if (*v6 >= 0x7FFFFFFFuLL)
      {
        break;
      }

      v24 = *(v6 + 3);
      if (v24 <= v23 + 1)
      {
        v27 = OPENSSL_realloc(*(v6 + 1), 16 * v24);
        if (!v27)
        {
          goto LABEL_44;
        }

        *(v6 + 1) = v27;
        *(v6 + 3) = 2 * v24;
        v25 = *v6;
        v28 = *v6 - v23;
        if (*v6 <= v23)
        {
          v26 = &v27[v25];
        }

        else
        {
          if (8 * v28)
          {
            memmove(&v27[v23 + 1], &v27[v23], 8 * v28);
            v25 = *v6;
            v27 = *(v6 + 1);
          }

          v26 = &v27[v23];
        }
      }

      else
      {
        v25 = *v6;
        v26 = (*(v6 + 1) + 8 * v23);
      }

      *v26 = section;
      *(v6 + 4) = 0;
      *v6 = v25 + 1;
      if (v25 == -1)
      {
        goto LABEL_44;
      }

      free(v19);
      ++v7;
      a2 = v44;
      if (v7 >= *a3)
      {
        return v6;
      }
    }

    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_44:
    v46 = section;
    ASN1_item_ex_free(&v46, &AUTHORITY_INFO_ACCESS_it.sname);
    if (*v19 != -8)
    {
      bzero(v19, *v19 + 8);
    }

    free(v19);
LABEL_50:
    v34 = *v6;
    if (*v6)
    {
      v35 = 0;
      do
      {
        if (*(*(v6 + 1) + 8 * v35))
        {
          pval.section = *(*(v6 + 1) + 8 * v35);
          ASN1_item_ex_free(&pval, &AUTHORITY_INFO_ACCESS_it.sname);
          v34 = *v6;
        }

        ++v35;
      }

      while (v35 < v34);
    }

    v36 = *(v6 + 1);
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
    }

    v41 = *(v6 - 1);
    v40 = v6 - 8;
    v42 = v41 + 8;
    if (v41 != -8)
    {
      bzero(v40, v42);
    }

    free(v40);
    return 0;
  }

  return v6;
}

X509V3_EXT_METHOD *__cdecl X509V3_EXT_get_nid(int nid)
{
  if (nid < 0)
  {
    return 0;
  }

  if (nid > 368)
  {
    if (nid <= 746)
    {
      if (nid > 400)
      {
        if (nid == 401)
        {
          return &v3_policy_constraints;
        }

        if (nid == 666)
        {
          return &v3_name_constraints;
        }
      }

      else
      {
        if (nid == 369)
        {
          return &v3_ocsp_nocheck;
        }

        if (nid == 398)
        {
          return &v3_sinfo;
        }
      }
    }

    else if (nid <= 769)
    {
      if (nid == 747)
      {
        return &v3_policy_mappings;
      }

      if (nid == 748)
      {
        return &v3_inhibit_anyp;
      }
    }

    else
    {
      switch(nid)
      {
        case 770:
          return &v3_idp;
        case 771:
          return &v3_certificate_issuer;
        case 857:
          return &v3_freshest_crl;
      }
    }

    return 0;
  }

  v1 = nid - 71;
  result = &v3_nscert;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = &v3_netscape_base_url;
      break;
    case 2:
      result = &v3_netscape_revocation_url;
      break;
    case 3:
      result = &v3_netscape_ca_revocation_url;
      break;
    case 4:
      result = &v3_netscape_renewal_url;
      break;
    case 5:
      result = &v3_netscape_ca_policy_url;
      break;
    case 6:
      result = &v3_netscape_ssl_server_name;
      break;
    case 7:
      result = &v3_netscape_comment;
      break;
    case 11:
      result = &v3_skey_id;
      break;
    case 12:
      result = &v3_key_usage;
      break;
    case 14:
      result = &v3_subject_alt_name;
      break;
    case 15:
      result = &v3_issuer_alt_name;
      break;
    case 16:
      result = &v3_bcons;
      break;
    case 17:
      result = &v3_crl_num;
      break;
    case 18:
      result = &v3_cpols;
      break;
    case 19:
      result = &v3_akey_id;
      break;
    case 32:
      result = &v3_crld;
      break;
    case 55:
      result = &v3_ext_ku;
      break;
    case 69:
      result = &v3_delta_crl;
      break;
    case 70:
      result = &v3_crl_reason;
      break;
    case 71:
      result = &v3_crl_invdate;
      break;
    case 106:
      result = &v3_info;
      break;
    default:
      return 0;
  }

  return result;
}

void *__cdecl X509V3_EXT_d2i(X509_EXTENSION *ext)
{
  v2 = OBJ_obj2nid(ext->object);
  if (!v2)
  {
    return 0;
  }

  result = X509V3_EXT_get_nid(v2);
  if (result)
  {
    v4 = result;
    value = ext->value;
    data = value->data;
    length = value->length;
    v7 = *(result + 1);
    pval = 0;
    if (asn1_item_ex_d2i(&pval, &data, length, v7, 0xFFFFFFFFLL, 0, 0, 0, 0) <= 0)
    {
      ASN1_item_ex_free(&pval, v7);
    }

    result = pval;
    if (pval)
    {
      if (data != &ext->value->data[ext->value->length])
      {
        ASN1_item_ex_free(&pval, v4[1]);
        ERR_put_error(20, 0, 164, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_lib.cc", 195);
        return 0;
      }
    }
  }

  return result;
}

char *v2i_NAME_CONSTRAINTS(X509V3_EXT_METHOD *a1, X509V3_CTX *a2, void *a3)
{
  pval.section = 0;
  if (ASN1_item_ex_new(&pval, &NAME_CONSTRAINTS_it))
  {
    section = pval.section;
  }

  else
  {
    section = 0;
  }

  if (!section)
  {
    pval.section = 0;
    ASN1_item_ex_free(&pval, &NAME_CONSTRAINTS_it);
    v14 = 0;
LABEL_37:
    pval.section = v14;
    ASN1_item_ex_free(&pval, &GENERAL_SUBTREE_it);
    return 0;
  }

  if (!a3)
  {
    return pval.section;
  }

  if (*a3)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(a3[1] + 8 * v7);
      v9 = *(v8 + 8);
      if (!strncmp(v9, "permitted", 9uLL) && *(v9 + 9))
      {
        v10 = 10;
        v11 = section;
      }

      else
      {
        if (strncmp(v9, "excluded", 8uLL) || !*(v9 + 8))
        {
          ERR_put_error(20, 0, 135, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_ncons.cc", 100);
          v14 = 0;
          goto LABEL_36;
        }

        v10 = 9;
        v11 = (section + 8);
      }

      v12 = *(v8 + 16);
      pval.name = (v9 + v10);
      pval.value = v12;
      v25 = 0;
      v13 = ASN1_item_ex_new(&v25, &GENERAL_SUBTREE_it);
      v14 = v25;
      if (v13)
      {
        v15 = v25;
      }

      else
      {
        v15 = 0;
      }

      if (!v2i_GENERAL_NAME_ex(*v15, a1, a2, &pval, 1))
      {
        goto LABEL_36;
      }

      v16 = *v11;
      if (!*v11)
      {
        v16 = OPENSSL_sk_new_null();
        *v11 = v16;
        if (!v16)
        {
          goto LABEL_36;
        }
      }

      v17 = *v16;
      if (*v16 >= 0x7FFFFFFFuLL)
      {
        break;
      }

      v18 = *(v16 + 3);
      if (v18 <= v17 + 1)
      {
        v21 = OPENSSL_realloc(*(v16 + 1), 16 * v18);
        if (!v21)
        {
          goto LABEL_36;
        }

        *(v16 + 1) = v21;
        *(v16 + 3) = 2 * v18;
        v19 = *v16;
        v22 = *v16 - v17;
        if (*v16 <= v17)
        {
          v20 = &v21[v19];
        }

        else
        {
          if (8 * v22)
          {
            memmove(&v21[v17 + 1], &v21[v17], 8 * v22);
            v19 = *v16;
            v21 = *(v16 + 1);
          }

          v20 = &v21[v17];
        }
      }

      else
      {
        v19 = *v16;
        v20 = (*(v16 + 1) + 8 * v17);
      }

      *v20 = v15;
      *(v16 + 4) = 0;
      *v16 = v19 + 1;
      if (v19 == -1)
      {
        goto LABEL_36;
      }

      if (++v7 >= *a3)
      {
        return section;
      }
    }

    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_36:
    pval.section = section;
    ASN1_item_ex_free(&pval, &NAME_CONSTRAINTS_it);
    goto LABEL_37;
  }

  return section;
}

uint64_t i2r_NAME_CONSTRAINTS(const v3_ext_method *a1, unint64_t **a2, bio_st *bio, int a4)
{
  do_i2r_name_constraints(*a2, bio, a4, "Permitted");
  do_i2r_name_constraints(a2[1], bio, a4, "Excluded");
  return 1;
}

uint64_t NAME_CONSTRAINTS_check(void *a1, NAME_CONSTRAINTS_st *a2)
{
  v4 = *(*a1 + 40);
  if (v4 && *v4)
  {
    v5 = **v4;
    v6 = a1[11];
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = 0;
    v6 = a1[11];
    if (!v6)
    {
LABEL_4:
      v7 = 0;
      permittedSubtrees = a2->permittedSubtrees;
      if (!a2->permittedSubtrees)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = *&permittedSubtrees->num;
      v10 = v7 + v5;
      excludedSubtrees = a2->excludedSubtrees;
      if (!excludedSubtrees)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v7 = *v6;
  permittedSubtrees = a2->permittedSubtrees;
  if (a2->permittedSubtrees)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 0;
  v10 = v7 + v5;
  excludedSubtrees = a2->excludedSubtrees;
  if (excludedSubtrees)
  {
LABEL_10:
    excludedSubtrees = *&excludedSubtrees->num;
  }

LABEL_11:
  v12 = excludedSubtrees + v9;
  v13 = !is_mul_ok(v12, v10);
  if (v4 && *v4 && v10 < **v4)
  {
    return 1;
  }

  if (permittedSubtrees && v12 < *&permittedSubtrees->num)
  {
    return 1;
  }

  if (v12)
  {
    v14 = v12 * v10 > 0x100000 || v13;
    if (v14)
    {
      return 1;
    }
  }

  if (v4 && *v4 && **v4 >= 1)
  {
    v30.type = 4;
    v30.d.ptr = v4;
    result = nc_match(&v30, a2);
    if (!result)
    {
      v30.type = 1;
      LODWORD(v16) = -1;
      while (1)
      {
        v17 = OBJ_nid2obj(48);
        if (v17)
        {
          v18 = v17;
          v19 = *v4;
          if (*v4)
          {
            v20 = *v19;
          }

          else
          {
            v20 = 0;
          }

          if (v16 < 0)
          {
            v22 = -1;
          }

          else
          {
            v22 = v16;
          }

          v16 = v22 + 1;
          if (v16 >= v20)
          {
            goto LABEL_53;
          }

          v24 = *v19;
          v23 = v19[1];
          length = v17->length;
          if (length)
          {
            v26 = length;
            while (1)
            {
              v27 = **(v23 + 8 * v16);
              if (*(v27 + 20) == v26 && !memcmp(*(v27 + 24), v18->data, v26))
              {
                break;
              }

              if (v20 == ++v16)
              {
                goto LABEL_53;
              }
            }
          }

          else
          {
            while (*(**(v23 + 8 * v16) + 20))
            {
              if (v20 == ++v16)
              {
                goto LABEL_53;
              }
            }
          }

          if (v16 < 0 || v24 <= v16)
          {
            v21 = 0;
          }

          else
          {
            v21 = *(v23 + 8 * v16);
            if (v21)
            {
              v21 = *(v21 + 8);
            }
          }
        }

        else
        {
          v21 = 0;
          LODWORD(v16) = -2;
        }

        v30.d.ptr = v21;
        if (*(v21 + 4) != 22)
        {
          return 53;
        }

        result = nc_match(&v30, a2);
        if (result)
        {
          return result;
        }
      }
    }
  }

  else
  {
LABEL_53:
    v28 = 0;
    while (1)
    {
      v29 = a1[11];
      if (!v29 || v28 >= *v29)
      {
        break;
      }

      result = nc_match(*(v29[1] + 8 * v28++), a2);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t nc_match(GENERAL_NAME_st *a1, NAME_CONSTRAINTS_st *a2)
{
  permittedSubtrees = a2->permittedSubtrees;
  if (a2->permittedSubtrees)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v5 >= *&permittedSubtrees->num)
      {
        break;
      }

      v7 = permittedSubtrees->data[v5];
      if (a1->type == **v7)
      {
        if (*(v7 + 1) || *(v7 + 2))
        {
          return 49;
        }

        if (v6 != 2)
        {
          result = nc_match_single(a1, *v7);
          if (result)
          {
            if (result != 47)
            {
              return result;
            }

            v6 = 1;
          }

          else
          {
            v6 = 2;
          }
        }
      }

      ++v5;
      permittedSubtrees = a2->permittedSubtrees;
    }

    while (a2->permittedSubtrees);
    if (v6 != 1)
    {
      goto LABEL_16;
    }

    return 47;
  }

  else
  {
LABEL_16:
    excludedSubtrees = a2->excludedSubtrees;
    if (excludedSubtrees)
    {
      for (i = 0; i < *&excludedSubtrees->num; ++i)
      {
        v11 = excludedSubtrees->data[i];
        if (a1->type == **v11)
        {
          if (*(v11 + 1) || *(v11 + 2))
          {
            return 49;
          }

          result = nc_match_single(a1, *v11);
          if (result != 47)
          {
            if (!result)
            {
              return 48;
            }

            return result;
          }

          excludedSubtrees = a2->excludedSubtrees;
        }

        if (!excludedSubtrees)
        {
          return 0;
        }
      }
    }

    return 0;
  }
}

unint64_t *do_i2r_name_constraints(unint64_t *result, BIO *bio, int a3, const char *a4)
{
  if (result)
  {
    v6 = result;
    v7 = "";
    if (*result)
    {
      result = BIO_printf(bio, "%*s%s:\n", a3, "", a4);
    }

    if (*v6)
    {
      v8 = 0;
      v9 = (a3 + 2);
      v10 = "%*s";
      v11 = "\n";
      v20 = v9;
      do
      {
        v12 = *(v6[1] + 8 * v8);
        BIO_printf(bio, v10, v9, v7);
        v13 = *v12;
        if ((*v12)->type == 7)
        {
          v14 = v11;
          v15 = v10;
          v16 = v7;
          ptr = v13->d.ptr;
          v18 = *ptr;
          v19 = *(ptr + 1);
          BIO_puts(bio, "IP:");
          if (v18 == 32)
          {
            BIO_printf(bio, "%X", __rev16(*v19));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[1]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[2]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[3]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[4]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[5]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[6]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[7]));
            BIO_puts(bio, "/");
            BIO_printf(bio, "%X", __rev16(v19[8]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[9]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[10]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[11]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[12]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[13]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X", __rev16(v19[14]));
            BIO_puts(bio, ":");
            BIO_printf(bio, "%X");
          }

          else if (v18 == 8)
          {
            BIO_printf(bio, "%d.%d.%d.%d/%d.%d.%d.%d", *v19);
          }

          else
          {
            BIO_printf(bio, "IP Address:<invalid>");
          }

          v7 = v16;
          v10 = v15;
          v11 = v14;
          v9 = v20;
        }

        else
        {
          GENERAL_NAME_print(bio, v13);
        }

        result = BIO_puts(bio, v11);
        ++v8;
      }

      while (v8 < *v6);
    }
  }

  return result;
}

uint64_t nc_match_single(GENERAL_NAME_st *a1, GENERAL_NAME_st *a2)
{
  type = a2->type;
  result = 51;
  if (a2->type <= 3)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        return result;
      }

      ptr = a2->d.ptr;
      v6 = *ptr;
      if (v6)
      {
        v7 = a1->d.ptr;
        v8 = *v7;
        v9 = *(v7 + 1);
        v10 = *(ptr + 1);
        if (*v10 == 46)
        {
          if (v8 >= v6)
          {
            v11 = &v9[v8];
            v12 = -v6;
            while (1)
            {
              v13 = v11[v12];
              v15 = *v10++;
              v14 = v15;
              if ((v13 - 65) < 0x1A)
              {
                v13 |= 0x20u;
              }

              if ((v14 - 65) < 0x1A)
              {
                v14 |= 0x20u;
              }

              if (v13 != v14)
              {
                break;
              }

              result = 0;
              if (!++v12)
              {
                return result;
              }
            }
          }

          return 47;
        }

        if (v8 <= v6)
        {
          if (v8 == v6)
          {
LABEL_75:
            if (v6 <= 1)
            {
              v6 = 1;
            }

            while (1)
            {
              v65 = *v9++;
              v64 = v65;
              v66 = v65 | 0x20;
              v53 = (v65 - 65) >= 0x1A;
              v68 = *v10++;
              v67 = v68;
              if (!v53)
              {
                v64 = v66;
              }

              if ((v67 - 65) < 0x1A)
              {
                v67 |= 0x20u;
              }

              if (v64 != v67)
              {
                break;
              }

              result = 0;
              if (!--v6)
              {
                return result;
              }
            }
          }
        }

        else
        {
          v61 = ~v6 + v8;
          if (v61 <= v8)
          {
            v62 = &v9[v61];
            v63 = *v62;
            v9 = v62 + 1;
            if (v63 == 46)
            {
              goto LABEL_75;
            }
          }
        }

        return 47;
      }

      return 0;
    }

    v19 = a1->d.ptr;
    v20 = *v19;
    if (v20)
    {
      v21 = a2->d.ptr;
      v22 = *(v19 + 1);
      v23 = *v21;
      v24 = *(v21 + 1);
      v25 = memchr(v22, 64, *v19);
      if (v25)
      {
        v26 = v25 - v22;
        v27 = v20 - (v25 - v22);
        if (v20 >= v25 - v22)
        {
          v28 = v25;
          if (!v23)
          {
            v23 = 0;
LABEL_116:
            if (v20 == v26)
            {
              v101 = 0;
            }

            else
            {
              v101 = v27 - 1;
            }

            if (v20 == v26)
            {
              v102 = &v22->u8[v26];
            }

            else
            {
              v102 = v28 + 1;
            }

            if (v23 != v101)
            {
              return 47;
            }

            if (v23)
            {
              while (1)
              {
                v104 = v24->u8[0];
                v24 = (v24 + 1);
                v103 = v104;
                v105 = v104 | 0x20;
                v53 = (v104 - 65) >= 0x1A;
                v107 = *v102++;
                v106 = v107;
                if (!v53)
                {
                  v103 = v105;
                }

                if ((v106 - 65) < 0x1A)
                {
                  v106 |= 0x20u;
                }

                if (v103 != v106)
                {
                  break;
                }

                result = 0;
                if (!--v23)
                {
                  return result;
                }
              }

              return 47;
            }

            return 0;
          }

          v29 = v25;
          v30 = memchr(v24, 64, v23);
          if (!v30 || (v31 = v30 - v24, v30 - v24 > v23))
          {
            if (v24->i8[0] == 46)
            {
              if (v27 >= v23)
              {
                v32 = &v28[v27 - v23];
                if (v23 <= 1)
                {
                  v33 = 1;
                }

                else
                {
                  v33 = v23;
                }

                while (1)
                {
                  v35 = *v32++;
                  v34 = v35;
                  v36 = v35 | 0x20;
                  v53 = (v35 - 65) >= 0x1A;
                  v38 = v24->u8[0];
                  v24 = (v24 + 1);
                  v37 = v38;
                  if (!v53)
                  {
                    v34 = v36;
                  }

                  if ((v37 - 65) < 0x1A)
                  {
                    v37 |= 0x20u;
                  }

                  if (v34 != v37)
                  {
                    break;
                  }

                  result = 0;
                  if (!--v33)
                  {
                    return result;
                  }
                }
              }

              return 47;
            }

            goto LABEL_116;
          }

          if (v30 == v24)
          {
LABEL_110:
            v99 = v31 == v23;
            v100 = ~v31 + v23;
            if (v99)
            {
              v23 = 0;
            }

            else
            {
              v23 = v100;
            }

            if (v99)
            {
              v24 = v30;
            }

            else
            {
              v24 = &v30->i8[1];
            }

            goto LABEL_116;
          }

          if (v31 != v26)
          {
            return 47;
          }

          if (v26 < 8)
          {
            v69 = 0;
            v70 = 0;
            v71 = v29;
            goto LABEL_106;
          }

          v71 = v29;
          if (v26 >= 0x20)
          {
            v69 = v26 & 0xFFFFFFFFFFFFFFE0;
            v77 = v24 + 1;
            v78 = v22 + 1;
            v79 = 0uLL;
            v80 = v26 & 0xFFFFFFFFFFFFFFE0;
            v81 = 0uLL;
            do
            {
              v79 = vorrq_s8(veorq_s8(v78[-1], v77[-1]), v79);
              v81 = vorrq_s8(veorq_s8(*v78, *v77), v81);
              v77 += 2;
              v78 += 2;
              v80 -= 32;
            }

            while (v80);
            v82 = vorrq_s8(v81, v79);
            *v82.i8 = vorr_s8(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
            v83 = v82.i64[0] | HIDWORD(v82.i64[0]) | ((v82.i64[0] | HIDWORD(v82.i64[0])) >> 16);
            v70 = v83 | BYTE1(v83);
            if (v26 == v69)
            {
              goto LABEL_109;
            }

            if ((v26 & 0x18) == 0)
            {
LABEL_106:
              v93 = &v22->i8[v69];
              v94 = (&v22->i8[v69] - v71);
              v95 = &v24->i8[v69];
              do
              {
                v97 = *v95++;
                v96 = v97;
                v98 = *v93++;
                v70 |= v98 ^ v96;
                v53 = __CFADD__(v94++, 1);
              }

              while (!v53);
              goto LABEL_109;
            }
          }

          else
          {
            v70 = 0;
            v69 = 0;
          }

          v84 = v69;
          v69 = v26 & 0xFFFFFFFFFFFFFFF8;
          v85 = v70;
          v86 = &v24->i8[v84];
          v87 = &v22->i8[v84];
          v88 = v84 - (v26 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v89 = *v86++;
            v90 = v89;
            v91 = *v87++;
            v85 = vorr_s8(veor_s8(v91, v90), v85);
            v88 += 8;
          }

          while (v88);
          v92 = *&v85 | HIDWORD(*&v85) | ((*&v85 | HIDWORD(*&v85)) >> 16);
          v70 = v92 | BYTE1(v92);
          if (v26 != v69)
          {
            goto LABEL_106;
          }

LABEL_109:
          if (v70)
          {
            return 47;
          }

          goto LABEL_110;
        }
      }
    }

    return 53;
  }

  if (type != 6)
  {
    if (type != 4)
    {
      return result;
    }

    v16 = a1->d.ptr;
    v17 = a2->d.ptr;
    if (*(v16 + 2))
    {
      v108 = a1->d.ptr;
      if ((asn1_item_ex_i2d_opt(&v108, 0, &X509_NAME_ENTRY_it.sname, -1, 0, 0) & 0x80000000) != 0)
      {
        return 17;
      }
    }

    if (*(v17 + 2))
    {
      v108 = v17;
      if ((asn1_item_ex_i2d_opt(&v108, 0, &X509_NAME_ENTRY_it.sname, -1, 0, 0) & 0x80000000) != 0)
      {
        return 17;
      }
    }

    v18 = *(v17 + 8);
    if (v18 > *(v16 + 8) || v18 && memcmp(*(v17 + 3), *(v16 + 3), v18))
    {
      return 47;
    }

    return 0;
  }

  v39 = a1->d.ptr;
  v40 = *v39;
  if (!v40)
  {
    return 53;
  }

  v41 = a2->d.ptr;
  v42 = *(v39 + 1);
  v43 = *v41;
  v44 = *(v41 + 1);
  v45 = memchr(v42, 58, *v39);
  if (!v45)
  {
    return 53;
  }

  v46 = v45 - v42;
  if (v45 - v42 >= v40)
  {
    return 53;
  }

  result = 53;
  v47 = ~v46 + v40;
  if (v47 >= 2)
  {
    v48 = &v42[v46];
    if (v48[1] == 47)
    {
      v49 = v47 - 2;
      if (v47 != 2 && v48[2] == 47)
      {
        v50 = (v48 + 3);
        v51 = memchr(v48 + 3, 58, v49);
        v52 = v51 - v50;
        if (v51)
        {
          v53 = v49 >= v52;
        }

        else
        {
          v53 = 0;
        }

        if (!v53 && ((v54 = memchr(v50, 47, v49)) == 0 || (v52 = v54 - v50, v49 < v54 - v50)) || (v49 = v52) != 0)
        {
          if (v43)
          {
            if (*v44 == 46)
            {
              if (v49 >= v43)
              {
                v55 = &v50[v49 - v43];
                while (1)
                {
                  v57 = *v55++;
                  v56 = v57;
                  v58 = v57 | 0x20;
                  v53 = (v57 - 65) >= 0x1A;
                  v60 = *v44++;
                  v59 = v60;
                  if (!v53)
                  {
                    v56 = v58;
                  }

                  if ((v59 - 65) < 0x1A)
                  {
                    v59 |= 0x20u;
                  }

                  if (v56 != v59)
                  {
                    break;
                  }

                  result = 0;
                  if (!--v43)
                  {
                    return result;
                  }
                }
              }
            }

            else if (v49 == v43)
            {
              while (1)
              {
                v73 = *v44++;
                v72 = v73;
                v74 = v73 | 0x20;
                v53 = (v73 - 65) >= 0x1A;
                v76 = *v50++;
                v75 = v76;
                if (!v53)
                {
                  v72 = v74;
                }

                if ((v75 - 65) < 0x1A)
                {
                  v75 |= 0x20u;
                }

                if (v72 != v75)
                {
                  break;
                }

                result = 0;
                if (!--v43)
                {
                  return result;
                }
              }
            }
          }

          return 47;
        }

        return 53;
      }
    }
  }

  return result;
}

BOOL i2r_ocsp_acutoff(const v3_ext_method *a1, void *a2, bio_st *bio, int a4)
{
  if (BIO_printf(bio, "%*s", a4, "") < 1)
  {
    return 0;
  }

  v6 = *a2;
  *&v9 = a2[1];
  *(&v9 + 1) = v6;
  if (CBS_parse_rfc5280_time_internal(&v9, 1, 0, v8))
  {
    return BIO_printf(bio, "%s %2d %02d:%02d:%02d %d GMT", (&mon)[v8[4]], v8[3], v8[2], v8[1], v8[0], v8[5] + 1900) > 0;
  }

  BIO_puts(bio, "Bad time value");
  return 0;
}

ASN1_VALUE *s2i_ocsp_nocheck(const v3_ext_method *a1, const v3_ext_ctx *a2, const char *a3)
{
  pval = 0;
  if (ASN1_item_ex_new(&pval, &ASN1_GENERALIZEDTIME_it.sname))
  {
    return pval;
  }

  else
  {
    return 0;
  }
}

char *i2v_POLICY_CONSTRAINTS(char *a1, ASN1_INTEGER **a2, char *a3)
{
  v18 = a3;
  v4 = *a2;
  if (v4)
  {
    a1 = i2s_ASN1_INTEGER(a1, v4);
    if (a1)
    {
      v5 = a1;
      v6 = strlen(a1);
      x509V3_add_len_value("Require Explicit Policy", v5, v6, 0, &v18);
      v8 = *(v5 - 1);
      v7 = v5 - 8;
      v9 = v8 + 8;
      if (v8 != -8)
      {
        bzero(v7, v9);
      }

      free(v7);
    }
  }

  v10 = a2[1];
  if (v10)
  {
    v11 = i2s_ASN1_INTEGER(a1, v10);
    if (v11)
    {
      v12 = v11;
      v13 = strlen(v11);
      x509V3_add_len_value("Inhibit Policy Mapping", v12, v13, 0, &v18);
      v15 = *(v12 - 1);
      v14 = v12 - 8;
      v16 = v15 + 8;
      if (v15 != -8)
      {
        bzero(v14, v16);
      }

      free(v14);
    }
  }

  return v18;
}

ASN1_INTEGER **v2i_POLICY_CONSTRAINTS(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  pval = 0;
  v4 = ASN1_item_ex_new(&pval, &POLICY_CONSTRAINTS_it);
  result = 0;
  v6 = pval;
  if (v4)
  {
    v7 = pval == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return result;
  }

  if (a3 && *a3)
  {
    for (i = 0; i < *a3; ++i)
    {
      v9 = *(a3[1] + 8 * i);
      name = v9->name;
      if (!strcmp(name, "requireExplicitPolicy"))
      {
        if (!X509V3_get_value_int(v9, v6))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (strcmp(name, "inhibitPolicyMapping"))
        {
          ERR_put_error(20, 0, 123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_pcons.cc", 86);
          ERR_add_error_data(6, "section:", v9->section, ",name:", v9->name, ",value:", v9->value);
LABEL_19:
          pval = v6;
          ASN1_item_ex_free(&pval, &POLICY_CONSTRAINTS_it);
          return 0;
        }

        if (!X509V3_get_value_int(v9, v6 + 1))
        {
          goto LABEL_19;
        }
      }
    }
  }

  if (!v6[1] && !*v6)
  {
    ERR_put_error(20, 0, 117, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_pcons.cc", 92);
    goto LABEL_19;
  }

  return v6;
}

char *i2v_POLICY_MAPPINGS(uint64_t a1, unint64_t *a2, char *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a2 && *a2)
  {
    v4 = 0;
    do
    {
      v5 = *(a2[1] + 8 * v4);
      OBJ_obj2txt(buf, 80, *v5, 0);
      OBJ_obj2txt(__s, 80, v5[1], 0);
      v6 = strlen(__s);
      x509V3_add_len_value(buf, __s, v6, 0, &v8);
      ++v4;
    }

    while (v4 < *a2);
    return v8;
  }

  return a3;
}

char *v2i_POLICY_MAPPINGS(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = OPENSSL_sk_new_null();
  if (v4 && a3)
  {
    v5 = 0;
    while (1)
    {
      if (v5 >= *a3)
      {
        return v4;
      }

      v6 = *(a3[1] + 8 * v5);
      if (!v6[2] || !v6[1])
      {
        v19 = 84;
LABEL_30:
        ERR_put_error(20, 0, 129, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_pmaps.cc", v19);
        ERR_add_error_data(6, "section:", *v6, ",name:", v6[1], ",value:", v6[2]);
        v20 = *v4;
        if (*v4)
        {
          goto LABEL_36;
        }

        goto LABEL_40;
      }

      pval = 0;
      if (!ASN1_item_ex_new(&pval, &POLICY_MAPPING_it) || (v7 = pval) == 0)
      {
        pval = 0;
        goto LABEL_35;
      }

      v8 = *v4;
      if (*v4 >= 0x7FFFFFFFuLL)
      {
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_34:
        pval = v7;
LABEL_35:
        ASN1_item_ex_free(&pval, &POLICY_MAPPING_it);
        v20 = *v4;
        if (*v4)
        {
LABEL_36:
          v21 = 0;
          do
          {
            if (*(*(v4 + 1) + 8 * v21))
            {
              pval = *(*(v4 + 1) + 8 * v21);
              ASN1_item_ex_free(&pval, &POLICY_MAPPING_it);
              v20 = *v4;
            }

            ++v21;
          }

          while (v21 < v20);
        }

LABEL_40:
        v22 = *(v4 + 1);
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

        v27 = *(v4 - 1);
        v26 = v4 - 8;
        v28 = v27 + 8;
        if (v27 != -8)
        {
          bzero(v26, v28);
        }

        free(v26);
        return 0;
      }

      v9 = *(v4 + 3);
      if (v9 <= v8 + 1)
      {
        v12 = OPENSSL_realloc(*(v4 + 1), 16 * v9);
        if (!v12)
        {
          goto LABEL_34;
        }

        *(v4 + 1) = v12;
        *(v4 + 3) = 2 * v9;
        v10 = *v4;
        v13 = *v4 - v8;
        if (*v4 <= v8)
        {
          v11 = &v12[v10];
        }

        else
        {
          if (8 * v13)
          {
            memmove(&v12[v8 + 1], &v12[v8], 8 * v13);
            v10 = *v4;
            v12 = *(v4 + 1);
          }

          v11 = &v12[v8];
        }
      }

      else
      {
        v10 = *v4;
        v11 = (*(v4 + 1) + 8 * v8);
      }

      *v11 = v7;
      *(v4 + 4) = 0;
      *v4 = v10 + 1;
      if (v10 == -1)
      {
        goto LABEL_34;
      }

      v14 = v6[1];
      v15 = OBJ_sn2nid(v14);
      if (v15 || (v15 = OBJ_ln2nid(v14)) != 0)
      {
        *v7 = OBJ_nid2obj(v15);
        v16 = v6[2];
        v17 = OBJ_sn2nid(v16);
        if (v17)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *v7 = create_object_with_text_oid(0, v14, 0, 0);
        v16 = v6[2];
        v17 = OBJ_sn2nid(v16);
        if (v17)
        {
          goto LABEL_25;
        }
      }

      v17 = OBJ_ln2nid(v16);
      if (!v17)
      {
        object_with_text_oid = create_object_with_text_oid(0, v16, 0, 0);
        goto LABEL_26;
      }

LABEL_25:
      object_with_text_oid = OBJ_nid2obj(v17);
LABEL_26:
      *(v7 + 1) = object_with_text_oid;
      if (*v7)
      {
        ++v5;
        if (object_with_text_oid)
        {
          continue;
        }
      }

      v19 = 98;
      goto LABEL_30;
    }
  }

  return v4;
}

BOOL x509v3_cache_extensions(void **a1)
{
  if (pthread_rwlock_rdlock((a1 + 18)))
  {
    goto LABEL_222;
  }

  v2 = *(a1 + 12);
  if (pthread_rwlock_unlock((a1 + 18)))
  {
    goto LABEL_222;
  }

  if ((v2 & 0x100) != 0)
  {
    return ((*(a1 + 12) >> 7) & 1) == 0;
  }

  if (pthread_rwlock_wrlock((a1 + 18)))
  {
LABEL_222:
    abort();
  }

  if (*(a1 + 49))
  {
    goto LABEL_202;
  }

  v3 = EVP_sha256();
  out = 0;
  v4 = i2d_X509(a1, &out);
  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  v5 = EVP_Digest(out, v4, a1 + 104, 0, v3, 0);
  if (out)
  {
    v7 = out - 8;
    v6 = *(out - 1);
    if (v6 != -8)
    {
      bzero(v7, v6 + 8);
    }

    free(v7);
  }

  if (!v5)
  {
LABEL_12:
    *(a1 + 12) |= 0x80u;
  }

  v8 = **a1;
  if (!v8)
  {
LABEL_16:
    *(a1 + 12) |= 0x40u;
LABEL_17:
    v9 = (*a1)[9];
    if (!v9)
    {
      goto LABEL_43;
    }

    goto LABEL_18;
  }

  out = 0;
  if (asn1_string_get_int64(&out, v8, 2))
  {
    if (out)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  ERR_clear_error();
  v9 = (*a1)[9];
  if (!v9)
  {
    goto LABEL_43;
  }

LABEL_18:
  if (*v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(v9[1] + 8 * v10);
      if (OBJ_obj2nid(v12->object) == 87)
      {
        if (v11)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v12 = v11;
      }

      ++v10;
      v11 = v12;
    }

    while (v10 < *v9);
    if (!v12)
    {
      goto LABEL_43;
    }

    v13 = X509V3_EXT_d2i(v12);
    if (!v13)
    {
LABEL_36:
      v18 = 128;
      goto LABEL_42;
    }

    v14 = *v13;
    if (*v13)
    {
      *(a1 + 12) |= 0x10u;
    }

    v15 = *(v13 + 1);
    if (v15)
    {
      if (!v14 || v15->type == 258)
      {
        v17 = 0;
        *(a1 + 12) |= 0x80u;
      }

      else
      {
        v16 = v13;
        out = 0;
        if (asn1_string_get_int64(&out, v15, 2))
        {
          v17 = out;
        }

        else
        {
          ERR_clear_error();
          v17 = -1;
        }

        v13 = v16;
      }
    }

    else
    {
      v17 = -1;
    }

    a1[5] = v17;
    out = v13;
    ASN1_item_ex_free(&out, &AUTHORITY_KEYID_it.sname);
    v18 = 1;
LABEL_42:
    *(a1 + 12) |= v18;
  }

LABEL_43:
  v19 = (*a1)[9];
  if (!v19 || !*v19)
  {
LABEL_58:
    *(a1 + 14) = 0;
    v28 = (*a1)[9];
    if (!v28)
    {
      goto LABEL_116;
    }

    goto LABEL_59;
  }

  v20 = 0;
  v21 = 0;
  do
  {
    v22 = *(v19[1] + 8 * v20);
    if (OBJ_obj2nid(v22->object) == 83)
    {
      if (v21)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v22 = v21;
    }

    ++v20;
    v21 = v22;
  }

  while (v20 < *v19);
  if (!v22)
  {
    goto LABEL_58;
  }

  v23 = X509V3_EXT_d2i(v22);
  if (!v23)
  {
LABEL_57:
    *(a1 + 12) |= 0x80u;
    goto LABEL_58;
  }

  v24 = v23;
  v25 = *v23;
  if (*v23 < 1)
  {
    *(a1 + 13) = 0;
    v26 = *(v23 + 1);
    *(a1 + 12) |= 2u;
    if (!v26)
    {
      goto LABEL_113;
    }
  }

  else
  {
    v26 = *(v23 + 1);
    v27 = *v26;
    *(a1 + 13) = v27;
    if (v25 != 1)
    {
      *(a1 + 13) = v27 | (v26[1] << 8);
    }

    *(a1 + 12) |= 2u;
  }

  v48 = *(v26 - 1);
  v47 = v26 - 8;
  v49 = v48 + 8;
  if (v48 != -8)
  {
    bzero(v47, v49);
  }

  free(v47);
LABEL_113:
  v51 = *(v24 - 1);
  v50 = v24 - 2;
  v52 = v51 + 8;
  if (v51 != -8)
  {
    bzero(v50, v52);
  }

  free(v50);
  *(a1 + 14) = 0;
  v28 = (*a1)[9];
  if (!v28)
  {
    goto LABEL_116;
  }

LABEL_59:
  if (!*v28)
  {
    goto LABEL_116;
  }

  v29 = 0;
  v30 = 0;
  do
  {
    v31 = *(v28[1] + 8 * v29);
    if (OBJ_obj2nid(v31->object) == 126)
    {
      if (v30)
      {
        goto LABEL_101;
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
  if (!v31)
  {
    goto LABEL_116;
  }

  v32 = X509V3_EXT_d2i(v31);
  if (!v32)
  {
LABEL_101:
    *(a1 + 12) |= 0x80u;
    goto LABEL_116;
  }

  v33 = v32;
  *(a1 + 12) |= 4u;
  v34 = *v32;
  if (!*v32)
  {
    goto LABEL_102;
  }

  v35 = 0;
  do
  {
    if (v34 <= v35)
    {
      v36 = OBJ_obj2nid(0);
      if (v36 <= 136)
      {
LABEL_78:
        if (v36 <= 130)
        {
          if (v36 == 129)
          {
            v37 = 1;
          }

          else
          {
            if (v36 != 130)
            {
              goto LABEL_95;
            }

            v37 = 2;
          }
        }

        else
        {
          switch(v36)
          {
            case 131:
              v37 = 8;
              break;
            case 132:
              v37 = 4;
              break;
            case 133:
              v37 = 64;
              break;
            default:
              goto LABEL_95;
          }
        }

        goto LABEL_94;
      }
    }

    else
    {
      v36 = OBJ_obj2nid(*(v33[1] + 8 * v35));
      if (v36 <= 136)
      {
        goto LABEL_78;
      }
    }

    if (v36 > 179)
    {
      switch(v36)
      {
        case 180:
          v37 = 32;
          break;
        case 297:
          v37 = 128;
          break;
        case 910:
          v37 = 256;
          break;
        default:
          goto LABEL_95;
      }

      goto LABEL_94;
    }

    if (v36 == 137 || v36 == 139)
    {
      v37 = 16;
LABEL_94:
      *(a1 + 14) |= v37;
    }

LABEL_95:
    ++v35;
    v34 = *v33;
  }

  while (v35 < *v33);
  if (v34)
  {
    for (i = 0; i < v34; ++i)
    {
      v39 = *(v33[1] + 8 * i);
      if (v39)
      {
        ASN1_OBJECT_free(v39);
        v34 = *v33;
      }
    }
  }

LABEL_102:
  v40 = v33[1];
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

  v45 = *(v33 - 1);
  v44 = v33 - 1;
  v46 = v45 + 8;
  if (v45 != -8)
  {
    bzero(v44, v46);
  }

  free(v44);
LABEL_116:
  v53 = (*a1)[9];
  if (v53 && *v53)
  {
    v54 = 0;
    v55 = 0;
    do
    {
      v56 = *(v53[1] + 8 * v54);
      if (OBJ_obj2nid(v56->object) == 82)
      {
        if (v55)
        {
          a1[8] = 0;
LABEL_126:
          *(a1 + 12) |= 0x80u;
          goto LABEL_127;
        }
      }

      else
      {
        v56 = v55;
      }

      ++v54;
      v55 = v56;
    }

    while (v54 < *v53);
    if (!v56)
    {
      goto LABEL_129;
    }

    v57 = X509V3_EXT_d2i(v56);
    a1[8] = v57;
    if (!v57)
    {
      goto LABEL_126;
    }

LABEL_127:
    v58 = (*a1)[9];
    if (!v58)
    {
LABEL_142:
      a1[9] = 0;
      if (!X509_NAME_cmp((*a1)[5], (*a1)[3]))
      {
        goto LABEL_143;
      }

      goto LABEL_147;
    }
  }

  else
  {
LABEL_129:
    a1[8] = 0;
    v58 = (*a1)[9];
    if (!v58)
    {
      goto LABEL_142;
    }
  }

  if (!*v58)
  {
    goto LABEL_142;
  }

  v59 = 0;
  v60 = 0;
  do
  {
    v61 = *(v58[1] + 8 * v59);
    if (OBJ_obj2nid(v61->object) == 90)
    {
      if (v60)
      {
        a1[9] = 0;
LABEL_139:
        *(a1 + 12) |= 0x80u;
        goto LABEL_140;
      }
    }

    else
    {
      v61 = v60;
    }

    ++v59;
    v60 = v61;
  }

  while (v59 < *v58);
  if (!v61)
  {
    goto LABEL_142;
  }

  v62 = X509V3_EXT_d2i(v61);
  a1[9] = v62;
  if (!v62)
  {
    goto LABEL_139;
  }

LABEL_140:
  if (!X509_NAME_cmp((*a1)[5], (*a1)[3]))
  {
LABEL_143:
    *(a1 + 12) |= 0x20u;
    if (!X509_check_akid(a1, a1[9]))
    {
      v63 = *(a1 + 12);
      if ((v63 & 2) == 0 || (*(a1 + 52) & 4) != 0)
      {
        *(a1 + 12) = v63 | 0x2000;
      }
    }
  }

LABEL_147:
  v64 = (*a1)[9];
  if (v64 && *v64)
  {
    v65 = 0;
    v66 = 0;
    do
    {
      v67 = *(v64[1] + 8 * v65);
      if (OBJ_obj2nid(v67->object) == 85)
      {
        if (v66)
        {
          a1[11] = 0;
LABEL_157:
          *(a1 + 12) |= 0x80u;
          goto LABEL_158;
        }
      }

      else
      {
        v67 = v66;
      }

      ++v65;
      v66 = v67;
    }

    while (v65 < *v64);
    if (!v67)
    {
      goto LABEL_160;
    }

    v68 = X509V3_EXT_d2i(v67);
    a1[11] = v68;
    if (!v68)
    {
      goto LABEL_157;
    }

LABEL_158:
    v69 = (*a1)[9];
    if (!v69)
    {
LABEL_173:
      a1[12] = 0;
      v74 = (*a1)[9];
      if (v74)
      {
        goto LABEL_174;
      }

LABEL_204:
      v78 = 0;
      a1[10] = 0;
      v79 = a1 + 10;
      goto LABEL_205;
    }
  }

  else
  {
LABEL_160:
    a1[11] = 0;
    v69 = (*a1)[9];
    if (!v69)
    {
      goto LABEL_173;
    }
  }

  if (!*v69)
  {
    goto LABEL_173;
  }

  v70 = 0;
  v71 = 0;
  do
  {
    v72 = *(v69[1] + 8 * v70);
    if (OBJ_obj2nid(v72->object) == 666)
    {
      if (v71)
      {
        a1[12] = 0;
LABEL_170:
        *(a1 + 12) |= 0x80u;
        goto LABEL_171;
      }
    }

    else
    {
      v72 = v71;
    }

    ++v70;
    v71 = v72;
  }

  while (v70 < *v69);
  if (!v72)
  {
    goto LABEL_173;
  }

  v73 = X509V3_EXT_d2i(v72);
  a1[12] = v73;
  if (!v73)
  {
    goto LABEL_170;
  }

LABEL_171:
  v74 = (*a1)[9];
  if (!v74)
  {
    goto LABEL_204;
  }

LABEL_174:
  if (!*v74)
  {
    goto LABEL_204;
  }

  v75 = 0;
  v76 = 0;
  do
  {
    v77 = *(v74[1] + 8 * v75);
    if (OBJ_obj2nid(v77->object) == 103)
    {
      if (v76)
      {
        a1[10] = 0;
LABEL_183:
        *(a1 + 12) |= 0x80u;
        goto LABEL_184;
      }
    }

    else
    {
      v77 = v76;
    }

    ++v75;
    v76 = v77;
  }

  while (v75 < *v74);
  if (!v77)
  {
    goto LABEL_204;
  }

  v78 = X509V3_EXT_d2i(v77);
  a1[10] = v78;
  v79 = a1 + 10;
  if (!v78)
  {
    goto LABEL_183;
  }

LABEL_205:
  for (j = 0; v78 && j < *v78; ++j)
  {
    v89 = *(v78[1] + 8 * j);
    v90 = *v89;
    if (*v89 && *v90 == 1)
    {
      v91 = *(v89 + 16);
      if (v91)
      {
        v92 = 0;
        while (*v91 != v92)
        {
          v93 = *(v91[1] + 8 * v92++);
          if (*v93 == 4)
          {
            v88 = *(v93 + 8);
            if (v88)
            {
              goto LABEL_207;
            }

            break;
          }
        }
      }

      v88 = (*a1)[3];
LABEL_207:
      if (!DIST_POINT_set_dpname(v90, v88))
      {
        goto LABEL_183;
      }

      v78 = *v79;
    }
  }

LABEL_184:
  v80 = (*a1)[9];
  if (v80)
  {
    v81 = 0;
    while (v81 < *v80)
    {
      if (*v80 > v81)
      {
        v83 = *(v80[1] + 8 * v81);
        if (v83)
        {
          if (*(v83 + 8) >= 1)
          {
            v84 = OBJ_obj2nid(*v83);
            if (v84 <= 400)
            {
              if ((v84 - 83) > 0x2B || ((1 << (v84 - 83)) & 0x80000000055) == 0)
              {
LABEL_199:
                v85 = *(a1 + 12) | 0x200;
                goto LABEL_201;
              }
            }

            else if ((v84 - 747) >= 2 && v84 != 401 && v84 != 666)
            {
              goto LABEL_199;
            }
          }
        }
      }

      ++v81;
      v80 = (*a1)[9];
      if (!v80)
      {
        break;
      }
    }
  }

  v85 = *(a1 + 12);
LABEL_201:
  *(a1 + 12) = v85 | 0x100;
LABEL_202:
  if (pthread_rwlock_unlock((a1 + 18)))
  {
    goto LABEL_222;
  }

  return ((*(a1 + 12) >> 7) & 1) == 0;
}

uint64_t X509_check_akid(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = a1[8];
    if (v5)
    {
      if (ASN1_STRING_cmp(v4, v5))
      {
        return 30;
      }
    }
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(*a1 + 8);
    v9 = v8->type & 0x100;
    if (v9 == (v7->type & 0x100))
    {
      v10 = ASN1_STRING_cmp(v8, v7);
      if (v9)
      {
        if (v10 < 0)
        {
          return 31;
        }

        if (v10)
        {
          v10 = -1;
        }

        else
        {
          v10 = 0;
        }
      }

      if (!v10)
      {
        goto LABEL_14;
      }
    }

    return 31;
  }

LABEL_14:
  v11 = *(a2 + 8);
  if (v11)
  {
    v12 = 0;
    while (*v11 != v12)
    {
      v13 = *(v11[1] + 8 * v12++);
      if (*v13 == 4)
      {
        v14 = *(v13 + 8);
        if (!v14 || !X509_NAME_cmp(v14, *(*a1 + 24)))
        {
          return 0;
        }

        return 31;
      }
    }
  }

  return 0;
}

BOOL check_purpose_ssl_client(const x509_purpose_st *a1, const x509_st *a2, int a3)
{
  dummy = a2->ex_data.dummy;
  if ((dummy & 4) != 0 && (a2->ex_pathlen & 2) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (dummy & 2) != 0)
  {
    return (*(&a2->ex_data.dummy + 1) & 0x88) != 0;
  }

  return result;
}

BOOL check_purpose_ssl_server(const x509_purpose_st *a1, const x509_st *a2, int a3)
{
  dummy = a2->ex_data.dummy;
  if ((dummy & 4) != 0 && (a2->ex_pathlen & 1) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (dummy & 2) != 0)
  {
    return (*(&a2->ex_data.dummy + 1) & 0xA8) != 0;
  }

  return result;
}

uint64_t check_purpose_ns_ssl_server(const x509_purpose_st *a1, const x509_st *a2, int a3)
{
  dummy = a2->ex_data.dummy;
  if ((dummy & 4) != 0 && (a2->ex_pathlen & 1) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (dummy & 2) != 0)
  {
    return (*(&a2->ex_data.dummy + 1) >> 5) & 1;
  }

  return result;
}

BOOL check_purpose_smime_sign(const x509_purpose_st *a1, const x509_st *a2, int a3)
{
  dummy = a2->ex_data.dummy;
  if ((dummy & 4) != 0 && (a2->ex_pathlen & 4) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (dummy & 2) != 0)
  {
    return (*(&a2->ex_data.dummy + 1) & 0xC0) != 0;
  }

  return result;
}

uint64_t check_purpose_smime_encrypt(const x509_purpose_st *a1, const x509_st *a2, int a3)
{
  dummy = a2->ex_data.dummy;
  if ((dummy & 4) != 0 && (a2->ex_pathlen & 4) == 0)
  {
    return 0;
  }

  result = 1;
  if (!a3 && (dummy & 2) != 0)
  {
    return (*(&a2->ex_data.dummy + 1) >> 5) & 1;
  }

  return result;
}

uint64_t check_purpose_crl_sign(const x509_purpose_st *a1, const x509_st *a2, int a3)
{
  if (a3)
  {
    return 1;
  }

  if ((a2->ex_data.dummy & 2) != 0)
  {
    return (*(&a2->ex_data.dummy + 1) >> 1) & 1;
  }

  return 1;
}

BOOL check_purpose_timestamp_sign(const x509_purpose_st *a1, const x509_st *a2, int a3)
{
  if (a3)
  {
    return 1;
  }

  dummy = a2->ex_data.dummy;
  if ((dummy & 2) != 0)
  {
    result = 0;
    if ((dummy & 4) == 0)
    {
      return result;
    }

    v5 = *(&a2->ex_data.dummy + 1);
    if (!v5 || (v5 & 0xFFFFFF3F) != 0)
    {
      return result;
    }
  }

  else if ((dummy & 4) == 0)
  {
    return 0;
  }

  if (LODWORD(a2->ex_pathlen) != 64)
  {
    return 0;
  }

  extensions = a2->cert_info->extensions;
  v8 = OBJ_nid2obj(126);
  if (extensions)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 1;
  }

  num = extensions->num;
  if (num < 1)
  {
    return 1;
  }

  v11 = v8;
  data = extensions->data;
  length = v8->length;
  if (length)
  {
    v14 = 0;
    v15 = length;
    while (1)
    {
      v16 = *data[v14];
      if (*(v16 + 20) == v15 && !memcmp(*(v16 + 24), v11->data, v15))
      {
        break;
      }

      if (num == ++v14)
      {
        return 1;
      }
    }

    v17 = a2;
  }

  else
  {
    v17 = a2;
    v14 = 0;
    while (*(*data[v14] + 20))
    {
      if (num == ++v14)
      {
        return 1;
      }
    }
  }

  v18 = v17->cert_info->extensions;
  return v18 && *&v18->num > v14 && (v19 = v18->data[v14]) != 0 && *(v19 + 2) >= 1;
}

_BYTE *s2i_skey_id(const v3_ext_method *a1, const v3_ext_ctx *a2, const char *__s1)
{
  v31 = *MEMORY[0x277D85DE8];
  size = 0;
  if (strcmp(__s1, "hash"))
  {
    *md = 0;
    result = x509v3_hex_to_bytes(__s1, md);
    if (!result)
    {
      return result;
    }

    v6 = result;
    if (*md >> 31)
    {
      ERR_put_error(20, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_skey.cc", 43);
      v8 = *(v6 - 1);
      v7 = v6 - 8;
      v9 = v8 + 8;
      if (v8 == -8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v20 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (v20)
      {
        *v20 = 24;
        v21 = v20;
        *(v20 + 2) = *md;
        result = v20 + 8;
        *(v21 + 3) = 4;
        *(v21 + 2) = v6;
        *(v21 + 3) = 0;
        return result;
      }

      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v22 = *(v6 - 1);
      v7 = v6 - 8;
      v9 = v22 + 8;
      if (v22 == -8)
      {
        goto LABEL_28;
      }
    }

    bzero(v7, v9);
LABEL_28:
    free(v7);
    return 0;
  }

  v10 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v10)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v11 = v10;
  *v10 = 24;
  v10[1] = 0x400000000;
  result = v10 + 1;
  v11[2] = 0;
  v12 = v11 + 2;
  v11[3] = 0;
  if (!a2)
  {
    goto LABEL_22;
  }

  if (a2->flags == 1)
  {
    return result;
  }

  subject_req = a2->subject_req;
  if (!subject_req)
  {
    subject_cert = a2->subject_cert;
    if (subject_cert)
    {
      v7 = v11;
      public_key = subject_cert->cert_info->key->public_key;
      if (public_key)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

LABEL_22:
    v7 = v11;
    v24 = 85;
    goto LABEL_23;
  }

  v7 = v11;
  public_key = subject_req->req_info->pubkey->public_key;
  if (!public_key)
  {
LABEL_21:
    v24 = 96;
LABEL_23:
    ERR_put_error(20, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_skey.cc", v24);
    goto LABEL_24;
  }

LABEL_11:
  data = public_key->data;
  length = public_key->length;
  v17 = result;
  v18 = EVP_sha1();
  if (!EVP_Digest(data, length, md, &size, v18, 0) || (v19 = ASN1_STRING_set(v17, md, size), result = v17, !v19))
  {
LABEL_24:
    v25 = *v12;
    if (*v12)
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

    goto LABEL_28;
  }

  return result;
}

uint64_t x509V3_add_len_value(const char *a1, void *a2, size_t a3, int a4, char **a5)
{
  v8 = *a5;
  if (a1)
  {
    v11 = strlen(a1);
    v12 = v11 + 1;
    if (v11 != -1)
    {
      if (v12 <= 0xFFFFFFFFFFFFFFF7)
      {
        v13 = malloc_type_malloc(v11 + 9, 0xB4E622C9uLL);
        if (v13)
        {
          *v13 = v12;
          v14 = v13 + 1;
          memcpy(v13 + 1, a1, v12);
          if (!a4)
          {
            goto LABEL_6;
          }

LABEL_10:
          v19 = 0;
          v20 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
          if (!v20)
          {
            goto LABEL_47;
          }

          goto LABEL_11;
        }
      }

      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

    v21 = 0;
    v14 = 0;
LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v14 = 0;
  if (a4)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (a3)
  {
    if (memchr(a2, 0, a3))
    {
      v15 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_utl.cc";
      v16 = 20;
      v17 = 163;
      v18 = 61;
LABEL_62:
      ERR_put_error(v16, 0, v17, v15, v18);
      v21 = 0;
      goto LABEL_17;
    }

    v46 = 0;
    while (*(a2 + v46))
    {
      if (a3 == ++v46)
      {
        v46 = a3;
        break;
      }
    }

    if (v46 == -1)
    {
      v15 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v16 = 14;
      v17 = 65;
      v18 = 523;
      goto LABEL_62;
    }

    if (v46 > 0xFFFFFFFFFFFFFFF6 || (v47 = v46 + 1, (v48 = malloc_type_malloc(v46 + 9, 0xB4E622C9uLL)) == 0))
    {
LABEL_60:
      v15 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v16 = 14;
      v17 = 65;
      v18 = 217;
      goto LABEL_62;
    }
  }

  else
  {
    v46 = 0;
    v47 = 1;
    v48 = malloc_type_malloc(9uLL, 0xB4E622C9uLL);
    if (!v48)
    {
      goto LABEL_60;
    }
  }

  *v48 = v47;
  v19 = v48 + 1;
  if (v46)
  {
    memcpy(v48 + 1, a2, v46);
  }

  *(v19 + v46) = 0;
  v20 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v20)
  {
LABEL_47:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v21 = 0;
    goto LABEL_18;
  }

LABEL_11:
  *v20 = 24;
  v20[1] = 0;
  v21 = v20 + 1;
  v20[2] = 0;
  v20[3] = 0;
  v22 = *a5;
  if (!*a5)
  {
    v23 = v20;
    v22 = OPENSSL_sk_new_null();
    v20 = v23;
    *a5 = v22;
    if (!v22)
    {
      goto LABEL_18;
    }
  }

  v20[1] = 0;
  v20[2] = v14;
  v20[3] = v19;
  v24 = *v22;
  if (*v22 < 0x7FFFFFFFuLL)
  {
    v43 = *(v22 + 3);
    if (v43 <= v24 + 1)
    {
      v49 = OPENSSL_realloc(*(v22 + 1), 16 * v43);
      if (!v49)
      {
        goto LABEL_18;
      }

      *(v22 + 1) = v49;
      *(v22 + 3) = 2 * v43;
      v44 = *v22;
      v50 = *v22 - v24;
      if (*v22 <= v24)
      {
        v45 = &v49[v44];
      }

      else
      {
        if (8 * v50)
        {
          memmove(&v49[v24 + 1], &v49[v24], 8 * v50);
          v44 = *v22;
          v49 = *(v22 + 1);
        }

        v45 = &v49[v24];
      }
    }

    else
    {
      v44 = *v22;
      v45 = (*(v22 + 1) + 8 * v24);
    }

    *v45 = v21;
    *(v22 + 4) = 0;
    *v22 = v44 + 1;
    if (v44 != -1)
    {
      return 1;
    }
  }

  else
  {
    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
  }

LABEL_18:
  if (!v8)
  {
    v25 = *a5;
    if (*a5)
    {
      v26 = *(v25 + 1);
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

      v31 = *(v25 - 1);
      v30 = v25 - 8;
      v32 = v31 + 8;
      if (v31 != -8)
      {
        bzero(v30, v32);
      }

      free(v30);
    }

    *a5 = 0;
  }

  if (v21)
  {
    v34 = *(v21 - 1);
    v33 = v21 - 1;
    v35 = v34 + 8;
    if (v34 != -8)
    {
      bzero(v33, v35);
    }

    free(v33);
  }

  if (v14)
  {
    v37 = *(v14 - 1);
    v36 = v14 - 1;
    v38 = v37 + 8;
    if (v37 != -8)
    {
      bzero(v36, v38);
    }

    free(v36);
  }

  if (v19)
  {
    v40 = *(v19 - 1);
    v39 = v19 - 1;
    v41 = v40 + 8;
    if (v40 != -8)
    {
      bzero(v39, v41);
    }

    free(v39);
  }

  return 0;
}

void X509V3_conf_free(CONF_VALUE *val)
{
  if (val)
  {
    name = val->name;
    if (name)
    {
      v4 = *(name - 1);
      v3 = name - 8;
      v5 = v4 + 8;
      if (v4 != -8)
      {
        bzero(v3, v5);
      }

      free(v3);
    }

    value = val->value;
    if (value)
    {
      v8 = *(value - 1);
      v7 = value - 8;
      v9 = v8 + 8;
      if (v8 != -8)
      {
        bzero(v7, v9);
      }

      free(v7);
    }

    section = val->section;
    if (val->section)
    {
      v12 = *(section - 1);
      v11 = section - 8;
      v13 = v12 + 8;
      if (v12 != -8)
      {
        bzero(v11, v13);
      }

      free(v11);
    }

    v15 = val[-1].value;
    p_value = &val[-1].value;
    v16 = (v15 + 8);
    if (v15 != -8)
    {
      bzero(p_value, v16);
    }

    free(p_value);
  }
}

char *__cdecl i2s_ASN1_ENUMERATED(X509V3_EXT_METHOD *meth, ASN1_ENUMERATED *aint)
{
  if (!aint)
  {
    return 0;
  }

  if ((aint->type & 0xFFFFFEFF) != 0xA)
  {
    v10 = 195;
    v11 = 420;
LABEL_11:
    ERR_put_error(12, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", v11);
    return 0;
  }

  v3 = BN_bin2bn(aint->data, aint->length, 0);
  if (!v3)
  {
    v10 = 105;
    v11 = 426;
    goto LABEL_11;
  }

  v4 = v3;
  top = v3->top;
  if ((aint->type & 0x100) == 0)
  {
    goto LABEL_21;
  }

  if (!top)
  {
    goto LABEL_19;
  }

  d = v3->d;
  if (top < 4)
  {
    v7 = 0;
    v8 = 0;
LABEL_15:
    v17 = top - v7;
    v18 = &d->i64[v7];
    do
    {
      v19 = *v18++;
      *&v8 |= v19;
      --v17;
    }

    while (v17);
    goto LABEL_17;
  }

  v7 = top & 0xFFFFFFFFFFFFFFFCLL;
  v12 = d + 1;
  v13 = 0uLL;
  v14 = v7;
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
  v8 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  if (v7 != top)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (!*&v8)
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  v20 = 1;
LABEL_20:
  v3->neg = v20;
LABEL_21:
  if (top < 1)
  {
    if (!top)
    {
      goto LABEL_42;
    }

    v21 = v3->d;
  }

  else
  {
    v21 = v3->d;
    while (!v3->d[top - 1])
    {
      v22 = __OFSUB__(top--, 1);
      if ((top < 0) ^ v22 | (top == 0))
      {
        goto LABEL_42;
      }
    }
  }

  v23 = top - 1;
  v24 = v21[v23];
  v25 = v24 != 0;
  v26 = HIDWORD(v24) != 0;
  if (HIDWORD(v24))
  {
    v24 >>= 32;
  }

  v27 = v24 >> 16 != 0;
  if (v24 >> 16)
  {
    v24 >>= 16;
  }

  v28 = v24 > 0xFF;
  if (v24 > 0xFF)
  {
    v24 >>= 8;
  }

  v29 = v24 > 0xF;
  if (v24 > 0xF)
  {
    v24 >>= 4;
  }

  v30 = v24 > 3;
  if (v24 > 3)
  {
    v24 >>= 2;
  }

  v31 = v25 | (v23 << 6) | (32 * v26) | (16 * v27) | (8 * v28) | (4 * v29) | (2 * v30);
  if (v24 > 1)
  {
    ++v31;
  }

  if (v31 > 0x1F)
  {
    result = BN_bn2hex(v3);
    if (result)
    {
      v48 = result;
      v49 = *result;
      v54 = 0;
      if (v49 == 45)
      {
        v50 = "-";
      }

      else
      {
        v50 = &str_18_14;
      }

      if (OPENSSL_asprintf(&v54, "%s0x%s", v42, v43, v44, v45, v46, v47, v50) == -1)
      {
        v54 = 0;
      }

      v52 = *(v48 - 1);
      v51 = v48 - 8;
      v53 = v52 + 8;
      if (v52 != -8)
      {
        bzero(v51, v53);
      }

      free(v51);
      result = v54;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = BN_bn2dec(v3);
LABEL_43:
  flags = v4->flags;
  if ((flags & 2) == 0)
  {
    v33 = v4->d;
    if (v4->d)
    {
      v34 = result;
      v36 = *(v33 - 1);
      v35 = v33 - 1;
      v37 = v36 + 8;
      if (v36 != -8)
      {
        bzero(v35, v37);
      }

      free(v35);
      flags = v4->flags;
      result = v34;
    }
  }

  if (flags)
  {
    v38 = result;
    v40 = *&v4[-1].neg;
    p_neg = &v4[-1].neg;
    v41 = v40 + 8;
    if (v40 != -8)
    {
      bzero(p_neg, v41);
    }

    free(p_neg);
    return v38;
  }

  else
  {
    v4->d = 0;
  }

  return result;
}

char *__cdecl i2s_ASN1_INTEGER(X509V3_EXT_METHOD *meth, ASN1_INTEGER *aint)
{
  if (!aint)
  {
    return 0;
  }

  if ((aint->type & 0xFFFFFEFF) != 2)
  {
    v10 = 195;
    v11 = 420;
LABEL_11:
    ERR_put_error(12, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", v11);
    return 0;
  }

  v3 = BN_bin2bn(aint->data, aint->length, 0);
  if (!v3)
  {
    v10 = 105;
    v11 = 426;
    goto LABEL_11;
  }

  v4 = v3;
  top = v3->top;
  if ((aint->type & 0x100) == 0)
  {
    goto LABEL_21;
  }

  if (!top)
  {
    goto LABEL_19;
  }

  d = v3->d;
  if (top < 4)
  {
    v7 = 0;
    v8 = 0;
LABEL_15:
    v17 = top - v7;
    v18 = &d->i64[v7];
    do
    {
      v19 = *v18++;
      *&v8 |= v19;
      --v17;
    }

    while (v17);
    goto LABEL_17;
  }

  v7 = top & 0xFFFFFFFFFFFFFFFCLL;
  v12 = d + 1;
  v13 = 0uLL;
  v14 = v7;
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
  v8 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  if (v7 != top)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (!*&v8)
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  v20 = 1;
LABEL_20:
  v3->neg = v20;
LABEL_21:
  if (top < 1)
  {
    if (!top)
    {
      goto LABEL_42;
    }

    v21 = v3->d;
  }

  else
  {
    v21 = v3->d;
    while (!v3->d[top - 1])
    {
      v22 = __OFSUB__(top--, 1);
      if ((top < 0) ^ v22 | (top == 0))
      {
        goto LABEL_42;
      }
    }
  }

  v23 = top - 1;
  v24 = v21[v23];
  v25 = v24 != 0;
  v26 = HIDWORD(v24) != 0;
  if (HIDWORD(v24))
  {
    v24 >>= 32;
  }

  v27 = v24 >> 16 != 0;
  if (v24 >> 16)
  {
    v24 >>= 16;
  }

  v28 = v24 > 0xFF;
  if (v24 > 0xFF)
  {
    v24 >>= 8;
  }

  v29 = v24 > 0xF;
  if (v24 > 0xF)
  {
    v24 >>= 4;
  }

  v30 = v24 > 3;
  if (v24 > 3)
  {
    v24 >>= 2;
  }

  v31 = v25 | (v23 << 6) | (32 * v26) | (16 * v27) | (8 * v28) | (4 * v29) | (2 * v30);
  if (v24 > 1)
  {
    ++v31;
  }

  if (v31 > 0x1F)
  {
    result = BN_bn2hex(v3);
    if (result)
    {
      v48 = result;
      v49 = *result;
      v54 = 0;
      if (v49 == 45)
      {
        v50 = "-";
      }

      else
      {
        v50 = &str_18_14;
      }

      if (OPENSSL_asprintf(&v54, "%s0x%s", v42, v43, v44, v45, v46, v47, v50) == -1)
      {
        v54 = 0;
      }

      v52 = *(v48 - 1);
      v51 = v48 - 8;
      v53 = v52 + 8;
      if (v52 != -8)
      {
        bzero(v51, v53);
      }

      free(v51);
      result = v54;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = BN_bn2dec(v3);
LABEL_43:
  flags = v4->flags;
  if ((flags & 2) == 0)
  {
    v33 = v4->d;
    if (v4->d)
    {
      v34 = result;
      v36 = *(v33 - 1);
      v35 = v33 - 1;
      v37 = v36 + 8;
      if (v36 != -8)
      {
        bzero(v35, v37);
      }

      free(v35);
      flags = v4->flags;
      result = v34;
    }
  }

  if (flags)
  {
    v38 = result;
    v40 = *&v4[-1].neg;
    p_neg = &v4[-1].neg;
    v41 = v40 + 8;
    if (v40 != -8)
    {
      bzero(p_neg, v41);
    }

    free(p_neg);
    return v38;
  }

  else
  {
    v4->d = 0;
  }

  return result;
}

ASN1_INTEGER *__cdecl s2i_ASN1_INTEGER(X509V3_EXT_METHOD *meth, char *value)
{
  if (!value)
  {
    v5 = 126;
    v6 = 183;
LABEL_45:
    ERR_put_error(20, value, v5, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_utl.cc", v6);
    return 0;
  }

  v2 = value;
  v3 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v3)
  {
    *v3 = 24;
    v3[1] = 0;
    v4 = (v3 + 1);
    v3[2] = 0;
    v3[3] = 0x100000000;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v4 = 0;
  }

  a = v4;
  v7 = *v2;
  if (v7 == 45)
  {
    ++v2;
  }

  if (*v2 == 48 && (v2[1] | 0x20) == 0x78)
  {
    v2 += 2;
    v8 = BN_hex2bn(&a, v2);
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (strlen(v2) > 0x2000)
    {
      if (v4)
      {
        flags = v4->flags;
        if ((flags & 2) == 0)
        {
          d = v4->d;
          if (v4->d)
          {
            v12 = *(d - 1);
            v11 = d - 1;
            v13 = v12 + 8;
            if (v12 != -8)
            {
              bzero(v11, v13);
            }

            free(v11);
            flags = v4->flags;
          }
        }

        if (flags)
        {
          v31 = *&v4[-1].neg;
          p_neg = &v4[-1].neg;
          v32 = v31 + 8;
          if (v31 != -8)
          {
            bzero(p_neg, v32);
          }

          free(p_neg);
        }

        else
        {
          v4->d = 0;
        }
      }

      LODWORD(value) = 0;
      v5 = 127;
      v6 = 211;
      goto LABEL_45;
    }

    v8 = BN_dec2bn(&a, v2);
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (v2[v8])
  {
LABEL_23:
    v14 = a;
    if (a)
    {
      v15 = a->flags;
      if ((v15 & 2) == 0)
      {
        v16 = a->d;
        if (a->d)
        {
          v18 = *(v16 - 1);
          v17 = v16 - 1;
          v19 = v18 + 8;
          if (v18 != -8)
          {
            bzero(v17, v19);
          }

          free(v17);
          v15 = v14->flags;
        }
      }

      if (v15)
      {
        v21 = *&v14[-1].neg;
        v20 = &v14[-1].neg;
        v22 = v21 + 8;
        if (v21 != -8)
        {
          bzero(v20, v22);
        }

        free(v20);
      }

      else
      {
        v14->d = 0;
      }
    }

    LODWORD(value) = 0;
    v5 = 102;
    v6 = 219;
    goto LABEL_45;
  }

  if (v7 != 45 || (top = a->top, !top))
  {
    v27 = 1;
    result = bn_to_asn1_string(a, 0, 2);
    v29 = a;
    if (!a)
    {
      goto LABEL_60;
    }

    goto LABEL_53;
  }

  v24 = a->d;
  if (top <= 3)
  {
    v25 = 0;
    v26 = 0;
LABEL_50:
    v38 = top - v25;
    v39 = &v24[v25];
    do
    {
      v40 = *v39++;
      *&v26 |= v40;
      --v38;
    }

    while (v38);
    goto LABEL_52;
  }

  v25 = top & 0xFFFFFFFFFFFFFFFCLL;
  v33 = (v24 + 2);
  v34 = 0uLL;
  v35 = top & 0xFFFFFFFFFFFFFFFCLL;
  v36 = 0uLL;
  do
  {
    v34 = vorrq_s8(v33[-1], v34);
    v36 = vorrq_s8(*v33, v36);
    v33 += 2;
    v35 -= 4;
  }

  while (v35);
  v37 = vorrq_s8(v36, v34);
  v26 = vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
  if (v25 != top)
  {
    goto LABEL_50;
  }

LABEL_52:
  v27 = *&v26 == 0;
  result = bn_to_asn1_string(a, 0, 2);
  v29 = a;
  if (!a)
  {
    goto LABEL_60;
  }

LABEL_53:
  v41 = v29->flags;
  if ((v41 & 2) == 0)
  {
    v42 = v29->d;
    if (v29->d)
    {
      v43 = result;
      v45 = *(v42 - 1);
      v44 = v42 - 1;
      v46 = v45 + 8;
      if (v45 != -8)
      {
        bzero(v44, v46);
      }

      free(v44);
      v41 = v29->flags;
      result = v43;
    }
  }

  if (v41)
  {
    v47 = result;
    v49 = *&v29[-1].neg;
    v48 = &v29[-1].neg;
    v50 = v49 + 8;
    if (v49 != -8)
    {
      bzero(v48, v50);
    }

    free(v48);
    result = v47;
    if (v47)
    {
      goto LABEL_61;
    }

    goto LABEL_66;
  }

  v29->d = 0;
LABEL_60:
  if (!result)
  {
LABEL_66:
    LODWORD(value) = 0;
    v5 = 103;
    v6 = 230;
    goto LABEL_45;
  }

LABEL_61:
  if (!v27)
  {
    result->type |= 0x100u;
  }

  return result;
}