int X509_NAME_add_entry(X509_NAME *name, X509_NAME_ENTRY *ne, int loc, int set)
{
  if (name)
  {
    entries = name->entries;
    if (name->entries)
    {
      num = entries->num;
    }

    else
    {
      num = 0;
    }

    if (num >= loc)
    {
      v6 = loc;
    }

    else
    {
      v6 = num;
    }

    if (loc >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = num;
    }

    v8 = set == 0;
    name->modified = 1;
    if (set == -1)
    {
      if (v7)
      {
        v8 = 0;
        v9 = *(entries->data[v7 - 1] + 4);
        name = ASN1_item_dup(&X509_NAME_ENTRY_it, ne);
        if (!name)
        {
          return name;
        }
      }

      else
      {
        v9 = 0;
        v8 = 1;
        name = ASN1_item_dup(&X509_NAME_ENTRY_it, ne);
        if (!name)
        {
          return name;
        }
      }
    }

    else if (v7 >= num)
    {
      if (v7)
      {
        v9 = *(entries->data[v7 - 1] + 4) + 1;
        name = ASN1_item_dup(&X509_NAME_ENTRY_it, ne);
        if (!name)
        {
          return name;
        }
      }

      else
      {
        v9 = 0;
        name = ASN1_item_dup(&X509_NAME_ENTRY_it, ne);
        if (!name)
        {
          return name;
        }
      }
    }

    else
    {
      v9 = *(entries->data[v7] + 4);
      name = ASN1_item_dup(&X509_NAME_ENTRY_it, ne);
      if (!name)
      {
        return name;
      }
    }

    v10 = name;
    LODWORD(name->bytes) = v9;
    if (!entries)
    {
LABEL_27:
      pval = v10;
      ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it);
      LODWORD(name) = 0;
      return name;
    }

    v11 = *&entries->num;
    if (*&entries->num >= 0x7FFFFFFFuLL)
    {
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
      goto LABEL_27;
    }

    comp = entries->comp;
    if (comp <= v11 + 1)
    {
      v13 = OPENSSL_realloc(entries->data, 16 * comp);
      if (!v13)
      {
        goto LABEL_27;
      }

      entries->data = v13;
      entries->comp = (2 * comp);
      v11 = *&entries->num;
    }

    if (v11 <= v7)
    {
      entries->data[v11] = v10;
      entries->sorted = 0;
      v16 = v11 + 1;
      *&entries->num = v11 + 1;
      if (v11 == -1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v14 = 8 * (v11 - v7);
      data = entries->data;
      if (v14)
      {
        memmove(&data[v7 + 1], &data[v7], v14);
        v11 = *&entries->num;
        data = entries->data;
      }

      data[v7] = v10;
      entries->sorted = 0;
      v16 = v11 + 1;
      *&entries->num = v11 + 1;
      if (v11 == -1)
      {
        goto LABEL_27;
      }
    }

    if (v8 && v7 + 1 < v16)
    {
      v17 = v7 + 1;
      v18 = entries->data;
      v19 = v11 - v7;
      LODWORD(name) = 1;
      do
      {
        ++*(v18[v17++] + 4);
        --v19;
      }

      while (v19);
    }

    else
    {
      LODWORD(name) = 1;
    }
  }

  return name;
}

int X509_NAME_add_entry_by_txt(X509_NAME *name, const char *field, int type, const unsigned __int8 *bytes, int len, int loc, int set)
{
  v14 = OBJ_sn2nid(field);
  if (v14 || (v14 = OBJ_ln2nid(field)) != 0)
  {
    object_with_text_oid = OBJ_nid2obj(v14);
    if (object_with_text_oid)
    {
      goto LABEL_4;
    }

LABEL_7:
    ERR_put_error(11, 0, 111, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x509name.cc", 267);
    ERR_add_error_data(2, "name=", field);
    return 0;
  }

  object_with_text_oid = create_object_with_text_oid(0, field, 0, 0);
  if (!object_with_text_oid)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = X509_NAME_ENTRY_create_by_OBJ(0, object_with_text_oid, type, bytes, len);
  ASN1_OBJECT_free(object_with_text_oid);
  if (v16)
  {
    v17 = X509_NAME_add_entry(name, v16, loc, set);
    pval = v16;
    ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it);
    return v17;
  }

  return 0;
}

X509_ALGOR *__cdecl d2i_X509_ALGOR(X509_ALGOR **a, const unsigned __int8 **in, uint64_t len)
{
  pval = 0;
  if (asn1_item_ex_d2i(&pval, in, len, &X509_ALGOR_it, 0xFFFFFFFFLL, 0, 0, 0, 0) <= 0)
  {
    ASN1_item_ex_free(&pval, &X509_ALGOR_it);
    if (a)
    {
      goto LABEL_3;
    }
  }

  else if (a)
  {
LABEL_3:
    ASN1_item_ex_free(a, &X509_ALGOR_it);
    result = pval;
    *a = pval;
    return result;
  }

  return pval;
}

uint64_t X509_ALGOR_cmp(void *a1, void *a2)
{
  v2 = *(*a1 + 20);
  v3 = *(*a2 + 20);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  if (!v2 || (v6 = a2, result = memcmp(*(*a1 + 24), *(*a2 + 24), v2), a2 = v6, !result))
  {
    v7 = a1[1];
    v8 = a2[1];
    if (!(v7 | v8))
    {
      return 0;
    }

    result = 0xFFFFFFFFLL;
    if (v7)
    {
      if (v8)
      {
        v9 = *v7;
        if (*v7 == *v8)
        {
          switch(v9)
          {
            case 1:
              return (*(v7 + 8) - *(v8 + 8));
            case 5:
              return 0;
            case 6:
              v10 = *(v7 + 8);
              v11 = *(v8 + 8);
              v12 = *(v10 + 20);
              v13 = *(v11 + 20);
              if (v12 < v13)
              {
                return result;
              }

              if (v12 > v13)
              {
                return 1;
              }

              if (v12)
              {
                v14 = *(v11 + 24);
                v15 = *(v10 + 24);

                return memcmp(v15, v14, v12);
              }

              return 0;
          }

          v16 = *(v7 + 8);
          v17 = *(v8 + 8);

          return ASN1_STRING_cmp(v16, v17);
        }
      }
    }
  }

  return result;
}

int i2d_PKCS8_bio(BIO *bp, X509_SIG *p8)
{
  out = 0;
  v3 = ASN1_item_i2d(p8, &out, &X509_PUBKEY_it.sname);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = out;
  if (!v3)
  {
    v9 = 1;
    if (out)
    {
      goto LABEL_21;
    }

    return v9;
  }

  if (bp)
  {
    v5 = v3;
    while (1)
    {
      v6 = v5 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v5;
      if (!bp->method)
      {
        break;
      }

      bwrite = bp->method->bwrite;
      if (!bwrite)
      {
        break;
      }

      if (!LODWORD(bp->cb_arg))
      {
        ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 125);
        v9 = 0;
        v4 = out;
        if (out)
        {
          goto LABEL_21;
        }

        return v9;
      }

      v8 = (bwrite)(bp, v4, v6);
      if (v8 <= 0)
      {
        goto LABEL_18;
      }

      bp->prev_bio = (bp->prev_bio + v8);
      v4 += v8;
      v5 -= v8;
      if (!v5)
      {
        v9 = 1;
        v4 = out;
        if (out)
        {
          goto LABEL_21;
        }

        return v9;
      }
    }
  }

  ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 121);
LABEL_18:
  v9 = 0;
  v4 = out;
  if (!out)
  {
    return v9;
  }

LABEL_21:
  v12 = *(v4 - 1);
  v11 = v4 - 8;
  v13 = v12 + 8;
  if (v12 != -8)
  {
    bzero(v11, v13);
  }

  free(v11);
  return v9;
}

int i2d_PKCS8_PRIV_KEY_INFO_bio(BIO *bp, PKCS8_PRIV_KEY_INFO *p8inf)
{
  out = 0;
  v3 = ASN1_item_i2d(p8inf, &out, &PKCS8_PRIV_KEY_INFO_it);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = out;
  if (!v3)
  {
    v9 = 1;
    if (out)
    {
      goto LABEL_21;
    }

    return v9;
  }

  if (bp)
  {
    v5 = v3;
    while (1)
    {
      v6 = v5 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v5;
      if (!bp->method)
      {
        break;
      }

      bwrite = bp->method->bwrite;
      if (!bwrite)
      {
        break;
      }

      if (!LODWORD(bp->cb_arg))
      {
        ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 125);
        v9 = 0;
        v4 = out;
        if (out)
        {
          goto LABEL_21;
        }

        return v9;
      }

      v8 = (bwrite)(bp, v4, v6);
      if (v8 <= 0)
      {
        goto LABEL_18;
      }

      bp->prev_bio = (bp->prev_bio + v8);
      v4 += v8;
      v5 -= v8;
      if (!v5)
      {
        v9 = 1;
        v4 = out;
        if (out)
        {
          goto LABEL_21;
        }

        return v9;
      }
    }
  }

  ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 121);
LABEL_18:
  v9 = 0;
  v4 = out;
  if (!out)
  {
    return v9;
  }

LABEL_21:
  v12 = *(v4 - 1);
  v11 = v4 - 8;
  v13 = v12 + 8;
  if (v12 != -8)
  {
    bzero(v11, v13);
  }

  free(v11);
  return v9;
}

uint64_t crl_lookup(uint64_t a1, ASN1_STRING ***a2, ASN1_STRING *a3, const X509_NAME *a4)
{
  v26[0] = a3;
  if (pthread_rwlock_rdlock(&g_crl_sort_lock))
  {
    goto LABEL_54;
  }

  v8 = *(*a1 + 40);
  if (v8 && !*(v8 + 16))
  {
    if (!*(v8 + 32))
    {
      if (pthread_rwlock_unlock(&g_crl_sort_lock))
      {
        goto LABEL_54;
      }

      goto LABEL_6;
    }

    v9 = *v8 > 1uLL;
    if (pthread_rwlock_unlock(&g_crl_sort_lock))
    {
      goto LABEL_54;
    }
  }

  else
  {
    v9 = 0;
    if (pthread_rwlock_unlock(&g_crl_sort_lock))
    {
      goto LABEL_54;
    }
  }

  if (v9)
  {
LABEL_6:
    if (!pthread_rwlock_wrlock(&g_crl_sort_lock))
    {
      v10 = *(*a1 + 40);
      if (v10 && !*(v10 + 16) && (!*(v10 + 32) || *v10 >= 2uLL))
      {
        OPENSSL_sk_sort(v10, sk_X509_REVOKED_call_cmp_func);
      }

      if (!pthread_rwlock_unlock(&g_crl_sort_lock))
      {
        goto LABEL_13;
      }
    }

LABEL_54:
    abort();
  }

LABEL_13:
  v11 = *(*a1 + 40);
  if (!v11)
  {
    return 0;
  }

  if (*(v11 + 32))
  {
    v12 = *v11;
    if (*(v11 + 16))
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 >= 2;
    }

    if (!v13)
    {
      if (v12)
      {
        v14 = 0;
        while (1)
        {
          v15 = v14 + ((v12 - v14 - 1) >> 1);
          v16 = *(v11 + 32);
          v27 = *(*(v11 + 8) + 8 * v15);
          v28 = v26;
          v17 = v16(&v28, &v27);
          if (v17 >= 1)
          {
            v14 = v15 + 1;
          }

          else if (v17 < 0)
          {
            v12 = v14 + ((v12 - v14 - 1) >> 1);
          }

          else
          {
            if (v12 - v14 == 1)
            {
              goto LABEL_40;
            }

            v12 = v15 + 1;
          }

          if (v14 >= v12)
          {
            return 0;
          }
        }
      }

      return 0;
    }

    v15 = 0;
    while (1)
    {
      v18 = *(v11 + 32);
      v27 = *(*(v11 + 8) + 8 * v15);
      v28 = v26;
      if (!v18(&v28, &v27))
      {
        break;
      }

      if (++v15 >= *v11)
      {
        return 0;
      }
    }
  }

  else
  {
    if (!*v11)
    {
      return 0;
    }

    v15 = 0;
    while (*(*(v11 + 8) + 8 * v15) != v26)
    {
      if (*v11 == ++v15)
      {
        return 0;
      }
    }
  }

LABEL_40:
  v19 = *(*a1 + 40);
  if (a4)
  {
    if (v19)
    {
      while (v15 < *v19)
      {
        v20 = *(v19[1] + 8 * v15);
        v21 = (*v20)->type & 0x100;
        if (v21 != (a3->type & 0x100))
        {
          break;
        }

        v22 = ASN1_STRING_cmp(*v20, a3);
        if (v21)
        {
          if (v22 < 0)
          {
            return 0;
          }

          if (v22)
          {
            v22 = -1;
          }

          else
          {
            v22 = 0;
          }
        }

        if (v22)
        {
          break;
        }

        if (!X509_NAME_cmp(a4, *(*a1 + 16)))
        {
          goto LABEL_65;
        }

        result = 0;
        ++v15;
        v19 = *(*a1 + 40);
        if (!v19)
        {
          return result;
        }
      }
    }

    return 0;
  }

  if (!v19)
  {
    return 0;
  }

  if (v15 >= *v19)
  {
    return 0;
  }

  v20 = *(v19[1] + 8 * v15);
  v24 = (*v20)->type & 0x100;
  if (v24 != (a3->type & 0x100))
  {
    return 0;
  }

  v25 = ASN1_STRING_cmp(*v20, a3);
  if (!v24)
  {
    goto LABEL_63;
  }

  if (v25 < 0)
  {
    return 0;
  }

  if (v25)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

LABEL_63:
  if (v25)
  {
    return 0;
  }

LABEL_65:
  if (a2)
  {
    *a2 = v20;
  }

  return 1;
}

uint64_t crl_inf_cb(int a1, ASN1_VALUE_st **a2, const ASN1_ITEM_st *a3, void *a4)
{
  if (*a2)
  {
    if (a1 == 5)
    {
      v4 = *(*a2 + 5);
      if (v4)
      {
        if (*(v4 + 32) != X509_REVOKED_cmp)
        {
          *(v4 + 16) = 0;
        }

        *(v4 + 32) = X509_REVOKED_cmp;
      }
    }
  }

  return 1;
}

uint64_t crl_cb(uint64_t result, ASN1_VALUE_st **a2, const ASN1_ITEM_st *a3, void *a4)
{
  v4 = *a2;
  if (result != 5)
  {
    if (result == 3)
    {
      pval = *(v4 + 32);
      ASN1_item_ex_free(&pval, &AUTHORITY_KEYID_it);
      pval = *(v4 + 40);
      ASN1_item_ex_free(&pval, &ISSUING_DIST_POINT_it);
    }

    else if (result == 1)
    {
      *(v4 + 36) = 0;
      *(v4 + 28) = 0;
      *(v4 + 44) = 0;
      return result;
    }

    return 1;
  }

  v5 = *v4;
  v6 = **v4;
  if (!v6)
  {
    goto LABEL_12;
  }

  pval = 0;
  if (!asn1_string_get_int64(&pval, v6, 2))
  {
    ERR_clear_error();
    goto LABEL_29;
  }

  if (pval >= 2)
  {
LABEL_29:
    v7 = 140;
    v8 = 134;
    goto LABEL_30;
  }

  if (pval)
  {
    goto LABEL_14;
  }

  v5 = *v4;
LABEL_12:
  if (v5[6])
  {
    v7 = 139;
    v8 = 141;
LABEL_30:
    ERR_put_error(11, 0, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x_crl.cc", v8);
    return 0;
  }

LABEL_14:
  v9 = EVP_sha256();
  pval = 0;
  v10 = ASN1_item_i2d(v4, &pval, &X509_CRL_INFO_it.sname);
  result = pval;
  if (!pval)
  {
    return result;
  }

  v11 = EVP_Digest(pval, v10, (v4 + 52), 0, v9, 0);
  if (pval)
  {
    v13 = pval - 8;
    v12 = *(pval - 1);
    if (v12 != -8)
    {
      bzero(v13, v12 + 8);
    }

    free(v13);
  }

  if (!v11)
  {
    return 0;
  }

  v14 = *(*v4 + 48);
  if (!v14 || !*v14)
  {
    goto LABEL_37;
  }

  v15 = 0;
  v16 = 0;
  do
  {
    v17 = *(v14[1] + 8 * v15);
    if (OBJ_obj2nid(v17->object) == 770)
    {
      if (v16)
      {
        result = 0;
        *(v4 + 40) = 0;
        return result;
      }
    }

    else
    {
      v17 = v16;
    }

    ++v15;
    v16 = v17;
  }

  while (v15 < *v14);
  if (!v17)
  {
LABEL_37:
    *(v4 + 40) = 0;
    goto LABEL_38;
  }

  result = X509V3_EXT_d2i(v17);
  *(v4 + 40) = result;
  if (result)
  {
    v18 = *(v4 + 48);
    v19 = v18 | 1;
    *(v4 + 48) = v18 | 1;
    if (*(result + 8) < 1)
    {
      v20 = 0;
    }

    else
    {
      v19 = v18 | 5;
      *(v4 + 48) = v18 | 5;
      v20 = 1;
    }

    if (*(result + 12) >= 1)
    {
      ++v20;
      v19 |= 8u;
      *(v4 + 48) = v19;
    }

    v50 = *(result + 28);
    if (v50 > 0)
    {
      v19 |= 0x10u;
      ++v20;
    }

    if (v20 > 1)
    {
      v19 |= 2u;
    }

    if (v50 > 0 || v20 >= 2)
    {
      *(v4 + 48) = v19;
    }

    if (*(result + 24) >= 1)
    {
      v19 |= 0x20u;
      *(v4 + 48) = v19;
    }

    if (*(result + 16))
    {
      *(v4 + 48) = v19 | 0x40;
    }

    result = DIST_POINT_set_dpname(*result, *(*v4 + 16));
    if (result)
    {
LABEL_38:
      v21 = *(*v4 + 48);
      if (!v21 || !*v21)
      {
        goto LABEL_49;
      }

      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(v21[1] + 8 * v22);
        if (OBJ_obj2nid(v24->object) == 90)
        {
          if (v23)
          {
            result = 0;
            *(v4 + 32) = 0;
            return result;
          }
        }

        else
        {
          v24 = v23;
        }

        ++v22;
        v23 = v24;
      }

      while (v22 < *v21);
      if (v24)
      {
        result = X509V3_EXT_d2i(v24);
        *(v4 + 32) = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
LABEL_49:
        *(v4 + 32) = 0;
      }

      v25 = *(*v4 + 48);
      if (v25)
      {
        v26 = *v25;
        if (*v25)
        {
          for (i = 0; i < *v25; ++i)
          {
            if (v26 > i && (v28 = *(v25[1] + 8 * i)) != 0)
            {
              v29 = OBJ_obj2nid(*v28);
              if (*(v28 + 8) >= 1 && v29 != 90 && v29 != 770)
              {
                *(v4 + 28) |= 0x200u;
                break;
              }
            }

            else
            {
              OBJ_obj2nid(0);
            }

            v26 = *v25;
          }
        }
      }

      v30 = *(*v4 + 40);
      if (!v30 || !*v30)
      {
        return 1;
      }

      v31 = 0;
      while (1)
      {
        v32 = *(v30[1] + 8 * v31);
        v33 = *(v32 + 16);
        if (v33)
        {
          if (*v33)
          {
            break;
          }
        }

LABEL_77:
        *(v32 + 24) = -1;
        v40 = *(v32 + 16);
        if (v40)
        {
          goto LABEL_78;
        }

LABEL_64:
        ++v31;
        result = 1;
        if (v31 >= *v30)
        {
          return result;
        }
      }

      v34 = 0;
      v35 = 0;
      do
      {
        v36 = *(v33[1] + 8 * v34);
        if (OBJ_obj2nid(v36->object) == 141)
        {
          if (v35)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v36 = v35;
        }

        ++v34;
        v35 = v36;
      }

      while (v34 < *v33);
      if (!v36)
      {
        goto LABEL_77;
      }

      v37 = X509V3_EXT_d2i(v36);
      if (!v37)
      {
LABEL_93:
        *(v4 + 28) |= 0x80u;
        return 1;
      }

      v38 = v37;
      pval = 0;
      if (asn1_string_get_int64(&pval, v37, 10))
      {
        v39 = pval;
      }

      else
      {
        ERR_clear_error();
        v39 = -1;
      }

      *(v32 + 24) = v39;
      data = v38->data;
      if (data)
      {
        v45 = *(data - 1);
        v44 = data - 8;
        v46 = v45 + 8;
        if (v45 != -8)
        {
          bzero(v44, v46);
        }

        free(v44);
      }

      flags = v38[-1].flags;
      p_flags = &v38[-1].flags;
      v49 = flags + 8;
      if (flags != -8)
      {
        bzero(p_flags, v49);
      }

      free(p_flags);
      v40 = *(v32 + 16);
      if (!v40)
      {
        goto LABEL_64;
      }

LABEL_78:
      v41 = *v40;
      if (*v40)
      {
        v42 = v40[1];
        while (!*v42 || *(*v42 + 8) <= 0)
        {
          v42 += 8;
          if (!--v41)
          {
            goto LABEL_64;
          }
        }

        *(v4 + 28) |= 0x200u;
      }

      goto LABEL_64;
    }
  }

  return result;
}

uint64_t x509_name_ex_new(ASN1_VALUE_st **a1, const ASN1_ITEM_st *a2)
{
  v3 = malloc_type_malloc(0x30uLL, 0xB4E622C9uLL);
  if (v3)
  {
    v4 = v3;
    *v3 = 40;
    v5 = OPENSSL_sk_new_null();
    v4[1] = v5;
    if (v5)
    {
      v6 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (v6)
      {
        *v6 = 24;
        v6[2] = 0;
        v6[3] = 0;
        v6[1] = 0;
        v4[3] = v6 + 1;
        v4[4] = 0;
        *(v4 + 10) = 0;
        result = 1;
        *(v4 + 4) = 1;
        *a1 = (v4 + 1);
        return result;
      }

      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v4[3] = 0;
      v8 = v4[1];
      if (v8)
      {
        v9 = *(v8 + 8);
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

        v14 = *(v8 - 8);
        v13 = (v8 - 8);
        v15 = v14 + 8;
        if (v14 != -8)
        {
          bzero(v13, v15);
        }

        free(v13);
      }
    }

    free(v4);
    return 0;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

void x509_name_ex_free(ASN1_VALUE_st **a1, const ASN1_ITEM_st *a2)
{
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = *(v4 + 8);
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
        }

        v10 = *(v4 - 8);
        v9 = (v4 - 8);
        v11 = v10 + 8;
        if (v10 != -8)
        {
          bzero(v9, v11);
        }

        free(v9);
      }

      v12 = *v3;
      if (*v3)
      {
        v13 = *v12;
        if (*v12)
        {
          v14 = 0;
          do
          {
            if (*(v12[1] + 8 * v14))
            {
              pval = *(v12[1] + 8 * v14);
              ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it);
              v13 = *v12;
            }

            ++v14;
          }

          while (v14 < v13);
        }

        v15 = v12[1];
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

        v20 = *(v12 - 1);
        v19 = v12 - 1;
        v21 = v20 + 8;
        if (v20 != -8)
        {
          bzero(v19, v21);
        }

        free(v19);
      }

      v22 = *(v3 + 24);
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

      v27 = *(v3 - 8);
      v26 = (v3 - 8);
      v28 = v27 + 8;
      if (v27 != -8)
      {
        bzero(v26, v28);
      }

      free(v26);
      *a1 = 0;
    }
  }
}

uint64_t x509_name_ex_d2i(ASN1_VALUE_st **a1, unsigned __int8 **a2, uint64_t a3, const ASN1_ITEM_st *a4, char a5, ASN1_TLC_st *a6)
{
  v8 = *a2;
  v91 = 0;
  v92 = v8;
  if (a3 >= 0x100000)
  {
    a3 = 0x100000;
  }

  result = asn1_item_ex_d2i(&v91, &v92, a3, &X509_NAME_INTERNAL_it, 0xFFFFFFFFLL, 0, a5, 0, 0);
  if (result >= 1)
  {
    v10 = v91;
    v11 = *a1;
    if (*a1)
    {
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = *(v12 + 8);
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

        v18 = *(v12 - 8);
        v17 = (v12 - 8);
        v19 = v18 + 8;
        if (v18 != -8)
        {
          bzero(v17, v19);
        }

        free(v17);
      }

      v20 = *v11;
      if (*v11)
      {
        v21 = *v20;
        if (*v20)
        {
          v22 = 0;
          do
          {
            if (*(v20[1] + 8 * v22))
            {
              pval = *(v20[1] + 8 * v22);
              ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it);
              v21 = *v20;
            }

            ++v22;
          }

          while (v22 < v21);
        }

        v23 = v20[1];
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

        v28 = *(v20 - 1);
        v27 = v20 - 1;
        v29 = v28 + 8;
        if (v28 != -8)
        {
          bzero(v27, v29);
        }

        free(v27);
      }

      v30 = *(v11 + 24);
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

      v35 = *(v11 - 8);
      v34 = (v11 - 8);
      v36 = v35 + 8;
      if (v35 != -8)
      {
        bzero(v34, v36);
      }

      free(v34);
      *a1 = 0;
    }

    v37 = malloc_type_malloc(0x30uLL, 0xB4E622C9uLL);
    if (v37)
    {
      v38 = v37;
      *v37 = 40;
      v39 = OPENSSL_sk_new_null();
      v38[1] = v39;
      v40 = (v38 + 1);
      if (v39)
      {
        v41 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
        if (v41)
        {
          *v41 = 24;
          v41[1] = 0;
          v42 = (v41 + 1);
          v41[2] = 0;
          v41[3] = 0;
          v38[3] = v41 + 1;
          v38[4] = 0;
          *(v38 + 10) = 0;
          *(v38 + 4) = 1;
          v43 = (v92 - v8);
          if (v92 == v8)
          {
            *v42 = v43;
          }

          else if (v43 < 0xFFFFFFFFFFFFFFFDLL)
          {
            if (v43 >= 0xBFFFFFFFFFFFFFFDLL)
            {
              ERR_put_error(7, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/buf/buf.cc", 50);
            }

            else
            {
              v71 = (2 * (((v43 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
              if (v71 <= 0xFFFFFFFFFFFFFFF7 && (v72 = v41, (v73 = malloc_type_malloc(v71 + 8, 0xB4E622C9uLL)) != 0))
              {
                *v73 = v71;
                v74 = v73 + 1;
                v72[2] = v74;
                v72[3] = v71;
                v75 = v72[1];
                if (v43 > v75)
                {
                  bzero(v74 + v75, &v43[-v75]);
                }

                *v42 = v43;
                if (v92 != v8)
                {
                  memcpy(*(v38[3] + 8), v8, v92 - v8);
                }

                if (v10 && (v76 = *v10) != 0)
                {
                  v77 = 0;
                  while (1)
                  {
                    v78 = *(v10[1] + 8 * v77);
                    if (v78)
                    {
                      if (*v78)
                      {
                        break;
                      }
                    }

LABEL_90:
                    if (++v77 >= v76)
                    {
                      goto LABEL_107;
                    }
                  }

                  v79 = 0;
                  v89 = *(v10[1] + 8 * v77);
                  v90 = v77;
                  while (1)
                  {
                    v80 = *(v78[1] + 8 * v79);
                    *(v80 + 16) = v77;
                    v81 = *v40;
                    v82 = **v40;
                    if (v82 >= 0x7FFFFFFF)
                    {
                      break;
                    }

                    v83 = v81[3];
                    if (v83 <= v82 + 1)
                    {
                      v86 = OPENSSL_realloc(v81[1], 16 * v83);
                      if (!v86)
                      {
                        goto LABEL_50;
                      }

                      v81[1] = v86;
                      v81[3] = 2 * v83;
                      v84 = *v81;
                      v87 = *v81 - v82;
                      if (*v81 <= v82)
                      {
                        v78 = v89;
                        v77 = v90;
                        v85 = &v86[v84];
                      }

                      else
                      {
                        if (8 * v87)
                        {
                          memmove(&v86[v82 + 1], &v86[v82], 8 * v87);
                          v84 = *v81;
                          v86 = v81[1];
                        }

                        v85 = &v86[v82];
                        v78 = v89;
                        v77 = v90;
                      }
                    }

                    else
                    {
                      v84 = **v40;
                      v85 = (v81[1] + 8 * v82);
                    }

                    *v85 = v80;
                    *(v81 + 4) = 0;
                    *v81 = v84 + 1;
                    if (v84 == -1)
                    {
                      goto LABEL_50;
                    }

                    v88 = *v78;
                    if (*v78 > v79)
                    {
                      *(v78[1] + 8 * v79) = 0;
                    }

                    if (++v79 >= v88)
                    {
                      v76 = *v10;
                      goto LABEL_90;
                    }
                  }

                  ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
                }

                else
                {
LABEL_107:
                  if (x509_name_canon((v38 + 1)))
                  {
                    OPENSSL_sk_pop_free_ex(v10, sk_STACK_OF_X509_NAME_ENTRY_call_free_func, local_sk_X509_NAME_ENTRY_free);
                    *(v38 + 4) = 0;
                    *a1 = v40;
                    *a2 = v92;
                    return 1;
                  }
                }
              }

              else
              {
                ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
              }
            }
          }

          else
          {
            ERR_put_error(7, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/buf/buf.cc", 44);
          }

          goto LABEL_50;
        }

        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v38[3] = 0;
        v44 = v38[1];
        if (v44)
        {
          v45 = *(v44 + 8);
          if (v45)
          {
            v47 = *(v45 - 8);
            v46 = (v45 - 8);
            v48 = v47 + 8;
            if (v47 != -8)
            {
              bzero(v46, v48);
            }

            free(v46);
          }

          v50 = *(v44 - 8);
          v49 = (v44 - 8);
          v51 = v50 + 8;
          if (v50 != -8)
          {
            bzero(v49, v51);
          }

          free(v49);
        }
      }

      free(v38);
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

    v40 = 0;
LABEL_50:
    pval = v40;
    ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
    if (v10)
    {
      v52 = *v10;
      if (*v10)
      {
        v53 = 0;
        do
        {
          v54 = *(v10[1] + 8 * v53);
          if (v54)
          {
            v55 = *v54;
            if (*v54)
            {
              v56 = 0;
              do
              {
                if (*(v54[1] + 8 * v56))
                {
                  pval = *(v54[1] + 8 * v56);
                  ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it);
                  v55 = *v54;
                }

                ++v56;
              }

              while (v56 < v55);
            }

            v57 = v54[1];
            if (v57)
            {
              v59 = *(v57 - 8);
              v58 = (v57 - 8);
              v60 = v59 + 8;
              if (v59 != -8)
              {
                bzero(v58, v60);
              }

              free(v58);
            }

            v62 = *(v54 - 1);
            v61 = v54 - 1;
            v63 = v62 + 8;
            if (v62 != -8)
            {
              bzero(v61, v63);
            }

            free(v61);
            v52 = *v10;
          }

          ++v53;
        }

        while (v53 < v52);
      }

      v64 = v10[1];
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

      v69 = *(v10 - 1);
      v68 = v10 - 1;
      v70 = v69 + 8;
      if (v69 != -8)
      {
        bzero(v68, v70);
      }

      free(v68);
    }

    ERR_put_error(11, 0, 12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x_name.cc", 211);
    return 0;
  }

  return result;
}

uint64_t x509_name_ex_i2d(X509_name_st **a1, unsigned __int8 **a2, const ASN1_ITEM_st *a3)
{
  v4 = *a1;
  if (!(*a1)->modified)
  {
    goto LABEL_56;
  }

  data = 0;
  v5 = OPENSSL_sk_new_null();
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  while (1)
  {
    entries = v4->entries;
    if (!v4->entries || v8 >= *&entries->num)
    {
      break;
    }

    v11 = entries->data[v8];
    if (*(v11 + 4) != v9)
    {
      v12 = OPENSSL_sk_new_null();
      if (!v12)
      {
        goto LABEL_68;
      }

      v7 = v12;
      v13 = *v6;
      if (*v6 >= 0x7FFFFFFFuLL)
      {
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_61:
        v48 = *(v7 + 1);
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

        v53 = *(v7 - 1);
        v52 = v7 - 8;
        v54 = v53 + 8;
        if (v53 != -8)
        {
          bzero(v52, v54);
        }

        free(v52);
LABEL_68:
        v55 = *v6;
        if (*v6)
        {
          v56 = 0;
          do
          {
            v57 = *(*(v6 + 1) + 8 * v56);
            if (v57)
            {
              v58 = *(v57 + 8);
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

              v63 = *(v57 - 8);
              v62 = (v57 - 8);
              v64 = v63 + 8;
              if (v63 != -8)
              {
                bzero(v62, v64);
              }

              free(v62);
              v55 = *v6;
            }

            ++v56;
          }

          while (v56 < v55);
        }

        v65 = *(v6 + 1);
        if (v65)
        {
          v67 = *(v65 - 8);
          v66 = (v65 - 8);
          v68 = v67 + 8;
          if (v67 != -8)
          {
            bzero(v66, v68);
          }

          free(v66);
        }

        v70 = *(v6 - 1);
        v69 = v6 - 8;
        v71 = v70 + 8;
        if (v70 != -8)
        {
          bzero(v69, v71);
        }

        free(v69);
        return 0xFFFFFFFFLL;
      }

      v14 = *(v6 + 3);
      if (v14 <= v13 + 1)
      {
        v17 = OPENSSL_realloc(*(v6 + 1), 16 * v14);
        if (!v17)
        {
          goto LABEL_61;
        }

        *(v6 + 1) = v17;
        *(v6 + 3) = 2 * v14;
        v15 = *v6;
        v18 = *v6 - v13;
        if (*v6 <= v13)
        {
          v16 = &v17[v15];
        }

        else
        {
          if (8 * v18)
          {
            memmove(&v17[v13 + 1], &v17[v13], 8 * v18);
            v15 = *v6;
            v17 = *(v6 + 1);
          }

          v16 = &v17[v13];
        }
      }

      else
      {
        v15 = *v6;
        v16 = (*(v6 + 1) + 8 * v13);
      }

      *v16 = v7;
      *(v6 + 4) = 0;
      *v6 = v15 + 1;
      if (v15 == -1)
      {
        goto LABEL_61;
      }

      v9 = *(v11 + 4);
    }

    v19 = *v7;
    if (*v7 >= 0x7FFFFFFFuLL)
    {
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
      goto LABEL_68;
    }

    v20 = *(v7 + 3);
    if (v20 <= v19 + 1)
    {
      v21 = OPENSSL_realloc(*(v7 + 1), 16 * v20);
      if (!v21)
      {
        goto LABEL_68;
      }

      *(v7 + 1) = v21;
      *(v7 + 3) = 2 * v20;
      v22 = *v7;
      v23 = *v7 - v19;
      if (*v7 > v19)
      {
        if (8 * v23)
        {
          memmove(&v21[v19 + 1], &v21[v19], 8 * v23);
          v22 = *v7;
          v21 = *(v7 + 1);
        }

        goto LABEL_26;
      }

      v21[v22] = v11;
      *(v7 + 4) = 0;
      ++v8;
      *v7 = v22 + 1;
      if (v22 == -1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v21 = *(v7 + 1);
      v22 = *v7;
LABEL_26:
      v21[v19] = v11;
      *(v7 + 4) = 0;
      ++v8;
      *v7 = v22 + 1;
      if (v22 == -1)
      {
        goto LABEL_68;
      }
    }
  }

  v73 = v6;
  v24 = asn1_item_ex_i2d_opt(&v73, 0, &X509_NAME_INTERNAL_it, -1, 0, 0);
  if (v24 < 1)
  {
    goto LABEL_68;
  }

  bytes = v4->bytes;
  v26 = v24;
  if (*&bytes->max < v24)
  {
    v27 = ((2863311531u * (v24 + 3)) >> 31) & 0x1FFFFFFFCLL;
    v28 = OPENSSL_realloc(bytes->data, v27);
    if (!v28)
    {
      goto LABEL_68;
    }

    bytes->data = v28;
    *&bytes->max = v27;
  }

  if (v26 > *&bytes->length)
  {
    bzero(&bytes->data[*&bytes->length], v26 - *&bytes->length);
  }

  *&bytes->length = v26;
  data = v4->bytes->data;
  if (asn1_item_ex_i2d_opt(&v73, &data, &X509_NAME_INTERNAL_it, -1, 0, 0) <= 0)
  {
    goto LABEL_68;
  }

  v29 = *v6;
  if (*v6)
  {
    v30 = 0;
    do
    {
      v31 = *(*(v6 + 1) + 8 * v30);
      if (v31)
      {
        v32 = *(v31 + 8);
        if (v32)
        {
          v34 = *(v32 - 8);
          v33 = (v32 - 8);
          v35 = v34 + 8;
          if (v34 != -8)
          {
            bzero(v33, v35);
          }

          free(v33);
        }

        v37 = *(v31 - 8);
        v36 = (v31 - 8);
        v38 = v37 + 8;
        if (v37 != -8)
        {
          bzero(v36, v38);
        }

        free(v36);
        v29 = *v6;
      }

      ++v30;
    }

    while (v30 < v29);
  }

  v39 = *(v6 + 1);
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

  v44 = *(v6 - 1);
  v43 = v6 - 8;
  v45 = v44 + 8;
  if (v44 != -8)
  {
    bzero(v43, v45);
  }

  free(v43);
  v4->modified = 0;
  if (!x509_name_canon(v4))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_56:
  v46 = v4->bytes;
  v47 = *&v46->length;
  if (a2)
  {
    if (v47 << 32)
    {
      memcpy(*a2, v46->data, v47);
    }

    *a2 += v47;
  }

  return v47;
}

uint64_t x509_name_canon(X509_name_st *a1)
{
  hash = a1->hash;
  if (hash)
  {
    v4 = *(hash - 8);
    v3 = (hash - 8);
    v5 = v4 + 8;
    if (v4 != -8)
    {
      bzero(v3, v5);
    }

    free(v3);
    a1->hash = 0;
  }

  if (!a1->entries || !*a1->entries)
  {
    LODWORD(a1[1].entries) = 0;
    return 1;
  }

  v6 = OPENSSL_sk_new_null();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v84 = 0;
  v10 = -1;
  while (1)
  {
    entries = a1->entries;
    if (!a1->entries || v9 >= *&entries->num)
    {
      break;
    }

    v12 = entries->data[v9];
    if (*(v12 + 4) != v10)
    {
      v13 = OPENSSL_sk_new_null();
      if (!v13)
      {
        goto LABEL_104;
      }

      v8 = v13;
      v14 = *v7;
      if (*v7 >= 0x7FFFFFFFuLL)
      {
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_97:
        v57 = *(v8 + 1);
        if (v57)
        {
          v59 = *(v57 - 8);
          v58 = (v57 - 8);
          v60 = v59 + 8;
          if (v59 != -8)
          {
            bzero(v58, v60);
          }

          free(v58);
        }

        v62 = *(v8 - 1);
        v61 = v8 - 8;
        v63 = v62 + 8;
        if (v62 != -8)
        {
          bzero(v61, v63);
        }

        free(v61);
LABEL_104:
        v20 = 0;
        goto LABEL_105;
      }

      v15 = *(v7 + 3);
      if (v15 <= v14 + 1)
      {
        v18 = OPENSSL_realloc(*(v7 + 1), 16 * v15);
        if (!v18)
        {
          goto LABEL_97;
        }

        *(v7 + 1) = v18;
        *(v7 + 3) = 2 * v15;
        v16 = *v7;
        v19 = *v7 - v14;
        if (*v7 <= v14)
        {
          v17 = &v18[v16];
        }

        else
        {
          if (8 * v19)
          {
            memmove(&v18[v14 + 1], &v18[v14], 8 * v19);
            v16 = *v7;
            v18 = *(v7 + 1);
          }

          v17 = &v18[v14];
        }
      }

      else
      {
        v16 = *v7;
        v17 = (*(v7 + 1) + 8 * v14);
      }

      *v17 = v8;
      *(v7 + 4) = 0;
      *v7 = v16 + 1;
      if (v16 == -1)
      {
        goto LABEL_97;
      }

      v10 = *(v12 + 4);
    }

    pval = 0;
    v20 = 0;
    if (!ASN1_item_ex_new(&pval, &X509_NAME_ENTRY_it))
    {
      goto LABEL_105;
    }

    v21 = pval;
    if (!pval)
    {
      goto LABEL_105;
    }

    *v21 = OBJ_dup(*v12);
    v22 = *(v21 + 1);
    v23 = *(v12 + 1);
    type = v23->type;
    v36 = type > 0x1E;
    v25 = (1 << type) & 0x54581000;
    if (v36 || v25 == 0)
    {
      v49 = *(v12 + 1);
      if (!ASN1_STRING_set(*(v21 + 1), v23->data, v23->length))
      {
        goto LABEL_78;
      }

      *(v22 + 4) = *(v49 + 4);
      *(v22 + 16) = *(v49 + 16);
      v38 = *v8;
      if (*v8 >= 0x7FFFFFFFuLL)
      {
LABEL_77:
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_78:
        pval = v21;
        ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it);
        goto LABEL_104;
      }
    }

    else
    {
      *(v22 + 4) = 12;
      v27 = ASN1_STRING_to_UTF8((v22 + 8), v23);
      *v22 = v27;
      if (v27 == -1)
      {
        goto LABEL_78;
      }

      v28 = *(v22 + 8);
      if (v27 < 1)
      {
LABEL_47:
        *v22 = 0;
        v38 = *v8;
        if (*v8 >= 0x7FFFFFFFuLL)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v29 = v27 + 1;
        v30 = v27;
        v31 = *(v22 + 8);
        while (1)
        {
          v32 = *v31;
          if (v32 != 32 && (v32 - 14) < 0xFFFFFFFB)
          {
            break;
          }

          ++v31;
          --v30;
          if (--v29 <= 1)
          {
            goto LABEL_47;
          }
        }

        v34 = v27 - 1;
        while (1)
        {
          v35 = v28[v34];
          v36 = v35 == 32 || (v35 - 14) > 0xFFFFFFFA;
          if (!v36)
          {
            break;
          }

          --v34;
          v37 = __OFSUB__(v30--, 1);
          if ((v30 < 0) ^ v37 | (v30 == 0))
          {
            goto LABEL_47;
          }
        }

        v43 = 0;
        do
        {
          v44 = *v31;
          if (v44 == 32 || (v44 - 14) >= 0xFFFFFFFB)
          {
            *v28 = 32;
            do
            {
              v46 = *++v31;
              ++v43;
              v47 = v46 - 14;
            }

            while (v46 == 32 || v47 >= 0xFFFFFFFB);
          }

          else
          {
            if ((v44 - 65) < 0x1A)
            {
              LOBYTE(v44) = v44 | 0x20;
            }

            *v28 = v44;
            ++v31;
            ++v43;
          }

          ++v28;
        }

        while (v43 < v30);
        *v22 = v28 - *(v22 + 8);
        v38 = *v8;
        if (*v8 >= 0x7FFFFFFFuLL)
        {
          goto LABEL_77;
        }
      }
    }

    v39 = *(v8 + 3);
    if (v39 <= v38 + 1)
    {
      v40 = OPENSSL_realloc(*(v8 + 1), 16 * v39);
      if (!v40)
      {
        goto LABEL_78;
      }

      *(v8 + 1) = v40;
      *(v8 + 3) = 2 * v39;
      v41 = *v8;
      v42 = *v8 - v38;
      if (*v8 > v38)
      {
        if (8 * v42)
        {
          memmove(&v40[v38 + 1], &v40[v38], 8 * v42);
          v41 = *v8;
          v40 = *(v8 + 1);
        }

        goto LABEL_54;
      }

      v40[v41] = v21;
      *(v8 + 4) = 0;
      ++v9;
      *v8 = v41 + 1;
      if (v41 == -1)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v40 = *(v8 + 1);
      v41 = v38;
LABEL_54:
      v40[v38] = v21;
      *(v8 + 4) = 0;
      ++v9;
      *v8 = v41 + 1;
      if (v41 == -1)
      {
        goto LABEL_78;
      }
    }
  }

  pval = 0;
  v50 = *v7;
  if (*v7)
  {
    v51 = 0;
    v52 = 0;
    while (1)
    {
      v53 = v50 <= v51 ? 0 : *(*(v7 + 1) + 8 * v51);
      pval = v53;
      v54 = asn1_item_ex_i2d_opt(&pval, 0, &X509_NAME_ENTRIES_it, -1, 0, 0);
      if (v54 < 0)
      {
        goto LABEL_104;
      }

      v52 += v54;
      ++v51;
      v50 = *v7;
      if (v51 >= *v7)
      {
        goto LABEL_90;
      }
    }
  }

  v52 = 0;
LABEL_90:
  LODWORD(a1[1].entries) = v52;
  v55 = malloc_type_malloc(v52 + 8, 0xB4E622C9uLL);
  if (v55)
  {
    v56 = 0;
    *v55 = v52;
    v84 = (v55 + 8);
    pval = 0;
    a1->hash = (v55 + 8);
    do
    {
      if (v56 >= *v7)
      {
        break;
      }

      pval = *(*(v7 + 1) + 8 * v56++);
    }

    while ((asn1_item_ex_i2d_opt(&pval, &v84, &X509_NAME_ENTRIES_it, -1, 0, 0) & 0x80000000) == 0);
    v20 = 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v20 = 0;
    v84 = 0;
  }

LABEL_105:
  v64 = *v7;
  if (*v7)
  {
    v65 = 0;
    do
    {
      v66 = *(*(v7 + 1) + 8 * v65);
      if (v66)
      {
        v67 = *v66;
        if (*v66)
        {
          v68 = 0;
          do
          {
            if (*(v66[1] + 8 * v68))
            {
              pval = *(v66[1] + 8 * v68);
              ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it);
              v67 = *v66;
            }

            ++v68;
          }

          while (v68 < v67);
        }

        v69 = v66[1];
        if (v69)
        {
          v71 = *(v69 - 8);
          v70 = (v69 - 8);
          v72 = v71 + 8;
          if (v71 != -8)
          {
            bzero(v70, v72);
          }

          free(v70);
        }

        v74 = *(v66 - 1);
        v73 = v66 - 1;
        v75 = v74 + 8;
        if (v74 != -8)
        {
          bzero(v73, v75);
        }

        free(v73);
        v64 = *v7;
      }

      ++v65;
    }

    while (v65 < v64);
  }

  v76 = *(v7 + 1);
  if (v76)
  {
    v78 = *(v76 - 8);
    v77 = (v76 - 8);
    v79 = v78 + 8;
    if (v78 != -8)
    {
      bzero(v77, v79);
    }

    free(v77);
  }

  v81 = *(v7 - 1);
  v80 = v7 - 8;
  v82 = v81 + 8;
  if (v81 != -8)
  {
    bzero(v80, v82);
  }

  free(v80);
  return v20;
}

void local_sk_X509_NAME_ENTRY_free(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
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

    v7 = *(a1 - 1);
    v6 = (a1 - 1);
    v8 = v7 + 8;
    if (v7 != -8)
    {
      bzero(v6, v8);
    }

    free(v6);
  }
}

uint64_t pubkey_cb(int a1, ASN1_VALUE_st **a2, const ASN1_ITEM_st *a3, void *a4)
{
  v4 = *a2;
  if (a1 == 5)
  {
    v9 = *(v4 + 16);
    if (v9)
    {
      v10 = atomic_load(v9);
      if (v10 != -1)
      {
        while (1)
        {
          if (!v10)
          {
LABEL_51:
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
            goto LABEL_29;
          }
        }

        if (v10 == 1)
        {
          v17 = *(v9 + 16);
          if (v17)
          {
            v18 = *(v17 + 160);
            if (v18)
            {
              v18(v9);
              *(v9 + 8) = 0;
              *(v9 + 4) = 0;
            }
          }

          v20 = *(v9 - 8);
          v19 = (v9 - 8);
          v21 = v20 + 8;
          if (v20 != -8)
          {
            bzero(v19, v21);
          }

          free(v19);
        }
      }
    }

LABEL_29:
    *(v4 + 16) = 0;
    out = 0;
    v22 = ASN1_item_i2d(v4, &out, &X509_PUBKEY_it);
    if ((v22 & 0x80000000) == 0)
    {
      v35 = out;
      v36 = v22;
      v23 = EVP_parse_public_key(&v35);
      if (!v23 || v36)
      {
        if (v23)
        {
          v24 = atomic_load(v23);
          if (v24 != -1)
          {
            while (1)
            {
              if (!v24)
              {
                goto LABEL_51;
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
                goto LABEL_46;
              }
            }

            if (v24 == 1)
            {
              v26 = *(v23 + 2);
              if (v26)
              {
                v27 = *(v26 + 160);
                if (v27)
                {
                  v28 = v23;
                  v27();
                  v23 = v28;
                  *(v28 + 1) = 0;
                  v28[1] = 0;
                }
              }

              v30 = *(v23 - 1);
              v29 = v23 - 2;
              v31 = v30 + 8;
              if (v30 != -8)
              {
                v32 = v29;
                bzero(v29, v31);
                v29 = v32;
              }

              free(v29);
            }
          }
        }
      }

      else
      {
        *(v4 + 16) = v23;
      }
    }

LABEL_46:
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

    ERR_clear_error();
    return 1;
  }

  else
  {
    if (a1 != 3)
    {
      return 1;
    }

    v5 = *(v4 + 16);
    if (!v5)
    {
      return 1;
    }

    v6 = atomic_load(v5);
    if (v6 == -1)
    {
      return 1;
    }

    while (1)
    {
      if (!v6)
      {
        goto LABEL_51;
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
        return 1;
      }
    }

    if (v6 == 1)
    {
      v12 = *(v5 + 16);
      if (v12)
      {
        v13 = *(v12 + 160);
        if (v13)
        {
          v13(v5);
          *(v5 + 8) = 0;
          *(v5 + 4) = 0;
        }
      }

      v15 = *(v5 - 8);
      v14 = (v5 - 8);
      v16 = v15 + 8;
      if (v15 != -8)
      {
        bzero(v14, v16);
      }

      free(v14);
      return 1;
    }

    else
    {
      return 1;
    }
  }
}

void X509_free(X509 *a)
{
  if (a)
  {
    v2 = atomic_load(&a->valid);
    if (v2 != -1)
    {
      while (1)
      {
        if (!v2)
        {
          abort();
        }

        v3 = v2;
        atomic_compare_exchange_strong(&a->valid, &v3, v2 - 1);
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
        CRYPTO_free_ex_data(&g_ex_data_class, a, &a->name);
        pval = a->cert_info;
        ASN1_item_ex_free(&pval, &X509_CINF_it);
        pval = a->sig_alg;
        ASN1_item_ex_free(&pval, &X509_ALGOR_it);
        signature = a->signature;
        if (signature)
        {
          data = signature->data;
          if (data)
          {
            v7 = *(data - 1);
            v6 = data - 8;
            v8 = v7 + 8;
            if (v7 != -8)
            {
              bzero(v6, v8);
            }

            free(v6);
          }

          flags = signature[-1].flags;
          p_flags = &signature[-1].flags;
          v11 = flags + 8;
          if (flags != -8)
          {
            bzero(p_flags, v11);
          }

          free(p_flags);
        }

        ex_pcpathlen = a->ex_pcpathlen;
        if (ex_pcpathlen)
        {
          v13 = *(ex_pcpathlen + 8);
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

          v18 = *(ex_pcpathlen - 8);
          v17 = (ex_pcpathlen - 8);
          v19 = v18 + 8;
          if (v18 != -8)
          {
            bzero(v17, v19);
          }

          free(v17);
        }

        pval = a->ex_flags;
        ASN1_item_ex_free(&pval, &AUTHORITY_KEYID_it);
        pval = a->ex_kusage;
        ASN1_item_ex_free(&pval, &CRL_DIST_POINTS_it);
        pval = a->ex_xkusage;
        ASN1_item_ex_free(&pval, &GENERAL_NAMES_it);
        pval = a->ex_nscert;
        ASN1_item_ex_free(&pval, &NAME_CONSTRAINTS_it);
        pval = *&a->sha1_hash[8];
        ASN1_item_ex_free(&pval, &X509_CERT_AUX_it);
        pthread_rwlock_destroy(&a->sha1_hash[16]);
        aux = a[-1].aux;
        p_aux = &a[-1].aux;
        p_reject = &aux->reject;
        if (aux != -8)
        {
          bzero(p_aux, p_reject);
        }

        free(p_aux);
      }
    }
  }
}

X509 *x509_parse(unsigned __int8 **a1, uint64_t a2)
{
  v27 = 0;
  LODWORD(v25) = 0;
  if (!cbs_get_any_asn1_element(a1, &v29, &v25, &v27, 0, 0, 0) || v25 != 536870928 || (v3 = v30 - v27, v30 < v27) || (v29 = &v27[v29], v30 -= v27, v3 >> 30) || (LODWORD(v23) = 0, !cbs_get_any_asn1_element(&v29, &v27, &v23, &v25, 0, 0, 0)) || v23 != 536870928 || (LODWORD(v21) = 0, !cbs_get_any_asn1_element(&v29, &v25, &v21, &v23, 0, 0, 0)) || v21 != 536870928)
  {
    v4 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x_x509.cc";
    v5 = 12;
    v6 = 109;
    v7 = 113;
LABEL_6:
    ERR_put_error(v5, 0, v6, v4, v7);
    return 0;
  }

  v22 = 0;
  v21 = 0;
  v20 = 0;
  if (!cbs_get_any_asn1_element(&v29, &v23, &v22, &v21, &in, &v20, 1) || v22 != 3 || v20 || v24 < v21 || (v23 += v21, v24 -= v21, v30))
  {
    v4 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x_x509.cc";
    v5 = 12;
    v6 = 109;
    v7 = 131;
    goto LABEL_6;
  }

  v9 = malloc_type_malloc(0x160uLL, 0xB4E622C9uLL);
  if (!v9)
  {
    v4 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v5 = 14;
    v6 = 65;
    v7 = 217;
    goto LABEL_6;
  }

  v10 = v9;
  *v9 = 344;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0u;
  *(v9 + 168) = 0u;
  *(v9 + 184) = 0u;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 248) = 0u;
  *(v9 + 43) = 0;
  *(v9 + 264) = 0u;
  *(v9 + 280) = 0u;
  *(v9 + 296) = 0u;
  *(v9 + 312) = 0u;
  v11 = (v9 + 8);
  *(v9 + 328) = 0u;
  *(v9 + 152) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 6) = -1;
  if (pthread_rwlock_init((v9 + 152), 0))
  {
    abort();
  }

  in = v27;
  if (asn1_item_ex_d2i(v11, &in, v28, &X509_CINF_it, 0xFFFFFFFFLL, 0, 0, a2, 0) < 1)
  {
    goto LABEL_21;
  }

  if (in != &v27[v28])
  {
    goto LABEL_21;
  }

  in = v25;
  v12 = d2i_X509_ALGOR(0, &in, v26);
  *(v10 + 2) = v12;
  if (!v12)
  {
    goto LABEL_21;
  }

  if (in != &v25[v26])
  {
    goto LABEL_21;
  }

  in = v23;
  v13 = c2i_ASN1_BIT_STRING(0, &in, v24);
  *(v10 + 3) = v13;
  if (!v13 || in != &v23[v24])
  {
    goto LABEL_21;
  }

  p_version = &v11->cert_info->version;
  version = v11->cert_info->version;
  if (!version)
  {
LABEL_34:
    if (p_version[7] || p_version[8])
    {
      v17 = 139;
      v18 = 179;
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v16 = ASN1_INTEGER_get(version);
  if (v16 >= 3)
  {
    v17 = 140;
    v18 = 171;
LABEL_39:
    ERR_put_error(11, 0, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x_x509.cc", v18);
LABEL_21:
    X509_free(v11);
    return 0;
  }

  if (!v16)
  {
    p_version = &v11->cert_info->version;
    goto LABEL_34;
  }

  if (v16 == 2)
  {
    return v11;
  }

  p_version = &v11->cert_info->version;
LABEL_37:
  if (p_version[9])
  {
    v17 = 139;
    v18 = 185;
    goto LABEL_39;
  }

  return v11;
}

int i2d_X509(X509 *a, unsigned __int8 **out)
{
  if (!a)
  {
    ERR_put_error(12, 0, 155, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/x_x509.cc", 218);
    return -1;
  }

  memset(v16, 0, sizeof(v16));
  v4 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v4)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_14:
    result = -1;
    goto LABEL_15;
  }

  *v4 = 64;
  BYTE8(v16[0]) = 0;
  *&v16[0] = 0;
  *&v16[1] = v4 + 1;
  *(&v16[1] + 8) = xmmword_273B8F050;
  BYTE8(v16[2]) = 1;
  if (!CBB_add_asn1(v16, v15, 536870928))
  {
    goto LABEL_14;
  }

  outa = 0;
  cert_info = a->cert_info;
  v5 = asn1_item_ex_i2d_opt(&cert_info, 0, &X509_CINF_it, -1, 0, 0);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  v6 = v5;
  if (!CBB_add_space(v15, &outa, v5))
  {
    goto LABEL_14;
  }

  if (ASN1_item_i2d(a->cert_info, &outa, &X509_CINF_it) != v6)
  {
    goto LABEL_14;
  }

  sig_alg = a->sig_alg;
  cert_info = sig_alg;
  v8 = asn1_item_ex_i2d_opt(&cert_info, 0, &X509_ALGOR_it, -1, 0, 0);
  if (v8 < 1)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v17 = 0;
  if (!CBB_add_space(v15, &v17, v8) || ASN1_item_i2d(sig_alg, &v17, &X509_ALGOR_it) != v9 || !asn1_marshal_bit_string(v15, a->signature, 0))
  {
    goto LABEL_14;
  }

  result = CBB_finish_i2d(v16, out);
LABEL_15:
  if (!BYTE8(v16[0]) && (BYTE8(v16[2]) & 1) != 0 && *&v16[1])
  {
    v11 = result;
    v13 = (*&v16[1] - 8);
    v12 = *(*&v16[1] - 8);
    if (v12 != -8)
    {
      bzero(v13, v12 + 8);
    }

    free(v13);
    return v11;
  }

  return result;
}

_WORD *silk_A2NLSF(_WORD *result, int *a2, int a3)
{
  v3 = (a3 >> 1);
  v4 = a3 >> 1;
  v172 = *MEMORY[0x277D85DE8];
  v153 = &v164;
  v154 = &v155;
  *(&v164 + v3) = 0x10000;
  *(&v155 + v3) = 0x10000;
  v150 = &a2[v4];
  if (v3 < 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = (a3 >> 1);
    v9 = 0x10000;
    v10 = &v164;
    goto LABEL_44;
  }

  if (v4 >= 4)
  {
    v5 = v3 & 0x7FFFFFFC;
    v11 = &a2[v4];
    v12 = v150 - 1;
    v13 = &v164;
    v14 = &v155;
    v15 = v5;
    do
    {
      v16 = *v12--;
      v17 = vrev64q_s32(v16);
      v18 = vextq_s8(v17, v17, 8uLL);
      v19 = *v11++;
      *v13++ = vnegq_s32(vaddq_s32(v18, v19));
      *v14++ = vsubq_s32(v19, v18);
      v15 -= 4;
    }

    while (v15);
    if (v5 == v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
  }

  v20 = v3 - v5;
  v21 = 4 * v5;
  v22 = &v155 + v5;
  v23 = (&v164 + v21);
  v24 = &a2[v4 + v21 / 4];
  v25 = (a2 + 4 * v4 - v21 - 4);
  do
  {
    v27 = *v25--;
    v26 = v27;
    v28 = *v24++;
    *v23++ = -(v26 + v28);
    *v22++ = v28 - v26;
    --v20;
  }

  while (v20);
LABEL_10:
  v29 = *(&v164 + v3);
  v30 = *(&v155 + v3);
  v31 = v3 - 1;
  v32 = v3 - 1;
  do
  {
    v29 = *(&v164 + v32) - v29;
    *(&v164 + v32) = v29;
    v30 += *(&v155 + v32);
    *(&v155 + v32) = v30;
    v33 = v32-- + 1;
  }

  while (v33 > 1);
  if (v4 == 1)
  {
    v9 = *(&v164 + v4);
  }

  else
  {
    v36 = 0;
    v37 = (v4 + 1);
    v38 = v3 - 2;
    v39 = &v164 + v3;
    v40 = 2;
    v41 = v3 - 2;
    do
    {
      if (v40 < v3)
      {
        v42 = v38 - v36;
        v43 = (a3 >> 1);
        if (v38 - v36 < 2)
        {
          goto LABEL_152;
        }

        v44 = v41 & 0xFFFFFFFFFFFFFFFELL;
        v43 = v3 - (v42 & 0xFFFFFFFFFFFFFFFELL);
        v45 = *(v39 - 1);
        v46 = (v39 - 3);
        do
        {
          v45 = vsub_s32(*v46, v45);
          *v46-- = v45;
          v44 -= 2;
        }

        while (v44);
        if (v42 != (v42 & 0xFFFFFFFFFFFFFFFELL))
        {
LABEL_152:
          do
          {
            v163[v43] -= *(&v164 + v43);
            --v43;
          }

          while (v43 > v40);
        }
      }

      v163[v40] -= 2 * *(&v164 + v40);
      ++v40;
      ++v36;
      --v41;
    }

    while (v40 != v37);
    v47 = 0;
    v48 = &v155 + v3;
    v49 = 2;
    v50 = v3 - 2;
    do
    {
      if (v49 < v3)
      {
        v51 = v38 - v47;
        v52 = (a3 >> 1);
        if (v38 - v47 < 2)
        {
          goto LABEL_153;
        }

        v53 = v50 & 0xFFFFFFFFFFFFFFFELL;
        v52 = v3 - (v51 & 0xFFFFFFFFFFFFFFFELL);
        v54 = *(v48 - 1);
        v55 = (v48 - 3);
        do
        {
          v54 = vsub_s32(*v55, v54);
          *v55-- = v54;
          v53 -= 2;
        }

        while (v53);
        if (v51 != (v51 & 0xFFFFFFFFFFFFFFFELL))
        {
LABEL_153:
          do
          {
            *(&v154 + v52) -= *(&v155 + v52);
            --v52;
          }

          while (v52 > v49);
        }
      }

      *(&v154 + v49) -= 2 * *(&v155 + v49);
      ++v49;
      ++v47;
      --v50;
    }

    while (v49 != v37);
    v9 = *(&v164 + v4);
    if (v3 == 8)
    {
      v9 = v164 + 2 * v165 + 4 * (v166 + 2 * v167 + 8 * v169 + 4 * v168 + 16 * (2 * v171 + 4 * v9 + v170));
      if (v9 < 0)
      {
        *result = 0;
        v10 = &v155;
        v9 = v155 + 2 * v156 + 4 * (v157 + 2 * v158 + 8 * v160 + 4 * v159 + 16 * (2 * v162 + 4 * *(&v155 + v4) + v161));
        v6 = 1;
        v8 = 8;
        v7 = 1;
      }

      else
      {
        v7 = 0;
        v10 = &v164;
        v6 = 1;
        v8 = 8;
      }

      goto LABEL_44;
    }
  }

  v34 = v3 - 1;
  do
  {
    v9 = *(&v164 + v34) + 2 * v9;
    v35 = v34-- + 1;
  }

  while (v35 > 1);
  if (v9 < 0)
  {
    *result = 0;
    v10 = &v155;
    v9 = *(&v155 + v4);
    do
    {
      v9 = *(&v155 + v31) + 2 * v9;
      v56 = v31-- + 1;
    }

    while (v56 > 1);
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v10 = &v164;
  }

  v8 = (a3 >> 1);
LABEL_44:
  v152 = 0;
  v57 = 0;
  v58 = (v4 + 1);
  v59 = v8 - 2;
  v147 = 4 * v8 - 4;
  v60 = 4 * v8 - 12;
  v148 = (&v155 + v60);
  v149 = (&v164 + v60);
  v61 = 0x2000;
  v62 = 1;
  while (1)
  {
    do
    {
      while (1)
      {
        v63 = silk_LSFCosTab_FIX_Q12[v62];
        v64 = v10[v4];
        v65 = 16 * v63;
        if (v6)
        {
          v66 = *v10 + (((v10[1] + (((v10[2] + (((v10[3] + (((v10[4] + (((v10[5] + (((v10[6] + (((v10[7] + ((v64 * v65) >> 16)) * v65) >> 16)) * v65) >> 16)) * v65) >> 16)) * v65) >> 16)) * v65) >> 16)) * v65) >> 16)) * v65) >> 16);
        }

        else
        {
          v66 = v10[v4];
          if (v3 >= 1)
          {
            v137 = v8 + 1;
            v138 = (v10 + v147);
            v66 = v10[v4];
            do
            {
              v139 = *v138--;
              v66 = v139 + ((v65 * v66) >> 16);
              --v137;
            }

            while (v137 > 1);
          }
        }

        v67 = v62;
        if ((v9 > 0 || v66 < v57) && (v9 < 0 || v66 > -v57))
        {
          break;
        }

        v68 = ((v61 + v63) & 1) + ((v61 + v63) >> 1);
        v69 = 16 * v68;
        if (v6)
        {
          v70 = *v10 + (((v10[1] + (((v10[2] + (((v10[3] + (((v10[4] + (((v10[5] + (((v10[6] + (((v10[7] + ((v64 * v69) >> 16)) * v69) >> 16)) * v69) >> 16)) * v69) >> 16)) * v69) >> 16)) * v69) >> 16)) * v69) >> 16)) * v69) >> 16);
        }

        else
        {
          v70 = v10[v4];
          if (v3 >= 1)
          {
            v140 = v8 + 1;
            v141 = (v10 + v147);
            v70 = v10[v4];
            do
            {
              v142 = *v141--;
              v70 = v142 + ((v69 * v70) >> 16);
              --v140;
            }

            while (v140 > 1);
          }
        }

        if ((v9 > 0 || v70 < 0) && (v9 < 0 || v70 >= 1))
        {
          v71 = -128;
          v61 = ((v61 + v63) & 1) + ((v61 + v63) >> 1);
          v9 = v70;
          v70 = v66;
          v72 = ((v63 + v68) & 1) + ((v63 + v68) >> 1);
          v73 = 16 * v72;
          if (v6)
          {
LABEL_58:
            v74 = *v10 + (((v10[1] + (((v10[2] + (((v10[3] + (((v10[4] + (((v10[5] + (((v10[6] + (((v10[7] + ((v64 * v73) >> 16)) * v73) >> 16)) * v73) >> 16)) * v73) >> 16)) * v73) >> 16)) * v73) >> 16)) * v73) >> 16)) * v73) >> 16);
            goto LABEL_59;
          }
        }

        else
        {
          v71 = -256;
          v63 = ((v61 + v63) & 1) + ((v61 + v63) >> 1);
          v72 = ((v68 + v61) & 1) + ((v68 + v61) >> 1);
          v73 = 16 * v72;
          if (v6)
          {
            goto LABEL_58;
          }
        }

        v74 = v10[v4];
        if (v4 >= 1)
        {
          v83 = (v10 + v147);
          v84 = v8 + 1;
          v74 = v10[v4];
          do
          {
            v85 = *v83--;
            v74 = v85 + ((v73 * v74) >> 16);
            --v84;
          }

          while (v84 > 1);
        }

LABEL_59:
        if ((v9 > 0 || v74 < 0) && (v9 < 0 || v74 >= 1))
        {
          v71 |= 0x40u;
          v9 = v74;
          v75 = 16 * (((v63 + v72) & 1) + ((v63 + v72) >> 1));
          if (v6)
          {
LABEL_64:
            v64 = *v10 + (((v10[1] + (((v10[2] + (((v10[3] + (((v10[4] + (((v10[5] + (((v10[6] + (((v10[7] + ((v64 * v75) >> 16)) * v75) >> 16)) * v75) >> 16)) * v75) >> 16)) * v75) >> 16)) * v75) >> 16)) * v75) >> 16)) * v75) >> 16);
            goto LABEL_65;
          }
        }

        else
        {
          v70 = v74;
          v75 = 16 * (((v72 + v61) & 1) + ((v72 + v61) >> 1));
          if (v6)
          {
            goto LABEL_64;
          }
        }

        if (v3 >= 1)
        {
          v86 = (v10 + v147);
          v87 = v8 + 1;
          do
          {
            v88 = *v86--;
            v64 = v88 + ((v75 * v64) >> 16);
            --v87;
          }

          while (v87 > 1);
        }

LABEL_65:
        if ((v9 > 0 || v64 < 0) && (v9 < 0 || v64 >= 1))
        {
          v71 += 32;
          v9 = v64;
        }

        else
        {
          v70 = v64;
        }

        v57 = v66 == 0;
        if (v9 >= 0)
        {
          v89 = v9;
        }

        else
        {
          v89 = -v9;
        }

        v90 = HIWORD(v89);
        v91 = (((v9 - v70) >> 1) + 32 * v9) / (v9 - v70) + v71;
        if (v9 == v70)
        {
          v91 = v71;
        }

        if (v90)
        {
          v92 = v9 / ((v9 - v70) >> 5) + v71;
        }

        else
        {
          v92 = v91;
        }

        v93 = v92 + (v62 << 8);
        if (v93 >= 0x7FFF)
        {
          LOWORD(v93) = 0x7FFF;
        }

        result[v7++] = v93;
        if (v7 >= a3)
        {
          return result;
        }

        v10 = (&v153)[v7 & 1];
        v61 = silk_LSFCosTab_FIX_Q12[v62 - 1];
        v9 = 4096 - ((v7 << 12) & 0x2000);
      }

      v57 = 0;
      ++v62;
      v61 = v63;
      v9 = v66;
    }

    while (v67 < 128);
    if (v152 >= 16)
    {
      break;
    }

    v76 = (-1 << (v152 + 1)) + 0x10000;
    if (a3 <= 1)
    {
      v80 = &v155 + v8;
      v79 = &v164 + v8;
      v82 = v148;
      v81 = v149;
    }

    else
    {
      v78 = (a3 - 1);
      v77 = a2;
      v80 = &v155 + v8;
      v79 = &v164 + v8;
      v82 = v148;
      v81 = v149;
      do
      {
        *v77 = (*v77 * v76) >> 16;
        ++v77;
        v76 += (((v76 * (-1 << (v152 + 1))) >> 15) + 1) >> 1;
        --v78;
      }

      while (v78);
    }

    a2[a3 - 1] = (a2[a3 - 1] * v76) >> 16;
    *(&v164 + v4) = 0x10000;
    *(&v155 + v4) = 0x10000;
    ++v152;
    if (v4 < 1)
    {
      v7 = 0;
      v57 = 0;
      v10 = &v164;
      v61 = 0x2000;
      v62 = 1;
      v9 = 0x10000;
      if (v6)
      {
        goto LABEL_114;
      }
    }

    else
    {
      if (v8 >= 4)
      {
        v95 = &v164;
        v96 = &v155;
        v97 = v8 & 0xFFFFFFFC;
        v98 = v150;
        v99 = v150 - 1;
        do
        {
          v100 = *v99--;
          v101 = vrev64q_s32(v100);
          v102 = vextq_s8(v101, v101, 8uLL);
          v103 = *v98++;
          *v95++ = vnegq_s32(vaddq_s32(v102, v103));
          *v96++ = vsubq_s32(v103, v102);
          v97 -= 4;
        }

        while (v97);
        v94 = v8 & 0xFFFFFFFC;
        if (v8 == v94)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v94 = 0;
      }

      v104 = v8 - v94;
      v105 = 4 * v94;
      v106 = &v155 + v94;
      v107 = (&v164 + v105);
      v108 = &v150->i32[v105 / 4];
      v109 = &v150[-1].i32[v105 / 0xFFFFFFFFFFFFFFFCLL + 3];
      do
      {
        v111 = *v109--;
        v110 = v111;
        v112 = *v108++;
        *v107++ = -(v110 + v112);
        *v106++ = v112 - v110;
        --v104;
      }

      while (v104);
LABEL_110:
      v113 = *(&v164 + v8);
      v114 = *(&v155 + v8);
      v115 = v8 - 1;
      do
      {
        v113 = *(&v164 + v115) - v113;
        *(&v164 + v115) = v113;
        v114 += *(&v155 + v115);
        *(&v155 + v115) = v114;
        v116 = v115-- + 1;
      }

      while (v116 > 1);
      if (v3 != 1)
      {
        v118 = 0;
        v119 = v8 - 2;
        v120 = 2;
        do
        {
          if (v120 < v8)
          {
            v121 = v59 - v118;
            v122 = v8;
            if (v59 - v118 < 2)
            {
              goto LABEL_154;
            }

            v123 = v119 & 0xFFFFFFFFFFFFFFFELL;
            v122 = v8 - (v121 & 0xFFFFFFFFFFFFFFFELL);
            v124 = *(v79 - 1);
            v125 = v81;
            do
            {
              v124 = vsub_s32(*v125, v124);
              *v125-- = v124;
              v123 -= 2;
            }

            while (v123);
            if (v121 != (v121 & 0xFFFFFFFFFFFFFFFELL))
            {
LABEL_154:
              do
              {
                v163[v122] -= *(&v164 + v122);
                --v122;
              }

              while (v122 > v120);
            }
          }

          v163[v120] -= 2 * *(&v164 + v120);
          ++v120;
          ++v118;
          --v119;
        }

        while (v120 != v58);
        v126 = 0;
        v127 = v8 - 2;
        v128 = 2;
        do
        {
          if (v128 < v8)
          {
            v129 = v59 - v126;
            v130 = v8;
            if (v59 - v126 < 2)
            {
              goto LABEL_155;
            }

            v131 = v127 & 0xFFFFFFFFFFFFFFFELL;
            v130 = v8 - (v129 & 0xFFFFFFFFFFFFFFFELL);
            v132 = *(v80 - 1);
            v133 = v82;
            do
            {
              v132 = vsub_s32(*v133, v132);
              *v133-- = v132;
              v131 -= 2;
            }

            while (v131);
            if (v129 != (v129 & 0xFFFFFFFFFFFFFFFELL))
            {
LABEL_155:
              do
              {
                *(&v154 + v130) -= *(&v155 + v130);
                --v130;
              }

              while (v130 > v128);
            }
          }

          *(&v154 + v128) -= 2 * *(&v155 + v128);
          ++v128;
          ++v126;
          --v127;
        }

        while (v128 != v58);
      }

      v9 = *(&v164 + v4);
      v117 = v8 - 1;
      if (v6)
      {
LABEL_114:
        v7 = 0;
        v57 = 0;
        v9 = v164 + 2 * v165 + 4 * (v166 + 2 * v167 + 8 * v169 + 4 * v168 + 16 * (2 * v171 + 4 * v9 + v170));
        v10 = &v164;
        v61 = 0x2000;
        v62 = 1;
        if (v9 < 0)
        {
          v57 = 0;
          *result = 0;
          v10 = &v155;
          v9 = v155 + 2 * v156 + 4 * (v157 + 2 * v158 + 8 * v160 + 4 * v159 + 16 * (2 * v162 + 4 * *(&v155 + v4) + v161));
          v61 = 0x2000;
          v62 = 1;
          v7 = 1;
        }
      }

      else
      {
        do
        {
          v9 = *(&v164 + v117) + 2 * v9;
          v134 = v117-- + 1;
        }

        while (v134 > 1);
        v7 = 0;
        v57 = 0;
        v10 = &v164;
        v61 = 0x2000;
        v62 = 1;
        if (v9 < 0)
        {
          *result = 0;
          v9 = *(&v155 + v4);
          v135 = v8 - 1;
          do
          {
            v10 = &v155;
            v9 = *(&v155 + v135) + 2 * v9;
            v136 = v135-- + 1;
            v61 = 0x2000;
            v62 = 1;
          }

          while (v136 > 1);
          v57 = 0;
          v7 = 1;
        }
      }
    }
  }

  v143 = 0x8000 / (a3 + 1);
  *result = v143;
  if (a3 >= 2)
  {
    v145 = *result++;
    v144 = v145;
    v146 = a3 - 1;
    do
    {
      v144 += v143;
      *result++ = v144;
      --v146;
    }

    while (v146);
  }

  return result;
}

void run_analysis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, void *a11, uint64_t a12)
{
  v12 = MEMORY[0x28223BE20](a1, a2, a3);
  v706 = v15;
  v705 = v16;
  v704 = v17;
  v699 = v18;
  v19 = v12;
  v821 = *MEMORY[0x277D85DE8];
  v703 = v20;
  if (v20)
  {
    v623 = v14;
    v21 = v13 & 0xFFFFFFFE;
    if (95 * a9 / 50 < (v13 & 0xFFFFFFFE))
    {
      v21 = 95 * a9 / 50;
    }

    v22 = *(v12 + 7440);
    v622 = v21;
    v23 = v21 - v22;
    if ((v21 - v22) < 1)
    {
      goto LABEL_365;
    }

    v24 = a9 / 50;
    v692 = v12 + 7604;
    v25 = v12 + 7008;
    v26 = v12 + 7080;
    v711 = v12 + 5856;
    v710 = v12 + 6432;
    if (a10 <= 8)
    {
      v27 = 8;
    }

    else
    {
      v27 = a10;
    }

    v709 = v12 + 5776;
    v687 = (v12 + 7228);
    v686 = (v12 + 7324);
    v685 = (v12 + 7292);
    v684 = (v12 + 7260);
    v640 = (v12 + 7332);
    v641 = (v12 + 7356);
    v638 = ((0.00057 / (1 << (v27 - 8))) * (0.00057 / (1 << (v27 - 8)))) * 3.0;
    v636 = (v12 + 7300);
    v637 = (v12 + 7236);
    v635 = (v12 + 7396);
    v634 = (v12 + 7404);
    v625 = (v12 + 7412);
    v626 = (v12 + 7388);
    v632 = (v12 + 7340);
    v633 = (v12 + 7308);
    v630 = (v12 + 7244);
    v631 = (v12 + 7276);
    v691 = (v12 + 4808);
    v628 = (v12 + 7336);
    v627 = (v12 + 7272);
    v28 = 1.0 / (1 << a10);
    __asm
    {
      FMOV            V7.4S, #0.25
      FMOV            V17.4S, #1.0
    }

    v34 = v12 + 2892;
    v624 = (v12 + 7392);
    v698 = a9 / 50;
    v642 = v12 + 7152;
    v639 = (0.00057 / (1 << (v27 - 8))) * (0.00057 / (1 << (v27 - 8)));
    v629 = (v12 + 6500);
    v652 = vdupq_n_s32(0x3F2DB121u);
    v653 = vdupq_n_s32(0x219392EFu);
    v650 = vdupq_n_s32(0x3EDCF805u);
    v651 = vdupq_n_s32(0x3DB00965u);
    v648 = vdupq_n_s32(0xBFC90FDB);
    v649 = vdupq_n_s32(0x3FC90FDBu);
    v646 = _Q7;
    v647 = vdupq_n_s32(0x3E22F983u);
    v644 = _Q17;
    v645 = vdupq_n_s32(0x477385D1u);
    v643 = vdupq_n_s32(0xBC75C28F);
    while (1)
    {
      v707 = v23;
      if (v24 >= v23)
      {
        v35 = v23;
      }

      else
      {
        v35 = v24;
      }

      if (!*(v19 + 7460))
      {
        *(v19 + 5772) = 240;
        *(v19 + 7460) = 1;
      }

      v36 = *(v19 + 7436);
      v37 = v36 + 1;
      if (v36 <= 9)
      {
        v38 = 1.0 / v37;
      }

      else
      {
        v38 = 0.1;
      }

      v701 = v38;
      if (v36 <= 24)
      {
        v39 = 1.0 / v37;
      }

      else
      {
        v39 = 0.04;
      }

      if (v36 <= 99)
      {
        v40 = 1.0 - (1.0 / v37);
      }

      else
      {
        v40 = 0.99;
      }

      v41 = *(v19 + 8);
      v42 = 3 * v35 / 2;
      v43 = v22 / 2;
      v708 = v22;
      if (v41 == 48000)
      {
        v35 /= 2;
      }

      else
      {
        v43 = v22;
      }

      if (v41 == 16000)
      {
        v44 = (3 * v22 / 2);
      }

      else
      {
        v44 = v43;
      }

      if (v41 == 16000)
      {
        v45 = v42;
      }

      else
      {
        v45 = v35;
      }

      v46 = *(v699 + 88);
      v47 = *(v19 + 5772);
      v48 = (v34 + 4 * v47);
      v49 = 720 - v47;
      if (v45 >= v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = v45;
      }

      downmix_and_resample(a11, v703, v48, (v19 + 7592), v50, v44, v704, v705, v706, v41);
      v52 = v51 + *(v19 + 7456);
      *(v19 + 7456) = v52;
      v53 = *(v19 + 5772) + v45;
      if (v53 <= 719)
      {
        *(v19 + 5772) = v53;
        goto LABEL_10;
      }

      v694 = v40;
      v693 = v52;
      v54 = 0;
      v55 = *(v19 + 7444);
      v56 = v55 - 99;
      if (v55 <= 98)
      {
        v56 = v55 + 1;
      }

      *(v19 + 7444) = v56;
      v57 = 0.0;
      v58 = 0.0;
      do
      {
        v59 = *(v34 + v54);
        if (v58 <= v59)
        {
          v58 = *(v34 + v54);
        }

        if (v57 >= v59)
        {
          v57 = *(v34 + v54);
        }

        v54 += 4;
      }

      while (v54 != 2880);
      v696 = v36;
      v60 = 0;
      v61 = -v57;
      if (v58 <= v61)
      {
        v62 = v61;
      }

      else
      {
        v62 = v58;
      }

      v63 = (v19 + 2892);
      v64 = v691;
      v65 = 3832;
      do
      {
        v66 = analysis_window[v60];
        v67.i32[0] = *v63;
        v67.i32[1] = v63[240];
        *&v759[8 * v60] = vmul_n_f32(v67, v66);
        v67.i32[0] = *v64;
        v67.i32[1] = v64[240];
        *&v759[v65] = vmul_n_f32(v67, v66);
        ++v60;
        v65 -= 8;
        --v64;
        ++v63;
      }

      while (v60 != 240);
      v68 = (v692 + (v55 << 6));
      memmove((v19 + 2892), (v19 + 4812), 0x3C0uLL);
      v69 = *(v19 + 5772);
      v70 = v45 + v69 - 720;
      downmix_and_resample(a11, v703, (v19 + 3852), (v19 + 7592), v70, (v44 - v69 + 720), v704, v705, v706, *(v19 + 8));
      *(v19 + 7456) = v71.i32[0];
      *(v19 + 5772) = v70 + 240;
      if (v62 <= v28)
      {
        v123 = *(v19 + 7444);
        v124 = 98;
        if (v123 >= 2)
        {
          v124 = -2;
        }

        v125 = (v692 + ((v124 + v123) << 6));
        v126 = v125[2];
        v127 = v125[3];
        v128 = v125[1];
        *v68 = *v125;
        v68[1] = v128;
        v68[2] = v126;
        v68[3] = v127;
LABEL_10:
        v24 = a9 / 50;
        v22 = v708 + v698;
        v23 = v707 - v698;
        if (v707 <= v698)
        {
          goto LABEL_365;
        }

        continue;
      }

      v700 = v68;
      v79 = *v46;
      if (v79 >= 1)
      {
        v80 = (v46 + 1);
        v81 = *(v46 + 6);
        v71 = vld1_dup_f32(v80);
        v82 = v759;
        do
        {
          v84 = *v81++;
          v83 = v84;
          v85 = *v82++;
          v72 = vmul_f32(v71, v85);
          *(&v731 + v83) = v72;
          --v79;
        }

        while (v79);
      }

      v690 = v39;
      opus_fft_impl(v46, &v731, *&v71, *&v72, v73, v74, v75, v76, v77, v78);
      v86 = *&v731;
      v87 = -944;
      v88 = &v752;
      v89 = &v732;
      v90.i64[0] = 0x4000000040000000;
      v90.i64[1] = 0x4000000040000000;
      do
      {
        v822 = vld2q_f32(v89);
        v89 += 8;
        v824 = vld2q_f32(v88);
        v91 = vrev64q_s32(v824.val[0]);
        v92 = vextq_s8(v91, v91, 8uLL);
        v824.val[0] = vrev64q_s32(v824.val[1]);
        v824.val[0] = vextq_s8(v824.val[0], v824.val[0], 8uLL);
        v824.val[1] = vaddq_f32(v822.val[0], v92);
        v93 = vsubq_f32(v822.val[1], v824.val[0]);
        v824.val[0] = vaddq_f32(v822.val[1], v824.val[0]);
        v822.val[0] = vsubq_f32(v92, v822.val[0]);
        v822.val[1] = vmulq_f32(v824.val[1], v824.val[1]);
        v94 = vmulq_f32(v93, v93);
        v95 = vcgtq_f32(v653, vaddq_f32(v822.val[1], v94));
        v96 = vorrq_s8(v95, vcgtq_f32(v94, v822.val[1]));
        v824.val[1] = vmulq_f32(v824.val[1], v93);
        v97 = vbslq_s8(vcltzq_f32(v93), v648, v649);
        v98 = vbslq_s8(vcltzq_f32(v824.val[1]), v648, v649);
        v99 = vdivq_f32(vmulq_f32(v824.val[1], vmlaq_f32(v822.val[1], v650, v94)), vmulq_f32(vmlaq_f32(v822.val[1], v652, v94), vmlaq_f32(v822.val[1], v651, v94)));
        v100 = vmulq_f32(vmlaq_f32(v94, v652, v822.val[1]), vmlaq_f32(v94, v651, v822.val[1]));
        v101 = vmlaq_f32(v94, v650, v822.val[1]);
        v822.val[1] = vaddq_f32(v97, v99);
        v102 = (v19 + v87);
        v824.val[1] = vsubq_f32(v97, vdivq_f32(vmulq_f32(v824.val[1], v101), v100));
        v103 = vmulq_f32(v824.val[0], v824.val[0]);
        v104 = vmulq_f32(v822.val[0], v822.val[0]);
        v105 = vcgtq_f32(v653, vaddq_f32(v104, v103));
        v822.val[1] = vsubq_f32(v822.val[1], v98);
        v106 = vorrq_s8(v105, vcgtq_f32(v104, v103));
        v824.val[0] = vmulq_f32(v822.val[0], v824.val[0]);
        v822.val[0] = vbslq_s8(vcltzq_f32(v822.val[0]), v648, v649);
        v822.val[1] = vbicq_s8(vmulq_f32(vbslq_s8(v96, v824.val[1], v822.val[1]), v647), v95);
        v824.val[1] = vsubq_f32(vaddq_f32(v822.val[0], vdivq_f32(vmulq_f32(v824.val[0], vmlaq_f32(v103, v650, v104)), vmulq_f32(vmlaq_f32(v103, v652, v104), vmlaq_f32(v103, v651, v104)))), vbslq_s8(vcltzq_f32(v824.val[0]), v648, v649));
        v107 = vsubq_f32(v822.val[1], *(v19 + v87 + 960));
        v824.val[0] = vdivq_f32(vmulq_f32(v824.val[0], vmlaq_f32(v104, v650, v103)), vmulq_f32(vmlaq_f32(v104, v652, v103), vmlaq_f32(v104, v651, v103)));
        v108 = vsubq_f32(v107, *(v19 + v87 + 1920));
        v822.val[0] = vbicq_s8(vmulq_f32(vbslq_s8(v106, vsubq_f32(v822.val[0], v824.val[0]), v824.val[1]), v647), v105);
        v822.val[1] = vsubq_f32(v822.val[0], v822.val[1]);
        v824.val[0] = vsubq_f32(v822.val[1], v107);
        v109 = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v108.f32))))), vcvtq_f64_s64(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v108, v108, 8uLL))))));
        v824.val[1] = vsubq_f32(v108, v109);
        v110 = vabdq_f32(v108, v109);
        v824.val[1] = vmulq_f32(v824.val[1], v824.val[1]);
        v111 = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v824.val[0].f32))))), vcvtq_f64_s64(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v824.val[0], v824.val[0], 8uLL))))));
        v112 = vsubq_f32(v824.val[0], v111);
        v824.val[0] = vaddq_f32(v110, vabdq_f32(v824.val[0], v111));
        v113 = vmulq_f32(v112, v112);
        v114 = vmulq_f32(v113, v113);
        v824.val[1] = vmlaq_f32(vaddq_f32(vmulq_f32(v824.val[1], v824.val[1]), *(v19 + v87 + 2880)), v90, v114);
        *&v719[v87 + 948] = v824.val[0];
        *(&v728 + v87) = vaddq_f32(vdivq_f32(v644, vmlaq_f32(v644, v645, vmulq_f32(v824.val[1], v646))), v643);
        *(&v786 + v87) = vaddq_f32(vdivq_f32(v644, vmlaq_f32(v644, v645, v114)), v643);
        v102[60] = v822.val[0];
        v102[120] = v822.val[1];
        v102[180] = v114;
        v88 -= 8;
        v87 += 16;
      }

      while (v87);
      v115 = v739 + v749;
      v116 = v740 - v750;
      v117 = v115 * v115;
      v118 = v116 * v116;
      v119 = 0.0;
      v120 = 0.0;
      if (((v115 * v115) + (v116 * v116)) >= 1.0e-18)
      {
        if (v117 >= v118)
        {
          v129 = v115 * v116;
          v130 = (v129 * (v117 + (v118 * 0.43158))) / ((v117 + (v118 * 0.67848)) * (v117 + (v118 * 0.085955)));
          _NF = v116 < 0.0;
          v131 = 1.5708;
          if (_NF)
          {
            v132 = -1.5708;
          }

          else
          {
            v132 = 1.5708;
          }

          v133 = v132 + v130;
          if (v129 < 0.0)
          {
            v131 = -1.5708;
          }

          v120 = v133 - v131;
        }

        else
        {
          v121 = ((v116 * v115) * (v118 + (v117 * 0.43158))) / ((v118 + (v117 * 0.67848)) * (v118 + (v117 * 0.085955)));
          _NF = v116 < 0.0;
          v122 = 1.5708;
          if (_NF)
          {
            v122 = -1.5708;
          }

          v120 = v122 - v121;
        }
      }

      v134 = v740 + v750;
      v135 = v749 - v739;
      v136 = v134 * v134;
      v137 = v135 * v135;
      if (((v135 * v135) + (v134 * v134)) >= 1.0e-18)
      {
        if (v136 >= v137)
        {
          v140 = v135 * v134;
          v141 = (v140 * (v136 + (v137 * 0.43158))) / ((v136 + (v137 * 0.67848)) * (v136 + (v137 * 0.085955)));
          _NF = v135 < 0.0;
          v142 = 1.5708;
          if (_NF)
          {
            v143 = -1.5708;
          }

          else
          {
            v143 = 1.5708;
          }

          v144 = v143 + v141;
          if (v140 < 0.0)
          {
            v142 = -1.5708;
          }

          v119 = v144 - v142;
        }

        else
        {
          v138 = ((v135 * v134) * (v137 + (v136 * 0.43158))) / ((v137 + (v136 * 0.67848)) * (v137 + (v136 * 0.085955)));
          _NF = v135 < 0.0;
          v139 = 1.5708;
          if (_NF)
          {
            v139 = -1.5708;
          }

          v119 = v139 - v138;
        }
      }

      v145 = v120 * 0.15915;
      v146 = v145 - *(v19 + 960);
      v147 = v146 - *(v19 + 1920);
      v148 = v119 * 0.15915;
      v149 = v148 - v145;
      v150 = v149 - v146;
      v151 = rintf(v147);
      v152 = v147 - v151;
      v153 = vabds_f32(v147, v151);
      v154 = (v152 * v152) * (v152 * v152);
      v155 = rintf(v150);
      v720 = v153 + vabds_f32(v150, v155);
      v156 = ((v150 - v155) * (v150 - v155)) * ((v150 - v155) * (v150 - v155));
      v728 = (1.0 / (((((v154 + *(v19 + 2880)) + (v156 * 2.0)) * 0.25) * 62342.0) + 1.0)) + -0.015;
      v786 = (1.0 / ((v156 * 62342.0) + 1.0)) + -0.015;
      *(v19 + 960) = v148;
      *(v19 + 1920) = v149;
      *(v19 + 2880) = v156;
      v157 = v741 + v747;
      v158 = v742 - v748;
      v159 = v157 * v157;
      v160 = v158 * v158;
      v161 = 0.0;
      v162 = 0.0;
      if (((v157 * v157) + (v158 * v158)) >= 1.0e-18)
      {
        if (v159 >= v160)
        {
          v165 = v157 * v158;
          v166 = (v165 * (v159 + (v160 * 0.43158))) / ((v159 + (v160 * 0.67848)) * (v159 + (v160 * 0.085955)));
          _NF = v158 < 0.0;
          v167 = 1.5708;
          if (_NF)
          {
            v168 = -1.5708;
          }

          else
          {
            v168 = 1.5708;
          }

          v169 = v168 + v166;
          if (v165 < 0.0)
          {
            v167 = -1.5708;
          }

          v162 = v169 - v167;
        }

        else
        {
          v163 = ((v158 * v157) * (v160 + (v159 * 0.43158))) / ((v160 + (v159 * 0.67848)) * (v160 + (v159 * 0.085955)));
          _NF = v158 < 0.0;
          v164 = 1.5708;
          if (_NF)
          {
            v164 = -1.5708;
          }

          v162 = v164 - v163;
        }
      }

      v170 = v742 + v748;
      v171 = v747 - v741;
      v172 = v170 * v170;
      v173 = v171 * v171;
      if (((v171 * v171) + (v170 * v170)) >= 1.0e-18)
      {
        if (v172 >= v173)
        {
          v176 = v171 * v170;
          v177 = (v176 * (v172 + (v173 * 0.43158))) / ((v172 + (v173 * 0.67848)) * (v172 + (v173 * 0.085955)));
          _NF = v171 < 0.0;
          v178 = 1.5708;
          if (_NF)
          {
            v179 = -1.5708;
          }

          else
          {
            v179 = 1.5708;
          }

          v180 = v179 + v177;
          if (v176 < 0.0)
          {
            v178 = -1.5708;
          }

          v161 = v180 - v178;
        }

        else
        {
          v174 = ((v171 * v170) * (v173 + (v172 * 0.43158))) / ((v173 + (v172 * 0.67848)) * (v173 + (v172 * 0.085955)));
          _NF = v171 < 0.0;
          v175 = 1.5708;
          if (_NF)
          {
            v175 = -1.5708;
          }

          v161 = v175 - v174;
        }
      }

      v181 = v162 * 0.15915;
      v182 = v181 - *(v19 + 964);
      v183 = v182 - *(v19 + 1924);
      v184 = v161 * 0.15915;
      v185 = v184 - v181;
      v186 = v185 - v182;
      v187 = rintf(v183);
      v188 = v183 - v187;
      v189 = vabds_f32(v183, v187);
      v190 = (v188 * v188) * (v188 * v188);
      v191 = rintf(v186);
      v721 = v189 + vabds_f32(v186, v191);
      v192 = ((v186 - v191) * (v186 - v191)) * ((v186 - v191) * (v186 - v191));
      v729 = (1.0 / (((((v190 + *(v19 + 2884)) + (v192 * 2.0)) * 0.25) * 62342.0) + 1.0)) + -0.015;
      v787 = (1.0 / ((v192 * 62342.0) + 1.0)) + -0.015;
      *(v19 + 964) = v184;
      *(v19 + 1924) = v185;
      *(v19 + 2884) = v192;
      v193 = v743 + v745;
      v194 = v744 - v746;
      v195 = v193 * v193;
      v196 = v194 * v194;
      v197 = 0.0;
      v198 = 0.0;
      if (((v193 * v193) + (v194 * v194)) >= 1.0e-18)
      {
        if (v195 >= v196)
        {
          v201 = v193 * v194;
          v202 = (v201 * (v195 + (v196 * 0.43158))) / ((v195 + (v196 * 0.67848)) * (v195 + (v196 * 0.085955)));
          _NF = v194 < 0.0;
          v203 = 1.5708;
          if (_NF)
          {
            v204 = -1.5708;
          }

          else
          {
            v204 = 1.5708;
          }

          v205 = v204 + v202;
          if (v201 < 0.0)
          {
            v203 = -1.5708;
          }

          v198 = v205 - v203;
        }

        else
        {
          v199 = ((v194 * v193) * (v196 + (v195 * 0.43158))) / ((v196 + (v195 * 0.67848)) * (v196 + (v195 * 0.085955)));
          _NF = v194 < 0.0;
          v200 = 1.5708;
          if (_NF)
          {
            v200 = -1.5708;
          }

          v198 = v200 - v199;
        }
      }

      v206 = v744 + v746;
      v207 = v745 - v743;
      v208 = v206 * v206;
      v209 = v207 * v207;
      if (((v207 * v207) + (v206 * v206)) >= 1.0e-18)
      {
        if (v208 >= v209)
        {
          v212 = v207 * v206;
          v213 = (v212 * (v208 + (v209 * 0.43158))) / ((v208 + (v209 * 0.67848)) * (v208 + (v209 * 0.085955)));
          _NF = v207 < 0.0;
          v214 = 1.5708;
          if (_NF)
          {
            v215 = -1.5708;
          }

          else
          {
            v215 = 1.5708;
          }

          v216 = v215 + v213;
          if (v212 < 0.0)
          {
            v214 = -1.5708;
          }

          v197 = v216 - v214;
        }

        else
        {
          v210 = ((v207 * v206) * (v209 + (v208 * 0.43158))) / ((v209 + (v208 * 0.67848)) * (v209 + (v208 * 0.085955)));
          _NF = v207 < 0.0;
          v211 = 1.5708;
          if (_NF)
          {
            v211 = -1.5708;
          }

          v197 = v211 - v210;
        }
      }

      v217 = v198 * 0.15915;
      v218 = v217 - *(v19 + 968);
      v219 = v218 - *(v19 + 1928);
      v220 = v197 * 0.15915;
      v221 = v220 - v217;
      v222 = v221 - v218;
      v223 = rintf(v219);
      v224 = v219 - v223;
      v225 = vabds_f32(v219, v223);
      v226 = v224 * v224;
      v227 = rintf(v222);
      v722 = v225 + vabds_f32(v222, v227);
      v228 = ((v222 - v227) * (v222 - v227)) * ((v222 - v227) * (v222 - v227));
      v730 = (1.0 / ((((((v226 * v226) + *(v19 + 2888)) + (v228 * 2.0)) * 0.25) * 62342.0) + 1.0)) + -0.015;
      v788 = (1.0 / ((v228 * 62342.0) + 1.0)) + -0.015;
      *(v19 + 968) = v220;
      *(v19 + 1928) = v221;
      *(v19 + 2888) = v228;
      v229 = &v780;
      v230 = vld1q_dup_f32(v229);
      v231 = &v781;
      v232 = &v724;
      v233 = 232;
      do
      {
        v234 = *(v231 - 1);
        v235 = vextq_s8(v230, v234, 0xCuLL);
        v230 = *(v231 + 1);
        v236 = vextq_s8(v234, v230, 0xCuLL);
        v237 = vbslq_s8(vcgtq_f32(*(v231 - 1), v234), *(v231 - 1), v234);
        v238 = vbslq_s8(vcgtq_f32(*v231, v230), *v231, v230);
        v239 = vbslq_s8(vcgtq_f32(v238, v236), v236, v238);
        v240 = vdupq_n_s32(0xBDCCCCCD);
        v241 = vaddq_f32(vbslq_s8(vcgtq_f32(v237, v235), v235, v237), v240);
        v242 = vaddq_f32(v239, v240);
        v243 = vdupq_n_s32(0x3F666666u);
        v244 = vmulq_f32(vbslq_s8(vcgtq_f32(*v232, v242), *v232, v242), v243);
        v232[-1] = vmulq_f32(vbslq_s8(vcgtq_f32(v232[-1], v241), v232[-1], v241), v243);
        *v232 = v244;
        v232 += 2;
        v231 += 4;
        v233 -= 8;
      }

      while (v233);
      v245 = v230.f32[3];
      v246 = v782;
      v247 = v784;
      if (v782 <= v784)
      {
        v246 = v784;
      }

      if (v230.f32[3] >= v246)
      {
        v245 = v246;
      }

      v248 = v245 + -0.1;
      if (v725 > v248)
      {
        v248 = v725;
      }

      v725 = v248 * 0.9;
      v249 = v783;
      v250 = v785;
      if (v783 <= v785)
      {
        v249 = v785;
      }

      if (v784 < v249)
      {
        v249 = v784;
      }

      v251 = v249 + -0.1;
      if (v726 > v251)
      {
        v251 = v726;
      }

      v726 = v251 * 0.9;
      v252 = v786;
      if (v784 <= v786)
      {
        v247 = v786;
      }

      if (v785 < v247)
      {
        v247 = v785;
      }

      v253 = v247 + -0.1;
      if (v727 > v253)
      {
        v253 = v727;
      }

      v727 = v253 * 0.9;
      if (v785 <= v787)
      {
        v250 = v787;
      }

      if (v786 < v250)
      {
        v250 = v786;
      }

      v254 = v250 + -0.1;
      if (v728 > v254)
      {
        v254 = v728;
      }

      v728 = v254 * 0.9;
      if (v786 <= v788)
      {
        v252 = v788;
      }

      if (v787 < v252)
      {
        v252 = v787;
      }

      v255 = v252 + -0.1;
      if (v729 > v255)
      {
        v255 = v729;
      }

      v729 = v255 * 0.9;
      *(v68 + 4) = 0;
      v256 = *(v19 + 7436);
      if (!v256)
      {
        memset_pattern16((v19 + 7008), &unk_273BBA1F0, 0x48uLL);
        memset_pattern16((v19 + 7080), &unk_273BBA200, 0x48uLL);
      }

      v257 = 0;
      v258 = log((((((((*(&v731 + 1) + *(&v731 + 1)) * (*(&v731 + 1) + *(&v731 + 1))) + ((v86 + v86) * (v86 + v86))) + ((((v757 * v757) + (v732 * v732)) + (v733 * v733)) + (v758 * v758))) + ((((v755 * v755) + (v734 * v734)) + (v735 * v735)) + (v756 * v756))) + ((((v753 * v753) + (v736 * v736)) + (v737 * v737)) + (v754 * v754))) + 1.0e-10));
      v259 = 0.0;
      v688 = v258 * 0.72135;
      v774.f32[0] = v258 * 0.72135;
      LODWORD(v260) = 4;
      v261 = 0.0;
      v262 = 0.0;
      v263 = 0.0;
      v718 = 0.0;
      v264 = 0.0;
      v716 = 0.0;
      do
      {
        v712 = v264;
        v714 = v261;
        v266 = v262;
        v267 = v263;
        v268 = v257 + 1;
        v269 = *(&tbands + v257 + 1);
        v270 = 0.0;
        v271 = 0.0;
        v272 = 0.0;
        if (v260 >= v269)
        {
          goto LABEL_175;
        }

        v273 = v260;
        v274 = v269 - v260;
        v275.i64[0] = 0x3F0000003F000000;
        v275.i64[1] = 0x3F0000003F000000;
        if (v274 >= 8)
        {
          v260 = (v274 & 0xFFFFFFFFFFFFFFF8) + v260;
          v277 = &v751[-8 * v273];
          v278 = &v738[v273];
          v279 = v273;
          v280 = &v719[4 * v273 + 16];
          v281 = &v723[v279 + 4];
          v282 = v274 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v825 = vld2q_f32(v278);
            v283 = v278 - 8;
            v826 = vld2q_f32(v283);
            v284 = v277;
            v827 = vld2q_f32(v284);
            v284 += 8;
            v823 = vld2q_f32(v284);
            v285 = vrev64q_s32(v823.val[1]);
            v286 = vrev64q_s32(v827.val[1]);
            v287 = vextq_s8(v286, v286, 8uLL);
            v823.val[0] = vrev64q_s32(vmulq_f32(v823.val[0], v823.val[0]));
            v823.val[1] = vextq_s8(v823.val[0], v823.val[0], 8uLL);
            v288 = vextq_s8(v285, v285, 8uLL);
            v823.val[0] = vrev64q_s32(vmulq_f32(v827.val[0], v827.val[0]));
            v823.val[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(v823.val[1], v826.val[0], v826.val[0]), v826.val[1], v826.val[1]), v288, v288);
            v823.val[0] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vextq_s8(v823.val[0], v823.val[0], 8uLL), v825.val[0], v825.val[0]), v825.val[1], v825.val[1]), v287, v287);
            v827.val[1] = vmulq_f32(v823.val[1], vbicq_s8(v281[-1], vcltzq_f32(v281[-1])));
            v289 = vmulq_f32(v823.val[0], vbicq_s8(*v281, vcltzq_f32(*v281)));
            v290 = vmulq_f32(vaddq_f32(v823.val[1], v823.val[1]), vsubq_f32(v275, v280[-1]));
            v291 = vmulq_f32(vaddq_f32(v823.val[0], v823.val[0]), vsubq_f32(v275, *v280));
            v271 = (((((((v271 + v827.val[1].f32[0]) + v827.val[1].f32[1]) + v827.val[1].f32[2]) + v827.val[1].f32[3]) + v289.f32[0]) + v289.f32[1]) + v289.f32[2]) + v289.f32[3];
            v270 = (((((((v270 + v290.f32[0]) + v290.f32[1]) + v290.f32[2]) + v290.f32[3]) + v291.f32[0]) + v291.f32[1]) + v291.f32[2]) + v291.f32[3];
            v277 -= 16;
            v272 = (((((((v272 + v823.val[1].f32[0]) + v823.val[1].f32[1]) + v823.val[1].f32[2]) + v823.val[1].f32[3]) + v823.val[0].f32[0]) + v823.val[0].f32[1]) + v823.val[0].f32[2]) + v823.val[0].f32[3];
            v278 += 16;
            v280 += 2;
            v281 += 2;
            v282 -= 8;
          }

          while (v282);
          v276 = 0.5;
          if (v274 == (v274 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_174;
          }
        }

        else
        {
          v260 = v260;
          v276 = 0.5;
        }

        v292 = v269 - v260;
        v293 = &v719[4 * v260];
        v294 = &v723[v260];
        v295 = 8 * v260;
        v296 = &v731 + 2 * v260 + 1;
        v297 = &v760[-v295];
        do
        {
          v298 = (((*(v297 - 1) * *(v297 - 1)) + (*(v296 - 1) * *(v296 - 1))) + (*v296 * *v296)) + (*v297 * *v297);
          v299 = *v294++;
          v300 = v299;
          v272 = v272 + v298;
          if (v299 < 0.0)
          {
            v300 = 0.0;
          }

          v271 = v271 + (v298 * v300);
          v301 = *v293++;
          v270 = v270 + ((v298 + v298) * (v276 - v301));
          v296 += 2;
          v297 -= 2;
          --v292;
        }

        while (v292);
LABEL_174:
        if (v272 >= 1000000000.0)
        {
          *v700 = 0;
          goto LABEL_364;
        }

LABEL_175:
        v302 = 72 * *(v19 + 7432);
        *(v711 + v302 + 4 * v257) = v272;
        v303 = log((v272 + 1.0e-10));
        *(&v805 + v257) = v303;
        v774.f32[v268] = v303 * 0.72135;
        *(v710 + v302 + 4 * v257) = v303;
        if (v256)
        {
          v304 = *(v26 + 4 * v257);
          v305 = *(v25 + 4 * v257);
        }

        else
        {
          *(v25 + 4 * v257) = v303;
          *(v26 + 4 * v257) = v303;
          v305 = v303;
          v304 = v303;
        }

        if (v305 + 7.5 >= v304)
        {
          goto LABEL_181;
        }

        if ((v304 - v303) > (v303 - v305))
        {
          v304 = v304 + -0.01;
          *(v26 + 4 * v257) = v304;
LABEL_181:
          if (v304 < v303)
          {
            goto LABEL_182;
          }

          goto LABEL_186;
        }

        v305 = v305 + 0.01;
        *(v25 + 4 * v257) = v305;
        if (v304 < v303)
        {
LABEL_182:
          *(v26 + 4 * v257) = v303;
          if ((v303 + -15.0) > v305)
          {
            v305 = v303 + -15.0;
          }

          *(v25 + 4 * v257) = v305;
          v304 = v303;
          goto LABEL_190;
        }

LABEL_186:
        if (v305 > v303)
        {
          *(v25 + 4 * v257) = v303;
          if ((v303 + 15.0) < v304)
          {
            v304 = v303 + 15.0;
          }

          *(v26 + 4 * v257) = v304;
          v305 = v303;
        }

LABEL_190:
        v306 = v272 + 1.0e-15;
        v307 = (v711 + 4 * v257);
        v308 = v307[18];
        v309 = (sqrtf(*v307) + 0.0) + sqrtf(v308);
        v310 = (*v307 + 0.0) + v308;
        v311 = v307[36];
        v312 = v309 + sqrtf(v311);
        v313 = v310 + v311;
        v314 = v307[54];
        v315 = v312 + sqrtf(v314);
        v316 = v313 + v314;
        v317 = v307[72];
        v318 = v315 + sqrtf(v317);
        v319 = v316 + v317;
        v320 = v307[90];
        v321 = v318 + sqrtf(v320);
        v322 = v319 + v320;
        v323 = v307[108];
        v324 = v321 + sqrtf(v323);
        v325 = v322 + v323;
        v326 = v307[126];
        v327 = sqrt(((v325 + v326) * 8.0) + 1.0e-15);
        v328 = (v324 + sqrtf(v326)) / v327;
        if (v328 > 0.99)
        {
          v328 = 0.99;
        }

        v329 = (v328 * v328) * (v328 * v328);
        v330 = v271 / v306;
        if ((v271 / v306) <= (*(v709 + 4 * v257) * v329))
        {
          v330 = *(v709 + 4 * v257) * v329;
        }

        v820[v257] = v330;
        v259 = v259 + v330;
        if (v257 >= 9)
        {
          v259 = v259 - *(&v816 + v257);
        }

        v265 = v267;
        v262 = v266 + (v270 / v306);
        v716 = v716 + sqrtf(v272 + 1.0e-10);
        v264 = v712 + ((v303 - v305) / ((v304 - v305) + 0.00001));
        v718 = v718 + v329;
        v261 = v714;
        if (v714 <= ((((v257 - 18) * 0.03) + 1.0) * v259))
        {
          v261 = (((v257 - 18) * 0.03) + 1.0) * v259;
        }

        v263 = v265 + (v330 * (v257 - 8));
        *(v709 + 4 * v257) = v330;
        LODWORD(v260) = v269;
        ++v257;
      }

      while (v268 != 18);
      v331 = v688 + -2.5;
      v332 = 1u;
      v333 = v688 + -2.5;
      v334 = v688;
      v335 = 4;
      do
      {
        v336 = *(&tbands + v332 * 4);
        v337 = ((v336 - v335) + (v336 - v335)) * 0.25;
        v334 = v334 + v337;
        v338 = v774.f32[v332];
        if (v334 >= v338)
        {
          v334 = v774.f32[v332];
        }

        v768.f32[v332] = v334;
        v333 = v333 - v337;
        if (v333 <= (v338 + -2.5))
        {
          v333 = v338 + -2.5;
        }

        v762.f32[v332++] = v333;
        v335 = v336;
      }

      while (v332 != 19);
      v339 = 0;
      v340 = v772.f32[0];
      if ((v772.f32[1] + 16.0) < v772.f32[0])
      {
        v340 = v772.f32[1] + 16.0;
      }

      v772.f32[0] = v340;
      v341 = v766.f32[1] + -16.0;
      if ((v766.f32[1] + -16.0) <= v766.f32[0])
      {
        v341 = v766.f32[0];
      }

      v766.f32[0] = v341;
      v342 = v340 + 12.0;
      if (v342 >= v771.f32[3])
      {
        v342 = v771.f32[3];
      }

      v343 = v341 + -12.0;
      if ((v341 + -12.0) <= v765.f32[3])
      {
        v343 = v765.f32[3];
      }

      v344 = v342 + 12.0;
      if ((v342 + 12.0) >= v771.f32[2])
      {
        v344 = v771.f32[2];
      }

      v771.i64[1] = __PAIR64__(LODWORD(v342), LODWORD(v344));
      v345 = v343 + -12.0;
      if ((v343 + -12.0) <= v765.f32[2])
      {
        v345 = v765.f32[2];
      }

      v765.i64[1] = __PAIR64__(LODWORD(v343), LODWORD(v345));
      v346 = v344 + 8.0;
      if ((v344 + 8.0) >= v771.f32[1])
      {
        v346 = v771.f32[1];
      }

      v347 = v345 + -8.0;
      if (v347 <= v765.f32[1])
      {
        v347 = v765.f32[1];
      }

      v348 = v346 + 8.0;
      if ((v346 + 8.0) >= v771.f32[0])
      {
        v348 = v771.f32[0];
      }

      v771.i64[0] = __PAIR64__(LODWORD(v346), LODWORD(v348));
      v349 = v347 + -8.0;
      if ((v347 + -8.0) <= v765.f32[0])
      {
        v349 = v765.f32[0];
      }

      v765.i64[0] = __PAIR64__(LODWORD(v347), LODWORD(v349));
      v350 = v348 + 8.0;
      if ((v348 + 8.0) >= v770.f32[3])
      {
        v350 = v770.f32[3];
      }

      v351 = v349 + -8.0;
      if (v351 <= v764.f32[3])
      {
        v351 = v764.f32[3];
      }

      v352 = v350 + 4.0;
      if ((v350 + 4.0) >= v770.f32[2])
      {
        v352 = v770.f32[2];
      }

      v770.i64[1] = __PAIR64__(LODWORD(v350), LODWORD(v352));
      v353 = v351 + -4.0;
      if ((v351 + -4.0) <= v764.f32[2])
      {
        v353 = v764.f32[2];
      }

      v764.i64[1] = __PAIR64__(LODWORD(v351), LODWORD(v353));
      v354 = v352 + 4.0;
      if ((v352 + 4.0) >= v770.f32[1])
      {
        v354 = v770.f32[1];
      }

      v355 = v353 + -4.0;
      if (v355 <= v764.f32[1])
      {
        v355 = v764.f32[1];
      }

      v356 = v354 + 4.0;
      if ((v354 + 4.0) >= v770.f32[0])
      {
        v356 = v770.f32[0];
      }

      v770.i64[0] = __PAIR64__(LODWORD(v354), LODWORD(v356));
      v357 = v355 + -4.0;
      if ((v355 + -4.0) <= v764.f32[0])
      {
        v357 = v764.f32[0];
      }

      v764.i64[0] = __PAIR64__(LODWORD(v355), LODWORD(v357));
      v358 = v356 + 4.0;
      if ((v356 + 4.0) >= v769.f32[3])
      {
        v358 = v769.f32[3];
      }

      v359 = v357 + -4.0;
      if (v359 <= v763.f32[3])
      {
        v359 = v763.f32[3];
      }

      v360 = v358 + 2.0;
      if ((v358 + 2.0) >= v769.f32[2])
      {
        v360 = v769.f32[2];
      }

      v769.i64[1] = __PAIR64__(LODWORD(v358), LODWORD(v360));
      v361 = v359 + -2.0;
      if ((v359 + -2.0) <= v763.f32[2])
      {
        v361 = v763.f32[2];
      }

      v763.i64[1] = __PAIR64__(LODWORD(v359), LODWORD(v361));
      v362 = v360 + 2.0;
      if ((v360 + 2.0) >= v769.f32[1])
      {
        v362 = v769.f32[1];
      }

      v363 = v361 + -2.0;
      if (v363 <= v763.f32[1])
      {
        v363 = v763.f32[1];
      }

      v364 = v362 + 2.0;
      if ((v362 + 2.0) >= v769.f32[0])
      {
        v364 = v769.f32[0];
      }

      v769.i64[0] = __PAIR64__(LODWORD(v362), LODWORD(v364));
      v365 = v363 + -2.0;
      if ((v363 + -2.0) <= v763.f32[0])
      {
        v365 = v763.f32[0];
      }

      v763.i64[0] = __PAIR64__(LODWORD(v363), LODWORD(v365));
      v366 = v364 + 2.0;
      if ((v364 + 2.0) >= v768.f32[3])
      {
        v366 = v768.f32[3];
      }

      v367 = v365 + -2.0;
      if (v367 <= v762.f32[3])
      {
        v367 = v762.f32[3];
      }

      v368 = v366 + 2.0;
      if ((v366 + 2.0) >= v768.f32[2])
      {
        v368 = v768.f32[2];
      }

      v768.i64[1] = __PAIR64__(LODWORD(v366), LODWORD(v368));
      v369 = v367 + -2.0;
      if ((v367 + -2.0) <= v762.f32[2])
      {
        v369 = v762.f32[2];
      }

      v762.i64[1] = __PAIR64__(LODWORD(v367), LODWORD(v369));
      v370 = v368 + 2.0;
      if ((v368 + 2.0) >= v768.f32[1])
      {
        v370 = v768.f32[1];
      }

      v371 = v369 + -2.0;
      if (v371 <= v762.f32[1])
      {
        v371 = v762.f32[1];
      }

      v372 = v370 + 2.0;
      if ((v370 + 2.0) >= v688)
      {
        v372 = v688;
      }

      v768.i64[0] = __PAIR64__(LODWORD(v370), LODWORD(v372));
      if ((v371 + -2.0) > v331)
      {
        v331 = v371 + -2.0;
      }

      v762.i64[0] = __PAIR64__(LODWORD(v371), LODWORD(v331));
      v373 = v775;
      v374 = v774;
      v375 = vsubq_f32(v764, v776);
      v376 = vsubq_f32(v765, v777);
      v377 = vsubq_f32(v762, v774);
      v378 = vsubq_f32(v763, v775);
      v379 = vbicq_s8(v375, vcltzq_f32(v375));
      v380 = vbicq_s8(v376, vcltzq_f32(v376));
      v381 = vbicq_s8(v377, vcltzq_f32(v377));
      v382 = vbicq_s8(v378, vcltzq_f32(v378));
      __asm { FMOV            V22.4S, #2.5 }

      v384 = vaddq_f32(v769, _Q22);
      v385 = vaddq_f32(v768, _Q22);
      v386 = vsubq_f32(v776, vaddq_f32(v770, _Q22));
      v387 = vsubq_f32(v777, vaddq_f32(v771, _Q22));
      *v378.f32 = vsub_f32(v766, v778);
      __asm { FMOV            V23.2S, #2.5 }

      *_Q22.f32 = vadd_f32(v772, _D23);
      v389 = vdupq_n_s32(0x42800000u);
      v390 = vsub_f32(v778, *_Q22.f32);
      *v378.f32 = vadd_f32(vbic_s8(*v378.f32, vcltz_f32(*v378.f32)), vbic_s8(v390, vcltz_f32(v390)));
      __asm { FMOV            V19.2D, #0.5 }

      v395 = vmin_s32(vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(vmul_f32(*v378.f32, *v389.f32)), _Q19)))), 0xFF000000FFLL);
      v392 = v395.i8[0];
      v393 = v767 - v779;
      v394 = v779 - (v773 + 2.5);
      v395.i32[0] = 0;
      if ((v767 - v779) < 0.0)
      {
        v393 = 0.0;
      }

      if (v394 < 0.0)
      {
        v394 = 0.0;
      }

      v396 = vcvtmd_s64_f64(((v393 + v394) * 64.0) + 0.5);
      *(v700 + 61) = v395.i8[4];
      *(v700 + 60) = v392;
      if (v396 >= 255)
      {
        v397 = -1;
      }

      else
      {
        v397 = v396;
      }

      *(v700 + 62) = v397;
      v398 = vsubq_f32(v374, v385);
      v399 = vsubq_f32(v373, v384);
      v400 = vmulq_f32(vaddq_f32(v379, vbicq_s8(v386, vcltzq_f32(v386))), v389);
      v401 = vmulq_f32(vaddq_f32(v380, vbicq_s8(v387, vcltzq_f32(v387))), v389);
      v402 = vmulq_f32(vaddq_f32(v381, vbicq_s8(v398, vcltzq_f32(v398))), v389);
      v403 = vmulq_f32(vaddq_f32(v382, vbicq_s8(v399, vcltzq_f32(v399))), v389);
      v404.i64[0] = 0xFF000000FFLL;
      v404.i64[1] = 0xFF000000FFLL;
      *(v700 + 44) = vuzp1q_s8(vuzp1q_s16(vminq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(*v402.f32), _Q19))), vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vcvt_hight_f64_f32(v402), _Q19)))), v404), vminq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(*v403.f32), _Q19))), vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vcvt_hight_f64_f32(v403), _Q19)))), v404)), vuzp1q_s16(vminq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(*v400.f32), _Q19))), vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vcvt_hight_f64_f32(v400), _Q19)))), v404), vminq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(*v401.f32), _Q19))), vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vcvt_hight_f64_f32(v401), _Q19)))), v404)));
      do
      {
        v405 = (v710 + 72 * v339);
        v406 = v405[4];
        v407 = v405[5];
        v408 = v405[6];
        v409 = v405[7];
        v410 = v405[8];
        v411 = v405[9];
        v412 = v405[10];
        v413 = v405[11];
        v414 = v405[12];
        v415 = v405[13];
        v416 = v405[14];
        v417 = v405[15];
        v418 = v405[16];
        v419 = v405[17];
        v420 = *v405;
        v421 = v405[1];
        v422 = 1.0e15;
        v423 = v629;
        v425 = v405[2];
        v424 = v405[3];
        v426 = 8;
        do
        {
          v427 = (((((((((((((((((v420 - *(v423 - 17)) * (v420 - *(v423 - 17))) + 0.0) + ((v421 - *(v423 - 16)) * (v421 - *(v423 - 16)))) + ((v425 - *(v423 - 15)) * (v425 - *(v423 - 15)))) + ((v424 - *(v423 - 14)) * (v424 - *(v423 - 14)))) + ((v406 - *(v423 - 13)) * (v406 - *(v423 - 13)))) + ((v407 - *(v423 - 12)) * (v407 - *(v423 - 12)))) + ((v408 - *(v423 - 11)) * (v408 - *(v423 - 11)))) + ((v409 - *(v423 - 10)) * (v409 - *(v423 - 10)))) + ((v410 - *(v423 - 9)) * (v410 - *(v423 - 9)))) + ((v411 - *(v423 - 8)) * (v411 - *(v423 - 8)))) + ((v412 - *(v423 - 7)) * (v412 - *(v423 - 7)))) + ((v413 - *(v423 - 6)) * (v413 - *(v423 - 6)))) + ((v414 - *(v423 - 5)) * (v414 - *(v423 - 5)))) + ((v415 - *(v423 - 4)) * (v415 - *(v423 - 4)))) + ((v416 - *(v423 - 3)) * (v416 - *(v423 - 3)))) + ((v417 - *(v423 - 2)) * (v417 - *(v423 - 2)));
          v428 = (v427 + ((v418 - *(v423 - 1)) * (v418 - *(v423 - 1)))) + ((v419 - *v423) * (v419 - *v423));
          if (v422 >= v428 && v339 + v426 != 8)
          {
            v422 = v428;
          }

          v423 += 18;
          --v426;
        }

        while (v426);
        *v395.i32 = *v395.i32 + v422;
        ++v339;
      }

      while (v339 != 8);
      v430 = 0;
      v431 = 0;
      v432 = 0.0;
      if (v696 >= 2)
      {
        v433 = v694;
      }

      else
      {
        v433 = 0.0;
      }

      v434 = *(v19 + 5852);
      v435 = 4;
      v436 = 0.0;
      v437 = 0.0;
      v438 = 0.0;
      while (2)
      {
        v440 = v437;
        v441 = v430 + 1;
        v442 = *(&tbands + v430 + 1);
        v443 = 0.0;
        if (v442 > v435)
        {
          v444 = v442 - v435;
          if (v444 < 8)
          {
            v445 = v435;
            goto LABEL_301;
          }

          v445 = (v444 & 0xFFFFFFFFFFFFFFF8) + v435;
          v446 = &v751[-8 * v435];
          v447 = &v738[v435];
          v448 = v444 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v449 = v447 - 8;
            v828 = vld2q_f32(v449);
            v829 = vld2q_f32(v447);
            v450 = v446;
            v830 = vld2q_f32(v450);
            v450 += 8;
            v831 = vld2q_f32(v450);
            v451 = vrev64q_s32(v831.val[1]);
            v452 = vextq_s8(v451, v451, 8uLL);
            v453 = vrev64q_s32(v830.val[1]);
            v454 = vextq_s8(v453, v453, 8uLL);
            v831.val[0] = vrev64q_s32(vmulq_f32(v831.val[0], v831.val[0]));
            v830.val[0] = vrev64q_s32(vmulq_f32(v830.val[0], v830.val[0]));
            v831.val[0] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vextq_s8(v831.val[0], v831.val[0], 8uLL), v828.val[0], v828.val[0]), v828.val[1], v828.val[1]), v452, v452);
            v830.val[0] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vextq_s8(v830.val[0], v830.val[0], 8uLL), v829.val[0], v829.val[0]), v829.val[1], v829.val[1]), v454, v454);
            v443 = (((((((v443 + v831.val[0].f32[0]) + v831.val[0].f32[1]) + v831.val[0].f32[2]) + v831.val[0].f32[3]) + v830.val[0].f32[0]) + v830.val[0].f32[1]) + v830.val[0].f32[2]) + v830.val[0].f32[3];
            v446 -= 16;
            v447 += 16;
            v448 -= 8;
          }

          while (v448);
          if (v444 != (v444 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_301:
            v455 = v442 - v445;
            v456 = 8 * v445;
            v457 = &v760[-8 * v445];
            v458 = (&v731 + v456 + 4);
            do
            {
              v443 = v443 + ((((*(v457 - 1) * *(v457 - 1)) + (*(v458 - 1) * *(v458 - 1))) + (*v458 * *v458)) + (*v457 * *v457));
              v457 -= 2;
              v458 += 2;
              --v455;
            }

            while (v455);
          }
        }

        if (v436 <= v443)
        {
          v436 = v443;
        }

        v437 = v440 + v443;
        v459 = v438 + v443;
        if (v430 >= 0xB)
        {
          v438 = v438 + v443;
          v437 = v440;
        }

        v460 = v433 * *(v642 + 4 * v430);
        if (v460 <= v443)
        {
          v460 = v443;
        }

        *(v642 + 4 * v430) = v460;
        if ((v443 * 1000000000.0) > v436)
        {
          v461 = (v442 - v435);
          if (v443 > v460)
          {
            v460 = v443;
          }

          v462 = v443 <= (v639 * v461) && v460 <= (v638 * v461);
          if (!v462)
          {
            v431 = v430 + 1;
          }
        }

        v439 = 0.01;
        if (v430 >= v434)
        {
          v439 = 0.05;
        }

        v789[v430] = v443 < (v432 * v439);
        v432 = v432 * 0.05;
        if (v432 <= v443)
        {
          v432 = v443;
        }

        v435 = v442;
        ++v430;
        if (v441 != 18)
        {
          continue;
        }

        break;
      }

      if (*(v19 + 8) == 48000)
      {
        v463 = v693 * 0.00027778;
        v464 = 30.0;
        if (v434 == 20)
        {
          v464 = 10.0;
        }

        v465 = v433 * *(v19 + 7224);
        if (v465 <= v463)
        {
          v465 = v693 * 0.00027778;
        }

        *(v19 + 7224) = v465;
        if (v463 > v465)
        {
          v465 = v693 * 0.00027778;
        }

        v466 = (v639 * (v464 * 3.0)) * 160.0;
        v467 = (v639 * v464) * 160.0;
        v468 = v465 <= v466 && v463 <= v467;
        v469 = v700;
        if (!v468)
        {
          v431 = 20;
        }

        v438 = v463 + v459;
        v470 = 0.05;
        if (v434 == 20)
        {
          v470 = 0.01;
        }

        v471 = v463 < (v470 * v432);
        v790 = v471;
      }

      else
      {
        v471 = v790;
        v469 = v700;
      }

      v472 = v440 / v438;
      v462 = v438 <= v440;
      v473 = 1.0;
      if (!v462)
      {
        v473 = v472;
      }

      v469[10] = v473;
      if (v431 == 20 && v471)
      {
        v431 = 18;
      }

      else if ((v431 - 1) <= 0x11 && v789[v431 - 1])
      {
        --v431;
      }

      v474 = *(v19 + 7436);
      v713 = (*v395.i32 * 0.125) / 18.0;
      v475 = log10(v716);
      v477 = v475 * 20.0;
      if ((*(v19 + 7424) + -0.003) <= v477)
      {
        v478 = v477;
      }

      else
      {
        v478 = *(v19 + 7424) + -0.003;
      }

      if (v477 >= (v478 + -30.0))
      {
        v479 = (1.0 - v690) * *(v19 + 7428);
      }

      else
      {
        v479 = v690 + ((1.0 - v690) * *(v19 + 7428));
      }

      v480.i64[1] = v816;
      v671 = *(v19 + 7032);
      v670 = *(v19 + 7108);
      v669 = *(v19 + 7036);
      v668 = *(v19 + 7044);
      v667 = *(v19 + 7096);
      v666 = *(v19 + 7100);
      v674 = v805;
      v675 = v806;
      v676 = v807;
      v677 = v808;
      v678 = v809;
      v679 = v810;
      v680 = v811;
      v681 = v812;
      v682 = v813;
      v683 = v814;
      v689 = v815;
      v481 = v816;
      v695 = v817;
      v697 = v818;
      v715 = v819;
      v482 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, xmmword_273BBA030, v805), xmmword_273BBA040, v806), xmmword_273BBA050, v807), xmmword_273BBA060, v808), xmmword_273BBA070, v809), xmmword_273BBA080, v810), xmmword_273BBA130, v811), xmmword_273BBA140, v812), xmmword_273BBA150, v813), xmmword_273BBA160, v814), xmmword_273BBA170, v815), xmmword_273BBA180, *&v816), xmmword_273BBA190, *(&v816 + 1)), xmmword_273BBA1A0, v817), xmmword_273BBA1B0, v818), xmmword_273BBA1C0, v819);
      if (v474 < 3)
      {
        v431 = 20;
      }

      v483 = v264 / 18.0;
      if (v474 < 10)
      {
        v483 = 0.5;
      }

      v717 = v262 / 18.0;
      *(v700 + 4) = (v262 / 18.0) + ((1.0 - (v262 / 18.0)) * v483);
      v484 = *(v19 + 5848) * 0.8;
      if ((v261 / 9.0) > v484)
      {
        v484 = v261 / 9.0;
      }

      v485 = *v686;
      *(v700 + 2) = v263 * 0.015625;
      v486 = *v687;
      v487 = *v685;
      v488 = vdup_n_s32(0x3EA1E8E6u);
      v489 = vdup_n_s32(0x3F21E8E6u);
      v490 = vmla_f32(vmul_f32(vsub_f32(*v687, *v685), v488), v489, vsub_f32(*v482.f32, v485));
      v491 = *v637;
      *v480.i8 = *v636;
      v492 = vmul_f32(vsub_f32(*v637, *v636), v488);
      v493 = *v640;
      v494 = vmla_f32(v492, v489, vsub_f32(*&vextq_s8(v482, v482, 8uLL), *v640));
      *(v19 + 7424) = v478;
      *(v19 + 5848) = v484;
      *(v700 + 1) = v484;
      v495 = *v641;
      *v476.i32 = 1.0 - v701;
      *v641 = vmlaq_n_f32(vmulq_n_f32(v482, v701), *v641, 1.0 - v701);
      *_Q1.f32 = v490;
      *&_Q1.u32[2] = v494;
      v792[1] = _Q1;
      *v497.f32 = vadd_f32(*v482.f32, v485);
      *v498.f32 = vadd_f32(v486, v487);
      _Q29 = *v684->f32;
      v500 = vmla_f32(vmla_f32(vmul_f32(*v498.f32, vdup_n_s32(0xBE88D64D)), vdup_n_s32(0x3F08D64Du), *v497.f32), vdup_n_s32(0xBF08D64D), *v684);
      v672 = v480;
      v673 = v491;
      v501 = vadd_f32(v491, *v480.i8);
      _S17 = -1089939891;
      __asm { FMLA            S1, S17, V29.S[2] }

      v794 = _Q1.i32[0];
      v503 = *(v19 + 7432) + 1;
      _NF = -v503 < 0;
      v504 = -v503 & 7;
      v505 = v503 & 7;
      if (!_NF)
      {
        v505 = -v504;
      }

      *(v19 + 7432) = v505;
      v506 = v479;
      *(v19 + 7428) = v479;
      if (v474 < 9999)
      {
        v507 = v474 + 1;
      }

      else
      {
        v507 = 10000;
      }

      *(v19 + 7436) = v507;
      v793 = v500;
      v508 = *(v19 + 7112);
      v509 = *(v19 + 7040);
      v510 = *(v19 + 7116);
      v665 = *(v19 + 7120);
      v664 = *(v19 + 7048);
      v511 = *(v19 + 7080);
      v512 = *(v19 + 7008);
      v513 = *(v19 + 7084);
      v514 = *(v19 + 7012);
      v515 = *(v19 + 7088);
      v516 = *(v19 + 7016);
      v517 = *(v19 + 7092);
      v518 = *(v19 + 7020);
      v656 = *(v19 + 7024);
      v655 = *(v19 + 7028);
      v519 = *(v19 + 7104);
      v663 = *(v19 + 7124);
      v662 = *(v19 + 7052);
      v661 = *(v19 + 7128);
      v660 = *(v19 + 7056);
      v659 = *(v19 + 7132);
      v658 = *(v19 + 7060);
      v657 = *(v19 + 7136);
      v654 = *(v19 + 7064);
      v520 = *(v19 + 7140);
      v521 = *(v19 + 7068);
      v522.i32[0] = *(v19 + 7388);
      if (v507 <= 5)
      {
        v525 = *v634;
        v526.i32[0] = *(v19 + 7412);
        v702 = *(v19 + 7420);
        v522.i32[1] = *(v19 + 7392);
        v522.i64[1] = *v635;
      }

      else
      {
        *&v498.u32[2] = v501;
        v497.f32[2] = v482.f32[2] + v493.f32[0];
        v497.f32[3] = v482.f32[3] + v493.f32[1];
        v523 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v498, vdupq_n_s32(0x3EFBE0DFu)), vdupq_n_s32(0xBDFBE22E), v497), vdupq_n_s32(0x3F326A01u), _Q29), vdupq_n_s32(0xBFB7AACE), v495);
        v522.i32[1] = *v624;
        v522.i64[1] = *v635;
        v524 = vmlaq_f32(vmulq_f32(v523, vmulq_n_f32(v523, v701)), v522, vdupq_lane_s32(v476, 0));
        *v626 = v524;
        v525 = vmla_n_f32(vmul_f32(v490, vmul_n_f32(v490, v701)), *v634, *v476.i32);
        *v634 = v525;
        v526 = vmla_n_f32(vmul_f32(v494, vmul_n_f32(v494, v701)), *v625, *v476.i32);
        *v625 = v526;
        v702 = ((v701 * v500.f32[0]) * v500.f32[0]) + (*v476.i32 * *(v19 + 7420));
        *(v19 + 7420) = v702;
        v522 = v524;
      }

      *v686 = v487;
      *v684 = v486;
      *v685->f32 = _Q29;
      v527 = v520 + v521;
      v528 = xmmword_273BB9F90;
      HIDWORD(v529) = -1096833783;
      *&v529 = v718 / 18.0;
      v792[0] = vsubq_f32(v482, vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, xmmword_273BB9FD0, v511 + v512), xmmword_273BB9FE0, v513 + v514), xmmword_273BB9FF0, v515 + v516), xmmword_273BBA000, v517 + v518), xmmword_273BBA010, v667 + v656), xmmword_273BBA020, v666 + v655), xmmword_273BBA090, v671 + v519), xmmword_273BBA0A0, v670 + v669), xmmword_273BBA0B0, v508 + v509), xmmword_273BBA0C0, v510 + v668), xmmword_273BBA0D0, v665 + v664), xmmword_273BBA0E0, v663 + v662), xmmword_273BBA0F0, v661 + v660), xmmword_273BBA100, v659 + v658), xmmword_273BBA110, v657 + v654), xmmword_273BBA120, v527));
      HIDWORD(v530) = v673.i32[1];
      *(v19 + 7332) = v672.i32[0];
      *v628 = v672.i32[1];
      *(v19 + 7268) = v673.i32[0];
      *v627 = v673.i32[1];
      *v687->f32 = v482;
      *v632 = *v633;
      *v633 = *v631;
      *v631 = *v630;
      *v630 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, xmmword_273BB9EE0, v674), xmmword_273BB9EF0, v675), xmmword_273BB9F00, v676), xmmword_273BB9F10, v677), xmmword_273BB9F20, v678), xmmword_273BB9F30, v679), xmmword_273BB9F40, v680), xmmword_273BB9F50, v681), xmmword_273BB9F60, v682), xmmword_273BB9F70, v683), xmmword_273BB9F80, v689), xmmword_273BB9F90, *&v481), xmmword_273BB9FA0, *(&v481 + 1)), xmmword_273BB9FB0, v695), xmmword_273BB9FC0, v697), xmmword_273BBA1D0, v715);
      v795 = vaddq_f32(vsqrtq_f32(v522), xmmword_273BBA1E0);
      HIDWORD(v531) = -1073056840;
      v532 = COERCE_DOUBLE(vadd_f32(vsqrt_f32(v525), 0xC00A73B8C0717C5BLL));
      v796 = v532;
      *&v531 = sqrtf(v702) + -1.9188;
      v797 = sqrtf(v526.f32[0]) + -1.2608;
      v798 = sqrtf(v713) + -0.78;
      LODWORD(v530) = *(v700 + 2);
      *&v532 = *(v700 + 1) + -0.15472;
      v799 = LODWORD(v531);
      v800 = LODWORD(v532);
      v801 = *(v700 + 4) + -0.72464;
      v802 = (v718 / 18.0) + -0.74372;
      *&v532 = *&v530 + 0.069216;
      *v528.i32 = v506 + -0.06793;
      v803 = *&v530 + 0.069216;
      v804 = v506 + -0.06793;
      compute_dense(&layer0, v761, v792, v532, v528, v531, v529, v530, v672);
      compute_gru(&layer1, (v19 + 7464), v761, v533, v534);
      compute_dense(&layer2, v791, (v19 + 7464), v535, v536, v537, v538, v539, v540);
      v541 = v791[0];
      *(v700 + 9) = v791[1];
      *(v700 + 5) = v541;
      *(v700 + 8) = v431;
      *(v19 + 5852) = v431;
      *(v700 + 3) = v717;
      *v700 = 1;
LABEL_364:
      v24 = a9 / 50;
      v28 = 1.0 / (1 << a10);
      v22 = v708 + v698;
      v23 = v707 - v698;
      if (v707 <= v698)
      {
LABEL_365:
        v14 = v623;
        *(v19 + 7440) = v622 - v623;
        break;
      }
    }
  }

  v542 = *(v19 + 7448);
  v543 = *(v19 + 7444);
  v544 = v543 - v542;
  if (v543 < v542)
  {
    v544 = v543 - v542 + 100;
  }

  v545 = *(v19 + 8);
  v546 = *(v19 + 7452) + v14 / (v545 / 400);
  *(v19 + 7452) = v546;
  v547 = v542;
  if (v546 >= 8)
  {
    v548 = v546 - 15;
    if (v546 < 0xF)
    {
      v548 = 0;
    }

    v549 = v548 + 7;
    v550 = v546 - (v549 & 0x7FFFFFF8) - 8;
    v547 = v542 + (v549 >> 3) + 1;
    *(v19 + 7452) = v550;
    *(v19 + 7448) = v547;
  }

  if (v547 >= 100)
  {
    *(v19 + 7448) = v547 - 100;
  }

  v551 = v545 / 50;
  if (v542 == 99)
  {
    v552 = 0;
  }

  else
  {
    v552 = v542 + 1;
  }

  if (v543 != v542 && v551 < v14)
  {
    v542 = v552;
  }

  v554 = v542 - (v542 == v543);
  if (v554 >= 0)
  {
    v555 = v554;
  }

  else
  {
    v555 = 99;
  }

  v556 = v19 + 7604;
  v557 = (v19 + 7604 + (v555 << 6));
  v558 = v557[3];
  v560 = *v557;
  v559 = v557[1];
  *(a12 + 32) = v557[2];
  *(a12 + 48) = v558;
  *a12 = v560;
  *(a12 + 16) = v559;
  if (*a12)
  {
    v561 = *(a12 + 4);
    v562 = *(v19 + 7444);
    if (v555 == 99)
    {
      v563 = 0;
    }

    else
    {
      v563 = v555 + 1;
    }

    if (v563 == v562)
    {
      v564 = 0;
      v565 = 0;
      v566 = 0;
      v567 = 1.0;
      v568 = *(a12 + 4);
      v569 = v555 - 1;
      if (v555 < 1)
      {
        v569 = 99;
      }

      if (v569 == v562)
      {
        goto LABEL_460;
      }
    }

    else
    {
      v570 = v556 + (v563 << 6);
      v571 = *(v570 + 4);
      if (v561 <= v571)
      {
        v572 = *(v570 + 4);
      }

      else
      {
        v572 = *(a12 + 4);
      }

      v568 = v561 + v571;
      v573 = *(v570 + 32);
      if (*(a12 + 32) > v573)
      {
        v573 = *(a12 + 32);
      }

      *(a12 + 32) = v573;
      if (v563 == 99)
      {
        v574 = 0;
      }

      else
      {
        v574 = v563 + 1;
      }

      if (v574 == v562)
      {
        v564 = 0;
        v565 = 0;
        v566 = 1;
        v567 = 2.0;
        v561 = v572;
        v569 = v555 - 1;
        if (v555 < 1)
        {
          v569 = 99;
        }

        if (v569 == v562)
        {
          goto LABEL_460;
        }
      }

      else
      {
        v575 = v556 + (v574 << 6);
        v576 = *(v575 + 4);
        if (v572 <= v576)
        {
          v561 = *(v575 + 4);
        }

        else
        {
          v561 = v572;
        }

        v568 = v568 + v576;
        v577 = *(v575 + 32);
        if (v573 > v577)
        {
          v577 = v573;
        }

        *(a12 + 32) = v577;
        if (v574 == 99)
        {
          v578 = 0;
        }

        else
        {
          v578 = v574 + 1;
        }

        if (v578 == v562)
        {
          v564 = 0;
          v566 = 0;
          v565 = 1;
          v567 = 3.0;
          v569 = v555 - 1;
          if (v555 < 1)
          {
            v569 = 99;
          }

          if (v569 == v562)
          {
            goto LABEL_460;
          }
        }

        else
        {
          v565 = 0;
          v566 = 0;
          v579 = v556 + (v578 << 6);
          v580 = *(v579 + 4);
          if (v561 <= v580)
          {
            v561 = *(v579 + 4);
          }

          v568 = v568 + v580;
          v581 = *(v579 + 32);
          if (v577 <= v581)
          {
            v577 = v581;
          }

          *(a12 + 32) = v577;
          v564 = 1;
          v567 = 4.0;
          v569 = v555 - 1;
          if (v555 < 1)
          {
            v569 = 99;
          }

          if (v569 == v562)
          {
            goto LABEL_460;
          }
        }
      }
    }

    v582 = *(a12 + 32);
    if (v582 <= *(v556 + (v569 << 6) + 32))
    {
      v582 = *(v556 + (v569 << 6) + 32);
    }

    *(a12 + 32) = v582;
    _VF = __OFSUB__(v569, 1);
    v583 = v569 - 1;
    if (v583 < 0 != _VF)
    {
      v584 = 99;
    }

    else
    {
      v584 = v583;
    }

    if (v584 != v562)
    {
      v585 = *(a12 + 32);
      if (v585 <= *(v556 + (v584 << 6) + 32))
      {
        v585 = *(v556 + (v584 << 6) + 32);
      }

      *(a12 + 32) = v585;
      _VF = __OFSUB__(v584, 1);
      v586 = v584 - 1;
      if (v586 < 0 != _VF)
      {
        v586 = 99;
      }

      if (v586 != v562)
      {
        v587 = *(a12 + 32);
        if (v587 <= *(v556 + (v586 << 6) + 32))
        {
          v587 = *(v556 + (v586 << 6) + 32);
        }

        *(a12 + 32) = v587;
        if ((v564 & 1) == 0)
        {
          v588 = v586 - 1;
          if (v586 < 1)
          {
            v588 = 99;
          }

          if (v588 != v562)
          {
            v589 = *(a12 + 32);
            if (v589 <= *(v556 + (v588 << 6) + 32))
            {
              v589 = *(v556 + (v588 << 6) + 32);
            }

            *(a12 + 32) = v589;
            if ((v565 & 1) == 0)
            {
              v590 = v588 - 1;
              if (v588 < 1)
              {
                v590 = 99;
              }

              if (v590 != v562)
              {
                v591 = *(a12 + 32);
                if (v591 <= *(v556 + (v590 << 6) + 32))
                {
                  v591 = *(v556 + (v590 << 6) + 32);
                }

                *(a12 + 32) = v591;
                if ((v566 & 1) == 0)
                {
                  v592 = v590 - 1;
                  if (v590 < 1)
                  {
                    v592 = 99;
                  }

                  if (v592 != v562)
                  {
                    v593 = *(v556 + (v592 << 6) + 32);
                    if (*(a12 + 32) > v593)
                    {
                      v593 = *(a12 + 32);
                    }

                    *(a12 + 32) = v593;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_460:
    v594 = v568 / v567;
    v595 = v561 + -0.2;
    if (v594 > v595)
    {
      v595 = v594;
    }

    *(a12 + 4) = v595;
    if (v555 <= 94)
    {
      v596 = 5;
    }

    else
    {
      v596 = -95;
    }

    v597 = v596 + v555;
    v598 = v555 - 99;
    if (v555 <= 98)
    {
      v598 = v555 + 1;
    }

    v599 = v598;
    v600 = v597;
    v601 = v597 + 1;
    if (v544 >= 16)
    {
      v602 = v598;
    }

    else
    {
      v601 = v555 + 1;
      v600 = v555;
      v599 = v555;
      v602 = v555;
    }

    v603 = *(v556 + (v599 << 6) + 36);
    v604 = 0.1;
    if (v603 >= 0.1)
    {
      v604 = *(v556 + (v599 << 6) + 36);
    }

    v605 = *(v556 + (v600 << 6) + 20) * v604;
    if (v601 == 100)
    {
      v601 = 0;
    }

    v606 = 1.0;
    v607 = 0.0;
    while (v601 != v562)
    {
      if (v602 == 99)
      {
        v602 = 0;
      }

      else
      {
        ++v602;
      }

      if (v602 == v562)
      {
        break;
      }

      v608 = *(v556 + (v602 << 6) + 36);
      if (((v605 + ((v603 - v608) * -10.0)) / v604) < v606)
      {
        v606 = (v605 + ((v603 - v608) * -10.0)) / v604;
      }

      if (((v605 + ((v603 - v608) * 10.0)) / v604) > v607)
      {
        v607 = (v605 + ((v603 - v608) * 10.0)) / v604;
      }

      if (v608 < 0.1)
      {
        v608 = 0.1;
      }

      v604 = v604 + v608;
      v605 = v605 + (v608 * *(v556 + (v601 << 6) + 20));
      if (v601 == 99)
      {
        v601 = 0;
      }

      else
      {
        ++v601;
      }
    }

    v609 = v605 / v604;
    *(a12 + 20) = v609;
    if (v609 >= v606)
    {
      v610 = v606;
    }

    else
    {
      v610 = v609;
    }

    if (v609 <= v607)
    {
      v611 = v607;
    }

    else
    {
      v611 = v609;
    }

    v612 = fmaxf(v610, 0.0);
    v613 = fminf(v611, 1.0);
    if (v544 <= 9)
    {
      v614 = *(v19 + 7436);
      if (v614 <= 15)
      {
        v615 = v614 - 1;
      }

      else
      {
        v615 = 15;
      }

      v616 = v612;
      v617 = v613;
      if (v615 >= 1)
      {
        v617 = v613;
        v616 = v612;
        do
        {
          _VF = __OFSUB__(v555--, 1);
          if (v555 < 0 != _VF)
          {
            v555 = 99;
          }

          v618 = *(v556 + (v555 << 6) + 20);
          if (v616 >= v618)
          {
            v616 = *(v556 + (v555 << 6) + 20);
          }

          if (v617 <= v618)
          {
            v617 = *(v556 + (v555 << 6) + 20);
          }

          --v615;
        }

        while (v615);
      }

      v619 = v616 + (v603 * -0.1);
      if (v619 < 0.0)
      {
        v619 = 0.0;
      }

      v620 = v617 + (v603 * 0.1);
      if (v620 > 1.0)
      {
        v620 = 1.0;
      }

      v621 = (v544 * -0.1) + 1.0;
      v612 = v612 + (v621 * (v619 - v612));
      v613 = v613 + (v621 * (v620 - v613));
    }

    *(a12 + 24) = v612;
    *(a12 + 28) = v613;
  }
}

void *downmix_and_resample(void *result, uint64_t a2, float *a3, float32x2_t *a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10)
{
  v52[1] = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    return result;
  }

  v12 = a3;
  v13 = (2 * a5) / 3;
  if (a10 != 16000)
  {
    v13 = a5;
  }

  if (a10 == 48000)
  {
    v14 = 2 * a5;
  }

  else
  {
    v14 = v13;
  }

  MEMORY[0x28223BE20](result, a2, a3);
  v16 = (v52 - v15);
  result = v18(v17, v52 - v15, v14);
  if (a8 == -2)
  {
    v21 = 0.000030518 / a9;
    if (v14 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = 0.000030518;
    if (a8 >= 0)
    {
      v21 = 0.000015259;
    }

    if (v14 < 1)
    {
      goto LABEL_21;
    }
  }

  if (v14 < 8)
  {
    v22 = 0;
LABEL_19:
    v26 = v14 - v22;
    v27 = v16 + v22;
    do
    {
      *v27 = v21 * *v27;
      ++v27;
      --v26;
    }

    while (v26);
    goto LABEL_21;
  }

  v22 = v14 & 0x7FFFFFF8;
  v23 = &v16[2];
  v24 = v22;
  do
  {
    v25 = vmulq_n_f32(*v23, v21);
    v23[-1] = vmulq_n_f32(v23[-1], v21);
    *v23 = v25;
    v23 += 2;
    v24 -= 8;
  }

  while (v24);
  if (v22 != v14)
  {
    goto LABEL_19;
  }

LABEL_21:
  v28 = 0.0;
  switch(a10)
  {
    case 48000:
      if (v14 >= 2)
      {
        v29 = v14 >> 1;
        do
        {
          v30 = *v16++;
          v31 = vmul_f32(vsub_f32(v30, *a4), 0x3E1A3EC03F1B80FFLL);
          v32 = vadd_f32(*a4, v31);
          v33 = vadd_f32(vadd_f32(v32, vdup_lane_s32(*a4, 1)), vdup_lane_s32(v31, 1)).f32[0];
          *a4 = vadd_f32(v30, v31);
          v34 = a4[1].f32[0];
          v31.f32[0] = (-v30.f32[1] - v34) * 0.15063;
          a4[1].f32[0] = v31.f32[0] - v30.f32[1];
          v28 = v28 + (((v32.f32[0] + v34) + v31.f32[0]) * ((v32.f32[0] + v34) + v31.f32[0]));
          *v12++ = 0.5 * v33;
          --v29;
        }

        while (v29);
      }

      return result;
    case 16000:
      result = MEMORY[0x28223BE20](v52, v19, v20);
      v37 = (v52 - v36);
      if (v14 < 1)
      {
        return result;
      }

      if (v14 >= 8)
      {
        v38 = v14 & 0x7FFFFFF8;
        v39 = &v16[2];
        v40 = v38;
        v41 = v37;
        do
        {
          v53.val[0] = v39[-1];
          v54.val[0] = *v39;
          v53.val[1] = v53.val[0];
          v53.val[2] = v53.val[0];
          v54.val[1] = *v39;
          v54.val[2] = *v39;
          v42 = v41 + 24;
          vst3q_f32(v41, v53);
          v43 = v41 + 12;
          vst3q_f32(v43, v54);
          v39 += 2;
          v41 = v42;
          v40 -= 8;
        }

        while (v40);
        if (v38 == v14)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v38 = 0;
      }

      v44 = v14 - v38;
      v45 = &v37[1] + 3 * v38;
      v46 = v16 + v38;
      do
      {
        v47 = *v46++;
        *(v45 - 2) = v47;
        *(v45 - 1) = v47;
        *v45 = v47;
        v45 += 3;
        --v44;
      }

      while (v44);
LABEL_37:
      v48 = v35 >> 1;
      do
      {
        v49 = *v37++;
        v50 = vmul_f32(vsub_f32(v49, *a4), 0x3E1A3EC03F1B80FFLL);
        v51 = vadd_f32(vadd_f32(vadd_f32(*a4, v50), vdup_lane_s32(*a4, 1)), vdup_lane_s32(v50, 1)).f32[0];
        *a4 = vadd_f32(v49, v50);
        a4[1].f32[0] = ((-v49.f32[1] - a4[1].f32[0]) * 0.15063) - v49.f32[1];
        *v12++ = 0.5 * v51;
        --v48;
      }

      while (v48);
      return result;
    case 24000:
      return memcpy(v12, v16, 4 * v14);
  }

  return result;
}

uint64_t compute_band_energies(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, char a6)
{
  if (a4 < 1)
  {
    return result;
  }

  v6 = 0;
  v7 = *(result + 32);
  v8 = *(result + 8);
  if (a5 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a5;
  }

  v10 = *v7;
  v11 = a4;
  v12 = a2 + 16;
  v13 = 4 * (*(result + 48) << a6);
  while (2)
  {
    v14 = 0;
    result = a3 + 4 * v6 * v8;
    LOWORD(v15) = v10;
    do
    {
      while (1)
      {
        v16 = v15;
        v17 = v14 + 1;
        v15 = v7[v14 + 1];
        v18 = ((v15 - v16) << a6);
        if (v18 >= 1)
        {
          break;
        }

        *(result + 4 * v14++) = sqrtf(1.0e-27);
        if (v17 == v11)
        {
          goto LABEL_6;
        }
      }

      v19 = v16 << a6;
      if (v18 < 8)
      {
        v20 = 0;
        v21 = 0.0;
LABEL_15:
        v30 = v18 - v20;
        v31 = 4 * v20 + 4 * v19;
        do
        {
          v21 = v21 + (*(a2 + v31) * *(a2 + v31));
          v31 += 4;
          --v30;
        }

        while (v30);
        goto LABEL_17;
      }

      v20 = v18 & 0x7FFFFFF8;
      v22 = (v12 + 4 * v19);
      v23 = (a2 + 4 * v19);
      v21 = 0.0;
      v24 = v20;
      do
      {
        v25 = *v23;
        v23 += 2;
        v26 = v25;
        v27 = *v22;
        v22 += 2;
        v28 = vmulq_f32(v26, v26);
        v29 = vmulq_f32(v27, v27);
        v21 = (((((((v21 + v28.f32[0]) + v28.f32[1]) + v28.f32[2]) + v28.f32[3]) + v29.f32[0]) + v29.f32[1]) + v29.f32[2]) + v29.f32[3];
        v24 -= 8;
      }

      while (v24);
      if (v20 != v18)
      {
        goto LABEL_15;
      }

LABEL_17:
      *(result + 4 * v14++) = sqrtf(v21 + 1.0e-27);
    }

    while (v17 != v11);
LABEL_6:
    ++v6;
    v12 += v13;
    a2 += v13;
    if (v6 != v9)
    {
      continue;
    }

    return result;
  }
}

void anti_collapse(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  if (a7 < a8)
  {
    v14 = 1 << a4 <= 1 ? 1 : 1 << a4;
    v15 = a5 <= 1 ? 1 : a5;
    v80 = v15;
    if (a4 != 31)
    {
      v71 = a8;
      v86 = *(a1 + 8);
      v70 = *(a1 + 32);
      v17 = *(v70 + 2 * a7);
      v18 = a7;
      v69 = a2 + 16;
      v78 = 4 * a6;
      v79 = a6;
      v76 = 1 << a4;
      do
      {
        v74 = v18 + 1;
        v19 = v17;
        v75 = *(v70 + 2 * (v18 + 1));
        v20 = v75 - v17;
        v21 = 0;
        v22 = exp(((((*(a12 + 4 * v18) + 1) / v20) >> a4) * -0.125) * 0.693147181);
        v23 = v22 * 0.5;
        v84 = v20 << a4;
        v24 = sqrt((v20 << a4));
        v25 = 1.0 / v24;
        v26 = a3 + v18 * a5;
        v27 = 4 * (v19 << a4);
        v85 = v18;
        v77 = v18 + v86;
        v82 = (v20 << a4) & 0x7FFFFFF8;
        v28 = (v69 + v27);
        v83 = a2 + v27;
        v29 = a2 + v27;
        do
        {
          v30 = v85 + v86 * v21;
          v31 = *(a10 + 4 * v30);
          v32 = *(a11 + 4 * v30);
          if (a5 == 1)
          {
            if (v31 <= *(a10 + 4 * v77))
            {
              v31 = *(a10 + 4 * v77);
            }

            if (v32 <= *(a11 + 4 * v77))
            {
              v32 = *(a11 + 4 * v77);
            }
          }

          if (v31 >= v32)
          {
            v31 = v32;
          }

          v33 = *(a9 + 4 * v30) - v31;
          if (v33 < 0.0)
          {
            v33 = 0.0;
          }

          v34 = exp(v33 * -0.693147181);
          v35 = v34 + v34;
          if (a4 == 3)
          {
            v35 = v35 * 1.4142;
          }

          if (v23 >= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v23;
          }

          v37 = (v83 + 4 * v21 * v79);
          if (v20 < 1)
          {
            v45 = *(v26 + v21);
            v46.i64[0] = 0x400000004;
            v46.i64[1] = 0x400000004;
            v47.i64[0] = 0x100000001;
            v47.i64[1] = 0x100000001;
            v48.i64[0] = 0x800000008;
            v48.i64[1] = 0x800000008;
            if (v76 >= 8)
            {
              v49 = 0;
              v50 = vdupq_n_s32(v45);
              v51 = v14 & 0x7FFFFFF8;
              v52 = 0;
              v53 = xmmword_273B90830;
              v42 = (v20 << a4);
              do
              {
                v49 = vorr_s8(v49, vmovn_s32(vceqzq_s32(vandq_s8(vshlq_u32(v47, v53), v50))));
                v52 = vorr_s8(v52, vmovn_s32(vceqzq_s32(vandq_s8(vshlq_u32(v47, vaddq_s32(v53, v46)), v50))));
                v53 = vaddq_s32(v53, v48);
                v51 -= 8;
              }

              while (v51);
              v38 = vmaxv_u16(vcltz_s16(vshl_n_s16(vorr_s8(v52, v49), 0xFuLL))) & 1;
            }

            else
            {
              v38 = (v45 & 1) == 0;
              v42 = (v20 << a4);
              if (v76 >= 2)
              {
                if ((v45 & 2) == 0)
                {
                  v38 = 1;
                }

                if (a4 != 1)
                {
                  if ((~v45 & 0xC) != 0)
                  {
                    v38 = 1;
                  }

                  if (a4 != 2)
                  {
                    if ((~v45 & 0x30) != 0)
                    {
                      v38 = 1;
                    }

                    if ((v45 & 0x40) == 0)
                    {
                      v38 = 1;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v38 = 0;
            v39 = 0;
            v40 = v25 * v36;
            v41 = -(v25 * v36);
            v42 = (v20 << a4);
            do
            {
              if (((*(v26 + v21) >> v39) & 1) == 0)
              {
                for (i = 0; i != v20; ++i)
                {
                  a13 = 1664525 * a13 + 1013904223;
                  if ((a13 & 0x8000) != 0)
                  {
                    v44 = v40;
                  }

                  else
                  {
                    v44 = v41;
                  }

                  v37[(i << a4) + v39] = v44;
                }

                v38 = 1;
              }

              ++v39;
            }

            while (v39 != v14);
          }

          if (!v38 || v42 < 1)
          {
            goto LABEL_13;
          }

          if (v42 >= 8)
          {
            v55 = 0.0;
            v56 = v84 & 0x7FFFFFF8;
            v57 = v28;
            do
            {
              v58 = vmulq_f32(v57[-1], v57[-1]);
              v59 = vmulq_f32(*v57, *v57);
              v55 = (((((((v55 + v58.f32[0]) + v58.f32[1]) + v58.f32[2]) + v58.f32[3]) + v59.f32[0]) + v59.f32[1]) + v59.f32[2]) + v59.f32[3];
              v57 += 2;
              v56 -= 8;
            }

            while (v56);
            v54 = v84 & 0x7FFFFFF8;
            if (v82 == v42)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v54 = 0;
            v55 = 0.0;
          }

          v60 = v42 - v54;
          v61 = (v29 + 4 * v54);
          do
          {
            v62 = *v61++;
            v55 = v55 + (v62 * v62);
            --v60;
          }

          while (v60);
LABEL_62:
          v63 = 1.0 / sqrtf(v55 + 1.0e-15);
          if (v42 < 8)
          {
            v64 = 0;
LABEL_67:
            v68 = v42 - v64;
            do
            {
              *v37 = v63 * *v37;
              ++v37;
              --v68;
            }

            while (v68);
            goto LABEL_13;
          }

          v65 = 0;
          v37 += v84 & 0x7FFFFFF8;
          v66 = v84 & 0x7FFFFFF8;
          do
          {
            v67 = vmulq_n_f32(v28[v65], v63);
            *(v29 + v65 * 16) = vmulq_n_f32(*(v29 + v65 * 16), v63);
            v28[v65] = v67;
            v65 += 2;
            v66 -= 8;
          }

          while (v66);
          v64 = v84 & 0x7FFFFFF8;
          if (v82 != v42)
          {
            goto LABEL_67;
          }

LABEL_13:
          ++v21;
          v28 = (v28 + v78);
          v29 += v78;
        }

        while (v21 != v80);
        v18 = v74;
        v17 = v75;
      }

      while (v74 != v71);
    }
  }
}

uint64_t spreading_decision(uint64_t a1, uint64_t a2, int *a3, int a4, int *a5, int *a6, int a7, int a8, int a9, int a10, uint64_t a11)
{
  v11 = *(a1 + 32);
  if ((v11[a8] - v11[a8 - 1]) * a10 < 9)
  {
    return 0;
  }

  if (a8 >= 1)
  {
    v62 = a5;
    v63 = a4;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (a9 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = a9;
    }

    v18 = a2 + 16;
    v19 = 4 * *(a1 + 48) * a10;
    __asm { FMOV            V0.4S, #0.25 }

    v25 = vdupq_n_s32(0x3D800000u);
    v26 = vdupq_n_s32(0x3C800000u);
    do
    {
      v27 = 0;
      v28 = *v11;
      do
      {
        v31 = v27 + 1;
        v32 = ((v11[v27 + 1] - v28) * a10);
        if (v32 >= 9)
        {
          v33 = v32;
          v34 = 4 * v28 * a10;
          v35 = (v18 + v34);
          v36 = (a2 + v34);
          v37 = 0uLL;
          v38 = v32 & 0x7FFFFFF8;
          v39 = 0uLL;
          v40 = 0uLL;
          v41 = 0uLL;
          v42 = 0uLL;
          v43 = 0uLL;
          do
          {
            v44 = *v36;
            v36 += 2;
            v45 = v44;
            v46 = *v35;
            v35 += 2;
            v47 = vmulq_n_f32(vmulq_f32(v45, v45), v33);
            v48 = vmulq_n_f32(vmulq_f32(v46, v46), v33);
            v42 = vsubq_s32(v42, vcgtq_f32(_Q0, v47));
            v43 = vsubq_s32(v43, vcgtq_f32(_Q0, v48));
            v40 = vsubq_s32(v40, vcgtq_f32(v25, v47));
            v41 = vsubq_s32(v41, vcgtq_f32(v25, v48));
            v37 = vsubq_s32(v37, vcgtq_f32(v26, v47));
            v39 = vsubq_s32(v39, vcgtq_f32(v26, v48));
            v38 -= 8;
          }

          while (v38);
          v49 = vaddvq_s32(vaddq_s32(v39, v37));
          v50 = vaddvq_s32(vaddq_s32(v41, v40));
          v51 = vaddvq_s32(vaddq_s32(v43, v42));
          v52 = v32 - (v32 & 0x7FFFFFF8);
          if (v52)
          {
            v53 = v34 + 32 * ((v32 >> 3) & 0xFFFFFFF);
            do
            {
              v54 = (*(a2 + v53) * *(a2 + v53)) * v33;
              if (v54 < 0.25)
              {
                ++v51;
              }

              if (v54 < 0.0625)
              {
                ++v50;
              }

              if (v54 < 0.015625)
              {
                ++v49;
              }

              v53 += 4;
              --v52;
            }

            while (v52);
          }

          if (v27 > *(a1 + 8) - 4)
          {
            v16 += 32 * (v50 + v51) / v32;
          }

          v29 = v32 <= 2 * v51;
          if (v32 <= 2 * v50)
          {
            ++v29;
          }

          if (v32 <= 2 * v49)
          {
            ++v29;
          }

          v30 = *(a11 + 4 * v27);
          v14 += v30 * v29;
          v15 += v30;
        }

        v28 = v11[++v27];
      }

      while (v31 != a8);
      ++v13;
      v18 += v19;
      a2 += v19;
    }

    while (v13 != v17);
    v55 = v14 << 8;
    a4 = v63;
    if (!a7)
    {
      goto LABEL_46;
    }

    if (v16)
    {
      v56 = v16 / ((a8 - *(a1 + 8) + 4) * a9);
    }

    else
    {
      v56 = 0;
    }

    a5 = v62;
    goto LABEL_38;
  }

  v55 = 0;
  v15 = 0;
  v56 = 0;
  if (a7)
  {
LABEL_38:
    v57 = (*a5 + v56) >> 1;
    *a5 = v57;
    v58 = v57 - 4;
    if (*a6 == 2)
    {
      v57 += 4;
    }

    if (!*a6)
    {
      v57 = v58;
    }

    if (v57 <= 22)
    {
      v59 = v57 > 18;
    }

    else
    {
      v59 = 2;
    }

    *a6 = v59;
  }

LABEL_46:
  v60 = *a3 + v55 / v15;
  *a3 = v60 >> 1;
  v61 = ((v60 & 0xFFFFFFFE) + (v60 >> 1) - (a4 << 7) + 450) >> 2;
  if (v61 < 80)
  {
    return 3;
  }

  if (v61 >= 0x100)
  {
    return v61 < 0x180;
  }

  return 2;
}

uint64_t quant_all_bands(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, int a14, int a15, void *a16, int a17, unsigned int a18, _DWORD *a19, int a20, int a21)
{
  v265 = a8;
  v293 = a7;
  v21 = a19;
  v22 = a16;
  v343 = *MEMORY[0x277D85DE8];
  v23 = *(a2 + 32);
  v292 = a6;
  v24 = a6 != 0;
  if (a6)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  v300 = v25;
  v314 = a12;
  if (a12)
  {
    v26 = 1;
  }

  else
  {
    v26 = a20 <= 7;
  }

  v27 = !v26 && a6 != 0;
  if (!a1)
  {
    v27 = 1;
  }

  v304 = v27;
  v338 = 0u;
  v339 = 0u;
  v336 = 0u;
  v337 = 0u;
  if (a10)
  {
    v28 = 1 << a17;
  }

  else
  {
    v28 = 1;
  }

  v282 = *(v23 + 2 * a3);
  v29 = MEMORY[0x28223BE20](a1, a2, a3);
  v313 = (v259 - v33);
  v311 = v30;
  v34 = *(v23 + 2 * *(v30 + 8) - 2) << a17;
  v303 = v35;
  if (v35 == 1)
  {
    v29 = MEMORY[0x28223BE20](v29, v30, v31);
    v37 = v259 - v36;
  }

  else
  {
    v37 = (v32 + 4 * v34);
  }

  v38 = MEMORY[0x28223BE20](v29, v37, v31);
  v41 = MEMORY[0x28223BE20](v38, v39, v40);
  v43 = (v259 - v42);
  v46 = MEMORY[0x28223BE20](v41, v44, v45);
  v270 = v259 - v47;
  v50 = MEMORY[0x28223BE20](v46, v48, v49);
  v269 = v259 - v51;
  result = MEMORY[0x28223BE20](v50, v52, v53);
  v264 = v259 - v65;
  v66 = *a19;
  DWORD2(v338) = *a19;
  HIDWORD(v338) = a21;
  *&v338 = v265;
  *&v337 = a16;
  *(&v335 + 1) = v311;
  *(&v336 + 4) = __PAIR64__(v62, v59);
  *&v335 = __PAIR64__(v304, result);
  DWORD1(v339) = v67;
  LODWORD(v339) = 0;
  DWORD2(v339) = v28 > 1;
  if (v56 < v57)
  {
    __dst = v55;
    v259[0] = a19;
    v259[1] = v60;
    v291 = v58;
    v315 = 0;
    v68 = v282 << a17;
    v295 = v313 - 4 * v68;
    v278 = v313->u64 + 4 * v34 + -4 * v68;
    v260 = v278 - 4 * v68;
    v69 = v43;
    v70 = v293 - 1;
    v290 = a13;
    v302 = a9;
    if (v292)
    {
      v71 = v313;
    }

    else
    {
      v71 = 0;
    }

    v289 = v71;
    v73 = v62 != 3 || v28 > 1;
    v288 = v73;
    v299 = v28;
    v287 = ~(-1 << v28);
    v298 = v59;
    v276 = a18;
    result = v56 + 1;
    v317 = v57 - 1;
    v285 = v57;
    v286 = a18;
    v275 = v23 - 2;
    v261 = &v313->i8[4 * (v63 - v68)];
    v283 = v24;
    v284 = a14;
    v280 = v69;
    v281 = v61;
    v262 = v69 + 1;
    v263 = v61 + 1;
    v277 = v282 << a17;
    v301 = 4 * v63 - 4 * v68;
    v75.i64[0] = 0x3F0000003F000000;
    v75.i64[1] = 0x3F0000003F000000;
    v274 = v300;
    v312 = v56;
    v76 = v56;
    v77 = 1;
    v305 = a16;
    v306 = v23;
    v296 = result;
    while (1)
    {
      v84 = 0;
      v85 = *(v23 + 2 * v76);
      v307 = (v85 << a17);
      v86 = 4 * v307;
      if (v292)
      {
        v87 = (v292 + v86);
      }

      else
      {
        v87 = 0;
      }

      v310 = v76 + 1;
      v88 = *(v23 + 2 * (v76 + 1));
      v89 = *(v22 + 8);
      v90 = __clz(v89);
      v91 = ((__PAIR64__(8 * (v90 + *(v22 + 6)), ec_tell_frac_correction[(v89 >> (16 - v90) >> 12) - 8]) - __PAIR64__(v89 >> (16 - v90) >> 12, v89 >> (16 - v90))) >> 32) - 248;
      if (v76 == v312)
      {
        v92 = 0;
      }

      else
      {
        v92 = v91;
      }

      v93 = a15 - v92;
      v309 = v91;
      v94 = v284 - v91;
      LODWORD(v336) = v76;
      DWORD2(v337) = v284 - v91 - 1;
      if (v76 < v286)
      {
        v95 = v276 - v76;
        if (v276 - v76 >= 3)
        {
          v95 = 3;
        }

        v96 = *(v302 + 4 * v76) + v93 / v95;
        if (v94 >= v96)
        {
          v94 = v96;
        }

        v97 = v94 & ~(v94 >> 31);
        if (v97 >= 0x3FFF)
        {
          v84 = 0x3FFF;
        }

        else
        {
          v84 = v97;
        }
      }

      v316 = v84;
      v98 = v88 - v85;
      v99 = v313;
      v308 = v93;
      LODWORD(v297) = v85;
      if (v304)
      {
        v101 = (v85 - v98) << a17 >= *(v23 + 2 * v312) << a17 || v76 == result;
        if (v101 && (v77 || v315 == 0))
        {
          v102 = v76;
        }

        else
        {
          v102 = v315;
        }

        v315 = v102;
      }

      if (v76 == result)
      {
        v103 = (*(v311 + 32) + 2 * v312);
        v104 = v103[1];
        v105 = (v104 - *v103) << a17;
        LODWORD(v103) = (v103[2] - v104) << a17;
        v106 = 2 * v105 - v103;
        v107 = 4 * (v103 - v105);
        v108 = v87;
        memcpy(&v313->f32[v105], &v313->f32[v106], v107);
        v87 = v108;
        v75.i64[0] = 0x3F0000003F000000;
        v75.i64[1] = 0x3F0000003F000000;
        v99 = v313;
        if (v314)
        {
          memcpy((v278 + 4 * v105), (v278 + 4 * v106), v107);
          v87 = v108;
          v75.i64[0] = 0x3F0000003F000000;
          v75.i64[1] = 0x3F0000003F000000;
          v99 = v313;
        }
      }

      v109 = (v98 << a17);
      v110 = __dst;
      if (v76 < *(v311 + 12))
      {
        v111 = (v291 + v86);
      }

      else
      {
        v110 = 0;
        v111 = v99;
      }

      if (v76 >= *(v311 + 12))
      {
        v112 = v289;
      }

      else
      {
        v112 = v87;
      }

      v113 = *(v290 + 4 * v76);
      HIDWORD(v336) = v113;
      v114 = v303;
      if (v76 != v317)
      {
        v114 = 1;
      }

      if (v114)
      {
        v115 = v110;
      }

      else
      {
        v115 = 0;
      }

      __dst = v115;
      v116 = v113 < 0 || v288;
      v117 = -1;
      if (!v315)
      {
        v118 = v287;
        v119 = v287;
        v120 = v293;
        v122 = v300;
        v121 = v301;
        v123 = v283;
        goto LABEL_107;
      }

      v118 = v287;
      v119 = v287;
      v120 = v293;
      v122 = v300;
      v121 = v301;
      v123 = v283;
      if (!v116)
      {
        goto LABEL_107;
      }

      v124 = v315;
      v125 = 2 * v315;
      v126 = (*(v306 + v125) - v282 - v98) << a17;
      v117 = v126 & ~(v126 >> 31);
      v127 = v117 + v277;
      v128 = -v315;
      v129 = 1 - v315;
      v130 = (v275 + v125);
      v131 = 2 - v315;
      v132 = v315 - 1;
      do
      {
        v133 = v132;
        v134 = v131;
        v135 = *v130--;
        ++v128;
        --v124;
        ++v129;
        --v132;
        ++v131;
      }

      while (v135 << a17 > v127);
      v136 = -v128;
      v137 = v127 + v109;
      v138 = v315 - 1 + 1;
      v139 = v76 <= v138 ? v315 : v76;
      v140 = v139 - 1;
      while (v138 < v76)
      {
        v141 = *(v306 + 2 * v138++) << a17;
        if (v141 >= v137)
        {
          v140 = v138 - 2;
          break;
        }
      }

      v142 = v124 <= v140 ? v140 : v124;
      v143 = v142 + v128 + 1;
      if (v143 < 2)
      {
        break;
      }

      v144 = v117;
      v145 = 0;
      v146 = 0;
      v147 = 0;
      v148 = 0;
      if (v124 <= v140)
      {
        v149 = v140;
      }

      else
      {
        v149 = v124;
      }

      v136 = ((v149 + v129) & 0xFFFFFFFE) - v128;
      if (v133 <= v140)
      {
        v150 = v140;
      }

      else
      {
        v150 = v133;
      }

      v151 = (v150 + v134) & 0xFFFFFFFE;
      do
      {
        v152 = v133 << v283;
        v153 = (v133 + 1) << v283;
        v145 |= *(v293 + v152);
        v146 |= *(v293 + v153);
        v147 |= *(v70 + v152 + v274);
        v148 |= *(v70 + v153 + v274);
        v133 += 2;
        v151 -= 2;
      }

      while (v151);
      v119 = v146 | v145;
      v118 = v148 | v147;
      v121 = v301;
      v117 = v144;
      if (v143 != (v143 & 0xFFFFFFFE))
      {
        goto LABEL_106;
      }

LABEL_107:
      v155 = v307;
      v22 = v305;
      v318 = v109;
      if (v314)
      {
        if (v304 && v76 == v298)
        {
          v156 = ((v297 - v282) << a17);
          if (v156 >= 1)
          {
            if (v156 >= 8 && (v99 >= &v261[4 * v156] || v278 >= v99 + 4 * v156))
            {
              v157 = v156 & 0x7FFFFFF8;
              v256 = v157;
              v257 = v99;
              do
              {
                v64 = vmulq_f32(vaddq_f32(*v257, *(v257 + v121)), v75);
                v258 = vmulq_f32(vaddq_f32(v257[1], *(v257 + v121 + 16)), v75);
                *v257 = v64;
                v257[1] = v258;
                v257 += 2;
                v256 -= 8;
              }

              while (v256);
              if (v157 == v156)
              {
                goto LABEL_119;
              }
            }

            else
            {
              v157 = 0;
            }

            v158 = v156 - v157;
            v159 = (v99 + 4 * v157);
            do
            {
              v64.f32[0] = (*v159 + *(v159 + v121)) * 0.5;
              *v159++ = v64.f32[0];
              --v158;
            }

            while (v158);
          }
        }

        else if (v76 != v298)
        {
          v307 = v112;
          v180 = v316 >> 1;
          if (v117 == -1)
          {
            v181 = 0;
          }

          else
          {
            v181 = (v99 + 4 * v117);
          }

          v182 = (v278 + 4 * v117);
          LODWORD(v279) = v316 >> 1;
          if (v76 == v317)
          {
            v273 = (v278 + 4 * v117);
            v186 = __dst;
            v64.i32[0] = 1.0;
            LODWORD(v297) = quant_band(&v335, v111, v109, v180, v299, v181, a17, 0, v64, __dst, v119);
            v185 = 0;
            if (v117 == -1)
            {
              v184 = 0;
            }

            else
            {
              v184 = v273;
            }
          }

          else
          {
            v64.i32[0] = 1.0;
            LODWORD(v297) = quant_band(&v335, v111, v109, v180, v299, v181, a17, &v295[4 * v155], v64, v110, v119);
            if (v117 == -1)
            {
              v184 = 0;
            }

            else
            {
              v184 = v182;
            }

            v185 = (v260 + 4 * (*(v306 + 2 * v76) << a17));
            v186 = __dst;
          }

          v183.i32[0] = 1.0;
          v82 = quant_band(&v335, v307, v318, v279, v299, v184, a17, v185, v183, v186, v118);
          v81 = v297;
          v122 = v300;
          v80 = v316;
          v23 = v306;
          goto LABEL_37;
        }
      }

LABEL_119:
      if (v112)
      {
        v160 = v303 ^ 1;
        if (v76 >= v298)
        {
          v160 = 1;
        }

        if ((v160 & 1) == 0)
        {
          v333 = 0;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v323 = 0u;
          v324 = 0u;
          v321 = 0u;
          v322 = 0u;
          v320 = 0u;
          v161 = (v265 + 4 * v76);
          v162 = v161[*(v311 + 8)];
          v163 = *v161;
          if (*v161 >= v162)
          {
            v164 = v161[*(v311 + 8)];
          }

          else
          {
            v164 = *v161;
          }

          v314 = v118 | v119;
          v297 = *v22;
          v272 = *(v22 + 2);
          v334 = *(v22 + 12);
          v271 = *(v22 + 7);
          v165 = *(v22 + 2);
          v342 = v22[6];
          v341 = v165;
          v328 = v338;
          v329 = v339;
          v326 = v336;
          v327 = v337;
          v325 = v335;
          v166 = v111;
          v167 = v112;
          v307 = v155;
          memcpy(v281, v111, 4 * v109);
          v279 = 4 * v109;
          memcpy(v280, v167, v279);
          LODWORD(v339) = -1;
          if (v117 == -1)
          {
            v169 = 0;
          }

          else
          {
            v169 = &v313->i8[4 * v117];
          }

          v170 = &v295[4 * v307];
          if (v76 == v317)
          {
            v170 = 0;
          }

          v294 = v166;
          v307 = v167;
          v273 = v169;
          v268 = quant_band_stereo(&v335, v166, v167, v318, v316, v299, v169, a17, v168, v170, __dst, v314);
          if (v318 < 1)
          {
            v174 = 0.0;
            v187 = 0.0;
            v177 = v294;
            v171 = v279;
            v172 = v305;
          }

          else
          {
            v171 = v279;
            v172 = v305;
            if (v318 < 8)
            {
              v173 = 0;
              v174 = 0.0;
              v175 = v281;
              v176 = v307;
              v177 = v294;
              goto LABEL_152;
            }

            v173 = v318 & 0x7FFFFFF8;
            v177 = v294;
            v188 = v294 + 1;
            v174 = 0.0;
            v189 = v173;
            v190 = v263;
            v175 = v281;
            v176 = v307;
            do
            {
              v191 = vmulq_f32(v190[-1], v188[-1]);
              v192 = vmulq_f32(*v190, *v188);
              v174 = (((((((v174 + v191.f32[0]) + v191.f32[1]) + v191.f32[2]) + v191.f32[3]) + v192.f32[0]) + v192.f32[1]) + v192.f32[2]) + v192.f32[3];
              v190 += 2;
              v188 += 2;
              v189 -= 8;
            }

            while (v189);
            if (v173 != v318)
            {
LABEL_152:
              v193 = v318 - v173;
              v194 = v173;
              v195 = &v177->f32[v173];
              v196 = &v175->f32[v194];
              do
              {
                v197 = *v196++;
                v198 = v197;
                v199 = *v195++;
                v174 = v174 + (v198 * v199);
                --v193;
              }

              while (v193);
            }

            if (v318 < 8)
            {
              v200 = 0;
              v187 = 0.0;
              goto LABEL_159;
            }

            v200 = v318 & 0x7FFFFFF8;
            v201 = v176 + 1;
            v187 = 0.0;
            v202 = v200;
            v203 = v262;
            do
            {
              v204 = vmulq_f32(v203[-1], v201[-1]);
              v205 = vmulq_f32(*v203, *v201);
              v187 = (((((((v187 + v204.f32[0]) + v204.f32[1]) + v204.f32[2]) + v204.f32[3]) + v205.f32[0]) + v205.f32[1]) + v205.f32[2]) + v205.f32[3];
              v203 += 2;
              v201 += 2;
              v202 -= 8;
            }

            while (v202);
            if (v200 != v318)
            {
LABEL_159:
              v206 = v318 - v200;
              v207 = v200;
              v208 = &v176->f32[v200];
              v209 = &v280->f32[v207];
              do
              {
                v210 = *v209++;
                v211 = v210;
                v212 = *v208++;
                v187 = v187 + (v211 * v212);
                --v206;
              }

              while (v206);
            }
          }

          v213 = *(v172 + 1);
          v330 = *v172;
          v331 = v213;
          v332 = *(v172 + 2);
          v333 = v172[6];
          v322 = v337;
          v323 = v338;
          v324 = v339;
          v320 = v335;
          v321 = v336;
          memcpy(v270, v177, v171);
          memcpy(v269, v307, v171);
          if (v76 != v317)
          {
            memcpy(v264, &v295[4 * (*(v306 + 2 * v76) << a17)], v171);
          }

          v214 = v271;
          v215 = v272;
          v216 = v297;
          v266 = v272 - v271;
          v267 = v271;
          __memcpy_chk();
          v217 = v305;
          *v305 = v216;
          *(v217 + 2) = v215;
          *(v217 + 12) = v334;
          *(v217 + 7) = v214;
          *(v217 + 2) = v341;
          v217[6] = v342;
          v337 = v327;
          v338 = v328;
          v339 = v329;
          v335 = v325;
          v336 = v326;
          v218 = v294;
          memcpy(v294, v281, v171);
          memcpy(v307, v280, v171);
          if (v76 == v296)
          {
            v220 = (*(v311 + 32) + 2 * v312);
            v221 = v220[1];
            v222 = (v221 - *v220) << a17;
            LODWORD(v220) = (v220[2] - v221) << a17;
            memcpy(&v313->f32[v222], &v313->f32[2 * v222 - v220], 4 * (v220 - v222));
          }

          LODWORD(v339) = 1;
          v23 = v306;
          v122 = v300;
          if (v76 == v317)
          {
            v223 = 0;
          }

          else
          {
            v223 = &v295[4 * (*(v306 + 2 * v76) << a17)];
          }

          v22 = v305;
          v81 = quant_band_stereo(&v335, v218, v307, v318, v316, v299, v273, a17, v219, v223, __dst, v314);
          if (v318 < 1)
          {
            v64.i64[0] = 0;
            v226 = 0.0;
            v224 = v307;
          }

          else
          {
            v224 = v307;
            if (v318 < 8)
            {
              v225 = 0;
              v64.i64[0] = 0;
              goto LABEL_175;
            }

            v225 = v318 & 0x7FFFFFF8;
            v227 = v294 + 1;
            v64.i64[0] = 0;
            v228 = v225;
            v229 = v263;
            do
            {
              v230 = vmulq_f32(v229[-1], v227[-1]);
              v231 = vmulq_f32(*v229, *v227);
              v64.f32[0] = (((((((v64.f32[0] + v230.f32[0]) + v230.f32[1]) + v230.f32[2]) + v230.f32[3]) + v231.f32[0]) + v231.f32[1]) + v231.f32[2]) + v231.f32[3];
              v229 += 2;
              v227 += 2;
              v228 -= 8;
            }

            while (v228);
            if (v225 != v318)
            {
LABEL_175:
              v232 = v318 - v225;
              v233 = v225;
              v234 = &v294->f32[v225];
              v235 = &v281->f32[v233];
              do
              {
                v236 = *v235++;
                v237 = v236;
                v238 = *v234++;
                v64.f32[0] = v64.f32[0] + (v237 * v238);
                --v232;
              }

              while (v232);
            }

            if (v318 < 8)
            {
              v239 = 0;
              v226 = 0.0;
              goto LABEL_182;
            }

            v239 = v318 & 0x7FFFFFF8;
            v240 = v307 + 1;
            v226 = 0.0;
            v241 = v239;
            v242 = v262;
            do
            {
              v243 = vmulq_f32(v242[-1], v240[-1]);
              v244 = vmulq_f32(*v242, *v240);
              v226 = (((((((v226 + v243.f32[0]) + v243.f32[1]) + v243.f32[2]) + v243.f32[3]) + v244.f32[0]) + v244.f32[1]) + v244.f32[2]) + v244.f32[3];
              v242 += 2;
              v240 += 2;
              v241 -= 8;
            }

            while (v241);
            if (v239 != v318)
            {
LABEL_182:
              v245 = v318 - v239;
              v246 = v239;
              v247 = &v307->f32[v239];
              v248 = &v280->f32[v246];
              do
              {
                v249 = *v248++;
                v250 = v249;
                v251 = *v247++;
                v226 = v226 + (v250 * v251);
                --v245;
              }

              while (v245);
            }
          }

          v252 = v163 + (v164 / 3.0);
          v253 = v162 + (v164 / 3.0);
          v64.f32[0] = (v253 * v226) + (v252 * v64.f32[0]);
          if (((v253 * v187) + (v252 * v174)) >= v64.f32[0])
          {
            v254 = v331;
            *v22 = v330;
            *(v22 + 1) = v254;
            *(v22 + 2) = v332;
            v22[6] = v333;
            v337 = v322;
            v338 = v323;
            v339 = v324;
            v335 = v320;
            v336 = v321;
            v255 = v279;
            memcpy(v294, v270, v279);
            memcpy(v224, v269, v255);
            if (v76 != v317)
            {
              memcpy(&v295[4 * (*(v306 + 2 * v76) << a17)], v264, v255);
            }

            memcpy((v297 + v267), v340, v266);
            v81 = v268;
            v23 = v306;
          }

          v314 = 0;
          v82 = v81;
          v80 = v316;
          goto LABEL_37;
        }

        LODWORD(v339) = 0;
        if (v117 == -1)
        {
          v178 = 0;
        }

        else
        {
          v178 = (v99 + 4 * v117);
        }

        v179 = &v295[4 * v155];
        if (v76 == v317)
        {
          v179 = 0;
        }

        v80 = v316;
        v81 = quant_band_stereo(&v335, v111, v112, v109, v316, v299, v178, a17, v64, v179, __dst, v118 | v119);
      }

      else
      {
        if (v117 == -1)
        {
          v78 = 0;
        }

        else
        {
          v78 = (v99 + 4 * v117);
        }

        if (v76 == v317)
        {
          v79 = 0;
        }

        else
        {
          v79 = &v295[4 * v155];
        }

        v64.i32[0] = 1.0;
        v80 = v316;
        v81 = quant_band(&v335, v111, v109, v316, v299, v78, a17, v79, v64, __dst, v118 | v119);
      }

      v314 = 0;
      v82 = v81;
      v23 = v306;
LABEL_37:
      v83 = (v76 << v123);
      *(v120 + v83) = v81;
      *(v70 + v83 + v122) = v82;
      a15 = v308 + v309 + *(v302 + 4 * v76);
      v77 = v80 > 8 * v318;
      DWORD2(v339) = 0;
      v76 = v310;
      result = v296;
      v75.i64[0] = 0x3F0000003F000000;
      v75.i64[1] = 0x3F0000003F000000;
      if (v310 == v285)
      {
        v66 = DWORD2(v338);
        v21 = v259[0];
        goto LABEL_198;
      }
    }

    v119 = 0;
    v118 = 0;
    v121 = v301;
    do
    {
LABEL_106:
      v154 = v136 << v283;
      v119 |= *(v293 + v154);
      v118 |= *(v70 + v154 + v300);
      v26 = v136++ < v140;
    }

    while (v26);
    goto LABEL_107;
  }

LABEL_198:
  *v21 = v66;
  return result;
}

uint64_t quant_band(unint64_t a1, float32x4_t *a2, uint64_t a3, int a4, int a5, char *__src, int a7, float32x4_t *a8, float32x4_t a9, char *__dst, int a11)
{
  v12 = *a1;
  if (a3 == 1)
  {
    v13 = *(a1 + 40);
    if (v13 < 8)
    {
      v82 = 1.0;
      if (!*(a1 + 4))
      {
        goto LABEL_126;
      }
    }

    else
    {
      v14 = *(a1 + 32);
      if (v12)
      {
        v15 = a2->f32[0] < 0.0;
        v16 = *(v14 + 4);
        v17 = *(v14 + 5);
        v18 = v17 + 1;
        if ((v17 + 1) >= 0x21)
        {
          do
          {
            v25 = *(v14 + 2);
            v24 = *(v14 + 3);
            if (v24 + *(v14 + 7) < v25)
            {
              v20 = 0;
              v21 = *v14;
              v22 = v24 + 1;
              *(v14 + 3) = v22;
              *(v21 + v25 - v22) = v16;
            }

            else
            {
              v20 = -1;
            }

            *(v14 + 12) |= v20;
            v16 >>= 8;
            v19 = v17 - 8;
            v23 = v17 <= 15;
            v17 -= 8;
          }

          while (!v23);
          v18 = v19 + 1;
          v13 = *(a1 + 40);
        }

        else
        {
          v19 = *(v14 + 5);
        }

        *(v14 + 4) = (v15 << v19) | v16;
        *(v14 + 5) = v18;
      }

      else
      {
        v83 = *(v14 + 4);
        v84 = *(v14 + 5);
        if (!v84)
        {
          v85 = *(v14 + 2);
          v86 = *(v14 + 3);
          if (v86 >= v85)
          {
            v88 = 0;
          }

          else
          {
            v87 = *v14;
            *(v14 + 3) = ++v86;
            v88 = *(v87 + v85 - v86);
          }

          if (v86 >= v85)
          {
            v124 = 0;
          }

          else
          {
            v123 = *v14;
            *(v14 + 3) = ++v86;
            v124 = *(v123 + v85 - v86) << 8;
          }

          v125 = v88 | v124;
          if (v86 >= v85)
          {
            v127 = 0;
          }

          else
          {
            v126 = *v14;
            *(v14 + 3) = ++v86;
            v127 = *(v126 + v85 - v86) << 16;
          }

          v128 = v125 | v127;
          if (v86 >= v85)
          {
            v131 = 0;
          }

          else
          {
            v129 = *v14;
            v130 = v86 + 1;
            *(v14 + 3) = v130;
            v131 = *(v129 + v85 - v130) << 24;
          }

          v83 |= v128 | v131;
          v84 = 32;
        }

        v15 = v83 & 1;
        *(v14 + 4) = v83 >> 1;
        *(v14 + 5) = v84 - 1;
      }

      ++*(v14 + 6);
      *(a1 + 40) = v13 - 8;
      if (!*(a1 + 4))
      {
        goto LABEL_126;
      }

      v82 = -1.0;
      if (!v15)
      {
        v82 = 1.0;
      }
    }

    a2->f32[0] = v82;
LABEL_126:
    if (a8)
    {
      a8->i32[0] = a2->i32[0];
    }

    return 1;
  }

  v28 = *(a1 + 28);
  LODWORD(v29) = v28 & ~(v28 >> 31);
  v30 = a3 / a5;
  if (!__src || (v31 = __dst) == 0)
  {
    v31 = __src;
    if (v28 < 1)
    {
LABEL_14:
      v135 = 0;
      __src = v31;
      v35 = 0;
      v36 = (a5 >> v29);
      v37 = v30 << v29;
      if (((v30 << v29) & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_74;
    }

LABEL_17:
    for (i = 0; i != v28; ++i)
    {
      if (v12)
      {
        if (i != 31)
        {
          v39 = (a3 >> i >> 1);
          if (v39 >= 1)
          {
            v40 = 0;
            v41 = i + 1;
            do
            {
              v42 = 0;
              v43 = &a2->i8[4 * v40];
              v44 = 1;
              do
              {
                v45 = *&v43[4 * (v42 << v41)] * 0.70711;
                v46 = *&v43[4 * (v44 << i)] * 0.70711;
                *&v43[4 * (v42 << v41)] = v45 + v46;
                *&v43[4 * (v44 << i)] = v45 - v46;
                ++v42;
                v44 += 2;
              }

              while (v39 != v42);
              ++v40;
            }

            while (v40 != 1 << i);
          }
        }
      }

      if (v31)
      {
        if (i != 31)
        {
          v47 = (a3 >> i >> 1);
          if (v47 >= 1)
          {
            v48 = 0;
            v49 = i + 1;
            do
            {
              v50 = 0;
              v51 = &v31[4 * v48];
              v52 = 1;
              do
              {
                v53 = *&v51[4 * (v50 << v49)] * 0.70711;
                v54 = *&v51[4 * (v52 << i)] * 0.70711;
                *&v51[4 * (v50 << v49)] = v53 + v54;
                *&v51[4 * (v52 << i)] = v53 - v54;
                ++v50;
                v52 += 2;
              }

              while (v47 != v50);
              ++v48;
            }

            while (v48 != 1 << i);
          }
        }
      }

      a11 = quant_band_bit_interleave_table[a11 & 0xF] | (4 * quant_band_bit_interleave_table[a11 >> 4]);
    }

    v135 = 1;
    __src = v31;
    v35 = 0;
    v36 = (a5 >> v29);
    v37 = v30 << v29;
    if (((v30 << v29) & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_74:
    v57 = v36;
    v56 = v37;
    if (v36 < 2)
    {
      goto LABEL_75;
    }

    goto LABEL_54;
  }

  if (v28 > 0 || ((v30 & 1) == 0 ? (v89 = v28 == 0) : (v89 = 1), v89 ? (v90 = 0) : (v90 = 1), a5 > 1 || v90))
  {
    v32 = a9.i32[0];
    v33 = a7;
    LODWORD(v29) = a4;
    v34 = a5;
    memcpy(__dst, __src, 4 * a3);
    a5 = v34;
    a4 = v29;
    LOBYTE(v29) = v28 & ~(v28 >> 31);
    a7 = v33;
    a9.i32[0] = v32;
    if (v28 < 1)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v135 = 0;
  v35 = 0;
  v36 = (a5 >> v29);
  v37 = v30 << v29;
  if ((v30 << v29))
  {
    goto LABEL_74;
  }

LABEL_35:
  if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

  v35 = 0;
  v55 = v28;
  do
  {
    v56 = v37 >> 1;
    v57 = (2 * v36);
    if (v12 && v56 >= 1 && v36 >= 1)
    {
      v58 = 0;
      v59 = a2;
      v60 = &a2->f32[v36];
      do
      {
        v61 = v59;
        v62 = v60;
        v63 = (v37 >> 1);
        do
        {
          v64 = *v61 * 0.70711;
          v65 = *v62 * 0.70711;
          *v61 = v64 + v65;
          *v62 = v64 - v65;
          v62 += 2 * v36;
          v61 += (2 * v36);
          --v63;
        }

        while (v63);
        ++v58;
        ++v60;
        v59 = (v59 + 4);
      }

      while (v58 != v36);
    }

    if (__src && v56 >= 1 && v36 >= 1)
    {
      v66 = 0;
      v67 = __src;
      v68 = &__src[4 * v36];
      do
      {
        v69 = v67;
        v70 = v68;
        v71 = (v37 >> 1);
        do
        {
          v72 = *v69 * 0.70711;
          v73 = *v70 * 0.70711;
          *v69 = v72 + v73;
          *v70 = v72 - v73;
          v70 += 2 * v36;
          v69 += (2 * v36);
          --v71;
        }

        while (v71);
        ++v66;
        ++v68;
        ++v67;
      }

      while (v66 != v36);
    }

    a11 |= a11 << v36;
    ++v35;
    if ((v37 & 2) != 0)
    {
      break;
    }

    v37 >>= 1;
    LODWORD(v36) = 2 * v36;
    v23 = v55++ < -1;
  }

  while (v23);
  if (v57 < 2)
  {
LABEL_75:
    result = quant_partition(a1, a2, a3, a4, v57, __src, a7, a11, a9);
    if (!*(a1 + 4))
    {
      return result;
    }

    goto LABEL_76;
  }

LABEL_54:
  v133 = v57 << v29;
  v134 = v56 >> v29;
  v132 = a4;
  if (v12)
  {
    v74 = a9.i32[0];
    v75 = a7;
    v76 = v29;
    v29 = __src;
    deinterleave_hadamard(a2, v134, v133);
    __src = v29;
    LOBYTE(v29) = v76;
    a4 = v132;
    a7 = v75;
    a9.i32[0] = v74;
  }

  if (__src)
  {
    v77 = a9.i32[0];
    v78 = a7;
    v79 = v29;
    v29 = __src;
    deinterleave_hadamard(__src, v134, v133);
    __src = v29;
    LOBYTE(v29) = v79;
    a4 = v132;
    a7 = v78;
    a9.i32[0] = v77;
  }

  result = quant_partition(a1, a2, a3, a4, v57, __src, a7, a11, a9);
  if (*(a1 + 4))
  {
    v81 = result;
    interleave_hadamard(a2, v134, v133);
    LODWORD(result) = v81;
LABEL_76:
    if (v35)
    {
      v91 = 0;
      v92 = v57;
      do
      {
        v57 = (v92 >> 1);
        if (v57 >= 1 && (2 * v56) >> 1 >= 1)
        {
          v93 = 0;
          v94 = &a2->f32[v57];
          v95 = (4 * v92) & 0x3FFFFFFF8;
          v96 = a2;
          do
          {
            v97 = v96;
            v98 = v94;
            v99 = ((2 * v56) >> 1);
            do
            {
              v100 = *v97 * 0.70711;
              v101 = *v98 * 0.70711;
              *v97 = v100 + v101;
              *v98 = v100 - v101;
              v98 += 2 * v57;
              v97 = (v97 + v95);
              --v99;
            }

            while (v99);
            ++v93;
            ++v94;
            v96 = (v96 + 4);
          }

          while (v93 != v57);
        }

        v56 *= 2;
        LODWORD(result) = (result >> v57) | result;
        ++v91;
        v92 = v57;
      }

      while (v91 != v35);
    }

    if (v135)
    {
      v102 = 0;
      v103 = a8;
      do
      {
        LODWORD(result) = quant_band_bit_deinterleave_table[result];
        if (v102 == 31 || (v105 = (a3 >> v102 >> 1), v105 <= 0))
        {
          v104 = v102 + 1;
        }

        else
        {
          v106 = 0;
          v104 = v102 + 1;
          do
          {
            v107 = 0;
            v108 = &a2->i8[4 * v106];
            v109 = 1;
            do
            {
              v110 = *&v108[4 * (v107 << v104)] * 0.70711;
              v111 = *&v108[4 * (v109 << v102)] * 0.70711;
              *&v108[4 * (v107 << v104)] = v110 + v111;
              *&v108[4 * (v109 << v102)] = v110 - v111;
              ++v107;
              v109 += 2;
            }

            while (v105 != v107);
            ++v106;
          }

          while (v106 != 1 << v102);
        }

        v102 = v104;
      }

      while (v104 != v28);
    }

    else
    {
      v103 = a8;
    }

    if (v103)
    {
      if (a3 >= 1)
      {
        v112 = 0;
        v113 = sqrt(a3);
        if (a3 < 8)
        {
          goto LABEL_105;
        }

        if ((v103 - a2) < 0x20)
        {
          goto LABEL_105;
        }

        v112 = a3 & 0x7FFFFFF8;
        v114 = a2 + 1;
        v115 = v103 + 1;
        v116 = v112;
        do
        {
          v117 = vmulq_n_f32(*v114, v113);
          v115[-1] = vmulq_n_f32(v114[-1], v113);
          *v115 = v117;
          v114 += 2;
          v115 += 2;
          v116 -= 8;
        }

        while (v116);
        if (v112 != a3)
        {
LABEL_105:
          v118 = a3 - v112;
          v119 = v112;
          v120 = &v103->f32[v112];
          v121 = &a2->f32[v119];
          do
          {
            v122 = *v121++;
            *v120++ = v122 * v113;
            --v118;
          }

          while (v118);
        }
      }
    }

    return result & ~(-1 << (v57 << v29));
  }

  return result;
}

uint64_t quant_band_stereo(unint64_t a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, int a5, int a6, char *a7, int a8, float32x4_t a9, float32x4_t *a10, char *a11, int a12)
{
  v12 = a2;
  v14 = a12;
  v183[0] = a5;
  v15 = *a1;
  v16 = *(a1 + 32);
  if (a4 == 1)
  {
    v17 = *(a1 + 40);
    if (v17 < 8)
    {
      if (!*(a1 + 4))
      {
LABEL_156:
        if (a10)
        {
          a10->i32[0] = a2->i32[0];
        }

        return 1;
      }

      a2->i32[0] = 1065353216;
      v51 = 1.0;
    }

    else
    {
      if (v15)
      {
        v18 = a2->f32[0] < 0.0;
        v19 = *(v16 + 4);
        v20 = *(v16 + 5);
        v21 = v20 + 1;
        if ((v20 + 1) >= 0x21)
        {
          do
          {
            v27 = *(v16 + 2);
            v26 = *(v16 + 3);
            if (v26 + *(v16 + 7) < v27)
            {
              v23 = 0;
              v24 = *v16;
              v25 = v26 + 1;
              *(v16 + 3) = v25;
              *(v24 + v27 - v25) = v19;
            }

            else
            {
              v23 = -1;
            }

            *(v16 + 12) |= v23;
            v19 >>= 8;
            v22 = v20 - 8;
            v60 = v20 <= 15;
            v20 -= 8;
          }

          while (!v60);
          v21 = v22 + 1;
          v17 = *(a1 + 40);
        }

        else
        {
          v22 = *(v16 + 5);
        }

        v77 = (v18 << v22) | v19;
      }

      else
      {
        v69 = *(v16 + 4);
        v70 = *(v16 + 5);
        if (!v70)
        {
          v71 = *(v16 + 2);
          v72 = *(v16 + 3);
          if (v72 >= v71)
          {
            v74 = 0;
          }

          else
          {
            v73 = *v16;
            *(v16 + 3) = ++v72;
            v74 = *(v73 + v71 - v72);
          }

          if (v72 >= v71)
          {
            v85 = 0;
          }

          else
          {
            v84 = *v16;
            *(v16 + 3) = ++v72;
            v85 = *(v84 + v71 - v72) << 8;
          }

          v86 = v74 | v85;
          if (v72 >= v71)
          {
            v88 = 0;
          }

          else
          {
            v87 = *v16;
            *(v16 + 3) = ++v72;
            v88 = *(v87 + v71 - v72) << 16;
          }

          v89 = v86 | v88;
          if (v72 >= v71)
          {
            v92 = 0;
          }

          else
          {
            v90 = *v16;
            v91 = v72 + 1;
            *(v16 + 3) = v91;
            v92 = *(v90 + v71 - v91) << 24;
          }

          v69 |= v89 | v92;
          v70 = 32;
        }

        v18 = v69 & 1;
        v77 = v69 >> 1;
        v21 = v70 - 1;
      }

      *(v16 + 4) = v77;
      *(v16 + 5) = v21;
      v93 = *(v16 + 6) + 1;
      *(v16 + 6) = v93;
      v94 = v17 - 8;
      *(a1 + 40) = v17 - 8;
      v95 = *(a1 + 4);
      if (v95)
      {
        v96 = -1.0;
        if (!v18)
        {
          v96 = 1.0;
        }

        a2->f32[0] = v96;
      }

      v51 = 1.0;
      if (v17 >= 16)
      {
        if (v15)
        {
          v97 = a3->f32[0] < 0.0;
          v98 = v21 + 1;
          if ((v21 + 1) >= 0x21)
          {
            do
            {
              v104 = *(v16 + 2);
              v103 = *(v16 + 3);
              if (v103 + *(v16 + 7) < v104)
              {
                v100 = 0;
                v101 = *v16;
                v102 = v103 + 1;
                *(v16 + 3) = v102;
                *(v101 + v104 - v102) = v77;
              }

              else
              {
                v100 = -1;
              }

              *(v16 + 12) |= v100;
              v77 >>= 8;
              v99 = v21 - 8;
              v60 = v21 <= 15;
              v21 -= 8;
            }

            while (!v60);
            v98 = v99 + 1;
            v93 = *(v16 + 6);
            v94 = *(a1 + 40);
            v95 = *(a1 + 4);
          }

          else
          {
            LOBYTE(v99) = v21;
          }

          *(v16 + 4) = (v97 << v99) | v77;
          *(v16 + 5) = v98;
        }

        else
        {
          if (!v21)
          {
            v105 = *(v16 + 2);
            v106 = *(v16 + 3);
            if (v106 >= v105)
            {
              v108 = 0;
            }

            else
            {
              v107 = *v16;
              *(v16 + 3) = ++v106;
              v108 = *(v107 + v105 - v106);
            }

            if (v106 >= v105)
            {
              v163 = 0;
            }

            else
            {
              v162 = *v16;
              *(v16 + 3) = ++v106;
              v163 = *(v162 + v105 - v106) << 8;
            }

            v164 = v108 | v163;
            if (v106 >= v105)
            {
              v166 = 0;
            }

            else
            {
              v165 = *v16;
              *(v16 + 3) = ++v106;
              v166 = *(v165 + v105 - v106) << 16;
            }

            v167 = v164 | v166;
            if (v106 >= v105)
            {
              v170 = 0;
            }

            else
            {
              v168 = *v16;
              v169 = v106 + 1;
              *(v16 + 3) = v169;
              v170 = *(v168 + v105 - v169) << 24;
            }

            v77 |= v167 | v170;
            v21 = 32;
          }

          v97 = v77 & 1;
          *(v16 + 4) = v77 >> 1;
          *(v16 + 5) = v21 - 1;
        }

        *(v16 + 6) = v93 + 1;
        *(a1 + 40) = v94 - 8;
        v51 = -1.0;
        if (!v97)
        {
          v51 = 1.0;
        }
      }

      if (!v95)
      {
        goto LABEL_156;
      }
    }

    a3->f32[0] = v51;
    goto LABEL_156;
  }

  v180 = 0;
  v181 = 0;
  v182 = 0;
  compute_theta(a1, &v180, a2, a3, a4, v183, a6, a6, a9, a8, 1, &a12);
  v32 = v182;
  v33.f32[0] = v181 * 0.000030518;
  v175 = v180;
  v177 = SHIDWORD(v180) * 0.000030518;
  if (a4 == 2)
  {
    v34 = v183[0];
    v35 = v182 & 0xFFFFBFFF;
    if ((v182 & 0xFFFFBFFF) != 0)
    {
      v36 = -8;
    }

    else
    {
      v36 = 0;
    }

    *(a1 + 40) += v36 - HIDWORD(v182);
    if (v32 <= 0x2000)
    {
      v37 = v12;
    }

    else
    {
      v37 = a3;
    }

    __src = v12;
    if (v32 <= 0x2000)
    {
      v38 = a3;
    }

    else
    {
      v38 = v12;
    }

    v172 = v33.f32[0];
    if (v35)
    {
      v39 = a10;
      if (v15)
      {
        v40 = v38;
        v41 = ((v37->f32[0] * v38[1]) - (v37->f32[1] * *v38)) < 0.0;
        v42 = *(v16 + 4);
        v43 = *(v16 + 5);
        v44 = v43 + 1;
        if ((v43 + 1) >= 0x21)
        {
          do
          {
            v50 = *(v16 + 2);
            v49 = *(v16 + 3);
            if (v49 + *(v16 + 7) < v50)
            {
              v46 = 0;
              v47 = *v16;
              v48 = v49 + 1;
              *(v16 + 3) = v48;
              *(v47 + v50 - v48) = v42;
            }

            else
            {
              v46 = -1;
            }

            *(v16 + 12) |= v46;
            v42 >>= 8;
            v45 = v43 - 8;
            v60 = v43 <= 15;
            v43 -= 8;
          }

          while (!v60);
          v44 = v45 + 1;
        }

        else
        {
          v45 = *(v16 + 5);
        }

        *(v16 + 4) = (v41 << v45) | v42;
        *(v16 + 5) = v44;
        v76 = a11;
      }

      else
      {
        v78 = *(v16 + 4);
        v79 = *(v16 + 5);
        if (v79)
        {
          v40 = v38;
        }

        else
        {
          v80 = *(v16 + 2);
          v81 = *(v16 + 3);
          v40 = v38;
          if (v81 >= v80)
          {
            v83 = 0;
          }

          else
          {
            v82 = *v16;
            *(v16 + 3) = ++v81;
            v83 = *(v82 + v80 - v81);
          }

          if (v81 >= v80)
          {
            v110 = 0;
          }

          else
          {
            v109 = *v16;
            *(v16 + 3) = ++v81;
            v110 = *(v109 + v80 - v81) << 8;
          }

          v111 = v83 | v110;
          if (v81 >= v80)
          {
            v113 = 0;
          }

          else
          {
            v112 = *v16;
            *(v16 + 3) = ++v81;
            v113 = *(v112 + v80 - v81) << 16;
          }

          v114 = v111 | v113;
          if (v81 >= v80)
          {
            v117 = 0;
          }

          else
          {
            v115 = *v16;
            v116 = v81 + 1;
            *(v16 + 3) = v116;
            v117 = *(v115 + v80 - v116) << 24;
          }

          v78 |= v114 | v117;
          v79 = 32;
        }

        v76 = a11;
        v41 = v78 & 1;
        *(v16 + 4) = v78 >> 1;
        *(v16 + 5) = v79 - 1;
      }

      ++*(v16 + 6);
      v75 = 2 * v41;
    }

    else
    {
      v40 = v38;
      v75 = 0;
      v39 = a10;
      v76 = a11;
    }

    v63 = a4;
    v118 = v75 - 1;
    v119 = 1 - v75;
    v31.i32[0] = 1.0;
    result = quant_band(a1, v37, 2, v34 + v36, a6, a7, a8, v39, v31, v76, v14);
    *v40 = v37->f32[1] * v118;
    v40[1] = v37->f32[0] * v119;
    if (!*(a1 + 4))
    {
      return result;
    }

    v12 = __src;
    v65 = v177;
    *__src = vmul_n_f32(*__src, v177);
    v120 = vmul_n_f32(*a3->f32, v172);
    *a3->f32 = v120;
    v121 = __src->f32[0];
    __src->f32[0] = __src->f32[0] - v120.f32[0];
    v122 = a3->f32[1];
    a3->f32[0] = v121 + a3->f32[0];
    v120.i32[0] = __src->i32[1];
    __src->f32[1] = v120.f32[0] - v122;
    a3->f32[1] = v120.f32[0] + a3->f32[1];
    if (!*(a1 + 4))
    {
      return result;
    }
  }

  else
  {
    v52 = v183[0];
    v53 = (v183[0] - HIDWORD(v181)) / 2;
    if (v183[0] < v53)
    {
      v53 = v183[0];
    }

    v54 = v53 & ~(v53 >> 31);
    v55 = v183[0] - v54;
    v56 = *(a1 + 40) - HIDWORD(v182);
    *(a1 + 40) = v56;
    v57 = a12;
    if (v54 >= v52 - v54)
    {
      v31.i32[0] = 1.0;
      v174 = v33;
      v178 = quant_band(a1, v12, a4, v54, a6, a7, a8, a10, v31, a11, a12);
      v66 = *(a1 + 40) - v56 + v54;
      if (v32)
      {
        v67 = v66 <= 24;
      }

      else
      {
        v67 = 1;
      }

      if (v67)
      {
        v68 = 0;
      }

      else
      {
        v68 = v66 - 24;
      }

      v63 = a4;
      result = quant_band(a1, a3, a4, v68 + v55, a6, 0, a8, 0, v174, 0, v57 >> a6) | v178;
      v65 = v177;
      if (!*(a1 + 4))
      {
        return result;
      }
    }

    else
    {
      v31.i32[0] = v33.i32[0];
      v173 = quant_band(a1, a3, a4, v52 - v54, a6, 0, a8, 0, v31, 0, a12 >> a6);
      v59 = *(a1 + 40) - v56 + v55;
      v60 = v32 == 0x4000 || v59 <= 24;
      if (v60)
      {
        v61 = 0;
      }

      else
      {
        v61 = v59 - 24;
      }

      v62 = v61 + v54;
      v58.i32[0] = 1.0;
      v63 = a4;
      result = quant_band(a1, v12, a4, v62, a6, a7, a8, a10, v58, a11, v57) | v173;
      v65 = v177;
      if (!*(a1 + 4))
      {
        return result;
      }
    }
  }

  if (v63 != 2)
  {
    if (v63 < 1)
    {
      v127 = 0.0;
      v125 = 0.0;
    }

    else
    {
      v123 = &a3->f32[1];
      v124 = &v12->f32[1];
      v125 = 0.0;
      v126 = v63 & 0x7FFFFFFE;
      v127 = 0.0;
      do
      {
        v128 = *(v123 - 1);
        v125 = (v125 + (v128 * v128)) + (*v123 * *v123);
        v127 = (v127 + (v128 * *(v124 - 1))) + (*v123 * *v124);
        v123 += 2;
        v124 += 2;
        v126 -= 2;
      }

      while (v126);
      v129 = v63 - (v63 & 0x7FFFFFFE);
      if (v129)
      {
        v130 = 2 * ((v63 >> 1) & 0x3FFFFFFF);
        v131 = &v12->f32[v130];
        v132 = &a3->f32[v130];
        do
        {
          v133 = *v132++;
          v134 = v133;
          v135 = *v131++;
          v127 = v127 + (v134 * v135);
          v125 = v125 + (v134 * v134);
          --v129;
        }

        while (v129);
      }
    }

    v136 = v65 * v127;
    v137 = v125 + (v65 * v65);
    v138 = v137 + (v136 * -2.0);
    v139 = v137 + (v136 * 2.0);
    if (v139 < 0.0006 || v138 < 0.0006)
    {
      v141 = result;
      memcpy(a3, v12, 4 * v63);
      result = v141;
      goto LABEL_130;
    }

    if (v63 < 1)
    {
      return result;
    }

    v142 = 1.0 / sqrtf(v138);
    v143 = 1.0 / sqrtf(v139);
    if (v63 < 4)
    {
      v144 = 0;
LABEL_128:
      v150 = v63 - v144;
      v151 = v144;
      v152 = &a3->f32[v144];
      v153 = &v12->f32[v151];
      do
      {
        v154 = v65 * *v153;
        v155 = *v152;
        *v153++ = v142 * (v154 - *v152);
        *v152++ = v143 * (v154 + v155);
        --v150;
      }

      while (v150);
      goto LABEL_130;
    }

    v144 = v63 & 0x7FFFFFFC;
    v145 = v144;
    v146 = a3;
    v147 = v12;
    do
    {
      v148 = vmulq_n_f32(*v147, v65);
      v149 = *v146;
      *v147++ = vmulq_n_f32(vsubq_f32(v148, *v146), v142);
      *v146++ = vmulq_n_f32(vaddq_f32(v148, v149), v143);
      v145 -= 4;
    }

    while (v145);
    if (v144 != v63)
    {
      goto LABEL_128;
    }
  }

LABEL_130:
  if (v63 >= 1 && v175)
  {
    if (v63 >= 8)
    {
      v156 = v63 & 0x7FFFFFF8;
      v157 = a3 + 1;
      v158 = v156;
      do
      {
        v159 = vnegq_f32(*v157);
        v157[-1] = vnegq_f32(v157[-1]);
        *v157 = v159;
        v157 += 2;
        v158 -= 8;
      }

      while (v158);
      if (v156 == v63)
      {
        return result;
      }
    }

    else
    {
      v156 = 0;
    }

    v160 = v63 - v156;
    v161 = &a3->f32[v156];
    do
    {
      *v161 = -*v161;
      ++v161;
      --v160;
    }

    while (v160);
  }

  return result;
}

void *deinterleave_hadamard(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v8 = v46 - v7;
  if (!v9)
  {
    if (v5 < 1 || v4 < 1)
    {
      return memcpy(v3, v8, 4 * v6);
    }

    v27 = 0;
    v28 = v5;
    v30 = v5 > 7 && v4 == 1;
    v31 = (v3 + 16);
    v32 = v8 + 16;
    v33 = 4 * v5;
    v34 = 4 * v4;
    v35 = v3;
    v36 = v46 - v7;
    while (1)
    {
      if (v30)
      {
        v37 = v28 & 0x7FFFFFF8;
        v38 = v32;
        v39 = v31;
        do
        {
          v40 = *v39;
          *(v38 - 1) = *(v39 - 1);
          *v38 = v40;
          v39 += 2;
          v38 += 32;
          v37 -= 8;
        }

        while (v37);
        v41 = v28 & 0x7FFFFFF8;
        if (v41 == v28)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v41 = 0;
      }

      v42 = v28 - v41;
      v43 = &v36[4 * v41];
      v44 = &v35[v34 * v41];
      do
      {
        *v43 = *v44;
        v43 += 4;
        v44 += v34;
        --v42;
      }

      while (v42);
LABEL_30:
      ++v27;
      v31 = (v31 + 4);
      v32 += v33;
      v36 += v33;
      v35 += 4;
      if (v27 == v4)
      {
        return memcpy(v3, v8, 4 * v6);
      }
    }
  }

  if (v5 >= 1 && v4 >= 1)
  {
    v10 = 0;
    v11 = &ordery_table + 4 * v4 - 8;
    v12 = v4;
    v14 = v5 > 7 && v4 == 1;
    v15 = (v3 + 16);
    v16 = 4 * v4;
    v17 = v3;
    do
    {
      v18 = (*&v11[4 * v10] * v5);
      if (v14)
      {
        v19 = &v8[4 * v18 + 16];
        v20 = v5 & 0x7FFFFFF8;
        v21 = v15;
        do
        {
          v22 = *v21;
          *(v19 - 1) = *(v21 - 1);
          *v19 = v22;
          v21 += 2;
          v19 += 32;
          v20 -= 8;
        }

        while (v20);
        v23 = v5 & 0x7FFFFFF8;
        if (v23 == v5)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = v5 - v23;
      v25 = &v8[4 * v23 + 4 * v18];
      v26 = &v17[v16 * v23];
      do
      {
        *v25 = *v26;
        v25 += 4;
        v26 += v16;
        --v24;
      }

      while (v24);
LABEL_11:
      ++v10;
      v15 = (v15 + 4);
      v17 += 4;
    }

    while (v10 != v12);
  }

  return memcpy(v3, v8, 4 * v6);
}

uint64_t quant_partition(unint64_t a1, float32x4_t *a2, uint64_t a3, int a4, int a5, float *a6, int a7, int a8, float32x4_t a9)
{
  v107 = a8;
  v108 = a4;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(v13 + 136);
  v18 = *(v13 + 144);
  if (a7 == -1)
  {
    v19 = *(v17 + 2 * v14);
    v20 = v18 + v19;
    v21 = *(v18 + v19);
  }

  else
  {
    v19 = *(v17 + 2 * (*(v13 + 8) + *(v13 + 8) * a7 + v14));
    v20 = v18 + v19;
    v21 = *(v18 + v19);
    if (a3 >= 3 && *(v20 + v21) + 12 < a4)
    {
      v22 = a6;
      v23 = a9.f32[0];
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v24 = a3 >> 1;
      v25 = (a2 + 4 * v24);
      v26 = a7;
      v27 = a7 - 1;
      v101 = a7 - 1;
      v99 = v25;
      if (a5 == 1)
      {
        v107 = a8 & 1 | (2 * a8);
        v28 = 1;
        v29 = a1;
        compute_theta(a1, &v104, a2, v25, v24, &v108, 1, 1, a9, v27, 0, &v107);
      }

      else
      {
        v28 = ((a5 + 1) >> 1);
        v29 = a1;
        compute_theta(a1, &v104, a2, v25, v24, &v108, (a5 + 1) >> 1, a5, a9, v27, 0, &v107);
      }

      v54 = HIDWORD(v105);
      v55 = v106;
      v56 = SHIDWORD(v104) * 0.000030518;
      v57 = v105 * 0.000030518;
      v58 = (HIDWORD(v105) + ((8 * v24) >> (6 - v26))) & ((HIDWORD(v105) + ((8 * v24) >> (6 - v26))) >> 31);
      if (v106 > 0x2000)
      {
        v58 = HIDWORD(v105) - (SHIDWORD(v105) >> (5 - v26));
      }

      if ((v106 & 0x3FFF) != 0)
      {
        v59 = v58;
      }

      else
      {
        v59 = HIDWORD(v105);
      }

      if (a5 >= 2)
      {
        v54 = v59;
      }

      v60 = v108;
      v61 = (v108 - v54) / 2;
      if (v108 < v61)
      {
        v61 = v108;
      }

      v98 = a5;
      v62 = v61 & ~(v61 >> 31);
      v63 = v108 - v62;
      v64 = v29;
      v65 = *(v29 + 40) - HIDWORD(v106);
      *(v29 + 40) = v65;
      v66 = v22;
      if (v22)
      {
        v67 = &v22[v24];
      }

      else
      {
        v67 = 0;
      }

      v68 = v107;
      if (v62 >= v63)
      {
        v75 = v64;
        v103 = quant_partition(v64, a2, v24, v62, v28, v66, v101, v107, v56 * v23);
        v76 = *(v75 + 40) - v65 + v62;
        if (v55)
        {
          v77 = v76 <= 24;
        }

        else
        {
          v77 = 1;
        }

        if (v77)
        {
          v78 = 0;
        }

        else
        {
          v78 = v76 - 24;
        }

        return (quant_partition(v75, v99, v24, (v78 + v63), v28, v67, v101, (v68 >> v28), v57 * v23) << (v98 >> 1)) | v103;
      }

      else
      {
        v69 = v64;
        v70 = v99;
        v100 = v66;
        v71 = quant_partition(v64, v70, v24, (v60 - v62), v28, v67, v101, (v107 >> v28), v57 * v23) << (v98 >> 1);
        v72 = *(v69 + 40) - v65 + v63;
        if (v55 == 0x4000 || v72 <= 24)
        {
          v74 = 0;
        }

        else
        {
          v74 = v72 - 24;
        }

        return quant_partition(v69, a2, v24, (v74 + v62), v28, v100, v101, v68, v56 * v23) | v71;
      }
    }
  }

  v30 = a4 - 1;
  v31 = *(v20 + ((v21 + 1) >> 1));
  v32 = v30 <= v31;
  if (v30 <= v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = (v21 + 1) >> 1;
  }

  if (v32)
  {
    LODWORD(v21) = (v21 + 1) >> 1;
  }

  if (v30 <= *(v20 + ((v33 + v21 + 1) >> 1)))
  {
    LODWORD(v21) = (v33 + v21 + 1) >> 1;
  }

  else
  {
    v33 = (v33 + v21 + 1) >> 1;
  }

  if (v30 <= *(v20 + ((v33 + v21 + 1) >> 1)))
  {
    LODWORD(v21) = (v33 + v21 + 1) >> 1;
  }

  else
  {
    v33 = (v33 + v21 + 1) >> 1;
  }

  if (v30 <= *(v20 + ((v33 + v21 + 1) >> 1)))
  {
    LODWORD(v21) = (v33 + v21 + 1) >> 1;
  }

  else
  {
    v33 = (v33 + v21 + 1) >> 1;
  }

  v34 = *(v20 + ((v33 + v21 + 1) >> 1));
  if (v30 <= v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = (v33 + v21 + 1) >> 1;
  }

  if (v30 <= v34)
  {
    LODWORD(v21) = (v33 + v21 + 1) >> 1;
  }

  v36 = (v35 + v21 + 1) >> 1;
  v37 = *(v20 + v36);
  if (v30 <= v37)
  {
    v38 = v35;
  }

  else
  {
    v38 = (v35 + v21 + 1) >> 1;
  }

  if (v38)
  {
    v39 = *(v20 + v38);
  }

  else
  {
    v39 = -1;
  }

  if (v30 <= v37)
  {
    LODWORD(v21) = v36;
  }

  if (v30 - v39 <= *(v20 + v21) - v30)
  {
    LODWORD(v40) = v38;
  }

  else
  {
    LODWORD(v40) = v21;
  }

  if (!v40)
  {
LABEL_50:
    if (!*(a1 + 4))
    {
      return 0;
    }

    v48 = (1 << a5) - 1;
    if ((v48 & a8) == 0)
    {
      bzero(a2, 4 * a3);
      return 0;
    }

    if (a6)
    {
      if (a3 < 1)
      {
        return v48 & a8;
      }

      v49 = *(a1 + 56);
      v50 = a2;
      v51 = a3;
      do
      {
        v49 = 1664525 * v49 + 1013904223;
        if ((v49 & 0x8000) != 0)
        {
          v52 = 0.0039062;
        }

        else
        {
          v52 = -0.0039062;
        }

        v53 = *a6++;
        *v50++ = v53 + v52;
        --v51;
      }

      while (v51);
      *(a1 + 56) = v49;
      v48 = v48 & a8;
    }

    else
    {
      if (a3 < 1)
      {
        return v48;
      }

      v79 = *(a1 + 56);
      v80 = a2;
      v81 = a3;
      do
      {
        v79 = 1664525 * v79 + 1013904223;
        *v80++ = (v79 >> 20);
        --v81;
      }

      while (v81);
      *(a1 + 56) = v79;
    }

    if (a3 >= 8)
    {
      v82 = a3 & 0x7FFFFFF8;
      v84 = a2 + 1;
      v83 = 0.0;
      v85 = v82;
      do
      {
        v86 = vmulq_f32(v84[-1], v84[-1]);
        v87 = vmulq_f32(*v84, *v84);
        v83 = (((((((v83 + v86.f32[0]) + v86.f32[1]) + v86.f32[2]) + v86.f32[3]) + v87.f32[0]) + v87.f32[1]) + v87.f32[2]) + v87.f32[3];
        v84 += 2;
        v85 -= 8;
      }

      while (v85);
      if (v82 == a3)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v82 = 0;
      v83 = 0.0;
    }

    v88 = a3 - v82;
    v89 = &a2->f32[v82];
    do
    {
      v90 = *v89++;
      v83 = v83 + (v90 * v90);
      --v88;
    }

    while (v88);
LABEL_105:
    v91 = (1.0 / sqrtf(v83 + 1.0e-15)) * a9.f32[0];
    if (a3 >= 8)
    {
      v92 = a3 & 0x7FFFFFF8;
      v93 = &a2->f32[v92];
      v94 = a2 + 1;
      v95 = v92;
      do
      {
        v96 = vmulq_n_f32(*v94, v91);
        v94[-1] = vmulq_n_f32(v94[-1], v91);
        *v94 = v96;
        v94 += 2;
        v95 -= 8;
      }

      while (v95);
      if (v92 == a3)
      {
        return v48;
      }
    }

    else
    {
      LODWORD(v92) = 0;
      v93 = a2;
    }

    v97 = a3 - v92;
    do
    {
      *v93 = v91 * *v93;
      ++v93;
      --v97;
    }

    while (v97);
    return v48;
  }

  v41 = *(v18 + v19 + v40) + 1;
  v42 = *(a1 + 40) - v41;
  *(a1 + 40) = v42;
  if (v42 < 0)
  {
    v43 = v40 - 1;
    v44 = v18 + v43;
    do
    {
      v45 = v42 + v41;
      *(a1 + 40) = v45;
      if (!v43)
      {
        goto LABEL_50;
      }

      v41 = *(v44 + *(v17 + 2 * (v14 + *(v13 + 8) * (a7 + 1)))) + 1;
      v42 = v45 - v41;
      *(a1 + 40) = v42;
      LODWORD(v40) = v40 - 1;
      --v44;
      --v43;
    }

    while (v42 < 0);
  }

  if (v40 >= 8)
  {
    v40 = (v40 & 7 | 8) << ((v40 >> 3) - 1);
  }

  else
  {
    v40 = v40;
  }

  if (v12)
  {
    v46 = *(a1 + 4);

    return alg_quant(a2, a3, v40, v15, a5, v16, v46, a9.f32[0]);
  }

  else
  {

    return alg_unquant(a2, a3, v40, v15, a5, a9.f32[0]);
  }
}