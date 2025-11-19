uint64_t asn1_object_cmp(const asn1_object_st *const *a1, const asn1_object_st *const *a2)
{
  length = (*a1)->length;
  v3 = (*a2)->length;
  if (length < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (length > v3)
  {
    return 1;
  }

  if (length)
  {
    return memcmp((*a1)->data, (*a2)->data, length);
  }

  return 0;
}

void x509_policy_level_free(unint64_t **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
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
            x509_policy_node_free(v5);
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

    v14 = *(a1 - 1);
    v13 = a1 - 1;
    v15 = v14 + 8;
    if (v14 != -8)
    {
      bzero(v13, v15);
    }

    free(v13);
  }
}

uint64_t x509_policy_node_cmp(uint64_t **a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = *(v2 + 20);
  v5 = *(v3 + 20);
  if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 > v5)
  {
    return 1;
  }

  if (v4)
  {
    return memcmp(*(v2 + 24), *(v3 + 24), v4);
  }

  return 0;
}

uint64_t policyinfo_cmp(const POLICYINFO_st *const *a1, const POLICYINFO_st *const *a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = *(v2 + 20);
  v5 = *(v3 + 20);
  if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 > v5)
  {
    return 1;
  }

  if (v4)
  {
    return memcmp(*(v2 + 24), *(v3 + 24), v4);
  }

  return 0;
}

uint64_t delete_if_not_in_policies(uint64_t a1, uint64_t a2)
{
  v29[0] = *a1;
  if (!a2)
  {
    goto LABEL_24;
  }

  if (!*(a2 + 32))
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = *(a2 + 8);
      while (*v11 != v29)
      {
        ++v11;
        if (!--v10)
        {
          goto LABEL_24;
        }
      }

      return 0;
    }

LABEL_24:
    ASN1_OBJECT_free(*a1);
    v15 = *(a1 + 8);
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        v17 = 0;
        do
        {
          v18 = *(v15[1] + 8 * v17);
          if (v18)
          {
            ASN1_OBJECT_free(v18);
            v16 = *v15;
          }

          ++v17;
        }

        while (v17 < v16);
      }

      v19 = v15[1];
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

      v24 = *(v15 - 1);
      v23 = v15 - 1;
      v25 = v24 + 8;
      if (v24 != -8)
      {
        bzero(v23, v25);
      }

      free(v23);
    }

    v27 = *(a1 - 8);
    v26 = (a1 - 8);
    v28 = v27 + 8;
    if (v27 != -8)
    {
      bzero(v26, v28);
    }

    free(v26);
    return 1;
  }

  v4 = *a2;
  if (*(a2 + 16))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= 2;
  }

  if (!v5)
  {
    if (v4)
    {
      v6 = 0;
      while (1)
      {
        v7 = v6 + ((v4 - v6 - 1) >> 1);
        v8 = *(a2 + 32);
        v30 = *(*(a2 + 8) + 8 * v7);
        v31 = v29;
        v9 = v8(&v31, &v30);
        if (v9 >= 1)
        {
          v6 = v7 + 1;
        }

        else if (v9 < 0)
        {
          v4 = v6 + ((v4 - v6 - 1) >> 1);
        }

        else
        {
          if (v4 - v6 == 1)
          {
            return 0;
          }

          v4 = v7 + 1;
        }

        if (v6 >= v4)
        {
          goto LABEL_24;
        }
      }
    }

    goto LABEL_24;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(a2 + 32);
    v30 = *(*(a2 + 8) + 8 * v12);
    v31 = v29;
    result = v13(&v31, &v30);
    if (!result)
    {
      return result;
    }

    if (++v12 >= *a2)
    {
      goto LABEL_24;
    }
  }
}

void x509_policy_node_free(uint64_t a1)
{
  if (a1)
  {
    ASN1_OBJECT_free(*a1);
    v2 = *(a1 + 8);
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

    v14 = *(a1 - 8);
    v13 = (a1 - 8);
    v15 = v14 + 8;
    if (v14 != -8)
    {
      bzero(v13, v15);
    }

    free(v13);
  }
}

uint64_t x509_policy_level_add_nodes(uint64_t *a1, unint64_t *a2)
{
  if (a2 && *a2)
  {
    v4 = 0;
    while (1)
    {
      v5 = *a1;
      v6 = **a1;
      if (v6 >= 0x7FFFFFFF)
      {
        break;
      }

      v7 = *(a2[1] + 8 * v4);
      v8 = v5[3];
      if (v8 <= v6 + 1)
      {
        result = OPENSSL_realloc(v5[1], 16 * v8);
        if (!result)
        {
          return result;
        }

        v5[1] = result;
        v5[3] = 2 * v8;
        v10 = *v5;
        v11 = *v5 - v6;
        if (*v5 <= v6)
        {
          *(result + 8 * v10) = v7;
          *(v5 + 4) = 0;
          *v5 = v10 + 1;
          if (v10 == -1)
          {
            return 0;
          }
        }

        else
        {
          if (8 * v11)
          {
            memmove((result + 8 * v6 + 8), (result + 8 * v6), 8 * v11);
            v10 = *v5;
            result = v5[1];
          }

          *(result + 8 * v6) = v7;
          *(v5 + 4) = 0;
          *v5 = v10 + 1;
          if (v10 == -1)
          {
            return 0;
          }
        }
      }

      else
      {
        *(v5[1] + 8 * v6) = v7;
        *(v5 + 4) = 0;
        *v5 = v6 + 1;
      }

      v12 = *a2;
      if (*a2 > v4)
      {
        *(a2[1] + 8 * v4) = 0;
      }

      if (++v4 >= v12)
      {
        goto LABEL_17;
      }
    }

    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
    return 0;
  }

  else
  {
LABEL_17:
    OPENSSL_sk_sort(*a1, sk_X509_POLICY_NODE_call_cmp_func);
    return 1;
  }
}

uint64_t sk_POLICYINFO_call_cmp_func(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sk_X509_POLICY_NODE_call_cmp_func(uint64_t (*a1)(const void **, const void **), const void *a2, const void *a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t compare_issuer_policy(const POLICY_MAPPING_st *const *a1, const POLICY_MAPPING_st *const *a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = *(v2 + 20);
  v5 = *(v3 + 20);
  if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 > v5)
  {
    return 1;
  }

  if (v4)
  {
    return memcmp(*(v2 + 24), *(v3 + 24), v4);
  }

  return 0;
}

uint64_t delete_if_mapped(uint64_t a1, uint64_t a2)
{
  v29[0] = *a1;
  if (!a2)
  {
    return 0;
  }

  if (!*(a2 + 32))
  {
    v10 = *a2;
    if (*a2)
    {
      for (i = *(a2 + 8); *i != v29; ++i)
      {
        if (!--v10)
        {
          return 0;
        }
      }

      goto LABEL_25;
    }

    return 0;
  }

  v4 = *a2;
  if (*(a2 + 16))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= 2;
  }

  if (!v5)
  {
    if (v4)
    {
      v6 = 0;
      while (1)
      {
        v7 = v6 + ((v4 - v6 - 1) >> 1);
        v8 = *(a2 + 32);
        v30 = *(*(a2 + 8) + 8 * v7);
        v31 = v29;
        v9 = v8(&v31, &v30);
        if (v9 >= 1)
        {
          v6 = v7 + 1;
        }

        else if (v9 < 0)
        {
          v4 = v6 + ((v4 - v6 - 1) >> 1);
        }

        else
        {
          if (v4 - v6 == 1)
          {
            goto LABEL_25;
          }

          v4 = v7 + 1;
        }

        if (v6 >= v4)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(a2 + 32);
    v30 = *(*(a2 + 8) + 8 * v12);
    v31 = v29;
    if (!v13(&v31, &v30))
    {
      break;
    }

    if (++v12 >= *a2)
    {
      return 0;
    }
  }

LABEL_25:
  ASN1_OBJECT_free(*a1);
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = *v15;
    if (*v15)
    {
      v17 = 0;
      do
      {
        v18 = *(v15[1] + 8 * v17);
        if (v18)
        {
          ASN1_OBJECT_free(v18);
          v16 = *v15;
        }

        ++v17;
      }

      while (v17 < v16);
    }

    v19 = v15[1];
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

    v24 = *(v15 - 1);
    v23 = v15 - 1;
    v25 = v24 + 8;
    if (v24 != -8)
    {
      bzero(v23, v25);
    }

    free(v23);
  }

  v27 = *(a1 - 8);
  v26 = (a1 - 8);
  v28 = v27 + 8;
  if (v27 != -8)
  {
    bzero(v26, v28);
  }

  free(v26);
  return 1;
}

uint64_t compare_subject_policy(const POLICY_MAPPING_st *const *a1, const POLICY_MAPPING_st *const *a2)
{
  subjectDomainPolicy = (*a1)->subjectDomainPolicy;
  v3 = (*a2)->subjectDomainPolicy;
  length = subjectDomainPolicy->length;
  v5 = v3->length;
  if (length < v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (length > v5)
  {
    return 1;
  }

  if (length)
  {
    return memcmp(subjectDomainPolicy->data, v3->data, length);
  }

  return 0;
}

uint64_t sk_POLICY_MAPPING_call_cmp_func(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t sk_ASN1_OBJECT_call_cmp_func(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

unsigned int *poly1305_update(unsigned int *result, unsigned int *a2, unint64_t a3)
{
  v4 = result;
  v38 = *MEMORY[0x277D85DE8];
  if (a3 < 0x10)
  {
    goto LABEL_5;
  }

  v5 = result[9];
  v6 = result[10];
  v8 = result[11];
  v7 = result[12];
  v9 = result[13];
LABEL_3:
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  a2 += 4;
  a3 -= 16;
  v14 = (v10 & 0x3FFFFFF) + v5;
  v15 = (((v10 | (v11 << 32)) >> 26) & 0x3FFFFFF) + v6;
  v4[9] = v14;
  v4[10] = v15;
  v16 = (((v11 | (v12 << 32)) >> 20) & 0x3FFFFFF) + v8;
  v17 = (((v12 | (v13 << 32)) >> 14) & 0x3FFFFFF) + v7;
  v4[11] = v16;
  v4[12] = v17;
  v18 = v9 + (v13 >> 8) + 0x1000000;
  for (v4[13] = v18; ; v18 = v4[13] + (v37 >> 8))
  {
    v19 = v4[1];
    v21 = v4[7];
    v20 = v4[8];
    v22 = v4[6];
    v24 = v4[3];
    v23 = v4[4];
    v25 = *v4 * v14 + v20 * v15 + v21 * v16 + v22 * v17 + v4[5] * v18;
    v26 = v4[2];
    v27 = *v4 * v18;
    v28 = v25 & 0x3FFFFFF;
    v29 = *v4 * v15 + v20 * v16 + v21 * v17 + v22 * v18 + v19 * v14 + (v25 >> 26);
    v6 = v29 & 0x3FFFFFF;
    result = (*v4 * v16 + v20 * v17);
    v30 = result + v21 * v18 + v19 * v15 + v26 * v14 + (v29 >> 26);
    v8 = v30 & 0x3FFFFFF;
    v31 = *v4 * v17 + v20 * v18 + v19 * v16 + v26 * v15 + v24 * v14 + (v30 >> 26);
    v7 = v31 & 0x3FFFFFF;
    v4[11] = v30 & 0x3FFFFFF;
    v4[12] = v31 & 0x3FFFFFF;
    v32 = v27 + v19 * v17 + v26 * v16 + v24 * v15 + v23 * v14 + (v31 >> 26);
    v9 = v32 & 0x3FFFFFF;
    v4[13] = v32 & 0x3FFFFFF;
    v5 = 5 * (v32 >> 26) + v28;
    v4[9] = v5;
    v4[10] = v6;
    if (a3 > 0xF)
    {
      goto LABEL_3;
    }

LABEL_5:
    if (!a3)
    {
      break;
    }

    for (i = 0; i != a3; ++i)
    {
      *(&v34 + i) = *(a2 + i);
    }

    *(&v34 + a3) = 1;
    if ((i - 1) <= 0xD)
    {
      bzero(&v34 + i + 1, a3 ^ 0xF);
    }

    a3 = 0;
    v14 = v4[9] + (v34 & 0x3FFFFFF);
    v15 = (((v34 | (v35 << 32)) >> 26) & 0x3FFFFFF) + v4[10];
    v16 = (((v35 | (v36 << 32)) >> 20) & 0x3FFFFFF) + v4[11];
    v17 = (((v36 | (v37 << 32)) >> 14) & 0x3FFFFFF) + v4[12];
  }

  return result;
}

uint64_t CRYPTO_poly1305_finish(uint64_t a1, _DWORD *a2)
{
  v3 = -a1 & 0x3FLL;
  v4 = (a1 + v3);
  v5 = *(a1 + v3 + 72);
  if (v5)
  {
    poly1305_update((a1 + v3), v4 + 14, v5);
  }

  v6 = v4[9];
  v7 = v6 & 0x3FFFFFF;
  v8 = v4[10] + (v6 >> 26);
  v9 = v8 & 0x3FFFFFF;
  v10 = v4[11] + (v8 >> 26);
  v11 = v10 & 0x3FFFFFF;
  v12 = v4[12] + (v10 >> 26);
  v13 = v12 & 0x3FFFFFF;
  v14 = v4[13] + (v12 >> 26);
  v15 = 5 * (v14 >> 26) + v7;
  v16 = v9 + ((v15 + 5) >> 26);
  v17 = v11 + (v16 >> 26);
  v18 = v13 + (v17 >> 26);
  v19 = (v14 | 0xFC000000) + (v18 >> 26);
  result = (v19 >> 31);
  v21 = (v19 >> 31) - 1;
  v22 = v21 & 0x3FFFFFF & (v15 + 5) | result & v15;
  v23 = v21 & 0x3FFFFFF & v16 | result & v9;
  v4[9] = v22;
  v4[10] = v23;
  v24 = v21 & 0x3FFFFFF & v17 | result & v11;
  v25 = v21 & 0x3FFFFFF & v18 | result & v13;
  v4[11] = v24;
  v4[12] = v25;
  v26 = v21 & v19 | v14 & result & 0x3FFFFFF;
  v4[13] = v26;
  v27 = v22 | (v23 << 26);
  v28 = v4[20];
  v29 = (v23 >> 6) | (v24 << 20);
  v30 = v4[23];
  v31 = ((v24 >> 12) | (v25 << 14)) + v4[22];
  v32 = v4[21] + __CFADD__(v27, v28) + v29;
  *a2 = v27 + v28;
  a2[1] = v32;
  v33 = v31 + HIDWORD(v32);
  a2[2] = v33;
  a2[3] = ((v25 >> 18) | (v26 << 8)) + v30 + HIDWORD(v33);
  return result;
}

char *CRYPTO_BUFFER_POOL_new()
{
  v0 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
  if (!v0)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v1 = v0;
  *v0 = 224;
  *(v0 + 8) = 0u;
  v2 = v0 + 8;
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
  v3 = malloc_type_malloc(0x38uLL, 0xB4E622C9uLL);
  if (!v3)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_9:
    free(v1);
    return 0;
  }

  v4 = v3;
  *v3 = 48;
  *(v3 + 8) = 0u;
  v5 = v3 + 8;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 3) = 16;
  v6 = malloc_type_malloc(0x88uLL, 0xB4E622C9uLL);
  if (!v6)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    free(v4);
    goto LABEL_9;
  }

  *v6 = 128;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 8) = 0u;
  v4[2] = v6 + 8;
  v4[5] = CRYPTO_BUFFER_cmp;
  v4[6] = CRYPTO_BUFFER_hash;
  *(v1 + 1) = v5;
  if (pthread_rwlock_init((v1 + 16), 0))
  {
    abort();
  }

  BCM_rand_bytes_with_additional_data(v1 + 216, 0x10uLL, BCM_rand_bytes::kZeroAdditionalData);
  return v2;
}

uint64_t CRYPTO_BUFFER_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 1;
  }

  if (v2)
  {
    return memcmp(*(a1 + 8), *(a2 + 8), v2);
  }

  return 0;
}

void *crypto_buffer_new(const void *a1, size_t a2, int a3, uint64_t *a4)
{
  if (!a4)
  {
    goto LABEL_13;
  }

  v36[1] = a1;
  v36[2] = a2;
  v36[0] = a4;
  if (pthread_rwlock_rdlock((a4 + 1)))
  {
    goto LABEL_58;
  }

  v8 = *a4;
  v9 = (*(v8 + 8) + 8 * ((*(*a4 + 40))(v36) % *(v8 + 16)));
  v10 = *v9;
  if (*v9)
  {
    if ((*(v8 + 32))(*v10, v36))
    {
      do
      {
        v11 = v10;
        v10 = v10[1];
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      while ((*(v8 + 32))(*v10, v36));
      v9 = (v11 + 1);
    }

    if (*v9)
    {
      v12 = **v9;
      if (a3 && v12)
      {
        if (!*(v12 + 28))
        {
          goto LABEL_12;
        }

LABEL_37:
        v27 = atomic_load((v12 + 24));
        if (v27 != -1)
        {
          for (i = v27; i != -1; v27 = i)
          {
            atomic_compare_exchange_strong((v12 + 24), &i, v27 + 1);
            if (i == v27)
            {
              break;
            }
          }
        }

        v29 = v12;
        if (!pthread_rwlock_unlock((a4 + 1)))
        {
          return v29;
        }

        goto LABEL_58;
      }

      if (v12)
      {
        goto LABEL_37;
      }
    }
  }

LABEL_12:
  if (pthread_rwlock_unlock((a4 + 1)))
  {
    goto LABEL_58;
  }

LABEL_13:
  v13 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
  if (!v13)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v14 = v13;
  *v13 = 32;
  *(v13 + 8) = 0u;
  v15 = v13 + 8;
  *(v13 + 24) = 0u;
  if (a3)
  {
    *(v13 + 2) = a1;
    *(v13 + 3) = a2;
    *(v13 + 8) = 1;
    *(v13 + 9) = 1;
    if (a4)
    {
      goto LABEL_16;
    }

    return v15;
  }

  if (a2)
  {
    if (a2 > 0xFFFFFFFFFFFFFFF7 || (v25 = malloc_type_malloc(a2 + 8, 0xB4E622C9uLL)) == 0)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      free(v14);
      return 0;
    }

    *v25 = a2;
    v26 = v25 + 1;
    memcpy(v25 + 1, a1, a2);
    *(v14 + 2) = v26;
    *(v14 + 3) = a2;
    *(v14 + 8) = 1;
    if (!a4)
    {
      return v15;
    }
  }

  else
  {
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 8) = 1;
    if (!a4)
    {
      return v15;
    }
  }

LABEL_16:
  *v15 = a4;
  if (pthread_rwlock_wrlock((a4 + 1)))
  {
    goto LABEL_58;
  }

  v16 = *a4;
  v17 = (*(v16 + 8) + 8 * ((*(*a4 + 40))(v15) % *(v16 + 16)));
  v18 = *v17;
  if (*v17)
  {
    if ((*(v16 + 32))(*v18, v15))
    {
      do
      {
        v19 = v18;
        v18 = v18[1];
        if (!v18)
        {
          goto LABEL_26;
        }
      }

      while ((*(v16 + 32))(*v18, v15));
      v17 = (v19 + 1);
    }

    if (*v17)
    {
      v20 = **v17;
      if (a3 && v20)
      {
        if (!*(v20 + 28))
        {
          goto LABEL_26;
        }

        goto LABEL_46;
      }

      if (v20)
      {
LABEL_46:
        v30 = atomic_load((v20 + 24));
        if (v30 != -1)
        {
          for (j = v30; j != -1; v30 = j)
          {
            atomic_compare_exchange_strong((v20 + 24), &j, v30 + 1);
            if (j == v30)
            {
              break;
            }
          }
        }

        v24 = v20;
        if (!pthread_rwlock_unlock((a4 + 1)))
        {
          goto LABEL_51;
        }

LABEL_58:
        abort();
      }
    }
  }

LABEL_26:
  v21 = *a4;
  v36[0] = 0;
  v22 = OPENSSL_lh_insert(v21, v36, v15, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func);
  if (pthread_rwlock_unlock((a4 + 1)))
  {
    goto LABEL_58;
  }

  result = v15;
  if (v22)
  {
    return result;
  }

  v24 = 0;
LABEL_51:
  if (!*(v14 + 9))
  {
    v32 = *(v14 + 2);
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
  }

  free(v14);
  return v24;
}

void CRYPTO_BUFFER_free(unsigned int *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (*a1)
  {
    if (pthread_rwlock_wrlock((v2 + 1)))
    {
      goto LABEL_42;
    }

    v3 = atomic_load(a1 + 6);
    if (v3 == -1)
    {
      goto LABEL_15;
    }

    while (1)
    {
      if (!v3)
      {
        goto LABEL_42;
      }

      v4 = v3;
      atomic_compare_exchange_strong(a1 + 6, &v4, v3 - 1);
      if (v4 == v3)
      {
        break;
      }

      v3 = v4;
      if (v4 == -1)
      {
        goto LABEL_15;
      }
    }

    if (v3 != 1)
    {
LABEL_15:
      if (!pthread_rwlock_unlock((*a1 + 8)))
      {
        return;
      }

LABEL_42:
      abort();
    }

    v7 = *v2;
    v8 = (*(v7 + 8) + 8 * ((*(*v2 + 40))(a1) % *(v7 + 16)));
    v9 = *v8;
    if (*v8)
    {
      if ((*(v7 + 32))(*v9, a1))
      {
        while (1)
        {
          v10 = v9;
          v9 = v9[1];
          if (!v9)
          {
            break;
          }

          if (!(*(v7 + 32))(*v9, a1))
          {
            v8 = (v10 + 1);
            goto LABEL_24;
          }
        }

LABEL_30:
        if (pthread_rwlock_unlock((*a1 + 8)))
        {
          goto LABEL_42;
        }

        goto LABEL_31;
      }

LABEL_24:
      v11 = *v8;
      if (*v8)
      {
        if (*v11 != a1)
        {
          goto LABEL_30;
        }

LABEL_29:
        OPENSSL_lh_delete(*v2, a1, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func);
        goto LABEL_30;
      }
    }

    else
    {
      v11 = 0;
    }

    if (v11 != a1)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v5 = atomic_load(a1 + 6);
  if (v5 != -1)
  {
    while (1)
    {
      if (!v5)
      {
        goto LABEL_42;
      }

      v6 = v5;
      atomic_compare_exchange_strong(a1 + 6, &v6, v5 - 1);
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (v6 == -1)
      {
        return;
      }
    }

    if (v5 == 1)
    {
LABEL_31:
      if (!a1[7])
      {
        v12 = *(a1 + 1);
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

      v17 = *(a1 - 1);
      v16 = a1 - 2;
      v18 = v17 + 8;
      if (v17 != -8)
      {
        bzero(v16, v18);
      }

      free(v16);
    }
  }
}

uint64_t OPENSSL_tm_to_posix(int *a1, void *a2)
{
  result = 0;
  v4 = a1[5];
  if ((v4 + 1900) >> 4 > 0x270)
  {
    return result;
  }

  v5 = a1[4];
  if ((v5 & 0x80000000) != 0)
  {
    return result;
  }

  v6 = a1[3];
  v7 = v6 - 1;
  if (v6 < 1)
  {
    return result;
  }

  if (v5 > 0xB)
  {
    return 0;
  }

  v9 = a1[1];
  v8 = a1[2];
  v10 = *a1;
  if (((1 << v5) & 0xAD5) == 0)
  {
    if (((1 << v5) & 0x528) != 0)
    {
      if (v6 < 0x1F)
      {
        goto LABEL_7;
      }
    }

    else
    {
      HIDWORD(v19) = -1030792151 * (v4 + 1900);
      LODWORD(v19) = HIDWORD(v19);
      v18 = v19 >> 2;
      v21 = (v4 & 3) == 0 && v18 > 0x28F5C28;
      HIDWORD(v22) = -1030792151 * (v4 + 1900);
      LODWORD(v22) = HIDWORD(v22);
      if ((v22 >> 4) >= 0xA3D70B && !v21)
      {
        if (v6 < 0x1D)
        {
          goto LABEL_7;
        }
      }

      else if (v6 < 0x1E)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  if (v6 > 0x1F)
  {
    return 0;
  }

LABEL_7:
  result = 0;
  if (v10 <= 59 && v9 <= 59 && v8 <= 23 && ((v9 | v8 | v10) & 0x8000000000000000) == 0)
  {
    v11 = v5 + 1;
    v12 = (__PAIR128__(v4 + 1900, v11) - 3) >> 64;
    v13 = v12 - 399;
    if (v12 >= 0)
    {
      v13 = (__PAIR128__(v4 + 1900, v11) - 3) >> 64;
    }

    v14 = ((5243 * v13) >> 21) + ((5243 * v13) >> 31);
    v15 = v12 - 400 * v14;
    if (v11 <= 2)
    {
      v16 = 9;
    }

    else
    {
      v16 = -3;
    }

    v17 = 26215 * (153 * (v16 + v11) + 2);
    *a2 = 60 * v9 + 3600 * v8 + v10 + 86400 * (v7 + ((v17 >> 17) + (v17 >> 31)) + 146097 * v14 + 365 * v15 + (((v15 + ((v15 >> 29) & 3)) << 16) >> 18) + (((-5243 * v15) >> 19) + ((-5243 * v15) >> 31))) - 0xE79256200;
    return 1;
  }

  return result;
}

uint64_t OPENSSL_posix_to_tm(uint64_t a1, uint64_t a2)
{
  if ((a1 - 0x3AFFF44180) < 0xFFFFFFB686974280)
  {
    return 0;
  }

  v3 = a1 % 86400 + 86400;
  if (a1 % 86400 >= 0)
  {
    v3 = a1 % 86400;
  }

  v4 = a1 / 86400 + ((a1 % 86400) >> 63);
  v5 = v4 + 719468;
  if (v4 <= -719468)
  {
    v6 = v4 + 573372;
  }

  else
  {
    v6 = v4 + 719468;
  }

  v7 = v6 / 146097;
  v8 = v5 - 146097 * v7;
  v9 = ((((1282606671 * v8) >> 32) - v8) >> 10) + ((((1282606671 * v8) >> 32) - v8) >> 31) + v8 + v8 / 36524 + ((((441679365 * v8) >> 32) - v8) >> 17) + ((((441679365 * v8) >> 32) - v8) >> 31);
  v10 = v9 / 365;
  v11 = v8 + (((((1282606671 * v9) >> 32) - v9) >> 10) + ((((1282606671 * v9) >> 32) - v9) >> 31)) + v9 / 36500 - 365 * (v9 / 365);
  v12 = (5 * v11 + 2) / 153;
  if (v11 >= 306)
  {
    v13 = -9;
  }

  else
  {
    v13 = 3;
  }

  v14 = v12 + v13;
  v15 = v3 / 0xE10;
  v16 = v3 % 0xE10;
  v17 = v11 + (153 * v12 + 2) / -5 + 1;
  *a2 = v16 % 0x3Cu;
  *(a2 + 4) = v16 / 0x3Cu;
  v18 = v10 + 400 * v7;
  if (v14 < 3)
  {
    ++v18;
  }

  *(a2 + 8) = v15;
  *(a2 + 12) = v17;
  *(a2 + 16) = v14 - 1;
  *(a2 + 20) = v18 - 1900;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  return 1;
}

uint64_t OPENSSL_gmtime_adj(int *a1, int a2, uint64_t a3)
{
  v9 = 0;
  if (!OPENSSL_tm_to_posix(a1, &v9))
  {
    return 0;
  }

  v6 = v9 + 86400 * a2;
  v7 = v6 >= 1 && (v6 ^ 0x7FFFFFFFFFFFFFFFLL) < a3;
  if (v7 || v6 < 0 && (0x8000000000000000 - v6) > a3)
  {
    return 0;
  }

  return OPENSSL_posix_to_tm(v6 + a3, a1);
}

int BIO_printf(BIO *bio, const char *format, ...)
{
  va_start(va, format);
  v20 = *MEMORY[0x277D85DE8];
  v4 = vsnprintf(__str, 0x100uLL, format, va);
  if ((v4 & 0x80000000) != 0)
  {
    return -1;
  }

  if (v4 > 0xFF)
  {
    v7 = (v4 + 1);
    v8 = malloc_type_malloc(v7 + 8, 0xB4E622C9uLL);
    if (!v8)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return -1;
    }

    v9 = v8;
    *v8 = v7;
    v10 = v8 + 8;
    v11 = vsnprintf(v8 + 8, v7, format, va);
    if (bio && bio->method && (bwrite = bio->method->bwrite) != 0)
    {
      if (LODWORD(bio->cb_arg))
      {
        if (v11 < 1)
        {
          v14 = 0;
        }

        else
        {
          v13 = (bwrite)(bio, v10, v11);
          v14 = v13;
          if (v13 >= 1)
          {
            bio->prev_bio = (bio->prev_bio + v13);
          }
        }

        goto LABEL_23;
      }

      v17 = 114;
      v18 = 125;
    }

    else
    {
      v17 = 115;
      v18 = 121;
    }

    ERR_put_error(17, 0, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v18);
    v14 = -2;
LABEL_23:
    free(v9);
    return v14;
  }

  if (!bio || !bio->method || (v5 = bio->method->bwrite) == 0)
  {
    v15 = 115;
    v16 = 121;
LABEL_20:
    ERR_put_error(17, 0, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v16);
    return -2;
  }

  if (!LODWORD(bio->cb_arg))
  {
    v15 = 114;
    v16 = 125;
    goto LABEL_20;
  }

  if (!v4)
  {
    return 0;
  }

  result = (v5)(bio, __str, v4);
  if (result >= 1)
  {
    bio->prev_bio = (bio->prev_bio + result);
  }

  return result;
}

RSA *RSA_parse_public_key(unsigned __int8 **a1)
{
  result = RSA_new_method(0);
  if (result)
  {
    v3 = result;
    v11 = 0;
    v10 = 0;
    if (cbs_get_any_asn1_element(a1, &v8, &v10, &v11, 0, 0, 0) && v10 == 536870928 && v9 >= v11)
    {
      v8 += v11;
      v9 -= v11;
      v4 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (v4)
      {
        *v4 = 24;
        *(v4 + 2) = 0;
        *(v4 + 3) = 0x100000000;
        *(v4 + 1) = 0;
        v3->version = (v4 + 8);
        if (BN_parse_asn1_unsigned(&v8, (v4 + 8)))
        {
          v5 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
          if (v5)
          {
            *v5 = 24;
            *(v5 + 2) = 0;
            *(v5 + 3) = 0x100000000;
            *(v5 + 1) = 0;
            v3->meth = (v5 + 8);
            if (BN_parse_asn1_unsigned(&v8, (v5 + 8)) && !v9)
            {
              if (RSA_check_key(v3))
              {
                return v3;
              }

              v6 = 104;
              v7 = 65;
              goto LABEL_15;
            }
          }

          else
          {
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            v3->meth = 0;
          }
        }
      }

      else
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v3->version = 0;
      }
    }

    v6 = 100;
    v7 = 59;
LABEL_15:
    ERR_put_error(4, 0, v6, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_asn1.cc", v7);
    RSA_free(v3);
    return 0;
  }

  return result;
}

uint64_t RSA_marshal_public_key(uint64_t *a1, uint64_t a2)
{
  if (!CBB_add_asn1(a1, v7, 536870928))
  {
    goto LABEL_9;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (!BN_marshal_asn1(v7, v4))
  {
    goto LABEL_9;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
LABEL_8:
    ERR_put_error(4, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_asn1.cc", 43);
    goto LABEL_9;
  }

  if (BN_marshal_asn1(v7, v5) && CBB_flush(a1))
  {
    return 1;
  }

LABEL_9:
  ERR_put_error(4, 0, 121, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_asn1.cc", 91);
  return 0;
}

uint64_t marshal_integer(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return BN_marshal_asn1(a1, a2);
  }

  else
  {
    ERR_put_error(4, a2, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_asn1.cc", 43);
    return 0;
  }
}

RSA *RSA_parse_private_key(unsigned __int8 **a1)
{
  result = RSA_new_method(0);
  if (result)
  {
    v3 = result;
    v10 = 0;
    v14 = 0;
    v13 = 0;
    if (cbs_get_any_asn1_element(a1, &v11, &v13, &v14, 0, 0, 0) && v13 == 536870928 && v12 >= v14 && (v11 += v14, v12 -= v14, CBS_get_asn1_uint64_with_tag(&v11, &v10, 2)))
    {
      if (v10)
      {
        v4 = 106;
        v5 = 130;
      }

      else
      {
        v6 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
        if (!v6)
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          v3->version = 0;
          goto LABEL_10;
        }

        *v6 = 24;
        *(v6 + 2) = 0;
        *(v6 + 3) = 0x100000000;
        *(v6 + 1) = 0;
        v3->version = (v6 + 8);
        if (!BN_parse_asn1_unsigned(&v11, (v6 + 8)))
        {
LABEL_10:
          RSA_free(v3);
          return 0;
        }

        v7 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
        if (!v7)
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          v3->meth = 0;
          goto LABEL_10;
        }

        *v7 = 24;
        *(v7 + 2) = 0;
        *(v7 + 3) = 0x100000000;
        *(v7 + 1) = 0;
        v3->meth = (v7 + 8);
        if (!BN_parse_asn1_unsigned(&v11, (v7 + 8)))
        {
          goto LABEL_10;
        }

        v8 = BN_new();
        v3->engine = v8;
        if (!v8)
        {
          goto LABEL_10;
        }

        if (!BN_parse_asn1_unsigned(&v11, v8))
        {
          goto LABEL_10;
        }

        v9 = BN_new();
        v3->n = v9;
        if (!v9 || !BN_parse_asn1_unsigned(&v11, v9) || !parse_integer(&v11, &v3->e) || !parse_integer(&v11, &v3->d) || !parse_integer(&v11, &v3->p) || !parse_integer(&v11, &v3->q))
        {
          goto LABEL_10;
        }

        if (v12)
        {
          v4 = 100;
          v5 = 146;
        }

        else
        {
          if (RSA_check_key(v3))
          {
            return v3;
          }

          v4 = 104;
          v5 = 151;
        }
      }
    }

    else
    {
      v4 = 100;
      v5 = 125;
    }

    ERR_put_error(4, 0, v4, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_asn1.cc", v5);
    goto LABEL_10;
  }

  return result;
}

uint64_t RSA_marshal_private_key(uint64_t *a1, void *a2)
{
  if (!CBB_add_asn1(a1, v12, 536870928) || !CBB_add_asn1_uint64_with_tag(v12, 0, 2))
  {
    goto LABEL_21;
  }

  v4 = a2[1];
  if (!v4)
  {
    goto LABEL_20;
  }

  if (!BN_marshal_asn1(v12, v4))
  {
    goto LABEL_21;
  }

  v5 = a2[2];
  if (!v5)
  {
    goto LABEL_20;
  }

  if (!BN_marshal_asn1(v12, v5))
  {
    goto LABEL_21;
  }

  v6 = a2[3];
  if (!v6)
  {
    goto LABEL_20;
  }

  if (!BN_marshal_asn1(v12, v6))
  {
    goto LABEL_21;
  }

  v7 = a2[4];
  if (!v7)
  {
    goto LABEL_20;
  }

  if (!BN_marshal_asn1(v12, v7))
  {
    goto LABEL_21;
  }

  v8 = a2[5];
  if (!v8)
  {
    goto LABEL_20;
  }

  if (!BN_marshal_asn1(v12, v8))
  {
    goto LABEL_21;
  }

  v9 = a2[6];
  if (!v9)
  {
    goto LABEL_20;
  }

  if (!BN_marshal_asn1(v12, v9))
  {
    goto LABEL_21;
  }

  v10 = a2[7];
  if (!v10)
  {
LABEL_20:
    ERR_put_error(4, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_asn1.cc", 43);
    goto LABEL_21;
  }

  if (BN_marshal_asn1(v12, v10) && marshal_integer(v12, a2[8]) && CBB_flush(a1))
  {
    return 1;
  }

LABEL_21:
  ERR_put_error(4, 0, 121, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_asn1.cc", 187);
  return 0;
}

uint64_t RSA_padding_add_PKCS1_OAEP_mgf1(_BYTE *a1, unint64_t a2, const void *a3, size_t a4, void *data, size_t count, EVP_MD *type, EVP_MD *a8)
{
  v67[6] = *MEMORY[0x277D85DE8];
  if (!type)
  {
    type = EVP_sha1();
  }

  if (a8)
  {
    v15 = a8;
  }

  else
  {
    v15 = type;
  }

  pkey_type = type->pkey_type;
  v17 = 2 * pkey_type;
  if (2 * pkey_type + 2 <= a2)
  {
    v22 = a2 - 1;
    v23 = ~v17;
    if (a2 - 1 + ~v17 < a4)
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc";
      v19 = 4;
      v20 = 114;
      v21 = 64;
      goto LABEL_24;
    }

    v64 = a1;
    dgst = v15;
    *a1 = 0;
    v24 = a1 + 1;
    v25 = &a1[pkey_type];
    v26 = data;
    v27 = v25 + 1;
    result = EVP_Digest(v26, count, v25 + 1, 0, type, 0);
    if (!result)
    {
      return result;
    }

    if (v22 - a4 + v23)
    {
      bzero(&v27[pkey_type], v22 - a4 + v23);
    }

    v27[v22 - a4 + ~pkey_type] = 1;
    if (a4)
    {
      memcpy(&v25[a2 - a4 - pkey_type], a3, a4);
    }

    BCM_rand_bytes_with_additional_data(v24, pkey_type, BCM_rand_bytes::kZeroAdditionalData);
    v29 = v22 - pkey_type;
    if (v22 - pkey_type > 0xFFFFFFFFFFFFFFF7 || (v30 = malloc_type_malloc(v29 + 8, 0xB4E622C9uLL)) == 0)
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v19 = 14;
      v20 = 65;
      v21 = 217;
      goto LABEL_24;
    }

    v31 = v30;
    *v30 = v29;
    v32 = (v30 + 8);
    if (!PKCS1_MGF1(v30 + 8, v22 - pkey_type, v24, pkey_type, dgst))
    {
      goto LABEL_44;
    }

    if (v29 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v22 - pkey_type;
    }

    if (v29 < 8)
    {
      v34 = 0;
      v35 = v64;
      goto LABEL_38;
    }

    v35 = v64;
    if (v27 < &v31[v33 + 8] && v32 < &v64[v33 + 1 + pkey_type])
    {
      v34 = 0;
      goto LABEL_38;
    }

    if (v29 >= 0x20)
    {
      v34 = v33 & 0xFFFFFFFFFFFFFFE0;
      v36 = (v31 + 24);
      v37 = &v64[pkey_type + 17];
      v38 = v33 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v39 = veorq_s8(*v37, *v36);
        v37[-1] = veorq_s8(v37[-1], v36[-1]);
        *v37 = v39;
        v36 += 2;
        v37 += 2;
        v38 -= 32;
      }

      while (v38);
      if (v29 == v34)
      {
        goto LABEL_40;
      }

      if ((v33 & 0x18) == 0)
      {
LABEL_38:
        v45 = v33 - v34;
        v46 = &v35[v34 + 1 + pkey_type];
        v47 = &v31[v34 + 8];
        do
        {
          v48 = *v47++;
          *v46++ ^= v48;
          --v45;
        }

        while (v45);
        goto LABEL_40;
      }
    }

    else
    {
      v34 = 0;
    }

    v40 = v34;
    v34 = v33 & 0xFFFFFFFFFFFFFFF8;
    v41 = &v31[v40 + 8];
    v42 = &v64[v40 + 1 + pkey_type];
    v43 = v40 - (v33 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v44 = *v41++;
      *v42 = veor_s8(*v42, v44);
      ++v42;
      v43 += 8;
    }

    while (v43);
    if (v29 != v34)
    {
      goto LABEL_38;
    }

LABEL_40:
    if (PKCS1_MGF1(mask, pkey_type, v27, v22 - pkey_type, dgst))
    {
      if (!pkey_type)
      {
LABEL_56:
        v50 = 1;
        goto LABEL_57;
      }

      if (pkey_type < 8)
      {
        v49 = 0;
LABEL_54:
        v60 = pkey_type - v49;
        v61 = &v35[v49 + 1];
        v62 = &mask[v49];
        do
        {
          v63 = *v62++;
          *v61++ ^= v63;
          --v60;
        }

        while (v60);
        goto LABEL_56;
      }

      if (pkey_type >= 0x20)
      {
        v49 = pkey_type & 0xFFFFFFE0;
        v51 = v67;
        v52 = (v35 + 17);
        v53 = v49;
        do
        {
          v54 = veorq_s8(*v52, *v51);
          v52[-1] = veorq_s8(v52[-1], v51[-1]);
          *v52 = v54;
          v51 += 2;
          v52 += 2;
          v53 -= 32;
        }

        while (v53);
        if (v49 == pkey_type)
        {
          goto LABEL_56;
        }

        if ((pkey_type & 0x18) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v49 = 0;
      }

      v55 = v49;
      v49 = pkey_type & 0xFFFFFFF8;
      v56 = &mask[v55];
      v57 = &v35[v55 + 1];
      v58 = v55 - v49;
      do
      {
        v59 = *v56;
        v56 += 8;
        *v57 = veor_s8(*v57, v59);
        ++v57;
        v58 += 8;
      }

      while (v58);
      if (v49 == pkey_type)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

LABEL_44:
    v50 = 0;
LABEL_57:
    free(v31);
    return v50;
  }

  v18 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc";
  v19 = 4;
  v20 = 126;
  v21 = 58;
LABEL_24:
  ERR_put_error(v19, 0, v20, v18, v21);
  return 0;
}

uint64_t RSA_padding_check_PKCS1_OAEP_mgf1(void *a1, unint64_t *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, const void *a6, size_t a7, const EVP_MD *a8, const EVP_MD *a9)
{
  v9 = a8;
  v17 = a9;
  v94[6] = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    v9 = EVP_sha1();
  }

  if (!a9)
  {
    v17 = v9;
  }

  pkey_type = v9->pkey_type;
  if (2 * pkey_type + 2 > a5)
  {
    ERR_put_error(4, 0, 133, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc", 214);
    return 0;
  }

  v90 = a3;
  v19 = ~pkey_type + a5;
  if (v19 > 0xFFFFFFFFFFFFFFF7 || (v20 = malloc_type_malloc(v19 + 8, 0xB4E622C9uLL)) == 0)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  __dst = a1;
  v89 = v20;
  *v20 = v19;
  v21 = v20 + 8;
  if (!PKCS1_MGF1(mask, pkey_type, &a4[pkey_type + 1], ~pkey_type + a5, v17))
  {
LABEL_66:
    free(v89);
    return 0;
  }

  if (pkey_type)
  {
    if (pkey_type < 8)
    {
      v22 = 0;
      goto LABEL_23;
    }

    if (pkey_type >= 0x20)
    {
      v22 = pkey_type & 0xFFFFFFE0;
      v23 = (a4 + 17);
      v24 = v94;
      v25 = v22;
      do
      {
        v26 = veorq_s8(*v24, *v23);
        v24[-1] = veorq_s8(v24[-1], v23[-1]);
        *v24 = v26;
        v23 += 2;
        v24 += 2;
        v25 -= 32;
      }

      while (v25);
      if (v22 == pkey_type)
      {
        goto LABEL_25;
      }

      if ((pkey_type & 0x18) == 0)
      {
LABEL_23:
        v32 = pkey_type - v22;
        v33 = &mask[v22];
        v34 = &a4[v22 + 1];
        do
        {
          v35 = *v34++;
          *v33++ ^= v35;
          --v32;
        }

        while (v32);
        goto LABEL_25;
      }
    }

    else
    {
      v22 = 0;
    }

    v27 = v22;
    v22 = pkey_type & 0xFFFFFFF8;
    v28 = &a4[v27 + 1];
    v29 = &mask[v27];
    v30 = v27 - v22;
    do
    {
      v31 = *v28++;
      *v29 = veor_s8(*v29, v31);
      ++v29;
      v30 += 8;
    }

    while (v30);
    if (v22 != pkey_type)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  if (!PKCS1_MGF1(v21, ~pkey_type + a5, mask, pkey_type, v17))
  {
    goto LABEL_66;
  }

  if (!v19)
  {
    goto LABEL_34;
  }

  if (v19 < 8 || v21 < &a4[a5] && &a4[pkey_type + 1] < &v89[a5 - pkey_type + 7])
  {
    v36 = 0;
    goto LABEL_31;
  }

  if (v19 >= 0x20)
  {
    v36 = v19 & 0xFFFFFFFFFFFFFFE0;
    v79 = &a4[pkey_type + 17];
    v80 = (v89 + 24);
    v81 = v19 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v82 = veorq_s8(*v80, *v79);
      v80[-1] = veorq_s8(v80[-1], v79[-1]);
      *v80 = v82;
      v79 += 2;
      v80 += 2;
      v81 -= 32;
    }

    while (v81);
    if (v19 == v36)
    {
      goto LABEL_34;
    }

    if ((v19 & 0x18) == 0)
    {
LABEL_31:
      v37 = v36 + pkey_type + 1;
      v38 = v37 - a5;
      v39 = &v89[v36 + 8];
      v40 = &a4[v37];
      do
      {
        v41 = *v40++;
        *v39++ ^= v41;
      }

      while (!__CFADD__(v38++, 1));
      goto LABEL_34;
    }
  }

  else
  {
    v36 = 0;
  }

  v83 = v36;
  v36 = v19 & 0xFFFFFFFFFFFFFFF8;
  v84 = &a4[v83 + 1 + pkey_type];
  v85 = &v89[v83 + 8];
  v86 = v83 - (v19 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v87 = *v84++;
    *v85 = veor_s8(*v85, v87);
    ++v85;
    v86 += 8;
  }

  while (v86);
  if (v19 != v36)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (!EVP_Digest(a6, a7, md, 0, v9, 0))
  {
    goto LABEL_66;
  }

  if (!pkey_type)
  {
    v45 = 0;
    goto LABEL_53;
  }

  if (pkey_type >= 8)
  {
    if (pkey_type >= 0x20)
    {
      v43 = pkey_type & 0xFFFFFFE0;
      v46 = (v89 + 24);
      v47 = &v92;
      v48 = 0uLL;
      v49 = v43;
      v50 = 0uLL;
      do
      {
        v48 = vorrq_s8(veorq_s8(v47[-1], v46[-1]), v48);
        v50 = vorrq_s8(veorq_s8(*v47, *v46), v50);
        v46 += 2;
        v47 += 2;
        v49 -= 32;
      }

      while (v49);
      v51 = vorrq_s8(v50, v48);
      *v51.i8 = vorr_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
      v52 = v51.i64[0] | HIDWORD(v51.i64[0]) | ((v51.i64[0] | HIDWORD(v51.i64[0])) >> 16);
      v44 = v52 | BYTE1(v52);
      if (v43 == pkey_type)
      {
        goto LABEL_52;
      }

      if ((pkey_type & 0x18) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v44 = 0;
      v43 = 0;
    }

    v53 = v43;
    v54 = v44;
    v43 = pkey_type & 0xFFFFFFF8;
    v55 = &v89[v53 + 8];
    v56 = &md[v53];
    v57 = v53 - v43;
    do
    {
      v58 = *v55++;
      v59 = v58;
      v60 = *v56;
      v56 += 8;
      v54 = vorr_s8(veor_s8(v60, v59), v54);
      v57 += 8;
    }

    while (v57);
    v61 = *&v54 | HIDWORD(*&v54) | ((*&v54 | HIDWORD(*&v54)) >> 16);
    v44 = v61 | BYTE1(v61);
    if (v43 == pkey_type)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v43 = 0;
  v44 = 0;
LABEL_50:
  v62 = pkey_type - v43;
  v63 = &md[v43];
  v64 = &v89[v43 + 8];
  do
  {
    v66 = *v64++;
    v65 = v66;
    v67 = *v63++;
    v44 |= v67 ^ v65;
    --v62;
  }

  while (v62);
LABEL_52:
  v45 = v44;
LABEL_53:
  v68 = (-*a4 | -v45) >> 63;
  v69 = -1;
  if (v19 <= pkey_type)
  {
    v70 = 0;
  }

  else
  {
    v70 = 0;
    v71 = ~(2 * pkey_type) + a5;
    do
    {
      v72 = ((v21[pkey_type] ^ 1) - 1) >> 63;
      v70 = v72 & v69 & pkey_type | v70 & ~(v72 & v69);
      v69 &= ~v72;
      if (v21[pkey_type])
      {
        v73 = v69;
      }

      else
      {
        v73 = 0;
      }

      v68 |= v73;
      ++pkey_type;
      --v71;
    }

    while (v71);
  }

  if (v69 | v68)
  {
    v74 = 133;
    v75 = 214;
LABEL_65:
    ERR_put_error(4, 0, v74, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc", v75);
    goto LABEL_66;
  }

  v76 = v70 + 1;
  v77 = v19 - (v70 + 1);
  if (v77 > v90)
  {
    v74 = 113;
    v75 = 201;
    goto LABEL_65;
  }

  if (v19 != v76)
  {
    memcpy(__dst, &v21[v76], v19 - (v70 + 1));
  }

  *a2 = v77;
  free(v89);
  return 1;
}

uint64_t RSA_encrypt(uint64_t a1, unint64_t *a2, char *a3, unint64_t a4, const void *a5, size_t a6, int a7)
{
  if (*(a1 + 8) && *(a1 + 16))
  {
    result = rsa_check_public_key(a1);
    if (!result)
    {
      return result;
    }

    v14 = *(a1 + 8);
    v15 = *(v14 + 2);
    if (v15 < 1)
    {
      if (!v15)
      {
LABEL_29:
        v32 = 0;
        goto LABEL_30;
      }

      v17 = a4;
      v16 = *v14;
    }

    else
    {
      v16 = *v14;
      v17 = a4;
      while (!*(v16 - 8 + 8 * v15))
      {
        v18 = __OFSUB__(v15--, 1);
        if ((v15 < 0) ^ v18 | (v15 == 0))
        {
          goto LABEL_29;
        }
      }
    }

    v23 = v15 - 1;
    v24 = *(v16 + 8 * v23);
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

    v32 = (v31 + 7) >> 3;
    if (v32 > v17)
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc";
      v20 = 4;
      v21 = 135;
      v22 = 353;
      goto LABEL_11;
    }

LABEL_30:
    v33 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
    if (!v33)
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v20 = 14;
      v21 = 65;
      v22 = 217;
      goto LABEL_11;
    }

    v34 = v33;
    *v33 = 64;
    *(v33 + 8) = 0u;
    v35 = (v33 + 8);
    *(v33 + 24) = 0u;
    *(v33 + 40) = 0u;
    *(v33 + 56) = 0u;
    if (bssl::Vector<unsigned long>::MaybeGrow(v33 + 4))
    {
      *(*(v34 + 4) + 8 * (*(v34 + 5))++) = 0;
    }

    else
    {
      *(v34 + 32) = 257;
      ERR_clear_error();
    }

    v36 = BN_CTX_get(v35);
    v37 = BN_CTX_get(v35);
    v38 = malloc_type_malloc(v32 + 8, 0xB4E622C9uLL);
    if (!v38)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v44 = 0;
      if ((v34[64] & 1) == 0)
      {
LABEL_55:
        v48 = *(v34 + 5);
        if (!v48)
        {
          abort();
        }

        *(v34 + 7) = *(*(v34 + 4) + 8 * v48 - 8);
        *(v34 + 5) = v48 - 1;
      }

LABEL_57:
      BN_CTX_free(v35);
      return v44;
    }

    r = v37;
    v39 = 0;
    *v38 = v32;
    v40 = v38 + 8;
    if (!v36 || !r)
    {
LABEL_54:
      v44 = v39;
      free(v38);
      if ((v34[64] & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_57;
    }

    if (a7 == 4)
    {
      v42 = v38;
      v43 = RSA_padding_add_PKCS1_OAEP_mgf1(v38 + 8, v32, a5, a6, 0, 0, 0, 0);
    }

    else
    {
      v41 = a7;
      v42 = v38;
      if (v41 == 3)
      {
        v43 = RSA_padding_add_none(v38 + 8, v32, a5, a6);
      }

      else
      {
        if (v41 != 1)
        {
          v46 = 143;
          v47 = 384;
          goto LABEL_51;
        }

        v43 = rsa_padding_add_PKCS1_type_2(v38 + 8, v32, a5, a6);
      }
    }

    if (!v43 || !BN_bin2bn(v40, v32, v36))
    {
      goto LABEL_52;
    }

    v45 = *(a1 + 8);
    if (BN_ucmp(v36, v45) < 0)
    {
      if (!BN_MONT_CTX_set_locked((a1 + 288), a1 + 88, v45, v35) || !BN_mod_exp_mont(r, v36, *(a1 + 16), (*(a1 + 288) + 24), v35, *(a1 + 288)))
      {
        goto LABEL_52;
      }

      if (BN_bn2bin_padded(a3, v32, r))
      {
        *a2 = v32;
        v39 = 1;
        goto LABEL_53;
      }

      v46 = 68;
      v47 = 411;
    }

    else
    {
      v46 = 115;
      v47 = 398;
    }

LABEL_51:
    ERR_put_error(4, 0, v46, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc", v47);
LABEL_52:
    v39 = 0;
LABEL_53:
    v38 = v42;
    goto LABEL_54;
  }

  v19 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc";
  v20 = 4;
  v21 = 144;
  v22 = 343;
LABEL_11:
  ERR_put_error(v20, 0, v21, v19, v22);
  return 0;
}

uint64_t rsa_padding_add_PKCS1_type_2(char *a1, unint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  if (a2 <= 0xA)
  {
    v4 = 126;
    v5 = 224;
LABEL_5:
    ERR_put_error(4, 0, v4, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc", v5);
    return 0;
  }

  if (a2 - 11 < a4)
  {
    v4 = 114;
    v5 = 229;
    goto LABEL_5;
  }

  *a1 = 512;
  v9 = (a1 + 2);
  v11 = a2 - 3;
  BCM_rand_bytes_with_additional_data(a1 + 2, a2 - 3 - a4, BCM_rand_bytes::kZeroAdditionalData);
  v13 = v11 - a4;
  if (v11 == a4)
  {
    v14 = a4;
    a1[v13 + 2] = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      while (!v9[v15])
      {
        BCM_rand_bytes_with_additional_data(&v9[v15], 1uLL, BCM_rand_bytes::kZeroAdditionalData);
      }

      ++v15;
    }

    while (v15 != v13);
    a1[v13 + 2] = 0;
    v14 = a4;
    if (!a4)
    {
      return 1;
    }
  }

  memcpy(&a1[a2 - v14], a3, v14);
  return 1;
}

uint64_t RSA_decrypt(void *a1, unint64_t *a2, char *a3, unint64_t a4, const unsigned __int8 *a5, unint64_t a6, int a7)
{
  v7 = *(*a1 + 48);
  if (v7)
  {

    return v7();
  }

  v9 = a1[1];
  v10 = *(v9 + 2);
  if (v10 < 1)
  {
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = *v9;
  }

  else
  {
    v11 = *v9;
    while (!*(v11 - 8 + 8 * v10))
    {
      v12 = __OFSUB__(v10--, 1);
      if (((v10 & 0x80000000) != 0) ^ v12 | (v10 == 0))
      {
        v10 = 0;
        goto LABEL_26;
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

  v10 = (v21 + 7) >> 3;
LABEL_26:
  v22 = v10;
  if (v10 > a4)
  {
    v23 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc";
    v24 = 4;
    v25 = 135;
    v26 = 431;
LABEL_28:
    ERR_put_error(v24, 0, v25, v23, v26);
    return 0;
  }

  v27 = a3;
  if (a7 != 3)
  {
    v28 = a1;
    v29 = a5;
    v30 = a3;
    v31 = a6;
    v32 = a2;
    v33 = a7;
    v34 = malloc_type_malloc(v10 + 8, 0xB4E622C9uLL);
    if (!v34)
    {
      v23 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v24 = 14;
      v25 = 65;
      v26 = 217;
      goto LABEL_28;
    }

    *v34 = v22;
    v27 = (v34 + 1);
    a7 = v33;
    a2 = v32;
    a6 = v31;
    a3 = v30;
    a5 = v29;
    a1 = v28;
  }

  if (v22 != a6)
  {
    v42 = a7;
    ERR_put_error(4, 0, 112, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc", 446);
    v41 = v42;
    goto LABEL_37;
  }

  v35 = a3;
  v36 = a2;
  v37 = a7;
  v38 = *(*a1 + 56);
  if (!v38)
  {
    v39 = a6;
    v47 = rsa_default_private_transform(a1, v27, a5, a6);
    v41 = v37;
    if (v47)
    {
      goto LABEL_46;
    }

LABEL_37:
    result = 0;
    goto LABEL_38;
  }

  v39 = a6;
  v40 = v38();
  v41 = v37;
  if (!v40)
  {
    goto LABEL_37;
  }

LABEL_46:
  v48 = v36;
  switch(v41)
  {
    case 4:
      if (!RSA_padding_check_PKCS1_OAEP_mgf1(v35, v36, v39, v27, v39, 0, 0, 0, 0))
      {
        goto LABEL_66;
      }

      result = 1;
      break;
    case 3:
      *v36 = v39;
      return 1;
    case 1:
      if (v22)
      {
        if (v22 > 0xA)
        {
          v51 = 0;
          v52 = -1;
          v53 = 2;
          do
          {
            v54 = (v27[v53] - 1) >> 63;
            v55 = v51 & ~(v54 & v52);
            v51 = v54 & v52 & v53 | v55;
            v52 &= ~v54;
            ++v53;
          }

          while (v39 != v53);
          if (((9 - v51) | v55) < 0 && (((v27[1] ^ 2) - 1) & (*v27 - 1)) < 0 && v52 != -1)
          {
            v56 = v51 + 1;
            v57 = v39 - v56;
            if (v39 >= v56)
            {
              if (v39 != v56)
              {
                memcpy(v35, &v27[v56], v39 - v56);
                v48 = v36;
                v41 = v37;
              }

              *v48 = v57;
              result = 1;
LABEL_38:
              if (v41 == 3)
              {
                return result;
              }

              break;
            }

            v49 = 137;
            v50 = 301;
          }

          else
          {
            v49 = 137;
            v50 = 293;
          }
        }

        else
        {
          v49 = 126;
          v50 = 256;
        }
      }

      else
      {
        v49 = 120;
        v50 = 247;
      }

      ERR_put_error(4, 0, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc", v50);
LABEL_66:
      ERR_put_error(4, 0, 136, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc", 475);
      result = 0;
      v41 = v37;
      goto LABEL_38;
    default:
      ERR_put_error(4, 0, 143, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/rsa/rsa_crypt.cc", 469);
      result = 0;
      break;
  }

  if (v27)
  {
    v43 = result;
    v45 = *(v27 - 1);
    v44 = (v27 - 8);
    v46 = v45 + 8;
    if (v45 != -8)
    {
      bzero(v44, v46);
    }

    free(v44);
    return v43;
  }

  return result;
}

BOOL x509_rsa_pss_to_ctx(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (!v3 || *v3 != 16)
  {
    goto LABEL_16;
  }

  v6 = *(v3 + 8);
  v26 = *(v6 + 1);
  v7 = *v6;
  in = 0;
  if (asn1_item_ex_d2i(&in, &v26, v7, &RSA_PSS_PARAMS_it, 0xFFFFFFFFLL, 0, 0, 0, 0) > 0)
  {
    v8 = in;
    if (in)
    {
      goto LABEL_5;
    }

LABEL_16:
    ERR_put_error(11, 0, 112, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/rsa_pss.cc", 225);
    v8 = 0;
    goto LABEL_17;
  }

  ASN1_item_ex_free(&in, &RSA_PSS_PARAMS_it);
  v8 = in;
  if (!in)
  {
    goto LABEL_16;
  }

LABEL_5:
  v9 = *(v8 + 1);
  if (!v9)
  {
    ERR_put_error(11, 0, 112, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/rsa_pss.cc", 142);
    v15 = *v8;
    if (*v8)
    {
      goto LABEL_20;
    }

LABEL_27:
    v20 = 128;
    goto LABEL_51;
  }

  if (OBJ_obj2nid(*&v9->type) != 911 || (v10 = *&v9->md_size) == 0 || *v10 != 16 || (v11 = *(v10 + 8), in = *(v11 + 1), (v12 = d2i_X509_ALGOR(0, &in, *v11)) == 0))
  {
    ERR_put_error(11, 0, 112, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/rsa_pss.cc", 148);
    v9 = 0;
    v15 = *v8;
    if (*v8)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v13 = v12;
  digestbyobj = EVP_get_digestbyobj(*v12);
  if (!digestbyobj || (v9 = digestbyobj, (digestbyobj->type - 672) >= 3))
  {
    ERR_put_error(11, 0, 112, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/rsa_pss.cc", 133);
    v9 = 0;
  }

  in = v13;
  ASN1_item_ex_free(&in, &X509_ALGOR_it);
  v15 = *v8;
  if (!*v8)
  {
    goto LABEL_27;
  }

LABEL_20:
  v18 = *v15;
  v19 = *(*v15 + 16);
  v20 = 133;
  if (v19 > 671)
  {
    if (v19 <= 673)
    {
      if (v19 == 672)
      {
        v21 = &unk_2882A4C20;
      }

      else
      {
        v21 = &unk_2882A4C40;
      }
    }

    else
    {
      switch(v19)
      {
        case 674:
          v21 = &unk_2882A4C60;
          break;
        case 675:
          v21 = &unk_2882A4C00;
          break;
        case 962:
          v21 = &unk_2882A4C80;
          break;
        default:
          goto LABEL_51;
      }
    }

    goto LABEL_44;
  }

  if (v19 > 63)
  {
    switch(v19)
    {
      case 64:
        v21 = &unk_2882A4BE0;
        break;
      case 114:
        v21 = &unk_2882A4CA0;
        break;
      case 257:
        v21 = &nid_to_digest_mapping;
        break;
      default:
LABEL_51:
        ERR_put_error(11, 0, 112, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/rsa_pss.cc", v20);
        goto LABEL_17;
    }

    goto LABEL_44;
  }

  if (v19)
  {
    if (v19 != 4)
    {
      goto LABEL_51;
    }

    v21 = &unk_2882A4BC0;
LABEL_44:
    v22 = v21[1]();
    goto LABEL_45;
  }

  v22 = cbs_to_md(*(v18 + 24), *(v18 + 20) & ~(*(v18 + 20) >> 31));
LABEL_45:
  if (!v22 || (v22->type - 672) >= 3)
  {
    v20 = 133;
    goto LABEL_51;
  }

  if (v9)
  {
    if (v9 != v22)
    {
      v20 = 237;
      goto LABEL_51;
    }

    in = 0;
    v23 = *(v8 + 2);
    if (!v23 || (v24 = v22, !ASN1_INTEGER_get_uint64(&in, v23)) || in != *(v24 + 4))
    {
      v20 = 247;
      goto LABEL_51;
    }

    v25 = *(v8 + 3);
    if (v25 && ASN1_INTEGER_get(v25) != 1)
    {
      v20 = 257;
      goto LABEL_51;
    }

    v26 = 0;
    if (do_sigver_init(a1, &v26, v24, 0, a3, 1) && EVP_PKEY_CTX_ctrl(v26, 6, -1) && EVP_PKEY_CTX_ctrl(v26, 6, 24))
    {
      v16 = EVP_PKEY_CTX_ctrl(v26, 6, 248) != 0;
      goto LABEL_18;
    }
  }

LABEL_17:
  v16 = 0;
LABEL_18:
  in = v8;
  ASN1_item_ex_free(&in, &RSA_PSS_PARAMS_it);
  return v16;
}

uint64_t rsa_pss_cb(int a1, ASN1_VALUE ***a2, const ASN1_ITEM_st *a3, void *a4)
{
  if (a1 == 2)
  {
    pval[1] = v4;
    pval[2] = v5;
    pval[0] = (*a2)[4];
    ASN1_item_ex_free(pval, &X509_ALGOR_it);
  }

  return 1;
}

uint64_t bssl::tls_init_message(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v7 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (v7)
  {
    *v7 = 64;
    *(a2 + 8) = 0;
    *a2 = 0;
    *(a2 + 16) = v7 + 1;
    *(a2 + 24) = xmmword_273B8F050;
    *(a2 + 40) = *(a2 + 40) & 0xFC | 1;
    v13 = 0;
    if (CBB_add_space(a2, &v13, 1))
    {
      *v13 = a4;
      if (CBB_add_u24_length_prefixed(a2, a3))
      {
        return 1;
      }
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  }

  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", 79);
  if (*(a2 + 8))
  {
    return 0;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    return 0;
  }

  v11 = *(v9 - 8);
  v10 = (v9 - 8);
  v12 = v11 + 8;
  if (v11 != -8)
  {
    bzero(v10, v12);
  }

  free(v10);
  return 0;
}

uint64_t bssl::tls_add_message(bssl *this, ssl_st *a2)
{
  v4 = *&a2->version;
  method = a2->method;
  if (*(this + 19) || **(*(this + 6) + 272))
  {
    while (1)
    {
      if (!method)
      {
        goto LABEL_35;
      }

      v6 = *(this + 6);
      v7 = *(v6 + 232);
      if (v7)
      {
        v8 = *v7;
        v9 = *(this + 8);
        v10 = v9 >= v8;
        v11 = v9 - v8;
        if (v11 != 0 && v10)
        {
          goto LABEL_9;
        }

        result = bssl::tls_flush_pending_hs_data(this, a2);
        if (!result)
        {
          return result;
        }

        v6 = *(this + 6);
        v13 = *(v6 + 232);
        if (v13)
        {
          break;
        }
      }

      if (method >= *(this + 8))
      {
        v14 = *(this + 8);
      }

      else
      {
        v14 = method;
      }

      v16 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (v16)
      {
        *v16 = 24;
        v16[1] = 0;
        v16[2] = 0;
        v16[3] = 0;
        v15 = &v4[v14];
        v17 = *(v6 + 232);
        *(v6 + 232) = v16 + 1;
        if (v17)
        {
          goto LABEL_20;
        }
      }

      else
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v15 = &v4[v14];
        v17 = *(v6 + 232);
        *(v6 + 232) = 0;
        if (v17)
        {
LABEL_20:
          v18 = *(v17 + 8);
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

          v23 = *(v17 - 8);
          v22 = (v17 - 8);
          v24 = v23 + 8;
          if (v23 != -8)
          {
            bzero(v22, v24);
          }

          free(v22);
        }
      }

LABEL_27:
      result = *(*(this + 6) + 232);
      if (result)
      {
        method -= v14;
        result = BUF_MEM_append(result, v4, v14);
        v4 = v15;
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    v11 = *(this + 8) - *v13;
LABEL_9:
    if (method >= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = method;
    }

    v15 = &v4[v14];
    goto LABEL_27;
  }

  while (method)
  {
    if (method >= *(this + 8))
    {
      v25 = *(this + 8);
    }

    else
    {
      v25 = method;
    }

    v26 = &v4[v25];
    method -= v25;
    v27 = bssl::add_record_to_flight(this, 0x16, v4, v25);
    v4 = v26;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_35:
  v28 = *(this + 8);
  if (v28)
  {
    v29 = *(this + 6);
    v30 = *(v29 + 280);
    if (v30 && (*(v30 + 1617) & 4) != 0 && (*(this + 164) & 1) == 0)
    {
      LOWORD(v31) = *(*(v30 + 1560) + 4);
    }

    else
    {
      v31 = *(v29 + 208);
      if (!v31)
      {
        if (**this)
        {
          LOWORD(v31) = -259;
        }

        else
        {
          LOWORD(v31) = 771;
        }
      }
    }

    v28(1, v31, 22, *&a2->version, a2->method, this, *(this + 9));
  }

  v32 = *(*(this + 6) + 280);
  if (!v32)
  {
    return 1;
  }

  result = bssl::SSLTranscript::Update(v32 + 408, *&a2->version, a2->method);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t bssl::add_record_to_flight(bssl *a1, unsigned __int8 *a2, char *a3, const unsigned __int8 *a4)
{
  v8 = *(a1 + 6);
  if (*(v8 + 240))
  {
    goto LABEL_14;
  }

  v9 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v9)
  {
    *v9 = 24;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0;
    v10 = *(v8 + 240);
    *(v8 + 240) = v9 + 1;
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v10 = *(v8 + 240);
    *(v8 + 240) = 0;
    if (v10)
    {
LABEL_4:
      v11 = *(v10 + 8);
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
      }

      v16 = *(v10 - 8);
      v15 = (v10 - 8);
      v17 = v16 + 8;
      if (v16 != -8)
      {
        bzero(v15, v17);
      }

      free(v15);
      if (!*(*(a1 + 6) + 240))
      {
        return 0;
      }

      goto LABEL_14;
    }
  }

  if (!*(*(a1 + 6) + 240))
  {
    return 0;
  }

LABEL_14:
  v18 = SSL_max_seal_overhead(a1);
  v20 = &a4[v18];
  v21 = __CFADD__(v18, a4);
  v22 = *(*(a1 + 6) + 240);
  v23 = *v22;
  v24 = v20 + *v22;
  v25 = __CFADD__(*v22, v20);
  if (v21 || v25)
  {
    v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc";
    v27 = 16;
    v28 = 57;
    goto LABEL_26;
  }

  *v32 = 0;
  if (v22[2] >= v24)
  {
    goto LABEL_32;
  }

  if (v24 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/buf/buf.cc";
    v27 = 7;
    v28 = 44;
LABEL_26:
    ERR_put_error(v27, 0, 69, v26, v28);
    return 0;
  }

  if (v24 >= 0xBFFFFFFFFFFFFFFDLL)
  {
    v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/buf/buf.cc";
    v27 = 7;
    v28 = 50;
    goto LABEL_26;
  }

  v30 = &a4[v18];
  v31 = (2 * (((v24 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  result = OPENSSL_realloc(v22[1], v31);
  if (result)
  {
    v22[1] = result;
    v22[2] = v31;
    v22 = *(*(a1 + 6) + 240);
    v23 = *v22;
    v20 = v30;
LABEL_32:
    result = bssl::tls_seal_record(a1, (v22[1] + v23), v32, v20, a2, a3, a4, v19);
    if (result)
    {
      **(*(a1 + 6) + 240) += *v32;
      return 1;
    }
  }

  return result;
}

uint64_t bssl::tls_flush_pending_hs_data(bssl *this, ssl_st *a2)
{
  v2 = *(this + 6);
  v3 = *(v2 + 232);
  if (!v3)
  {
    return 1;
  }

  v4 = *v3;
  if (!*v3)
  {
    return 1;
  }

  *(v2 + 232) = 0;
  v5 = *(this + 19);
  if (!v5)
  {
    v7 = bssl::add_record_to_flight(this, 0x16, *(v3 + 8), v4);
    v8 = *(v3 + 8);
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v6 = *(v2 + 280);
  if (v6 && (*(v6 + 1618) & 0x10) != 0 || (*(v5 + 16))())
  {
    v7 = 1;
    v8 = *(v3 + 8);
    if (!v8)
    {
      goto LABEL_16;
    }

LABEL_13:
    v11 = *(v8 - 8);
    v10 = (v8 - 8);
    v12 = v11 + 8;
    if (v11 != -8)
    {
      bzero(v10, v12);
    }

    free(v10);
    goto LABEL_16;
  }

  ERR_put_error(16, 0, 298, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", 158);
  v7 = 0;
  v8 = *(v3 + 8);
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_16:
  v14 = *(v3 - 8);
  v13 = (v3 - 8);
  v15 = v14 + 8;
  if (v14 != -8)
  {
    bzero(v13, v15);
  }

  free(v13);
  return v7;
}

uint64_t bssl::tls_add_change_cipher_spec(bssl *this, ssl_st *a2)
{
  if (*(this + 19))
  {
    return 1;
  }

  if (!bssl::tls_flush_pending_hs_data(this, a2) || !bssl::add_record_to_flight(this, 0x14, bssl::tls_add_change_cipher_spec(ssl_st *)::kChangeCipherSpec, 1))
  {
    return 0;
  }

  v4 = *(this + 8);
  if (!v4)
  {
    return 1;
  }

  v5 = *(this + 6);
  v6 = *(v5 + 280);
  if (v6 && (*(v6 + 1617) & 4) != 0 && (*(this + 164) & 1) == 0)
  {
    LOWORD(v7) = *(*(v6 + 1560) + 4);
  }

  else
  {
    v7 = *(v5 + 208);
    if (!v7)
    {
      if (**this)
      {
        LOWORD(v7) = -259;
      }

      else
      {
        LOWORD(v7) = 771;
      }
    }
  }

  v4(1, v7, 20, bssl::tls_add_change_cipher_spec(ssl_st *)::kChangeCipherSpec, 1, this, *(this + 9));
  return 1;
}

uint64_t bssl::tls_flush(bssl *this, ssl_st *a2)
{
  if (!bssl::tls_flush_pending_hs_data(this, a2))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 19);
  if (v4)
  {
    if (*(*(this + 6) + 176))
    {
      ERR_put_error(16, 0, 194, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", 191);
      return 0xFFFFFFFFLL;
    }

    if (!(*(v4 + 24))(this))
    {
      ERR_put_error(16, 0, 298, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", 196);
      return 0xFFFFFFFFLL;
    }
  }

  v6 = *(this + 6);
  v7 = *(v6 + 240);
  if (!v7)
  {
    return 1;
  }

  if (*(v6 + 176))
  {
    ERR_put_error(16, 0, 194, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", 206);
    return 0xFFFFFFFFLL;
  }

  if (*v7 >> 31)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", 212);
    return 0xFFFFFFFFLL;
  }

  if (*(v6 + 114))
  {
    result = bssl::ssl_write_buffer_flush(this, v3);
    if (result <= 0)
    {
LABEL_35:
      *(*(this + 6) + 196) = 3;
      return result;
    }
  }

  v8 = *(this + 4);
  if (!v8)
  {
    ERR_put_error(16, 0, 119, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", 227);
    return 0xFFFFFFFFLL;
  }

  v9 = *(this + 6);
  v10 = *(v9 + 248);
  v11 = *(v9 + 240);
  v12 = *v11;
  if (*v11 <= v10)
  {
LABEL_25:
    v16 = BIO_flush(v8);
    v17 = *(this + 6);
    if (v16 <= 0)
    {
      *(v17 + 196) = 3;
      return 0xFFFFFFFFLL;
    }

    v18 = *(v17 + 240);
    *(v17 + 240) = 0;
    if (v18)
    {
      ASN1_STRING_free(v18);
      v17 = *(this + 6);
    }

    *(v17 + 248) = 0;
    return 1;
  }

  while (1)
  {
    v13 = *(this + 4);
    if (!v13 || !*v13 || (v14 = *(*v13 + 16)) == 0)
    {
      v19 = 115;
      v20 = 121;
LABEL_34:
      ERR_put_error(17, 0, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v20);
      result = 4294967294;
      goto LABEL_35;
    }

    if (!*(v13 + 16))
    {
      v19 = 114;
      v20 = 125;
      goto LABEL_34;
    }

    if (v12 - v10 < 1)
    {
      break;
    }

    result = v14(*(this + 4), v11[1] + v10);
    if (result <= 0)
    {
      goto LABEL_35;
    }

    *(v13 + 64) += result;
    v15 = *(this + 6);
    v10 = (*(v15 + 248) + result);
    *(v15 + 248) = v10;
    v11 = *(v15 + 240);
    v12 = *v11;
    if (*v11 <= v10)
    {
      v8 = *(this + 4);
      goto LABEL_25;
    }
  }

  result = 0;
  *(*(this + 6) + 196) = 3;
  return result;
}

uint64_t bssl::tls_get_message(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 224);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = v2[1];
  *(a2 + 1) = *v4;
  v5 = v3 - 4;
  if (v3 < 4)
  {
    return 0;
  }

  v6 = (v4[1] << 16) | (v4[2] << 8) | v4[3];
  if (v5 < v6)
  {
    return 0;
  }

  *(a2 + 8) = v4 + 4;
  *(a2 + 16) = v6;
  v8 = *(a1 + 48);
  *(a2 + 24) = *(*(v8 + 224) + 8);
  *(a2 + 32) = (v6 + 4);
  v9 = *(v8 + 220);
  *a2 = (v9 & 4) != 0;
  v10 = *(v8 + 220);
  if ((v10 & 8) != 0)
  {
    return 1;
  }

  if ((v9 & 4) == 0)
  {
    v11 = *(a1 + 64);
    if (v11)
    {
      v12 = *(v8 + 280);
      if (v12 && (*(v12 + 1617) & 4) != 0 && (*(a1 + 164) & 1) == 0)
      {
        LOWORD(v13) = *(*(v12 + 1560) + 4);
      }

      else
      {
        v13 = *(v8 + 208);
        if (!v13)
        {
          if (**a1)
          {
            LOWORD(v13) = -259;
          }

          else
          {
            LOWORD(v13) = 771;
          }
        }
      }

      v11(0, v13, 22);
      v8 = *(a1 + 48);
      v10 = *(v8 + 220);
    }
  }

  *(v8 + 220) = v10 | 8;
  return 1;
}

uint64_t bssl::tls_can_accept_handshake_data(bssl *this, const ssl_st *a2, unsigned __int8 *a3)
{
  v4 = *(this + 6);
  v5 = *(v4 + 224);
  if (!v5 || (v6 = *v5 - 4, *v5 < 4uLL))
  {
    v7 = 4;
    v8 = *(v4 + 280);
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_4:
    if ((*(v8 + 1616) & 8) == 0)
    {
      if ((*(this + 164) & 1) != 0 && (*(*(this + 1) + 268) & 1) == 0)
      {
        if (v7 <= 0x4004)
        {
          return 1;
        }

        goto LABEL_23;
      }

      goto LABEL_19;
    }

LABEL_11:
    v10 = *(v4 + 208);
    if (v10 - 769 >= 4)
    {
      if (v10 != 65276)
      {
LABEL_13:
        if (v7 <= 4)
        {
          return 1;
        }

        goto LABEL_23;
      }
    }

    else if (v10 < 0x304)
    {
      goto LABEL_13;
    }

    if ((*(this + 164) & 1) == 0)
    {
LABEL_19:
      LODWORD(v12) = *(this + 34);
      if (v12 <= 0x4000)
      {
        v12 = 0x4000;
      }

      else
      {
        v12 = v12;
      }

      if (v7 <= v12 + 4)
      {
        return 1;
      }

      goto LABEL_23;
    }

    if (v7 <= 5)
    {
      return 1;
    }

LABEL_23:
    ERR_put_error(16, 0, 150, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", 430);
    result = 0;
    LOBYTE(a2->version) = 47;
    return result;
  }

  v9 = (*(v5[1] + 1) << 16) | (*(v5[1] + 2) << 8) | *(v5[1] + 3);
  if (v6 < v9)
  {
    v7 = (v9 + 4);
    v8 = *(v4 + 280);
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", 423);
  result = 0;
  LOBYTE(a2->version) = 80;
  return result;
}

BOOL bssl::tls_has_unprocessed_handshake_data(bssl *this, const ssl_st *a2)
{
  v2 = *(this + 6);
  v3 = *(v2 + 220);
  v4 = *(v2 + 224);
  if ((v3 & 8) == 0)
  {
    if (v4)
    {
      return *v4 != 0;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*v4 < 4uLL)
  {
    return *v4 != 0;
  }

  v6 = (*(v4[1] + 1) << 16) | (*(v4[1] + 2) << 8) | *(v4[1] + 3);
  if (*v4 - 4 >= v6)
  {
    return *v4 > (v6 + 4);
  }

  else
  {
    return *v4 != 0;
  }
}

unint64_t *bssl::tls_append_handshake_data(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *(a1 + 48);
  if (*(v6 + 224))
  {
    goto LABEL_13;
  }

  v7 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v7)
  {
    *v7 = 24;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0;
    v8 = *(v6 + 224);
    *(v6 + 224) = v7 + 1;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v8 = *(v6 + 224);
    *(v6 + 224) = 0;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

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
LABEL_13:
  result = *(*(a1 + 48) + 224);
  if (result)
  {
    return (BUF_MEM_append(result, a2, a3) != 0);
  }

  return result;
}

uint64_t bssl::tls_open_handshake(uint64_t result, uint64_t *a2, ssl_st *a3, unsigned __int8 *a4, unint64_t a5)
{
  v6 = result;
  *a2 = 0;
  if ((*(result + 164) & 1) == 0 || (v7 = *(result + 48), v8 = *(v7 + 220), (v8 & 2) != 0))
  {
LABEL_31:
    v30 = 0;
    v28 = 0;
    v29 = 0;
    result = bssl::tls_open_record(result, &v30, &v28, a2, a3, a4, a5);
    if (result)
    {
      return result;
    }

    if (v30 != 22)
    {
      ERR_put_error(16, 0, 225, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", 514);
      v19 = 10;
LABEL_50:
      LOBYTE(a3->version) = v19;
      return 4;
    }

    v14 = v28;
    v15 = v29;
    v16 = *(v6 + 48);
    if (!*(v16 + 224))
    {
      v17 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (v17)
      {
        *v17 = 24;
        v17[1] = 0;
        v17[2] = 0;
        v17[3] = 0;
        v18 = *(v16 + 224);
        *(v16 + 224) = v17 + 1;
        if (!v18)
        {
          goto LABEL_46;
        }
      }

      else
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v18 = *(v16 + 224);
        *(v16 + 224) = 0;
        if (!v18)
        {
          goto LABEL_46;
        }
      }

      v20 = *(v18 + 8);
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

      v25 = *(v18 - 8);
      v24 = (v18 - 8);
      v26 = v25 + 8;
      if (v25 != -8)
      {
        bzero(v24, v26);
      }

      free(v24);
    }

LABEL_46:
    v27 = *(*(v6 + 48) + 224);
    if (v27 && BUF_MEM_append(v27, v14, v15))
    {
      return 0;
    }

    v19 = 80;
    goto LABEL_50;
  }

  if (a5 <= 4)
  {
    *a2 = 5;
    return 2;
  }

  if ((a5 & 0x8000000000000000) != 0 || !a4)
  {
    __break(1u);
    return result;
  }

  if (*a4 == 542393671 || (*a4 == 1414745936 ? (v9 = a4[4] == 32) : (v9 = 0), v9 || (*a4 == 1145128264 ? (v10 = a4[4] == 32) : (v10 = 0), v10 || *a4 == 542397776)))
  {
    v12 = 156;
    v13 = 481;
LABEL_29:
    ERR_put_error(16, 0, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", v13);
    LOBYTE(a3->version) = 0;
    return 4;
  }

  if (*a4 == 1313754947 && a4[4] == 69)
  {
    v12 = 155;
    v13 = 486;
    goto LABEL_29;
  }

  if ((*a4 & 0x80000000) == 0 || a4[2] != 1 || a4[3] != 3)
  {
    *(v7 + 220) = v8 | 2;
    goto LABEL_31;
  }

  result = bssl::read_v2_client_hello(result, a2, a4, a5);
  if (result)
  {
    if (result == 4)
    {
      LOBYTE(a3->version) = 0;
    }
  }

  else
  {
    *(*(v6 + 48) + 220) |= 2u;
  }

  return result;
}

uint64_t bssl::read_v2_client_hello(void *a1, size_t *a2, uint64_t a3, unint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (a4 < 2)
  {
    abort();
  }

  v4 = *(a3 + 1) | ((*a3 & 0x7F) << 8);
  if (v4 <= 0x1000)
  {
    if (v4 <= 2)
    {
      v5 = 199;
      v6 = 269;
      goto LABEL_6;
    }

    v8 = v4 + 2;
    if (a4 < v4 + 2)
    {
      *a2 = v8;
      return 2;
    }

    if (!bssl::SSLTranscript::Update(*(a1[6] + 280) + 408, a3 + 2, v4))
    {
      return 4;
    }

    v12 = a1;
    v13 = a1[8];
    if (v13)
    {
      v13(0, 2, 0, a3 + 2, v4, a1, a1[9]);
      v12 = a1;
    }

    if (v4 - 3 < 2 || v4 - 5 < 2 || v4 - 7 < 2 || (v14 = __rev16(*(a3 + 5)), v15 = v4 - 9 - v14, v4 - 9 < v14) || (v16 = __rev16(*(a3 + 7)), v17 = v15 - v16, v15 < v16) || (v18 = __rev16(*(a3 + 9)), v17 != v18))
    {
      v5 = 137;
      v6 = 302;
      goto LABEL_6;
    }

    v19 = *(a3 + 3);
    v20 = 0uLL;
    v41 = 0u;
    v42 = 0u;
    if (v18)
    {
      if (v18 >= 0x20)
      {
        v21 = 32;
      }

      else
      {
        v21 = v18;
      }

      memcpy(&v41 - v21 + 32, (a3 + 11 + v14 + v16), v21);
      v20 = 0uLL;
      v12 = a1;
    }

    v38 = v20;
    v39 = v20;
    v37 = v20;
    v22 = v12[6];
    if (!*(v22 + 224))
    {
      v23 = BUF_MEM_new();
      v12 = a1;
      v24 = *(v22 + 224);
      *(v22 + 224) = v23;
      if (v24)
      {
        ASN1_STRING_free(v24);
        v12 = a1;
      }
    }

    v25 = *(v12[6] + 224);
    if (v25)
    {
      if (BUF_MEM_reserve(v25, ((((43691 * v14) >> 16) & 0xFFFE) + 43)))
      {
        v26 = *(a1[6] + 224);
        v28 = *(v26 + 8);
        v27 = *(v26 + 16);
        v37 = 0u;
        v38 = v28;
        v39 = v27;
        v36[0] = 0;
        if (CBB_add_space(&v37, v36, 1))
        {
          *v36[0] = 1;
          if (CBB_add_u24_length_prefixed(&v37, v36))
          {
            if (CBB_add_u16(v36, bswap32(v19) >> 16))
            {
              v35[0] = 0;
              if (CBB_add_space(v36, v35, 32))
              {
                v29 = v35[0];
                v30 = v42;
                *v35[0] = v41;
                *(v29 + 16) = v30;
                v35[0] = 0;
                if (CBB_add_space(v36, v35, 1))
                {
                  *v35[0] = 0;
                  if (CBB_add_u16_length_prefixed(v36, v35))
                  {
                    if (v14)
                    {
                      v31 = a3 + 13;
                      while (v14 > 2)
                      {
                        if (!*(v31 - 2) && !CBB_add_u16(v35, bswap32(*(v31 - 1)) >> 16))
                        {
                          v32 = 68;
                          v33 = 358;
                          goto LABEL_50;
                        }

                        v31 += 3;
                        v14 -= 3;
                        if (!v14)
                        {
                          goto LABEL_44;
                        }
                      }

                      v32 = 137;
                      v33 = 349;
                    }

                    else
                    {
LABEL_44:
                      v40 = 0;
                      if (CBB_add_space(v36, &v40, 1))
                      {
                        *v40 = 1;
                        v40 = 0;
                        if (CBB_add_space(v36, &v40, 1))
                        {
                          *v40 = 0;
                          if (CBB_finish(&v37, 0, *(a1[6] + 224)))
                          {
                            v34 = 0;
                            *a2 = v8;
                            *(a1[6] + 220) |= 4u;
LABEL_52:
                            CBB_cleanup(&v37);
                            return v34;
                          }
                        }
                      }

                      v32 = 68;
                      v33 = 367;
                    }

LABEL_50:
                    ERR_put_error(16, 0, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", v33);
                  }
                }
              }
            }
          }
        }
      }
    }

    v34 = 4;
    goto LABEL_52;
  }

  v5 = 200;
  v6 = 262;
LABEL_6:
  ERR_put_error(16, 0, v5, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_both.cc", v6);
  return 4;
}

void bssl::tls_next_message(bssl *this, ssl_st *a2)
{
  if (bssl::tls_get_message(this, v17))
  {
    v3 = *(this + 6);
    v4 = *(v3 + 224);
    if (v4)
    {
      v5 = *v4;
      v6 = v18;
      if (*v4 >= v18)
      {
        if (*v4 == v18)
        {
          v6 = *v4;
        }

        else
        {
          memmove(v4[1], (v4[1] + v18), *v4 - v18);
          v3 = *(this + 6);
          v4 = *(v3 + 224);
          v5 = *v4;
        }

        *v4 = v5 - v6;
        *(v3 + 220) &= ~4u;
        *(*(this + 6) + 220) &= ~8u;
        v7 = *(this + 6);
        v8 = *(v7 + 280);
        if (!v8 || (*(v8 + 1616) & 8) != 0)
        {
          v9 = *(v7 + 224);
          if (!*v9)
          {
            *(v7 + 224) = 0;
            v10 = v9[1];
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

            v15 = *(v9 - 1);
            v14 = v9 - 1;
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
  }
}

_DWORD *bssl::ssl_choose_tls13_cipher(unsigned __int16 *a1, unint64_t a2, char a3, unsigned int a4, int a5)
{
  v5 = a2;
  if ((a2 & 1) == 0)
  {
    v22 = &unk_2882A5DD8;
    v23 = a3;
    v21 = &unk_2882A5E00;
    v7 = a5 == 3 ? &v21 : &v22;
    if (a2)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v14 = v5 >= 2;
        v5 -= 2;
        if (!v14)
        {
          return 0;
        }

        cipher_by_value = SSL_get_cipher_by_value(bswap32(*a1) >> 16);
        if (cipher_by_value)
        {
          if (cipher_by_value[5] == 8)
          {
            if (a4 != 772)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v16 = cipher_by_value[6];
            if (v16 == 16)
            {
              if (a4 < 0x304)
              {
                goto LABEL_9;
              }
            }

            else
            {
              if (cipher_by_value[9] == 1)
              {
                v17 = 768;
              }

              else
              {
                v17 = 771;
              }

              if (v17 > a4)
              {
                goto LABEL_9;
              }
            }

            if (v16 == 16)
            {
              v18 = 772;
            }

            else
            {
              v18 = 771;
            }

            if (a4 > v18)
            {
              goto LABEL_9;
            }
          }

          v19 = *(cipher_by_value + 8);
          if (a5 > 1)
          {
            if (a5 == 2)
            {
              if (v19 == 4866)
              {
                goto LABEL_7;
              }
            }

            else if (a5 == 3)
            {
              goto LABEL_7;
            }
          }

          else if (!a5 || a5 == 1 && (v19 - 4865) < 2)
          {
LABEL_7:
            v12 = cipher_by_value;
            v13 = (*(*v7 + 2))(v7, cipher_by_value);
            if (v13 > v11)
            {
              v11 = v13;
              v10 = v12;
            }
          }
        }

LABEL_9:
        ++a1;
        if (!v5)
        {
          return v10;
        }
      }
    }
  }

  return 0;
}

uint64_t bssl::anonymous namespace::AesHwCipherScorer::Evaluate(bssl::_anonymous_namespace_::AesHwCipherScorer *this, const ssl_cipher_st *a2)
{
  if (*(this + 8))
  {
    return 2;
  }

  if (HIDWORD(a2->algorithms) == 32)
  {
    return 2;
  }

  return 1;
}

uint64_t bssl::anonymous namespace::CNsaCipherScorer::Evaluate(bssl::_anonymous_namespace_::CNsaCipherScorer *this, const ssl_cipher_st *a2)
{
  id = a2->id;
  if (id == 50336513)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (id == 50336514)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void bssl::SSL3_STATE::~SSL3_STATE(bssl::SSL3_STATE *this)
{
  v2 = *(this + 72);
  v3 = *(this + 73);
  if (v3 && v3 - 1 >= -v2)
  {
    goto LABEL_98;
  }

  v4 = (this + 576);
  if (v2)
  {
    v6 = *(v2 - 8);
    v5 = (v2 - 8);
    v7 = v6 + 8;
    if (v6 != -8)
    {
      bzero(v5, v7);
    }

    free(v5);
  }

  *v4 = 0;
  *(this + 73) = 0;
  v8 = *(this + 63);
  *(this + 63) = 0;
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

  v13 = *(this + 61);
  v12 = *(this + 62);
  if (v12)
  {
    if (v12 - 1 >= -v13)
    {
      goto LABEL_98;
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

  *(this + 61) = 0;
  *(this + 62) = 0;
  v18 = *(this + 59);
  v17 = *(this + 60);
  if (v17)
  {
    if (v17 - 1 >= -v18)
    {
      goto LABEL_98;
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

  *(this + 59) = 0;
  *(this + 60) = 0;
  v22 = *(this + 58);
  *(this + 58) = 0;
  if (!v22)
  {
    goto LABEL_30;
  }

  v23 = atomic_load(v22);
  if (v23 == -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    if (!v23)
    {
      goto LABEL_99;
    }

    v24 = v23;
    atomic_compare_exchange_strong(&v22->ssl_version, &v24, v23 - 1);
    if (v24 == v23)
    {
      break;
    }

    v23 = v24;
    if (v24 == -1)
    {
      goto LABEL_30;
    }
  }

  if (v23 == 1)
  {
    ssl_session_st::~ssl_session_st(v22);
    tlsext_tick_lifetime_hint = v22[-1].tlsext_tick_lifetime_hint;
    p_tlsext_tick_lifetime_hint = &v22[-1].tlsext_tick_lifetime_hint;
    v72 = tlsext_tick_lifetime_hint + 8;
    if (tlsext_tick_lifetime_hint != -8)
    {
      bzero(p_tlsext_tick_lifetime_hint, v72);
    }

    free(p_tlsext_tick_lifetime_hint);
    v25 = *(this + 460);
    if (!*(this + 460))
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_30:
    v25 = *(this + 460);
    if (!*(this + 460))
    {
      goto LABEL_32;
    }
  }

  if (this + 447 >= -v25)
  {
    goto LABEL_98;
  }

LABEL_32:
  *(this + 460) = 0;
  if (*(this + 447) && this + 434 >= -*(this + 447))
  {
    goto LABEL_98;
  }

  *(this + 447) = 0;
  if (*(this + 434))
  {
    if (this + 385 >= -*(this + 434))
    {
      goto LABEL_98;
    }
  }

  *(this + 434) = 0;
  if (*(this + 385))
  {
    if (this + 336 >= -*(this + 385))
    {
      goto LABEL_98;
    }
  }

  *(this + 385) = 0;
  if (*(this + 336))
  {
    if (this + 287 >= -*(this + 336))
    {
      goto LABEL_98;
    }
  }

  *(this + 336) = 0;
  v26 = *(this + 35);
  *(this + 35) = 0;
  if (v26)
  {
    bssl::SSL_HANDSHAKE::~SSL_HANDSHAKE(v26);
    v28 = *(v26 - 1);
    v27 = v26 - 8;
    v29 = v28 + 8;
    if (v28 != -8)
    {
      bzero(v27, v29);
    }

    free(v27);
  }

  v30 = *(this + 34);
  *(this + 34) = 0;
  if (v30)
  {
    if (*(v30 + 596) && v30 + 583 >= -*(v30 + 596))
    {
      goto LABEL_98;
    }

    v31 = *(v30 + 8);
    *(v30 + 596) = 0;
    if (v31)
    {
      (*(v31 + 24))(v30 + 8);
      *(v30 + 8) = 0;
    }

    v33 = *(v30 - 8);
    v32 = (v30 - 8);
    v34 = v33 + 8;
    if (v33 != -8)
    {
      bzero(v32, v34);
    }

    free(v32);
  }

  v35 = *(this + 33);
  *(this + 33) = 0;
  if (!v35)
  {
    goto LABEL_60;
  }

  if (*(v35 + 596) && v35 + 583 >= -*(v35 + 596))
  {
LABEL_98:
    __break(1u);
LABEL_99:
    abort();
  }

  v36 = *(v35 + 8);
  *(v35 + 596) = 0;
  if (v36)
  {
    (*(v36 + 24))(v35 + 8);
    *(v35 + 8) = 0;
  }

  v38 = *(v35 - 8);
  v37 = (v35 - 8);
  v39 = v38 + 8;
  if (v38 != -8)
  {
    bzero(v37, v39);
  }

  free(v37);
LABEL_60:
  v40 = *(this + 30);
  *(this + 30) = 0;
  if (v40)
  {
    v41 = *(v40 + 8);
    if (v41)
    {
      v43 = *(v41 - 8);
      v42 = (v41 - 8);
      v44 = v43 + 8;
      if (v43 != -8)
      {
        bzero(v42, v44);
      }

      free(v42);
    }

    v46 = *(v40 - 8);
    v45 = (v40 - 8);
    v47 = v46 + 8;
    if (v46 != -8)
    {
      bzero(v45, v47);
    }

    free(v45);
  }

  v48 = *(this + 29);
  *(this + 29) = 0;
  if (v48)
  {
    v49 = *(v48 + 8);
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

    v54 = *(v48 - 8);
    v53 = (v48 - 8);
    v55 = v54 + 8;
    if (v54 != -8)
    {
      bzero(v53, v55);
    }

    free(v53);
  }

  v56 = *(this + 28);
  *(this + 28) = 0;
  if (v56)
  {
    v57 = *(v56 + 8);
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

    v62 = *(v56 - 8);
    v61 = (v56 - 8);
    v63 = v62 + 8;
    if (v62 != -8)
    {
      bzero(v61, v63);
    }

    free(v61);
  }

  v64 = *(this + 23);
  *(this + 23) = 0;
  if (v64)
  {
    if (*(v64 + 8))
    {
      v65 = 0;
      v66 = 0;
      do
      {
        v67 = *v64 + v65;
        free(*(v67 + 8));
        *v67 = 0;
        *(v67 + 8) = 0;
        *(v67 + 16) = 0;
        ++v66;
        v65 += 24;
      }

      while (v66 < *(v64 + 8));
    }

    free(*v64);
    free(v64);
  }

  v68 = *(this + 13);
  if (v68 != this + 118)
  {
    free(v68);
  }

  *(this + 110) = 0;
  *(this + 13) = 0;
  v69 = *(this + 10);
  if (v69 != this + 94)
  {
    free(v69);
  }

  *(this + 86) = 0;
  *(this + 10) = 0;
}

void bssl::tls_new(char **this, ssl_st *a2)
{
  v3 = malloc_type_malloc(0x260uLL, 0xB4E622C9uLL);
  if (!v3)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return;
  }

  v4 = v3;
  *v3 = 600;
  *(v3 + 8) = 0u;
  v5 = (v3 + 8);
  *(v3 + 14) = 0;
  *(v3 + 118) = 0;
  *(v3 + 45) = 0;
  *(v3 + 46) = 0;
  *(v3 + 56) = 0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 86) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 161) = 0u;
  *(v3 + 25) = 0;
  *(v3 + 26) = 0;
  *(v3 + 24) = 0;
  *(v3 + 215) = 0;
  *(v3 + 114) &= 0xC000u;
  v3[344] = 0;
  v3[393] = 0;
  v3[442] = 0;
  v3[455] = 0;
  *(v3 + 234) = 0;
  v3[470] = 0;
  *(v3 + 232) = 0u;
  *(v3 + 248) = 0u;
  *(v3 + 66) = 0;
  *(v3 + 35) = 0;
  *(v3 + 36) = 0;
  *(v3 + 34) = 0;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 75) = 0;
  if (**this)
  {
    goto LABEL_3;
  }

  v11 = malloc_type_malloc(0x260uLL, 0xB4E622C9uLL);
  if (v11)
  {
    *v11 = 600;
    v12 = (v11 + 4);
    v11[302] = 0;
    v13 = v11;
    bzero(v11 + 4, 0x248uLL);
    *(v13 + 606) &= 0xE0u;
    v14 = v4[34];
    v4[34] = v12;
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_17:
    if (*(v14 + 596) && v14 + 583 >= -*(v14 + 596))
    {
      goto LABEL_34;
    }

    v19 = *(v14 + 8);
    *(v14 + 596) = 0;
    if (v19)
    {
      (*(v19 + 24))(v14 + 8);
      *(v14 + 8) = 0;
    }

    v21 = *(v14 - 8);
    v20 = (v14 - 8);
    v22 = v21 + 8;
    if (v21 != -8)
    {
      bzero(v20, v22);
    }

    free(v20);
    v15 = malloc_type_malloc(0x260uLL, 0xB4E622C9uLL);
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_24:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v18 = v4[35];
    v4[35] = 0;
    if (!v18)
    {
LABEL_14:
      if (!v4[34])
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    goto LABEL_25;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v14 = v4[34];
  v4[34] = 0;
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_12:
  v15 = malloc_type_malloc(0x260uLL, 0xB4E622C9uLL);
  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_13:
  *v15 = 600;
  v16 = (v15 + 4);
  v15[302] = 0;
  v17 = v15;
  bzero(v15 + 4, 0x248uLL);
  *(v17 + 606) &= 0xE0u;
  v18 = v4[35];
  v4[35] = v16;
  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_25:
  if (!*(v18 + 596) || v18 + 583 < -*(v18 + 596))
  {
    v23 = *(v18 + 8);
    *(v18 + 596) = 0;
    if (v23)
    {
      (*(v23 + 24))(v18 + 8);
      *(v18 + 8) = 0;
    }

    v25 = *(v18 - 8);
    v24 = (v18 - 8);
    v26 = v25 + 8;
    if (v25 != -8)
    {
      bzero(v24, v26);
    }

    free(v24);
    if (!v4[34])
    {
      goto LABEL_33;
    }

LABEL_32:
    if (v4[35])
    {
LABEL_3:
      bssl::ssl_handshake_new(this, &v27);
      v6 = v27;
      v7 = v4[36];
      v4[36] = v27;
      if (v7)
      {
        bssl::SSL_HANDSHAKE::~SSL_HANDSHAKE(v7);
        v9 = *(v7 - 1);
        v8 = v7 - 8;
        v10 = v9 + 8;
        if (v9 != -8)
        {
          bzero(v8, v10);
        }

        free(v8);
        v6 = v4[36];
      }

      if (v6)
      {
        this[6] = v5;
        return;
      }
    }

LABEL_33:
    bssl::SSL3_STATE::~SSL3_STATE(v5);
    free(v4);
    return;
  }

LABEL_34:
  __break(1u);
}

void bssl::tls_free(bssl *this, ssl_st *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    bssl::SSL3_STATE::~SSL3_STATE(*(this + 6));
    v5 = *(v2 - 8);
    v4 = (v2 - 8);
    v6 = v5 + 8;
    if (v5 != -8)
    {
      bzero(v4, v6);
    }

    free(v4);
    *(this + 6) = 0;
  }
}

uint64_t bssl::tls_write_app_data(bssl *this, _BYTE *a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  *a2 = 0;
  v5 = *(this + 6);
  if (*(v5 + 176))
  {
    v6 = 194;
    v7 = 46;
  }

  else
  {
    v8 = *(v5 + 144);
    v9 = a5 - v8;
    if (a5 >= v8)
    {
      v13 = (a4 + v8);
      if ((*(this + 164) & 1) != 0 || (v14 = *(v5 + 280)) == 0 || (v15 = *(v14 + 1616), (v15 & 0x400) == 0))
      {
        v16 = this + 132;
        goto LABEL_12;
      }

      v16 = this + 132;
      if ((v15 & 0x2000) != 0)
      {
        v19 = *(v14 + 1624);
        v20 = *(*(v14 + 1560) + 356);
        if (v20 <= v19)
        {
LABEL_36:
          *(v5 + 144) = v8;
          *(v14 + 1616) &= ~0x2000u;
          *a2 = 1;
          return 0xFFFFFFFFLL;
        }

        while (1)
        {
          v21 = a2;
          v22 = *(this + 8);
          if (v20 - v19 < v22)
          {
            v22 = v20 - v19;
          }

          v23 = (v9 >= v22 ? v22 : v9);
          v26 = 0;
          result = bssl::do_tls_write(this, &v26, 0x17, v13, v23);
          if (result < 1)
          {
            break;
          }

          v24 = v26;
          v18 = v9 >= v26;
          v9 -= v26;
          if (!v18)
          {
            goto LABEL_38;
          }

          v8 += v26;
          v5 = *(this + 6);
          v14 = *(v5 + 280);
          v25 = *(v14 + 1624) + v26;
          *(v14 + 1624) = v25;
          if (!v9 || (*v16 & 1) != 0)
          {
            goto LABEL_22;
          }

          a2 = v21;
          v13 += v24;
          v19 = v25;
          v20 = *(*(v14 + 1560) + 356);
          if (v20 <= v19)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
LABEL_12:
        while (1)
        {
          v17 = v9 >= *(this + 8) ? *(this + 8) : v9;
          v26 = 0;
          result = bssl::do_tls_write(this, &v26, 0x17, v13, v17);
          if (result < 1)
          {
            break;
          }

          v18 = v9 >= v26;
          v9 -= v26;
          if (!v18)
          {
LABEL_38:
            abort();
          }

          v8 += v26;
          if (!v9 || (*v16 & 1) != 0)
          {
            v5 = *(this + 6);
LABEL_22:
            *(v5 + 144) = 0;
            *a3 = v8;
            return 1;
          }

          v13 += v26;
        }
      }

      *(*(this + 6) + 144) = v8;
      return result;
    }

    v6 = 111;
    v7 = 58;
  }

  ERR_put_error(16, 0, v6, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_pkt.cc", v7);
  return 0xFFFFFFFFLL;
}

uint64_t bssl::do_tls_write(bssl *this, ssl_st *a2, unsigned __int8 *a3, char *a4, const unsigned __int8 *a5)
{
  v6 = *(this + 6);
  v7 = *(v6 + 160);
  if (v7 && (v7 > a5 || (*(this + 132) & 2) == 0 && *(v6 + 152) != a4 || *(v6 + 168) != a3))
  {
    v16 = 118;
    v17 = 138;
LABEL_10:
    ERR_put_error(16, 0, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_pkt.cc", v17);
    return 0xFFFFFFFFLL;
  }

  result = bssl::ssl_write_buffer_flush(this, a2);
  if (result < 1)
  {
    return result;
  }

  v14 = *(this + 6);
  v15 = *(v14 + 160);
  if (v15)
  {
    *&a2->version = v15;
    result = 1;
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
    return result;
  }

  if (a5 > 0x4000 || *(v14 + 114))
  {
    v16 = 68;
    v17 = 158;
    goto LABEL_10;
  }

  if (!bssl::tls_flush_pending_hs_data(this, v13))
  {
    return 0xFFFFFFFFLL;
  }

  v19 = *(this + 6);
  v20 = *(v19 + 240);
  if (v20)
  {
    v21 = *(v19 + 248);
    v22 = *v20 - v21;
    if (*v20 < v21)
    {
      goto LABEL_48;
    }

    v23 = a5;
    v24 = a2;
    v25 = (v20[1] + v21);
  }

  else
  {
    v22 = 0;
    v25 = 0;
    v23 = a5;
    v24 = a2;
  }

  v26 = v22;
  if (v23)
  {
    v27 = SSL_max_seal_overhead(this);
    v28 = &a5[v27];
    v29 = __CFADD__(v27, a5);
    v26 = &v28[v22];
    v30 = __CFADD__(v28, v22);
    if (v29 || (v24 = a2, v30))
    {
      v16 = 69;
      v17 = 182;
      goto LABEL_10;
    }
  }

  if (!v26)
  {
    *&v24->version = 0;
    return 1;
  }

  v31 = bssl::tls_seal_align_prefix_len(this, v18);
  if (!bssl::SSLBuffer::EnsureCap((v14 + 104), v31 + v22, v26))
  {
    return 0xFFFFFFFFLL;
  }

  if (v22)
  {
    memcpy((*(v14 + 104) + *(v14 + 112) + *(v14 + 114)), v25, v22);
    v34 = *(this + 6);
    v35 = *(v34 + 240);
    *(v34 + 240) = 0;
    if (v35)
    {
      ASN1_STRING_free(v35);
      v34 = *(this + 6);
    }

    *(v34 + 248) = 0;
    v36 = *(v14 + 114);
    if (*(v14 + 116) - v36 < v22)
    {
      goto LABEL_48;
    }

    *(v14 + 114) = v36 + v22;
  }

  if (!a5)
  {
    goto LABEL_41;
  }

  *v39 = 0;
  if (!bssl::tls_seal_record(this, (*(v14 + 104) + *(v14 + 112) + *(v14 + 114)), v39, (*(v14 + 116) - *(v14 + 114)), a3, a4, a5, v33))
  {
    return 0xFFFFFFFFLL;
  }

  v37 = *(v14 + 114);
  if (*(v14 + 116) - v37 < *v39)
  {
LABEL_48:
    abort();
  }

  *(v14 + 114) = v37 + *v39;
LABEL_41:
  *(*(this + 6) + 220) &= ~0x100u;
  result = bssl::ssl_write_buffer_flush(this, v32);
  if (result > 0)
  {
    *&a2->version = a5;
    return 1;
  }

  if (a5)
  {
    v38 = *(this + 6);
    *(v38 + 152) = a4;
    *(v38 + 160) = a5;
    *(*(this + 6) + 168) = a3;
  }

  return result;
}

uint64_t bssl::tls_open_app_data(uint64_t a1, _OWORD *a2, uint64_t *a3, ssl_st *a4, unsigned __int8 *a5, unint64_t a6)
{
  v20 = 0;
  v19 = 0uLL;
  result = bssl::tls_open_record(a1, &v20, &v19, a3, a4, a5, a6);
  if (!result)
  {
    if (*(a1 + 164))
    {
      v10 = *(*(a1 + 48) + 280);
      if (v10)
      {
        LODWORD(v10) = (*(v10 + 1617) >> 2) & 1;
      }

      v11 = v20;
      if (v20 != 23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v11 = v20;
      if (v20 != 23)
      {
LABEL_6:
        if (v11 == 22)
        {
          if (*(a1 + 164))
          {
            v12 = *(*(a1 + 48) + 208);
            if (v12 - 769 >= 4)
            {
              if (v12 != 65276)
              {
                goto LABEL_10;
              }
            }

            else if (v12 <= 0x303)
            {
LABEL_10:
              ERR_put_error(16, 0, 182, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_pkt.cc", 256);
              v13 = 100;
LABEL_24:
              LOBYTE(a4->version) = v13;
              return 4;
            }
          }

          if ((bssl::tls_append_handshake_data(a1, v19, *(&v19 + 1)) & 1) == 0)
          {
            v13 = 80;
            goto LABEL_24;
          }

          return 1;
        }

        v17 = 225;
        v18 = 269;
LABEL_16:
        ERR_put_error(16, 0, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_pkt.cc", v18);
        v13 = 10;
        goto LABEL_24;
      }
    }

    v14 = *(&v19 + 1);
    if (v10)
    {
      v15 = *(*(a1 + 48) + 280);
      v16 = *(v15 + 1622);
      if (*(&v19 + 1) > (14336 - v16))
      {
        v17 = 300;
        v18 = 276;
        goto LABEL_16;
      }

      *(v15 + 1622) = v16 + WORD4(v19);
    }

    if (v14)
    {
      result = 0;
      *a2 = v19;
      return result;
    }

    return 1;
  }

  return result;
}

uint64_t bssl::tls_open_change_cipher_spec(uint64_t a1, uint64_t *a2, ssl_st *a3, unsigned __int8 *a4, unint64_t a5)
{
  v14 = 0;
  v12 = 0;
  v13 = 0;
  result = bssl::tls_open_record(a1, &v14, &v12, a2, a3, a4, a5);
  if (!result)
  {
    if (v14 == 20)
    {
      if (v13 == 1 && *v12 == 1)
      {
        v8 = *(a1 + 64);
        if (v8)
        {
          v9 = *(a1 + 48);
          v10 = *(v9 + 280);
          if (v10 && (*(v10 + 1617) & 4) != 0 && (*(a1 + 164) & 1) == 0)
          {
            LOWORD(v11) = *(*(v10 + 1560) + 4);
          }

          else
          {
            v11 = *(v9 + 208);
            if (!v11)
            {
              if (**a1)
              {
                LOWORD(v11) = -259;
              }

              else
              {
                LOWORD(v11) = 771;
              }
            }
          }

          v8(0, v11, 20);
        }

        return 0;
      }

      else
      {
        ERR_put_error(16, 0, 103, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_pkt.cc", 309);
        LOBYTE(a3->version) = 47;
        return 4;
      }
    }

    else
    {
      ERR_put_error(16, 0, 225, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_pkt.cc", 303);
      LOBYTE(a3->version) = 10;
      return 4;
    }
  }

  return result;
}

void bssl::ssl_send_alert(bssl *this, ssl_st *a2, int a3)
{
  v4 = a2;
  v6 = ERR_save_state();
  v7 = v6;
  v8 = *(this + 6);
  if (*(v8 + 176))
  {
    ERR_put_error(16, 0, 194, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_pkt.cc", 338);
    ERR_restore_state(v7);
    if (!v7)
    {
      return;
    }
  }

  else
  {
    if (a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v4 == 1;
    }

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    *(v8 + 176) = v10;
    *(v8 + 220) |= 0x400u;
    *(*(this + 6) + 461) = v4;
    *(*(this + 6) + 462) = a3;
    if (*(*(this + 6) + 114))
    {
      ERR_restore_state(v6);
      if (!v7)
      {
        return;
      }
    }

    else
    {
      (*(*this + 80))(this);
      ERR_restore_state(v7);
      if (!v7)
      {
        return;
      }
    }
  }

  if (v7[1])
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (*v7 + v11);
      free(v13[1]);
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      ++v12;
      v11 += 24;
    }

    while (v12 < v7[1]);
  }

  free(*v7);

  free(v7);
}

uint64_t bssl::tls_dispatch_alert(bssl *this, ssl_st *a2)
{
  v3 = *(this + 19);
  if (v3)
  {
    if (!(*(v3 + 32))(this, *(*(this + 6) + 204), *(*(this + 6) + 462)))
    {
      ERR_put_error(16, 0, 298, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_pkt.cc", 367);
      return 0;
    }
  }

  else
  {
    result = bssl::do_tls_write(this, &v13, 0x15, (*(this + 6) + 461), 2);
    if (result < 1)
    {
      return result;
    }
  }

  *(*(this + 6) + 220) &= ~0x400u;
  v5 = *(this + 6);
  if (*(v5 + 461) == 2)
  {
    v6 = *(this + 4);
    if (v6)
    {
      if (*v6 && (v7 = *(*v6 + 48)) != 0)
      {
        v7();
      }

      else
      {
        ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 169);
      }
    }

    v5 = *(this + 6);
  }

  v8 = *(this + 8);
  if (v8)
  {
    v9 = *(v5 + 280);
    if (v9 && (*(v9 + 1617) & 4) != 0 && (*(this + 164) & 1) == 0)
    {
      v10 = *(*(v9 + 1560) + 4);
    }

    else
    {
      v10 = *(v5 + 208);
      if (!v10)
      {
        if (**this)
        {
          v10 = -259;
        }

        else
        {
          v10 = 771;
        }
      }
    }

    v8(1, v10, 21, v5 + 461, 2, this, *(this + 9));
    v5 = *(this + 6);
  }

  v11 = *(v5 + 461);
  v12 = *(this + 12);
  if (v12 || (v12 = *(*(this + 13) + 384)) != 0)
  {
    v12(this, 16392, __rev16(v11));
  }

  return 1;
}

uint64_t bssl::tls_seal_align_prefix_len(bssl *this, const ssl_st *a2)
{
  v3 = *(this + 6);
  v4 = *(v3 + 272);
  if (*(v4 + 598))
  {
    v5 = *(v4 + 597);
    result = v5 + 5;
    v7 = *v4;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    v5 = 0;
    result = 5;
    v7 = *v4;
    if (!v7)
    {
      return result;
    }
  }

  v8 = *(v3 + 208);
  if (v8 - 769 >= 4)
  {
    v9 = v8 - 65276;
    if (v9 <= 3 && v9 != 2)
    {
      return result;
    }
  }

  else if (v8 > 0x301)
  {
    return result;
  }

  if ((*(this + 133) & 1) != 0 && *(v7 + 32) != 4)
  {
    v11 = v5 + 10;
    v12 = *(v7 + 28);
    if (v12 == 1)
    {
      return v11 + 24;
    }

    else if (v12 == 4 || v12 == 2)
    {
      return v11 + 32;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

unsigned __int8 *__cdecl SHA256(const unsigned __int8 *d, size_t n, unsigned __int8 *md)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v9 = xmmword_273BA6FA0;
  v10 = xmmword_273BA6FB0;
  v12 = 32;
  BCM_sha256_update(&v9, d, n);
  v4 = *&v11[72];
  v5 = v12;
  v11[*&v11[72] + 8] = 0x80;
  v6 = v4 + 1;
  if (v4 < 0x38)
  {
    if (v4 == 55)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v4 != 63)
    {
      bzero(&v11[v6 + 8], 63 - v4);
    }

    sha256_block_data_order(&v9, &v11[8], 1);
    v6 = 0;
  }

  bzero(&v11[v6 + 8], 56 - v6);
LABEL_7:
  *&v11[64] = vrev64_s32(vrev32_s8(*v11));
  sha256_block_data_order(&v9, &v11[8], 1);
  memset(&v11[8], 0, 68);
  if (v5 >= 0x21)
  {
    abort();
  }

  if (v5 >= 4)
  {
    v7 = v5 >> 2;
    *md = bswap32(v9);
    if (v5 >> 2 != 1)
    {
      *(md + 1) = bswap32(DWORD1(v9));
      if (v7 != 2)
      {
        *(md + 2) = bswap32(DWORD2(v9));
        if (v7 != 3)
        {
          *(md + 3) = bswap32(HIDWORD(v9));
          if (v7 != 4)
          {
            *(md + 4) = bswap32(v10);
            if (v7 != 5)
            {
              *(md + 5) = bswap32(DWORD1(v10));
              if (v7 != 6)
              {
                *(md + 6) = bswap32(DWORD2(v10));
                if (v7 != 7)
                {
                  *(md + 7) = bswap32(HIDWORD(v10));
                }
              }
            }
          }
        }
      }
    }
  }

  return md;
}

uint64_t SIPHASH_24(void *a1, uint64_t *a2, size_t a3)
{
  v3 = a3;
  v4 = a1[1];
  v5 = *a1 ^ 0x736F6D6570736575;
  v6 = v4 ^ 0x646F72616E646F6DLL;
  v7 = *a1 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x7465646279746573;
  if (a3 < 8)
  {
    __dst = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  do
  {
    v9 = *a2++;
    v10 = (v6 + v5) ^ __ROR8__(v6, 51);
    v11 = (v9 ^ v8) + v7;
    v12 = v11 ^ __ROR8__(v9 ^ v8, 48);
    v13 = v11 + v10;
    v14 = v12 + __ROR8__(v6 + v5, 32);
    v15 = v13 ^ __ROR8__(v10, 47);
    v16 = v14 ^ __ROR8__(v12, 43);
    v17 = v14 + v15;
    v18 = v16 + __ROR8__(v13, 32);
    v19 = v17 ^ __ROR8__(v15, 51);
    v20 = v18 ^ __ROR8__(v16, 48);
    v21 = v18 + v19;
    v22 = v20 + __ROR8__(v17, 32);
    v6 = v21 ^ __ROR8__(v19, 47);
    v8 = v22 ^ __ROR8__(v20, 43);
    v7 = __ROR8__(v21, 32);
    v5 = v22 ^ v9;
    a3 -= 8;
  }

  while (a3 > 7);
  __dst = 0;
  if (a3)
  {
LABEL_4:
    memcpy(&__dst, a2, a3);
  }

LABEL_5:
  HIBYTE(__dst) = v3;
  v23 = (__dst ^ v8) + v7;
  v24 = (v5 + v6) ^ __ROR8__(v6, 51);
  v25 = v23 ^ __ROR8__(__dst ^ v8, 48);
  v26 = v23 + v24;
  v27 = v25 + __ROR8__(v5 + v6, 32);
  v28 = v26 ^ __ROR8__(v24, 47);
  v29 = v27 ^ __ROR8__(v25, 43);
  v30 = v27 + v28;
  v31 = v29 + __ROR8__(v26, 32);
  v32 = v30 ^ __ROR8__(v28, 51);
  v33 = v31 ^ __ROR8__(v29, 48);
  v34 = v31 + v32;
  v35 = v33 + __ROR8__(v30, 32);
  v36 = v34 ^ __ROR8__(v32, 47);
  v37 = v35 ^ __ROR8__(v33, 43);
  v38 = (v35 ^ __dst) + v36;
  v39 = (__ROR8__(v34, 32) ^ 0xFFLL) + v37;
  v40 = v38 ^ __ROR8__(v36, 51);
  v41 = v39 ^ __ROR8__(v37, 48);
  v42 = v40 + v39;
  v43 = v41 + __ROR8__(v38, 32);
  v44 = v42 ^ __ROR8__(v40, 47);
  v45 = v43 ^ __ROR8__(v41, 43);
  v46 = v44 + v43;
  v47 = __ROR8__(v42, 32) + v45;
  v48 = v46 ^ __ROR8__(v44, 51);
  v49 = v47 ^ __ROR8__(v45, 48);
  v50 = v48 + v47;
  v51 = v49 + __ROR8__(v46, 32);
  v52 = v50 ^ __ROR8__(v48, 47);
  v53 = v51 ^ __ROR8__(v49, 43);
  v54 = v52 + v51;
  v55 = __ROR8__(v50, 32) + v53;
  v56 = v54 ^ __ROR8__(v52, 51);
  v57 = v55 ^ __ROR8__(v53, 48);
  v58 = v56 + v55;
  v59 = v57 + __ROR8__(v54, 32);
  v60 = v58 ^ __ROR8__(v56, 47);
  v61 = v59 ^ __ROR8__(v57, 43);
  v62 = __ROR8__(v58, 32) + v61;
  v63 = (v60 + v59) ^ __ROR8__(v60, 51);
  return __ROR8__(v62 ^ __ROR8__(v61, 48), 43) ^ __ROR8__(v63, 47) ^ __ROR8__(v63 + v62, 32) ^ (v63 + v62);
}

uint64_t bssl::spake2plus::Prover::Init(uint64_t a1, int8x16_t *a2, size_t a3, int8x16_t *a4, size_t a5, int8x16_t *a6, size_t a7, uint64_t a8, unsigned __int8 *a9, unint64_t a10, unsigned __int8 *a11, unint64_t a12, unsigned __int8 *a13, unint64_t a14)
{
  v21 = EC_group_p256();
  if (ec_scalar_from_bytes(v21, (a1 + 120), a9, a10) && ec_scalar_from_bytes(v21, (a1 + 192), a11, a12))
  {
    if (a14)
    {
      if (ec_scalar_from_bytes(v21, (a1 + 264), a13, a14))
      {
LABEL_5:
        return 1;
      }
    }

    {
      goto LABEL_5;
    }
  }

  ERR_put_error(14, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/spake2plus/spake2plus.cc", 270);
  return 0;
}

void *bssl::spake2plus::anonymous namespace::InitTranscriptHash(uint64_t a1, int8x16_t *a2, size_t a3, int8x16_t *a4, size_t a5, int8x16_t *a6, size_t a7)
{
  v29.i64[1] = *MEMORY[0x277D85DE8];
  *(a1 + 92) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = xmmword_273BA6FA0;
  *(a1 + 16) = xmmword_273BA6FB0;
  *(a1 + 108) = 32;
  v29.i64[0] = a3;
  BCM_sha256_update(a1, &v29, 8uLL);
  BCM_sha256_update(a1, a2, a3);
  v29.i64[0] = a5;
  BCM_sha256_update(a1, &v29, 8uLL);
  BCM_sha256_update(a1, a4, a5);
  v29.i64[0] = a7;
  BCM_sha256_update(a1, &v29, 8uLL);
  BCM_sha256_update(a1, a6, a7);
  v14 = 65;
  v29.i64[0] = 65;
  BCM_sha256_update(a1, &v29, 8uLL);
  v15 = *(a1 + 32);
  v16.i32[0] = vdup_n_s32(0x208u).u32[0];
  v16.i32[1] = v15.i32[0] > 0xFFFFFDF7;
  *(a1 + 32) = vadd_s32(v15, v16);
  v17 = *(a1 + 104);
  if (!v17)
  {
    goto LABEL_6;
  }

  v19 = (a1 + 40);
  v20 = 64 - v17;
  if (v17 != 64)
  {
  }

  sha256_block_data_order(a1, (a1 + 40), 1);
  if (v20 >= 0x42)
  {
    goto LABEL_20;
  }

  v14 = v17 + 1;
  *(a1 + 104) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *v19 = 0u;
  *(a1 + 56) = 0u;
  if (v17 >= 0x3F)
  {
LABEL_6:
    sha256_block_data_order(a1, v18, v14 >> 6);
    if ((v14 & 0x3F) == 0)
    {
      goto LABEL_9;
    }

    v18 = (v18 + (v14 & 0x1FFFFFFC0));
    v14 = 1;
  }

  *(a1 + 104) = v14;
  memcpy((a1 + 40), v18, v14);
LABEL_9:
  v21 = 65;
  v29.i64[0] = 65;
  BCM_sha256_update(a1, &v29, 8uLL);
  v22 = *(a1 + 32);
  v23.i32[0] = vdup_n_s32(0x208u).u32[0];
  v23.i32[1] = v22.i32[0] > 0xFFFFFDF7;
  *(a1 + 32) = vadd_s32(v22, v23);
  v24 = *(a1 + 104);
  if (v24)
  {
    v26 = (a1 + 40);
    v27 = 64 - v24;
    if (v24 != 64)
    {
    }

    sha256_block_data_order(a1, (a1 + 40), 1);
    if (v27 < 0x42)
    {
      v21 = v24 + 1;
      *(a1 + 104) = 0;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *v26 = 0u;
      *(a1 + 56) = 0u;
      if (v24 < 0x3F)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_20:
    abort();
  }

LABEL_14:
  result = sha256_block_data_order(a1, v25, v21 >> 6);
  if ((v21 & 0x3F) == 0)
  {
    return result;
  }

  v25 = (v25 + (v21 & 0x1FFFFFFC0));
  v21 = 1;
LABEL_16:
  *(a1 + 104) = v21;

  return memcpy((a1 + 40), v25, v21);
}

BOOL bssl::spake2plus::Prover::GenerateShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 || a3 != 65)
  {
    v17 = 281;
  }

  else
  {
    v5 = EC_group_p256();
    (*(*v5 + 40))(v5, v39, a1 + 264);
    if (ec_GFp_simple_is_on_curve(v5, v39))
    {
      {
        goto LABEL_18;
      }

      v27[2] = v20[2];
      v27[3] = v20[3];
      v27[0] = v20[0];
      v27[1] = v20[1];
      v30 = v23;
      v31 = v24;
      v32 = v25;
      v28 = v21;
      v33 = v26;
      v29 = v22;
      v6 = *(v5 + 10);
      v7 = *(v5 + 11);
      v8 = *(v5 + 12);
      v9 = *(v5 + 13);
      v38 = v5[28];
      v36 = v8;
      v37 = v9;
      v34 = v6;
      v35 = v7;
      (*(*v5 + 32))(v5, v20, v27, a1 + 120);
      if (ec_GFp_simple_is_on_curve(v5, v20))
      {
        (*(*v5 + 16))(v5, v19, v39, v20);
        v10 = (**v5)(v5, v19, a1 + 336, a1 + 408);
        v11 = v10 != 0;
        if (!v10)
        {
          ERR_put_error(14, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/spake2plus/spake2plus.cc", 307);
          return v11;
        }

        v12 = ec_point_byte_len(v5, 4);
        if (v12 >= 0x42)
        {
          ERR_put_error(15, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc", 45);
        }

        else
        {
          v13 = v12;
          v40 = 0;
          (*(*v5 + 104))(v5, a2 + 1, &v40, a1 + 336);
          (*(*v5 + 104))(v5, a2 + 1 + v40, &v40, a1 + 408);
          *a2 = 4;
          if (v13 == 65)
          {
            *(a1 + 480) = *a2;
            v14 = *(a2 + 16);
            v15 = *(a2 + 32);
            v16 = *(a2 + 48);
            *(a1 + 544) = *(a2 + 64);
            *(a1 + 512) = v15;
            *(a1 + 528) = v16;
            *(a1 + 496) = v14;
            *a1 = 1;
            return v11;
          }
        }

LABEL_18:
        abort();
      }

      ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 775);
      v17 = 300;
    }

    else
    {
      ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 796);
      v17 = 291;
    }
  }

  ERR_put_error(14, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/spake2plus/spake2plus.cc", v17);
  return 0;
}

uint64_t bssl::spake2plus::Prover::ComputeConfirmation(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6, uint64_t a7, uint64_t a8, int8x16_t *a9, uint64_t a10)
{
  v71 = *MEMORY[0x277D85DE8];
  if (*a1 != 1 || a3 != 32 || a5 != 32 || a7 != 65 || a10 != 32)
  {
    v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/spake2plus/spake2plus.cc";
    v27 = 14;
    v28 = 327;
LABEL_20:
    ERR_put_error(v27, 0, 68, v26, v28);
    return 0;
  }

  v14 = EC_group_p256();
  if (!ec_point_from_uncompressed(v14, v63, a6, 65))
  {
    v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/spake2plus/spake2plus.cc";
    v27 = 14;
    v28 = 335;
    goto LABEL_20;
  }

  {
    abort();
  }

  v51[2] = v47[2];
  v51[3] = v47[3];
  v51[1] = v47[1];
  v51[0] = v47[0];
  v54 = v49[1];
  v55 = v49[2];
  v56 = v49[3];
  v52 = v48;
  v57 = v50;
  v53 = v49[0];
  v15 = *(v14 + 10);
  v16 = *(v14 + 11);
  v17 = *(v14 + 12);
  v18 = *(v14 + 13);
  v62 = v14[28];
  v61 = v18;
  v60 = v17;
  v58 = v15;
  v59 = v16;
  (*(*v14 + 32))(v14, v47, v51, a1 + 120);
  if (!ec_GFp_simple_is_on_curve(v14, v47))
  {
    ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 775);
    v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/spake2plus/spake2plus.cc";
    v27 = 14;
    v28 = 344;
    goto LABEL_20;
  }

  ec_felem_neg(v14, v49, v49);
  v35[2] = v63[2];
  v35[3] = v63[3];
  v35[0] = v63[0];
  v35[1] = v63[1];
  v38 = v66;
  v39 = v67;
  v40 = v68;
  v36 = v64;
  v41 = v69;
  v37 = v65;
  v19 = *(v14 + 10);
  v20 = *(v14 + 11);
  v21 = *(v14 + 12);
  v22 = *(v14 + 13);
  v46 = v14[28];
  v44 = v21;
  v45 = v22;
  v42 = v19;
  v43 = v20;
  (*(*v14 + 16))(v14, v34, v35, v47);
  (*(*v14 + 32))(v14, v33, v34, a1 + 264);
  if (!ec_GFp_simple_is_on_curve(v14, v33))
  {
    goto LABEL_19;
  }

  result = (**v14)(v14, v33, v31, &v32);
  if (!result)
  {
    return result;
  }

  (*(*v14 + 32))(v14, v33, v34, a1 + 192);
  if (!ec_GFp_simple_is_on_curve(v14, v33))
  {
LABEL_19:
    v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc";
    v27 = 15;
    v28 = 775;
    goto LABEL_20;
  }

  result = (**v14)(v14, v33, v29, &v30);
  if (result)
  {
    if (result)
    {
      v24 = vbicq_s8(xmmword_273BB9390, vceqq_s8(a9[1], v70[1]));
      v25 = vbicq_s8(xmmword_273BB9390, vceqq_s8(*a9, v70[0]));
      if (vaddvq_s16(vzip1q_s8(v25, vextq_s8(v25, v25, 8uLL))) | vaddvq_s16(vzip1q_s8(v24, vextq_s8(v24, v24, 8uLL))))
      {
        return 0;
      }

      else
      {
        *a1 = 3;
        return 1;
      }
    }
  }

  return result;
}

uint64_t bssl::spake2plus::anonymous namespace::ComputeTranscript(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t *a9)
{
  v71 = *MEMORY[0x277D85DE8];
  v14 = EC_group_p256();
  v15 = ec_point_byte_len(v14, 4);
  if (v15 >= 0x42)
  {
    goto LABEL_65;
  }

  v16 = v15;
  v68.i64[0] = 0;
  (*(*v14 + 104))(v14, &__src.i8[1], &v68, a7);
  (*(*v14 + 104))(v14, &__src.i8[v68.i64[0] + 1], &v68, a7 + 72);
  __src.i8[0] = 4;
  if (v16 != 65)
  {
    goto LABEL_66;
  }

  v17 = ec_point_byte_len(v14, 4);
  if (v17 >= 0x42)
  {
LABEL_65:
    ERR_put_error(15, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc", 45);
    goto LABEL_66;
  }

  v18 = v17;
  md[0].i64[0] = 0;
  (*(*v14 + 104))(v14, &v68.i8[1], md, a8);
  (*(*v14 + 104))(v14, &v68.i8[md[0].i64[0] + 1], md, a8 + 72);
  v68.i8[0] = 4;
  if (v18 != 65)
  {
    goto LABEL_66;
  }

  md[0].i64[0] = 0;
  ec_scalar_to_bytes(v14, v67[0].i8, md, a9);
  if (md[0].i64[0] != 32)
  {
    goto LABEL_66;
  }

  v19 = 65;
  md[0].i64[0] = 65;
  BCM_sha256_update(a6, md, 8uLL);
  v20 = *(a6 + 32);
  v21.i32[0] = vdup_n_s32(0x208u).u32[0];
  v21.i32[1] = v20.i32[0] > 0xFFFFFDF7;
  *(a6 + 32) = vadd_s32(v20, v21);
  v22 = *(a6 + 104);
  v23 = a4;
  if (v22)
  {
    v24 = (a6 + 40);
    v25 = 64 - v22;
    if (v22 != 64)
    {
      memcpy(v24 + v22, a4, 64 - v22);
    }

    sha256_block_data_order(a6, (a6 + 40), 1);
    if (v25 >= 0x42)
    {
      goto LABEL_66;
    }

    v23 = (a4 + v25);
    v19 = v22 + 1;
    *(a6 + 104) = 0;
    *(a6 + 72) = 0u;
    *(a6 + 88) = 0u;
    *v24 = 0u;
    *(a6 + 56) = 0u;
    if (v22 < 0x3F)
    {
      goto LABEL_13;
    }
  }

  sha256_block_data_order(a6, v23, v19 >> 6);
  if ((v19 & 0x3F) != 0)
  {
    v23 = (v23 + (v19 & 0x1FFFFFFC0));
    v19 = 1;
LABEL_13:
    *(a6 + 104) = v19;
    memcpy((a6 + 40), v23, v19);
  }

  v26 = 65;
  md[0].i64[0] = 65;
  BCM_sha256_update(a6, md, 8uLL);
  v27 = *(a6 + 32);
  v28.i32[0] = vdup_n_s32(0x208u).u32[0];
  v28.i32[1] = v27.i32[0] > 0xFFFFFDF7;
  *(a6 + 32) = vadd_s32(v27, v28);
  v29 = *(a6 + 104);
  v30 = a5;
  if (!v29)
  {
    goto LABEL_19;
  }

  v31 = (a6 + 40);
  v32 = 64 - v29;
  if (v29 != 64)
  {
    memcpy(v31 + v29, a5, 64 - v29);
  }

  sha256_block_data_order(a6, (a6 + 40), 1);
  if (v32 >= 0x42)
  {
    goto LABEL_66;
  }

  v30 = (a5 + v32);
  v26 = v29 + 1;
  *(a6 + 104) = 0;
  *(a6 + 72) = 0u;
  *(a6 + 88) = 0u;
  *v31 = 0u;
  *(a6 + 56) = 0u;
  if (v29 >= 0x3F)
  {
LABEL_19:
    sha256_block_data_order(a6, v30, v26 >> 6);
    if ((v26 & 0x3F) == 0)
    {
      goto LABEL_22;
    }

    v30 = (v30 + (v26 & 0x1FFFFFFC0));
    v26 = 1;
  }

  *(a6 + 104) = v26;
  memcpy((a6 + 40), v30, v26);
LABEL_22:
  v33 = 65;
  md[0].i64[0] = 65;
  BCM_sha256_update(a6, md, 8uLL);
  v34.i32[0] = vdup_n_s32(0x208u).u32[0];
  v34.i32[1] = *(a6 + 32) > 0xFFFFFDF7;
  *(a6 + 32) = vadd_s32(*(a6 + 32), v34);
  v35 = *(a6 + 104);
  if (!v35)
  {
    p_src = &__src;
    sha256_block_data_order(a6, &__src, 1);
    goto LABEL_30;
  }

  v36 = (a6 + 40);
  v37 = 64 - v35;
  if (v35 != 64)
  {
    memcpy(v36 + v35, &__src, 64 - v35);
  }

  sha256_block_data_order(a6, (a6 + 40), 1);
  if (v37 >= 0x42)
  {
    goto LABEL_66;
  }

  p_src = (&__src + v37);
  v33 = v35 + 1;
  *(a6 + 104) = 0;
  *(a6 + 72) = 0u;
  *(a6 + 88) = 0u;
  *v36 = 0u;
  *(a6 + 56) = 0u;
  if (v35 < 0x3F)
  {
    goto LABEL_31;
  }

  sha256_block_data_order(a6, p_src, v33 >> 6);
  if ((v33 & 0x3F) != 0)
  {
LABEL_30:
    p_src = (p_src + (v33 & 0x1FFFFFFC0));
    v33 = 1;
LABEL_31:
    *(a6 + 104) = v33;
    memcpy((a6 + 40), p_src, v33);
  }

  v39 = 65;
  md[0].i64[0] = 65;
  BCM_sha256_update(a6, md, 8uLL);
  v40.i32[0] = vdup_n_s32(0x208u).u32[0];
  v40.i32[1] = *(a6 + 32) > 0xFFFFFDF7;
  *(a6 + 32) = vadd_s32(*(a6 + 32), v40);
  v41 = *(a6 + 104);
  if (!v41)
  {
    v44 = &v68;
    sha256_block_data_order(a6, &v68, 1);
    goto LABEL_40;
  }

  v42 = (a6 + 40);
  v43 = 64 - v41;
  if (v41 != 64)
  {
    memcpy(v42 + v41, &v68, 64 - v41);
  }

  sha256_block_data_order(a6, (a6 + 40), 1);
  if (v43 >= 0x42)
  {
LABEL_66:
    abort();
  }

  v44 = (&v68 + v43);
  v39 = v41 + 1;
  *(a6 + 104) = 0;
  *(a6 + 72) = 0u;
  *(a6 + 88) = 0u;
  *v42 = 0u;
  *(a6 + 56) = 0u;
  if (v41 < 0x3F)
  {
LABEL_41:
    *(a6 + 104) = v39;
    memcpy((a6 + 40), v44, v39);
    goto LABEL_42;
  }

  sha256_block_data_order(a6, v44, v39 >> 6);
  if ((v39 & 0x3F) != 0)
  {
LABEL_40:
    v44 = (v44 + (v39 & 0x1FFFFFFC0));
    v39 = 1;
    goto LABEL_41;
  }

LABEL_42:
  md[0].i64[0] = 32;
  BCM_sha256_update(a6, md, 8uLL);
  BCM_sha256_update(a6, v67, 0x20uLL);
  v45 = *(a6 + 108);
  if (v45 <= 0x20)
  {
    v46 = *(a6 + 104);
    v47 = (a6 + 40);
    *(a6 + 40 + v46) = 0x80;
    v48 = v46 + 1;
    if (v46 < 0x38)
    {
      if (v46 == 55)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v46 != 63)
      {
        bzero(v47 + v48, 63 - v46);
      }

      sha256_block_data_order(a6, (a6 + 40), 1);
      v48 = 0;
    }

    bzero(v47 + v48, 56 - v48);
LABEL_49:
    *(a6 + 96) = vrev64_s32(vrev32_s8(*(a6 + 32)));
    sha256_block_data_order(a6, (a6 + 40), 1);
    *(a6 + 104) = 0;
    *(a6 + 72) = 0u;
    *(a6 + 88) = 0u;
    *v47 = 0u;
    *(a6 + 56) = 0u;
    if (v45 >= 4)
    {
      if (v45 == 32)
      {
        v49 = vrev32q_s8(*(a6 + 16));
        *d = vrev32q_s8(*a6);
        v66 = v49;
      }

      else
      {
        v50 = v45 >> 2;
        v51 = d;
        do
        {
          v52 = *a6;
          a6 += 4;
          *v51 = bswap32(v52);
          v51 += 4;
          --v50;
        }

        while (v50);
      }
    }
  }

  v53 = EVP_sha256();
  md_len[0] = 0;
  if (!HMAC(v53, 0, 0, d, 0x20uLL, md, md_len))
  {
    goto LABEL_63;
  }

  result = HKDF_expand(md_len, 64, v53, md, md_len[0], "ConfirmationKeys", 16);
  if (!result)
  {
    return result;
  }

  v55 = EVP_sha256();
  v62 = 0;
  if (HMAC(v55, 0, 0, d, 0x20uLL, md, &v62))
  {
    result = HKDF_expand(a3, 32, v55, md, v62, "SharedKey", 9);
    if (result)
    {
      md[0].i32[0] = 0;
      v56 = EVP_sha256();
      result = HMAC(v56, md_len, 32, a5, 0x41uLL, a1, md);
      if (result)
      {
        if (md[0].i32[0] != 32)
        {
          goto LABEL_66;
        }

        v62 = 0;
        v57 = EVP_sha256();
        v58 = HMAC(v57, &v64, 32, a4, 0x41uLL, a2, &v62);
        result = v58 != 0;
        if (v58)
        {
          if (v62 != 32)
          {
            goto LABEL_66;
          }
        }
      }
    }
  }

  else
  {
LABEL_63:
    ERR_put_error(31, 0, 28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/hkdf/hkdf.cc.inc", 51);
    return 0;
  }

  return result;
}

uint64_t bssl::spake2plus::Verifier::Init(uint64_t a1, int8x16_t *a2, size_t a3, int8x16_t *a4, size_t a5, int8x16_t *a6, size_t a7, uint64_t a8, unsigned __int8 *a9, unint64_t a10, _BYTE *a11, uint64_t a12, unsigned __int8 *a13, unint64_t a14)
{
  v21 = EC_group_p256();
  if (ec_scalar_from_bytes(v21, (a1 + 120), a9, a10) && ec_point_from_uncompressed(v21, a1 + 192, a11, a12))
  {
    if (a14)
    {
      if (ec_scalar_from_bytes(v21, (a1 + 336), a13, a14))
      {
LABEL_5:
        return 1;
      }
    }

    {
      goto LABEL_5;
    }
  }

  ERR_put_error(14, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/spake2plus/spake2plus.cc", 395);
  return 0;
}

uint64_t bssl::spake2plus::Verifier::ProcessProverShare(uint64_t a1, int8x16_t *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t *a9, uint64_t a10)
{
  if (*a1 || a3 != 65 || a5 != 32 || a7 != 32 || a10 != 65)
  {
    v40 = 412;
    goto LABEL_25;
  }

  v14 = EC_group_p256();
  {
LABEL_35:
    abort();
  }

  v84[2] = v111;
  v84[3] = v112;
  v84[1] = v110;
  v84[0] = v109;
  v87 = v115;
  v88 = v116;
  v89 = v117;
  v85 = v113;
  v90 = v118;
  v86 = v114;
  v19 = *(v14 + 10);
  v20 = *(v14 + 11);
  v21 = *(v14 + 12);
  v22 = *(v14 + 13);
  v95 = v14[28];
  v94 = v22;
  v93 = v21;
  v91 = v19;
  v92 = v20;
  (*(*v14 + 40))(v14, &v109, a1 + 336);
  if (!ec_GFp_simple_is_on_curve(v14, &v109))
  {
    v41 = 796;
LABEL_24:
    ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", v41);
    v40 = 426;
    goto LABEL_25;
  }

  (*(*v14 + 32))(v14, v108, v84, a1 + 120);
  if (!ec_GFp_simple_is_on_curve(v14, v108))
  {
    v41 = 775;
    goto LABEL_24;
  }

  (*(*v14 + 16))(v14, v83, &v109, v108);
  if (!(**v14)(v14, v83, v81, v82))
  {
    v40 = 434;
    goto LABEL_25;
  }

  v23 = ec_point_byte_len(v14, 4);
  if (v23 >= 0x42)
  {
    ERR_put_error(15, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc", 45);
    goto LABEL_35;
  }

  v24 = v23;
  v79[0].i64[0] = 0;
  (*(*v14 + 104))(v14, a2->i64 + 1, v79, v81);
  (*(*v14 + 104))(v14, a2->i64 + v79[0].i64[0] + 1, v79, v82);
  a2->i8[0] = 4;
  if (v24 != 65)
  {
    goto LABEL_35;
  }

  if (!ec_point_from_uncompressed(v14, v72, a9, 65))
  {
LABEL_29:
    v40 = 447;
    goto LABEL_25;
  }

  (*(*v14 + 32))(v14, v79, v96, a1 + 120);
  if (!ec_GFp_simple_is_on_curve(v14, v79))
  {
    ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 775);
    goto LABEL_29;
  }

  ec_felem_neg(v14, v80, v80);
  v60[2] = v72[2];
  v60[3] = v72[3];
  v60[0] = v72[0];
  v60[1] = v72[1];
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v61 = v73;
  v66 = v78;
  v62 = v74;
  v25 = *(v14 + 10);
  v26 = *(v14 + 11);
  v27 = *(v14 + 12);
  v28 = *(v14 + 13);
  v71 = v14[28];
  v70 = v28;
  v69 = v27;
  v67 = v25;
  v68 = v26;
  (*(*v14 + 16))(v14, v59, v60, v79);
  (*(*v14 + 32))(v14, v58, v59, a1 + 336);
  if (!ec_GFp_simple_is_on_curve(v14, v58))
  {
    ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 775);
    goto LABEL_31;
  }

  if (!(**v14)(v14, v58, v56, &v57))
  {
LABEL_31:
    v40 = 463;
    goto LABEL_25;
  }

  v29 = *(a1 + 240);
  v44[2] = *(a1 + 224);
  v44[3] = v29;
  v30 = *(a1 + 256);
  v31 = *(a1 + 208);
  v44[0] = *(a1 + 192);
  v44[1] = v31;
  v32 = *(a1 + 264);
  v47 = *(a1 + 280);
  v33 = *(a1 + 312);
  v48 = *(a1 + 296);
  v49 = v33;
  v34 = *(a1 + 328);
  v45 = v30;
  v50 = v34;
  v46 = v32;
  v35 = *(v14 + 10);
  v36 = *(v14 + 11);
  v37 = *(v14 + 12);
  v38 = *(v14 + 13);
  v55 = v14[28];
  v53 = v37;
  v54 = v38;
  v51 = v35;
  v52 = v36;
  if (ec_point_mul_scalar(v14, v58, v44, a1 + 336) && (**v14)(v14, v58, v42, &v43))
  {
    {
      result = 1;
      *a1 = 1;
      return result;
    }

    v40 = 479;
  }

  else
  {
    v40 = 472;
  }

LABEL_25:
  ERR_put_error(14, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/spake2plus/spake2plus.cc", v40);
  return 0;
}

void bssl::SSLAEADContext::~SSLAEADContext(bssl::SSLAEADContext *this)
{
  if (*(this + 596) && this + 583 >= -*(this + 596))
  {
    __break(1u);
  }

  else
  {
    v2 = (this + 8);
    v1 = *(this + 1);
    *(this + 596) = 0;
    if (v1)
    {
      (*(v1 + 24))(this + 8);
      *v2 = 0;
    }
  }
}

void bssl::SSLAEADContext::Create(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, size_t a5@<X4>, const void *a6@<X5>, size_t a7@<X6>, void *a8@<X8>, char *a9, size_t a10)
{
  v15 = a2;
  v45 = *MEMORY[0x277D85DE8];
  if (a2 > 65275)
  {
    switch(a2)
    {
      case 65276:
        v15 = 772;
        goto LABEL_3;
      case 65277:
        v15 = 771;
        goto LABEL_3;
      case 65279:
        v15 = 770;
        goto LABEL_3;
    }

LABEL_19:
    v25 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_aead_ctx.cc";
    v26 = 16;
    v27 = 68;
    v28 = 58;
LABEL_21:
    ERR_put_error(v26, 0, v27, v25, v28);
    *a8 = 0;
    return;
  }

  if ((a2 - 769) >= 4)
  {
    goto LABEL_19;
  }

LABEL_3:
  v42 = 0;
  v43 = 0;
  v41 = 0;
  if (!bssl::ssl_cipher_get_evp_aead(&v43, &v42, &v41, a3, v15) || v41 != a10 || v42 != a7)
  {
    goto LABEL_19;
  }

  v18 = malloc_type_malloc(0x260uLL, 0xB4E622C9uLL);
  if (!v18)
  {
    v25 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v26 = 14;
    v27 = 65;
    v28 = 217;
    goto LABEL_21;
  }

  v19 = v18;
  v39 = a8;
  __src = a4;
  v37 = a1;
  v20 = a9;
  *v18 = 600;
  v18[1] = a3;
  v38 = v18 + 1;
  bzero(v18 + 2, 0x240uLL);
  *(v19 + 604) = 0;
  v21 = *(v19 + 606) & 0xE0;
  *(v19 + 606) = v21;
  v22 = v43;
  *(v19 + 605) = *(v43 + 1);
  if (!a7)
  {
    if (a10 > 0xC)
    {
LABEL_45:
      abort();
    }

    *(v19 + 604) = 0;
    if (a10)
    {
      v29 = v19 + 74;
      v30 = a10;
      do
      {
        v31 = *v20++;
        *v29++ = v31;
        --v30;
      }

      while (v30);
      *(v19 + 604) = a10;
      if (v15 > 0x303)
      {
LABEL_29:
        v32 = *(v19 + 606);
        *(v19 + 605) = 8;
        *(v19 + 606) = v32 | 0x14;
        if (a5 == *v22)
        {
          goto LABEL_36;
        }

LABEL_34:
        ERR_put_error(30, 0, 120, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/aead.cc.inc", 82);
        v33 = v39;
        goto LABEL_40;
      }
    }

    else
    {
      *(v19 + 604) = 0;
      if (v15 > 0x303)
      {
        goto LABEL_29;
      }
    }

    if ((*(a3 + 28) & 0x20) != 0)
    {
      *(v19 + 606) |= 4u;
      *(v19 + 605) = 8;
      if (a5 == *v22)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *(v19 + 605) -= a10;
      *(v19 + 606) |= 1u;
      if (a5 == *v22)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_34;
  }

  v23 = a7 + a5 + a10;
  if (v23 >= 0x51)
  {
    goto LABEL_45;
  }

  memcpy(__dst, a6, a7);
  v24 = &__dst[a7];
  if (a5)
  {
    memcpy(v24, __src, a5);
  }

  if (a10)
  {
    memcpy(&v24[a5], a9, a10);
  }

  *(v19 + 606) = v21 | 0xB;
  __src = __dst;
  a5 += a7 + a10;
  if (v23 != *v22)
  {
    goto LABEL_34;
  }

LABEL_36:
  v19[2] = v22;
  v34 = *(v22 + 1);
  if (v34)
  {
    v35 = v34(v19 + 2, __src, a5, 0);
    v33 = v39;
    if (v35)
    {
LABEL_38:
      *v33 = v38;
      return;
    }
  }

  else
  {
    v36 = (*(v22 + 2))(v19 + 2, __src, a5, 0, v37);
    v33 = v39;
    if (v36)
    {
      goto LABEL_38;
    }
  }

LABEL_40:
  *v33 = 0;
  if (*(v19 + 604))
  {
    if (v19 + 591 >= -*(v19 + 604))
    {
      __break(1u);
    }
  }

  free(v19);
}

uint64_t bssl::SSLAEADContext::SuffixLen(bssl::SSLAEADContext *this, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (*this)
  {
    v5 = *(*(this + 1) + 64);
    if (v5)
    {
      a4 = v5(this + 8, a3, a4);
    }

    else
    {
      v6 = *(this + 576);
      v7 = __CFADD__(v6, a4);
      a4 += v6;
      if (v7)
      {
        ERR_put_error(30, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/aead.cc.inc", 289);
        result = 0;
        *a2 = 0;
        return result;
      }
    }
  }

  result = 1;
  *a2 = a4;
  return result;
}

BOOL bssl::SSLAEADContext::Open(uint64_t a1, char **a2, __int8 a3, __int16 a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v10 = *(&a9 + 1);
  v9 = a9;
  v43.i64[1] = *MEMORY[0x277D85DE8];
  if (!*a1)
  {
    *a2 = a9;
    return 1;
  }

  v12 = *(a1 + 598);
  if ((v12 & 8) != 0)
  {
    v15 = 0;
  }

  else if (*(a1 + 598))
  {
    v13 = *(a1 + 597) + *(*(a1 + 8) + 2);
    v14 = *(&a9 + 1) >= v13;
    v15 = DWORD2(a9) - v13;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = *(*(a1 + 8) + 2);
    v14 = *(&a9 + 1) >= v21;
    v15 = DWORD2(a9) - v21;
    if (!v14)
    {
LABEL_15:
      v22 = 242;
LABEL_27:
      ERR_put_error(16, 0, 112, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_aead_ctx.cc", v22);
      return 0;
    }
  }

  v17 = bswap64(a5);
  if ((*(a1 + 598) & 0x10) == 0)
  {
    v42.i64[1] = v17;
    v43.i8[0] = a3;
    v43.i8[1] = HIBYTE(a4);
    v43.i8[2] = a4;
    if ((v12 & 8) != 0)
    {
      v18 = *(a1 + 596);
      v19 = *(a1 + 596);
      if ((v12 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    *(&v43.i16[1] + 1) = bswap32(v15) >> 16;
  }

  v18 = *(a1 + 596);
  v19 = *(a1 + 596);
  if ((v12 & 4) == 0)
  {
LABEL_12:
    v20 = a2;
    if (!v19)
    {
      v18 = 0;
      if (v12)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    memcpy(&__dst, (a1 + 584), v18);
    goto LABEL_19;
  }

LABEL_17:
  v18 -= *(a1 + 597);
  if (!v18)
  {
    v20 = a2;
    if (v12)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v20 = a2;
  bzero(&__dst, v18);
LABEL_19:
  if (v12)
  {
LABEL_25:
    v23 = *(a1 + 597);
    v10 = *(&a9 + 1) - v23;
    if (*(&a9 + 1) < v23)
    {
      v22 = 269;
      goto LABEL_27;
    }

    if (*(a1 + 597))
    {
      memcpy(&__dst.i8[v18], a9, *(a1 + 597));
    }

    v9 = (a9 + v23);
    if ((v12 & 4) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_31;
  }

LABEL_22:
  *(__dst.i64 + v18) = v17;
  v23 = *(a1 + 597);
  if ((v12 & 4) == 0)
  {
    goto LABEL_48;
  }

LABEL_31:
  if (!v19)
  {
    goto LABEL_48;
  }

  if (v19 < 8)
  {
    v24 = 0;
    goto LABEL_46;
  }

  if (v19 >= 0x20)
  {
    v24 = v19 & 0xE0;
    v25 = veorq_s8(v42, *(a1 + 600));
    __dst = veorq_s8(__dst, *(a1 + 584));
    v42 = v25;
    if (v24 != 32)
    {
      v26 = veorq_s8(v44, *(a1 + 632));
      v43 = veorq_s8(v43, *(a1 + 616));
      v44 = v26;
      if (v24 != 64)
      {
        v27 = veorq_s8(v46, *(a1 + 664));
        v45 = veorq_s8(v45, *(a1 + 648));
        v46 = v27;
        if (v24 != 96)
        {
          v28 = veorq_s8(v48, *(a1 + 696));
          v47 = veorq_s8(v47, *(a1 + 680));
          v48 = v28;
          if (v24 != 128)
          {
            vars0 = veorq_s8(vars0, *(a1 + 712));
          }
        }
      }
    }

    if (v24 == v19)
    {
      goto LABEL_48;
    }

    if ((v19 & 0x18) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v24 = 0;
  }

  v29 = v24;
  v24 = v19 & 0xF8;
  v30 = (v29 + a1 + 584);
  v31 = &__dst.i8[v29];
  v32 = v29 - v24;
  do
  {
    v33 = *v30++;
    *v31 = veor_s8(*v31, v33);
    ++v31;
    v32 += 8;
  }

  while (v32);
  if (v24 != v19)
  {
LABEL_46:
    v34 = v19 - v24;
    v35 = &__dst.i8[v24];
    v36 = (v24 + a1 + 584);
    do
    {
      v37 = *v36++;
      *v35++ ^= v37;
      --v34;
    }

    while (v34);
  }

LABEL_48:
  v40 = 0;
  v38 = EVP_AEAD_CTX_open((a1 + 8), v9, &v40, v10, &__dst, v23 + v18, v9, v10);
  result = v38 != 0;
  if (v38)
  {
    v39 = v40;
    if (v10 < v40)
    {
      v39 = v10;
    }

    *v20 = v9;
    v20[1] = v39;
  }

  return result;
}

BOOL bssl::SSLAEADContext::SealScatter(uint64_t a1, char *a2, char *__dst, char *a4, __int8 a5, __int16 a6, unint64_t a7, int a8, __int128 a9, char *__len, size_t a11, void *__src, size_t a13, __int128 a14)
{
  v59.i64[0] = *MEMORY[0x277D85DE8];
  if (*(a1 + 598))
  {
    v20 = *(a1 + 597);
    v21 = a13;
    if (!*a1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20 = 0;
    v21 = a13;
    if (!*a1)
    {
      goto LABEL_10;
    }
  }

  v22 = *(*(a1 + 8) + 64);
  if (v22)
  {
    v23 = a4;
    v21 = v22(a1 + 8, a11, a13);
    a4 = v23;
  }

  else
  {
    v24 = *(a1 + 576);
    v21 = v24 + a13;
    if (__CFADD__(v24, a13))
    {
      ERR_put_error(30, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/aead.cc.inc", 289);
      v25 = 200;
      v26 = 308;
LABEL_20:
      ERR_put_error(16, 0, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_aead_ctx.cc", v26);
      return 0;
    }
  }

LABEL_10:
  v27 = &__len[a11];
  if (__len != __dst && (v27 > __dst ? (v28 = &__dst[a11] > __len) : (v28 = 0), v28) || &a2[v20] > __len && v27 > a2 || &a4[v21] > __len && v27 > a4)
  {
    v25 = 189;
    v26 = 314;
    goto LABEL_20;
  }

  if (*a1)
  {
    v30 = *(a1 + 598);
    v31 = bswap64(a7);
    if ((v30 & 0x10) != 0)
    {
      v33 = *(a1 + 596);
      v53 = __src;
      v54 = v21;
      if ((*(a1 + 598) & 4) == 0)
      {
LABEL_34:
        v34 = a4;
        if (v33)
        {
          v35 = v30;
          memcpy(&__dsta, (a1 + 584), v33);
          goto LABEL_36;
        }

        v33 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v58.i64[0] = v31;
      v58.i8[8] = a5;
      v58.i8[9] = HIBYTE(a6);
      v58.i8[10] = a6;
      if ((v30 & 8) == 0)
      {
        *(&v58.i16[5] + 1) = bswap32(a11) >> 16;
      }

      v33 = *(a1 + 596);
      v53 = __src;
      v54 = v21;
      if ((v30 & 4) == 0)
      {
        goto LABEL_34;
      }
    }

    v33 -= *(a1 + 597);
    if (v33)
    {
      v34 = a4;
      v35 = v30;
      bzero(&__dsta, v33);
LABEL_36:
      v30 = v35;
      goto LABEL_40;
    }

    v34 = a4;
LABEL_40:
    if ((v30 & 2) != 0)
    {
      BCM_rand_bytes_with_additional_data(&__dsta.i8[v33], *(a1 + 597), BCM_rand_bytes::kZeroAdditionalData);
      v30 = *(a1 + 598);
      v36 = *(a1 + 597);
      if ((v30 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      *(__dsta.i64 + v33) = v31;
      v36 = *(a1 + 597);
      if ((v30 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v27 > a2 && &a2[v36] > __len)
    {
      v25 = 189;
      v26 = 360;
      goto LABEL_20;
    }

    if (v36)
    {
      memcpy(a2, &__dsta.i8[*(a1 + 596)], v36);
      v30 = *(a1 + 598);
    }

LABEL_49:
    if ((v30 & 4) == 0)
    {
      goto LABEL_67;
    }

    v37 = *(a1 + 596);
    if (!*(a1 + 596))
    {
      goto LABEL_67;
    }

    if (v37 < 8)
    {
      v38 = 0;
LABEL_65:
      v49 = v37 - v38;
      v50 = &__dsta.i8[v38];
      v51 = (v38 + a1 + 584);
      do
      {
        v52 = *v51++;
        *v50++ ^= v52;
        --v49;
      }

      while (v49);
LABEL_67:
      v55 = 0;
      return EVP_AEAD_CTX_seal_scatter((a1 + 8), __dst, v34, &v55, v54, &__dsta, v33 + v36, __len, a11, v53, a13) != 0;
    }

    if (v37 >= 0x20)
    {
      v38 = v37 & 0xE0;
      v39 = veorq_s8(v57, *(a1 + 600));
      __dsta = veorq_s8(__dsta, *(a1 + 584));
      v57 = v39;
      if (v38 != 32)
      {
        v40 = veorq_s8(v59, *(a1 + 632));
        v58 = veorq_s8(v58, *(a1 + 616));
        v59 = v40;
        if (v38 != 64)
        {
          v41 = veorq_s8(v61, *(a1 + 664));
          v60 = veorq_s8(v60, *(a1 + 648));
          v61 = v41;
          if (v38 != 96)
          {
            v42 = veorq_s8(v63, *(a1 + 696));
            v62 = veorq_s8(v62, *(a1 + 680));
            v63 = v42;
            if (v38 != 128)
            {
              v43 = veorq_s8(vars0, *(a1 + 728));
              v64 = veorq_s8(v64, *(a1 + 712));
              vars0 = v43;
            }
          }
        }
      }

      if (v38 == v37)
      {
        goto LABEL_67;
      }

      if ((v37 & 0x18) == 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v38 = 0;
    }

    v44 = v38;
    v38 = v37 & 0xF8;
    v45 = (v44 + a1 + 584);
    v46 = &__dsta.i8[v44];
    v47 = v44 - v38;
    do
    {
      v48 = *v45++;
      *v46 = veor_s8(*v46, v48);
      ++v46;
      v47 += 8;
    }

    while (v47);
    if (v38 == v37)
    {
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (a11)
  {
    v32 = a4;
    memmove(__dst, __len, a11);
    a4 = v32;
  }

  if (a13)
  {
    memmove(a4, __src, a13);
  }

  return 1;
}

void bssl::SSL_SESSION_parse(unsigned __int8 **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, ssl_session_st **a4@<X8>)
{
  v8 = malloc_type_malloc(0x1B8uLL, 0xB4E622C9uLL);
  if (!v8)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *a4 = 0;
    return;
  }

  *v8 = 432;
  *(v8 + 1) = 1;
  v9 = (v8 + 8);
  *(v8 + 8) = 0;
  v10 = v8 + 16;
  v8[66] = 0;
  v8[99] = 0;
  v8[132] = 0;
  *(v8 + 17) = 0;
  v11 = (v8 + 136);
  *(v8 + 18) = 0;
  *(v8 + 19) = a2;
  *(v8 + 21) = 0;
  *(v8 + 22) = 0;
  *(v8 + 20) = 0;
  *(v8 + 23) = 65;
  v12 = (v8 + 184);
  *(v8 + 24) = vdup_n_s32(0x1C20u);
  v8[352] = 0;
  *(v8 + 53) = 0;
  *(v8 + 54) = 0;
  v40 = v8;
  *(v8 + 200) = 0u;
  v13 = (v8 + 200);
  *(v8 + 401) = 0u;
  *(v8 + 388) = 0u;
  *(v8 + 372) = 0u;
  *(v8 + 356) = 0u;
  *(v8 + 216) = 0u;
  *(v8 + 232) = 0u;
  *(v8 + 248) = 0u;
  *(v8 + 264) = 0u;
  *(v8 + 280) = 0u;
  *(v8 + 37) = 0;
  *(v8 + 25) = time(0);
  v67 = 0;
  v68 = 0;
  v65 = 0;
  LODWORD(v64[0]) = 0;
  if (!cbs_get_any_asn1_element(a1, &v69, v64, &v65, 0, 0, 0) || LODWORD(v64[0]) != 536870928 || v70 < v65 || (v69 += v65, v70 -= v65, !CBS_get_asn1_uint64_with_tag(&v69, &v68, 2)) || v68 != 1 || !CBS_get_asn1_uint64_with_tag(&v69, &v67, 2) || v67 >> 16 || v67 - 769 >= 4 && (v67 - 65276 > 3 || v67 == 65278))
  {
    v14 = 160;
    v15 = 481;
LABEL_6:
    ERR_put_error(16, 0, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_asn1.cc", v15);
    goto LABEL_7;
  }

  *(v40 + 6) = v67;
  v64[0] = 0;
  LODWORD(v63[0]) = 0;
  if (!cbs_get_any_asn1_element(&v69, &v65, v63, v64, 0, 0, 0) || LODWORD(v63[0]) != 4 || (v18 = v66 - v64[0], v66 < v64[0]) || (v19 = &v64[0][v65], v65 += v64[0], v66 -= v64[0], v20 = v18 >= 2, v21 = (v18 - 2), !v20) || (v65 = (v19 + 2), (v66 = v21) != 0))
  {
    v14 = 160;
    v15 = 491;
    goto LABEL_6;
  }

  cipher_by_value = SSL_get_cipher_by_value(bswap32(*v19) >> 16);
  *(v40 + 26) = cipher_by_value;
  if (!cipher_by_value)
  {
    v14 = 237;
    v15 = 496;
    goto LABEL_6;
  }

  v61 = 0;
  if (!CBS_get_asn1(&v69, v64, 4) || !bssl::InplaceVector<unsigned char,32ul>::TryCopyFrom(v40 + 67, v64[0], v64[1]) || !CBS_get_asn1(&v69, v63, 4) || !bssl::InplaceVector<unsigned char,48ul>::TryCopyFrom(v40 + 18, v63[0], v63[1]) || !CBS_get_asn1(&v69, v62, -1610612735) || !CBS_get_asn1_uint64_with_tag(v62, v13, 2) || !CBS_get_asn1(&v69, v62, -1610612734) || !CBS_get_asn1_uint64_with_tag(v62, &v61, 2) || HIDWORD(v61))
  {
    v14 = 160;
    v15 = 511;
    goto LABEL_6;
  }

  *(v40 + 48) = v61;
  v58 = 0;
  if (!CBS_get_optional_asn1(&v69, &v59, &v58, -1610612733) || v58 && !v60)
  {
    v14 = 160;
    v15 = 521;
    goto LABEL_6;
  }

  if (!CBS_get_optional_asn1_octet_string(&v69, v57, 0, -1610612732) || !bssl::InplaceVector<unsigned char,32ul>::TryCopyFrom(v40 + 100, v57[0], v57[1]) || !bssl::SSL_SESSION_parse_long(&v69, v12))
  {
    goto LABEL_7;
  }

  if (!CBS_get_optional_asn1(&v69, &v56, 0, -1610612730))
  {
    v14 = 160;
    v15 = 539;
    goto LABEL_6;
  }

  if (!bssl::SSL_SESSION_parse_string(&v69, v11) || !bssl::SSL_SESSION_parse_u32(&v69, v13 + 39, -1610612727, 0) || (bssl::SSL_SESSION_parse_octet_string(&v69, v40 + 30, -1610612726) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (CBS_peek_asn1_tag(&v69, -1610612723))
  {
    if (!CBS_get_asn1(&v69, v62, -1610612723) || !CBS_get_asn1(v62, &v54, 4) || v55 != 32 || v62[1])
    {
      v14 = 160;
      v15 = 557;
      goto LABEL_6;
    }

    v23 = v54[1];
    v24 = v40;
    *(v40 + 17) = *v54;
    *(v40 + 18) = v23;
    v25 = *(v40 + 416) | 2;
  }

  else
  {
    v24 = v40;
    v25 = *(v40 + 416) & 0xFD;
  }

  v24[416] = v25;
  if (!CBS_get_optional_asn1_octet_string(&v69, &v54, 0, -1610612722) || !bssl::InplaceVector<unsigned char,48ul>::TryCopyFrom(v40 + 304, v54, v55) || !bssl::SSL_SESSION_parse_crypto_buffer(&v69, v40 + 32, -1610612721, a3) || !bssl::SSL_SESSION_parse_crypto_buffer(&v69, v40 + 33, -1610612720, a3))
  {
    goto LABEL_7;
  }

  v53 = 0;
  if (!CBS_get_optional_asn1_BOOL(&v69, &v53, -1610612719, 0))
  {
    v15 = 584;
    goto LABEL_78;
  }

  v26 = *(v40 + 416) & 0xFE;
  if (v53)
  {
    ++v26;
  }

  *(v40 + 416) = v26;
  if (!bssl::SSL_SESSION_parse_u16(&v69, v13 - 93, -1610612718))
  {
    v15 = 590;
    goto LABEL_78;
  }

  v51 = 0;
  v52 = 0;
  v50 = 0;
  if (!CBS_get_optional_asn1(&v69, &v51, &v50, -1610612717))
  {
    goto LABEL_79;
  }

  if (!v50)
  {
    v27 = v58;
    goto LABEL_81;
  }

  if (!v52)
  {
LABEL_79:
    v14 = 160;
    v15 = 600;
    goto LABEL_6;
  }

  v27 = v58;
  if (!v58)
  {
    v14 = 160;
    v15 = 604;
    goto LABEL_6;
  }

LABEL_81:
  if (v27 | v50)
  {
    v28 = OPENSSL_sk_new_null();
    v29 = *(v40 + 18);
    *(v40 + 18) = v28;
    if (v29)
    {
      OPENSSL_sk_pop_free_ex(v29, bssl::internal::DeleterImpl<stack_st_CRYPTO_BUFFER,void>::Free(stack_st_CRYPTO_BUFFER*)::{lambda(void (*)(void *),void *)#1}::__invoke, 0);
      v28 = *(v40 + 18);
    }

    if (v28)
    {
      if (!v58)
      {
        goto LABEL_89;
      }

      v30 = v59;
      v31 = v60;
      while (1)
      {
        v32 = crypto_buffer_new(v30, v31, 0, a3);
        if (!v32)
        {
          break;
        }

        v33 = v32;
        if (!OPENSSL_sk_push(*(v40 + 18), v32))
        {
          CRYPTO_BUFFER_free(v33);
          *a4 = 0;
          v16 = atomic_load(v9);
          if (v16 != -1)
          {
            while (1)
            {
LABEL_8:
              if (!v16)
              {
                abort();
              }

              v17 = v16;
              atomic_compare_exchange_strong(&v9->ssl_version, &v17, v16 - 1);
              if (v17 == v16)
              {
                break;
              }

              v16 = v17;
              if (v17 == -1)
              {
                return;
              }
            }

            if (v16 == 1)
            {
              ssl_session_st::~ssl_session_st(v9);
              free(v40);
            }
          }

          return;
        }

LABEL_89:
        if (!v52)
        {
          goto LABEL_93;
        }

        if (!cbs_get_any_asn1_element(&v51, &v48, 0, 0, 0, 0, 0) || (v31 = v49) == 0)
        {
          v14 = 160;
          v15 = 625;
          goto LABEL_6;
        }

        v30 = v48;
      }
    }

    goto LABEL_7;
  }

LABEL_93:
  v47 = 0;
  if (CBS_get_optional_asn1_octet_string(&v69, &v48, &v47, -1610612715))
  {
    v34 = v49;
    if (v47)
    {
      if (v49 < 4)
      {
        goto LABEL_7;
      }

      v35 = v48;
      v36 = v49 == 4;
      v48 += 4;
      v49 -= 4;
      *(v40 + 90) = bswap32(*v35);
      if (!v36)
      {
        goto LABEL_7;
      }

      v34 = 8;
    }

    else if (v49)
    {
      goto LABEL_7;
    }

    *(v40 + 416) = *(v40 + 416) & 0xF7 | v34;
    v46 = 0;
    if (!CBS_get_optional_asn1_BOOL(&v69, &v46, -1610612714, 1))
    {
      v14 = 160;
      v15 = 651;
      goto LABEL_6;
    }

    *(v40 + 416) = *(v40 + 416) & 0xEF | (16 * (v46 != 0));
    v45 = 0;
    if (!bssl::SSL_SESSION_parse_u16(&v69, v10, -1610612713) || !bssl::SSL_SESSION_parse_u32(&v69, v40 + 91, -1610612712, 0) || !bssl::SSL_SESSION_parse_u32(&v69, v13 - 1, -1610612711, *(v40 + 48)) || !bssl::SSL_SESSION_parse_octet_string(&v69, v40 + 46, -1610612710) || !CBS_get_optional_asn1_BOOL(&v69, &v45, -1610612709, 0) || (bssl::SSL_SESSION_parse_octet_string(&v69, v40 + 53, -1610612708) & 1) == 0)
    {
      v14 = 160;
      v15 = 672;
      goto LABEL_6;
    }

    v42 = 0;
    v41 = 0;
    if (CBS_get_optional_asn1_octet_string(&v69, &v43, &v42 + 1, -1610612707) && bssl::Array<unsigned char>::CopyFrom(v40 + 384, v43, v44) && CBS_get_optional_asn1_octet_string(&v69, &v43, &v42, -1610612706) && bssl::Array<unsigned char>::CopyFrom(v40 + 400, v43, v44))
    {
      optional_asn1_BOOL = CBS_get_optional_asn1_BOOL(&v69, &v41, -1610612705, 0);
      v15 = 688;
      if (optional_asn1_BOOL && !v70)
      {
        v38 = *(v40 + 416) & 0x5F | (32 * (v45 != 0)) | ((v41 != 0) << 7);
        *(v40 + 416) = v38;
        v39 = BYTE4(v42);
        if (HIDWORD(v42) == v42)
        {
          if (!HIDWORD(v42))
          {
LABEL_117:
            *(v40 + 416) = v39 | v38 & 0xBF;
            if ((*(a2 + 48))(v9))
            {
              *a4 = v9;
              return;
            }

            v15 = 703;
            goto LABEL_78;
          }

          if (*(v40 + 47))
          {
            v39 = 64;
            goto LABEL_117;
          }
        }

        v15 = 697;
      }
    }

    else
    {
      v15 = 688;
    }

LABEL_78:
    v14 = 160;
    goto LABEL_6;
  }

LABEL_7:
  *a4 = 0;
  v16 = atomic_load(v9);
  if (v16 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t bssl::InplaceVector<unsigned char,48ul>::TryCopyFrom(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 > 0x30)
  {
    return a3 < 0x31;
  }

  if (!*(result + 48) || result - 1 < -*(result + 48))
  {
    *(result + 48) = 0;
    if (!a3)
    {
LABEL_20:
      *(result + 48) = a3;
      return a3 < 0x31;
    }

    v3 = a2;
    if (a3 < 8)
    {
      v4 = result;
    }

    else
    {
      v4 = result;
      if ((result - a2) >= 0x20)
      {
        if (a3 < 0x20)
        {
          v5 = 0;
          goto LABEL_14;
        }

        v5 = a3 & 0x20;
        v6 = (a2 + 16);
        v7 = (result + 16);
        v8 = v5;
        do
        {
          v9 = *v6;
          *(v7 - 1) = *(v6 - 1);
          *v7 = v9;
          v6 += 2;
          v7 += 2;
          v8 -= 32;
        }

        while (v8);
        if (a3 == v5)
        {
          goto LABEL_20;
        }

        if ((a3 & 0x18) != 0)
        {
LABEL_14:
          v4 = (result + (a3 & 0x38));
          v3 = (a2 + (a3 & 0x38));
          v10 = (a2 + v5);
          v11 = (result + v5);
          v12 = v5 - (a3 & 0x38);
          do
          {
            v13 = *v10++;
            *v11++ = v13;
            v12 += 8;
          }

          while (v12);
          if (a3 == (a3 & 0x38))
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        v3 = (a2 + v5);
        v4 = (result + v5);
      }
    }

    do
    {
LABEL_19:
      v14 = *v3++;
      *v4++ = v14;
    }

    while (v3 != (a2 + a3));
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t bssl::SSL_SESSION_parse_long(unsigned __int8 **a1, unint64_t *a2)
{
  v6 = 0;
  if (!CBS_get_optional_asn1(a1, v7, &v6, -1610612731))
  {
    goto LABEL_6;
  }

  if (v6)
  {
    v5 = 0;
    if (!CBS_get_asn1_uint64_with_tag(v7, &v5, 2) || v7[1] || (v3 = v5, (v5 & 0x8000000000000000) != 0))
    {
LABEL_6:
      ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_asn1.cc", 427);
      return 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

BOOL bssl::SSL_SESSION_parse_string(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v14 = 0;
  if (!CBS_get_optional_asn1(a1, v15, &v14, -1610612728))
  {
    goto LABEL_7;
  }

  if (!v14)
  {
    v8 = *a2;
    *a2 = 0;
    if (!v8)
    {
      return 1;
    }

LABEL_11:
    v10 = *(v8 - 1);
    v9 = v8 - 8;
    v11 = v10 + 8;
    if (v10 != -8)
    {
      bzero(v9, v11);
    }

    free(v9);
    return 1;
  }

  v17 = 0;
  v16 = 0;
  if (!cbs_get_any_asn1_element(v15, &v12, &v16, &v17, 0, 0, 0) || v16 != 4 || (v3 = v13, v4 = v13 - v17, v13 < v17) || (v5 = (v12 + v17), v12 += v17, v13 -= v17, v15[1]))
  {
LABEL_7:
    v6 = 367;
LABEL_8:
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_asn1.cc", v6);
    return 0;
  }

  if (v3 != v17 && memchr(v5, 0, v4))
  {
    v6 = 372;
    goto LABEL_8;
  }

  v15[0] = 0;
  result = CBS_strdup(&v12, v15);
  if (result)
  {
    v8 = *a2;
    *a2 = v15[0];
    if (!v8)
    {
      return 1;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t bssl::SSL_SESSION_parse_u32(unsigned __int8 **a1, _DWORD *a2, int a3, int a4)
{
  v9 = 0;
  if (!CBS_get_optional_asn1(a1, v10, &v9, a3))
  {
    goto LABEL_6;
  }

  if (v9)
  {
    v8 = 0;
    if (!CBS_get_asn1_uint64_with_tag(v10, &v8, 2) || v10[1] || (v6 = v8, HIDWORD(v8)))
    {
LABEL_6:
      ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_asn1.cc", 440);
      return 0;
    }
  }

  else
  {
    v6 = a4;
  }

  *a2 = v6;
  return 1;
}

uint64_t bssl::SSL_SESSION_parse_octet_string(unsigned __int8 **a1, uint64_t *a2, int a3)
{
  v27 = 0;
  result = CBS_get_optional_asn1(a1, v28, &v27, a3);
  if (!result)
  {
    goto LABEL_7;
  }

  if (v27)
  {
    v30 = 0;
    v29 = 0;
    result = cbs_get_any_asn1_element(v28, &v25, &v29, &v30, 0, 0, 0);
    if (!result || v29 != 4 || (v5 = v26 - v30, v26 < v30) || (v6 = v25 + v30, v25 += v30, v26 -= v30, v28[1]))
    {
LABEL_7:
      ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_asn1.cc", 393);
      return 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v25 = 0;
    v26 = 0;
  }

  v8 = *a2;
  v7 = a2[1];
  if (!v7 || v7 - 1 < -v8)
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

    *a2 = 0;
    a2[1] = 0;
    if (!v5)
    {
      return 1;
    }

    if (v5 > 0xFFFFFFFFFFFFFFF7 || (v12 = malloc_type_malloc(v5 + 8, 0xB4E622C9uLL)) == 0)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      result = 0;
      *a2 = 0;
      return result;
    }

    *v12 = v5;
    v13 = v12 + 1;
    *a2 = (v12 + 1);
    a2[1] = v5;
    if (v5 < 8)
    {
      v14 = v6;
      goto LABEL_33;
    }

    v14 = v6;
    if (v12 - v6 + 8 >= 0x20)
    {
      if (v5 < 0x20)
      {
        v15 = 0;
        goto LABEL_28;
      }

      v15 = v5 & 0xFFFFFFFFFFFFFFE0;
      v16 = (v6 + 16);
      v17 = v12 + 3;
      v18 = v5 & 0xFFFFFFFFFFFFFFE0;
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
      if (v5 == v15)
      {
        return 1;
      }

      if ((v5 & 0x18) != 0)
      {
LABEL_28:
        v13 += v5 & 0xFFFFFFFFFFFFFFF8;
        v14 = (v6 + (v5 & 0xFFFFFFFFFFFFFFF8));
        v20 = (v6 + v15);
        v21 = (v12 + v15 + 8);
        v22 = v15 - (v5 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v23 = *v20++;
          *v21++ = v23;
          v22 += 8;
        }

        while (v22);
        if (v5 == (v5 & 0xFFFFFFFFFFFFFFF8))
        {
          return 1;
        }

        goto LABEL_33;
      }

      v14 = (v6 + v15);
      v13 += v15;
    }

    do
    {
LABEL_33:
      v24 = *v14++;
      *v13++ = v24;
    }

    while (v14 != (v6 + v5));
    return 1;
  }

  __break(1u);
  return result;
}

BOOL bssl::SSL_SESSION_parse_crypto_buffer(unsigned __int8 **a1, unsigned int **a2, int a3, uint64_t *a4)
{
  v4 = a1[1];
  if (!v4)
  {
    return 1;
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
          return 1;
        }

        goto LABEL_12;
      }
    }

    return 1;
  }

LABEL_12:
  v12 = v6 | (v5 << 24) & 0xE0000000;
  v13 = v12 & 0xDFFFFFFF;
  if ((v12 & 0xDFFFFFFF) == 0)
  {
    v12 = 0;
  }

  if (v13)
  {
    v14 = v12 == a3;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    return 1;
  }

  v22 = 0;
  LODWORD(v27) = 0;
  if (cbs_get_any_asn1_element(a1, &v24, &v27, &v22, 0, 0, 0) && v27 == a3 && v25 >= v22 && (v24 += v22, v25 -= v22, v27 = 0, v26 = 0, cbs_get_any_asn1_element(&v24, &v22, &v26, &v27, 0, 0, 0)) && v26 == 4 && (v18 = v23 - v27, v23 >= v27) && (v19 = (v22 + v27), v22 += v27, v23 -= v27, !v25))
  {
    v20 = crypto_buffer_new(v19, v18, 0, a4);
    v21 = *a2;
    *a2 = v20;
    if (v21)
    {
      CRYPTO_BUFFER_free(v21);
      v20 = *a2;
    }

    return v20 != 0;
  }

  else
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_asn1.cc", 411);
    return 0;
  }
}

uint64_t bssl::SSL_SESSION_parse_u16(unsigned __int8 **a1, _WORD *a2, int a3)
{
  v7 = 0;
  if (!CBS_get_optional_asn1(a1, v8, &v7, a3))
  {
    goto LABEL_6;
  }

  if (v7)
  {
    v6 = 0;
    if (!CBS_get_asn1_uint64_with_tag(v8, &v6, 2) || v8[1] || (v4 = v6, v6 >= 0x10000))
    {
LABEL_6:
      ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_asn1.cc", 453);
      return 0;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t bssl::SSL_SESSION_to_bytes_full(uint64_t result, uint64_t *a2, int a3)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!*(result + 200))
  {
    return 0;
  }

  result = CBB_add_asn1(a2, &v19, 536870928);
  if (!result)
  {
    return result;
  }

  result = CBB_add_asn1_uint64_with_tag(&v19, 1uLL, 2);
  if (!result)
  {
    return result;
  }

  result = CBB_add_asn1_uint64_with_tag(&v19, *(v3 + 4), 2);
  if (!result)
  {
    return result;
  }

  result = CBB_add_asn1(&v19, v18, 4);
  if (!result)
  {
    return result;
  }

  v6 = *(*(v3 + 200) + 16);
  __dst[0] = 0;
  result = CBB_add_space(v18, __dst, 2);
  if (!result)
  {
    return result;
  }

  *(__dst[0] + 1) = v6;
  *__dst[0] = BYTE1(v6);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v3 + 91);
  }

  if (!CBB_add_asn1(&v19, __dst, 4))
  {
    goto LABEL_70;
  }

  v24 = 0;
  if (!CBB_add_space(__dst, &v24, v7))
  {
    goto LABEL_70;
  }

  if (v7)
  {
    memcpy(v24, (v3 + 59), v7);
  }

  if (!CBB_flush(&v19))
  {
    goto LABEL_70;
  }

  v8 = *(v3 + 58);
  if (!CBB_add_asn1(&v19, __dst, 4))
  {
    goto LABEL_70;
  }

  v24 = 0;
  if (!CBB_add_space(__dst, &v24, v8))
  {
    goto LABEL_70;
  }

  if (v8)
  {
    memcpy(v24, (v3 + 10), v8);
  }

  if (!CBB_flush(&v19))
  {
LABEL_70:
    result = 0;
    if (v20)
    {
      v14 = (v21 + 24);
    }

    else
    {
      v14 = &v22;
    }

    *v14 |= 2u;
    return result;
  }

  result = CBB_add_asn1(&v19, v18, -1610612735);
  if (!result)
  {
    return result;
  }

  result = CBB_add_asn1_uint64_with_tag(v18, *(v3 + 192), 2);
  if (!result)
  {
    return result;
  }

  result = CBB_add_asn1(&v19, v18, -1610612734);
  if (!result)
  {
    return result;
  }

  result = CBB_add_asn1_uint64_with_tag(v18, *(v3 + 184), 2);
  if (!result)
  {
    return result;
  }

  v9 = *(v3 + 136);
  if (v9)
  {
    if (*v9)
    {
      if ((*(v3 + 408) & 2) == 0)
      {
        result = CBB_add_asn1_element(&v19, -1610612733, *(**(v9 + 8) + 8), *(**(v9 + 8) + 16));
        if (!result)
        {
          return result;
        }
      }
    }
  }

  result = CBB_add_asn1(&v19, v18, -1610612732);
  if (!result)
  {
    return result;
  }

  result = CBB_add_asn1_octet_string(v18, (v3 + 92), *(v3 + 124));
  if (!result)
  {
    return result;
  }

  if (*(v3 + 176))
  {
    result = CBB_add_asn1(&v19, v18, -1610612731);
    if (!result)
    {
      return result;
    }

    result = CBB_add_asn1_uint64_with_tag(v18, *(v3 + 176), 2);
    if (!result)
    {
      return result;
    }
  }

  if (*(v3 + 128))
  {
    result = CBB_add_asn1(&v19, v18, -1610612728);
    if (!result)
    {
      return result;
    }

    v10 = strlen(*(v3 + 128));
    result = CBB_add_asn1_octet_string(v18, *(v3 + 128), v10);
    if (!result)
    {
      return result;
    }
  }

  if (*(v3 + 348))
  {
    result = CBB_add_asn1(&v19, v18, -1610612727);
    if (!result)
    {
      return result;
    }

    result = CBB_add_asn1_uint64_with_tag(v18, *(v3 + 348), 2);
    if (!result)
    {
      return result;
    }
  }

  if (!a3)
  {
    if (*(v3 + 240))
    {
      result = CBB_add_asn1(&v19, v18, -1610612726);
      if (!result)
      {
        return result;
      }

      result = CBB_add_asn1_octet_string(v18, *(v3 + 232), *(v3 + 240));
      if (!result)
      {
        return result;
      }
    }
  }

  if ((*(v3 + 408) & 2) != 0)
  {
    result = CBB_add_asn1(&v19, v18, -1610612723);
    if (!result)
    {
      return result;
    }

    result = CBB_add_asn1_octet_string(v18, (v3 + 264), 0x20uLL);
    if (!result)
    {
      return result;
    }
  }

  if (*(v3 + 344))
  {
    result = CBB_add_asn1(&v19, v18, -1610612722);
    if (!result)
    {
      return result;
    }

    result = CBB_add_asn1_octet_string(v18, (v3 + 296), *(v3 + 344));
    if (!result)
    {
      return result;
    }
  }

  if (*(v3 + 248))
  {
    result = CBB_add_asn1(&v19, v18, -1610612721);
    if (!result)
    {
      return result;
    }

    result = CBB_add_asn1_octet_string(v18, *(*(v3 + 248) + 8), *(*(v3 + 248) + 16));
    if (!result)
    {
      return result;
    }
  }

  if (*(v3 + 256))
  {
    result = CBB_add_asn1(&v19, v18, -1610612720);
    if (!result)
    {
      return result;
    }

    result = CBB_add_asn1_octet_string(v18, *(*(v3 + 256) + 8), *(*(v3 + 256) + 16));
    if (!result)
    {
      return result;
    }
  }

  if (*(v3 + 408))
  {
    result = CBB_add_asn1(&v19, v18, -1610612719);
    if (!result)
    {
      return result;
    }

    result = CBB_add_asn1_BOOL(v18, 1);
    if (!result)
    {
      return result;
    }
  }

  if (*(v3 + 6))
  {
    result = CBB_add_asn1(&v19, v18, -1610612718);
    if (!result)
    {
      return result;
    }

    result = CBB_add_asn1_uint64_with_tag(v18, *(v3 + 6), 2);
    if (!result)
    {
      return result;
    }
  }

  v11 = *(v3 + 136);
  if (v11 && (*(v3 + 408) & 2) == 0 && *v11 >= 2uLL)
  {
    result = CBB_add_asn1(&v19, v18, -1610612717);
    if (!result)
    {
      return result;
    }

    v12 = *(v3 + 136);
    if (v12)
    {
      v13 = 1;
      do
      {
        if (v13 >= *v12)
        {
          break;
        }

        v15 = *(v12[1] + 8 * v13);
        v17 = *(v15 + 8);
        v16 = *(v15 + 16);
        __dst[0] = 0;
        result = CBB_add_space(v18, __dst, v16);
        if (!result)
        {
          return result;
        }

        if (v16)
        {
          memcpy(__dst[0], v17, v16);
        }

        ++v13;
        v12 = *(v3 + 136);
      }

      while (v12);
    }
  }

  if ((*(v3 + 408) & 8) != 0)
  {
    result = CBB_add_asn1(&v19, v18, -1610612715);
    if (!result)
    {
      return result;
    }

    result = CBB_add_asn1(v18, __dst, 4);
    if (!result)
    {
      return result;
    }

    result = CBB_add_u32(__dst, *(v3 + 352));
    if (!result)
    {
      return result;
    }

    if ((*(v3 + 408) & 0x10) != 0)
    {
      goto LABEL_88;
    }
  }

  else if ((*(v3 + 408) & 0x10) != 0)
  {
    goto LABEL_88;
  }

  result = CBB_add_asn1(&v19, v18, -1610612714);
  if (!result)
  {
    return result;
  }

  result = CBB_add_asn1_BOOL(v18, 0);
  if (!result)
  {
    return result;
  }

LABEL_88:
  if (!*(v3 + 8) || (result = CBB_add_asn1(&v19, v18, -1610612713), result) && (result = CBB_add_asn1_uint64_with_tag(v18, *(v3 + 8), 2), result))
  {
    if (!*(v3 + 356) || (result = CBB_add_asn1(&v19, v18, -1610612712), result) && (result = CBB_add_asn1_uint64_with_tag(v18, *(v3 + 356), 2), result))
    {
      if (*(v3 + 184) == *(v3 + 188) || (result = CBB_add_asn1(&v19, v18, -1610612711), result) && (result = CBB_add_asn1_uint64_with_tag(v18, *(v3 + 188), 2), result))
      {
        if (!*(v3 + 368) || (result = CBB_add_asn1(&v19, v18, -1610612710), result) && (result = CBB_add_asn1_octet_string(v18, *(v3 + 360), *(v3 + 368)), result))
        {
          if ((*(v3 + 408) & 0x20) == 0 || (result = CBB_add_asn1(&v19, v18, -1610612709), result) && (result = CBB_add_asn1_BOOL(v18, 1), result))
          {
            if (!*(v3 + 424) || (result = CBB_add_asn1(&v19, v18, -1610612708), result) && (result = CBB_add_asn1_octet_string(v18, *(v3 + 416), *(v3 + 424)), result))
            {
              if ((*(v3 + 408) & 0x40) != 0)
              {
                result = CBB_add_asn1(&v19, v18, -1610612707);
                if (!result)
                {
                  return result;
                }

                result = CBB_add_asn1_octet_string(v18, *(v3 + 376), *(v3 + 384));
                if (!result)
                {
                  return result;
                }

                result = CBB_add_asn1(&v19, v18, -1610612706);
                if (!result)
                {
                  return result;
                }

                result = CBB_add_asn1_octet_string(v18, *(v3 + 392), *(v3 + 400));
                if (!result)
                {
                  return result;
                }

                if ((*(v3 + 408) & 0x80) == 0)
                {
                  return CBB_flush(a2);
                }
              }

              else if ((*(v3 + 408) & 0x80) == 0)
              {
                return CBB_flush(a2);
              }

              result = CBB_add_asn1(&v19, v18, -1610612705);
              if (!result)
              {
                return result;
              }

              result = CBB_add_asn1_BOOL(v18, 1);
              if (!result)
              {
                return result;
              }

              return CBB_flush(a2);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t SSL_SESSION_to_bytes_for_ticket(uint64_t a1, void *a2, void *a3)
{
  memset(v14, 0, sizeof(v14));
  v6 = malloc_type_malloc(0x108uLL, 0xB4E622C9uLL);
  if (!v6)
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v9 = 65;
    v10 = 217;
    goto LABEL_6;
  }

  *v6 = 256;
  BYTE8(v14[0]) = 0;
  *&v14[0] = 0;
  *&v14[1] = v6 + 1;
  *(&v14[1] + 8) = xmmword_273BB1820;
  BYTE8(v14[2]) = 1;
  result = bssl::SSL_SESSION_to_bytes_full(a1, v14, 1);
  if (result)
  {
    if (BYTE8(v14[0]))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc";
      v9 = 66;
      v10 = 126;
LABEL_6:
      ERR_put_error(14, 0, v9, v8, v10);
      result = 0;
      goto LABEL_7;
    }

    result = CBB_flush(v14);
    if (!result)
    {
      goto LABEL_7;
    }

    if (BYTE8(v14[2]))
    {
      result = 0;
      if (!a2 || !a3)
      {
        goto LABEL_7;
      }
    }

    else if (!a2)
    {
      goto LABEL_21;
    }

    *a2 = *&v14[1];
LABEL_21:
    if (a3)
    {
      *a3 = *(&v14[1] + 1);
    }

    *&v14[1] = 0;
    result = 1;
  }

LABEL_7:
  if (!BYTE8(v14[0]) && (BYTE8(v14[2]) & 1) != 0 && *&v14[1])
  {
    v11 = result;
    v13 = (*&v14[1] - 8);
    v12 = *(*&v14[1] - 8);
    if (v12 != -8)
    {
      bzero(v13, v12 + 8);
    }

    free(v13);
    return v11;
  }

  return result;
}

ssl_session_st *SSL_SESSION_from_bytes(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v13 = a2;
  bssl::SSL_SESSION_parse(&v12, *(a3 + 16), *(a3 + 736), &v11);
  v3 = v11;
  if (v11)
  {
    v4 = v13 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_asn1.cc", 791);
    v5 = atomic_load(v3);
    if (v5 != -1)
    {
      while (1)
      {
        if (!v5)
        {
          abort();
        }

        v6 = v5;
        atomic_compare_exchange_strong(&v3->ssl_version, &v6, v5 - 1);
        if (v6 == v5)
        {
          break;
        }

        v5 = v6;
        if (v6 == -1)
        {
          return 0;
        }
      }

      if (v5 == 1)
      {
        ssl_session_st::~ssl_session_st(v3);
        tlsext_tick_lifetime_hint = v3[-1].tlsext_tick_lifetime_hint;
        p_tlsext_tick_lifetime_hint = &v3[-1].tlsext_tick_lifetime_hint;
        v9 = tlsext_tick_lifetime_hint + 8;
        if (tlsext_tick_lifetime_hint != -8)
        {
          bzero(p_tlsext_tick_lifetime_hint, v9);
        }

        free(p_tlsext_tick_lifetime_hint);
      }
    }

    return 0;
  }

  return v3;
}

uint64_t bssl::SSLBuffer::EnsureCap(void **this, char a2, unint64_t a3)
{
  if (a3 >= 0x10000)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_buffer.cc", 51);
    return 0;
  }

  if (*(this + 6) >= a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = this;
  if (a3 <= 5)
  {
    v6 = 0;
    v7 = this + 14;
    v8 = *(this + 5);
    if (!*(this + 5))
    {
LABEL_7:
      if (*this != this + 14)
      {
        free(*this);
        this = v5;
        LOWORD(a3) = v4;
      }

      *this = v7;
      *(this + 4) = v6;
      *(this + 6) = a3;
      return 1;
    }

LABEL_6:
    memmove(&v7[v6], *this + *(this + 4), v8);
    this = v5;
    LOWORD(a3) = v4;
    goto LABEL_7;
  }

  v10 = malloc_type_malloc(a3 + 7, 0x100004077774924uLL);
  if (v10)
  {
    v7 = v10;
    v6 = (-a2 - v10) & 7;
    LOWORD(a3) = v4;
    this = v5;
    v8 = v5[5];
    if (!v5[5])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  ERR_put_error(16, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_buffer.cc", 74);
  return 0;
}

uint64_t bssl::ssl_read_buffer_extend_to(bssl *this, ssl_st *a2)
{
  v3 = *(this + 6);
  if (!*(v3 + 90))
  {
    v4 = *(v3 + 80);
    if (v4 != (v3 + 94))
    {
      v5 = a2;
      free(v4);
      a2 = v5;
    }

    *(v3 + 86) = 0;
    *(v3 + 80) = 0;
    v3 = *(this + 6);
  }

  if (**this)
  {
    v6 = 16717;
  }

  else
  {
    v6 = a2;
  }

  if (!bssl::SSLBuffer::EnsureCap((v3 + 80), 13, v6))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(this + 3);
  if (!v7)
  {
    ERR_put_error(16, 0, 119, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_buffer.cc", 185);
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 6);
  if (!**this)
  {
    if (v6 > *(v8 + 92))
    {
      ERR_put_error(16, 0, 121, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_buffer.cc", 144);
      result = 0xFFFFFFFFLL;
      v10 = *(this + 6);
      if (*(v10 + 90))
      {
        return result;
      }

      goto LABEL_41;
    }

    v13 = *(v8 + 90);
    if (v6 <= v13)
    {
      return 1;
    }

    while (1)
    {
      v14 = *(this + 3);
      if (!v14)
      {
        goto LABEL_36;
      }

      if (!*v14)
      {
        goto LABEL_36;
      }

      v15 = *(*v14 + 24);
      if (!v15)
      {
        goto LABEL_36;
      }

      if (!*(v14 + 16))
      {
        goto LABEL_38;
      }

      if ((v6 - v13) < 1)
      {
        goto LABEL_44;
      }

      result = v15(*(this + 3), *(v8 + 80) + *(v8 + 88) + v13);
      if (result <= 0)
      {
        goto LABEL_40;
      }

      *(v14 + 56) += result;
      v16 = *(v8 + 90);
      if (*(v8 + 92) - v16 < result)
      {
        goto LABEL_46;
      }

      LOWORD(v13) = v16 + result;
      *(v8 + 90) = v13;
      v13 = v13;
      result = 1;
      if (v6 <= v13)
      {
        return result;
      }
    }
  }

  if (*(v8 + 90))
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_buffer.cc", 125);
    result = 0xFFFFFFFFLL;
    v10 = *(this + 6);
    if (*(v10 + 90))
    {
      return result;
    }

LABEL_41:
    if (*(v10 + 80) != v10 + 94)
    {
      v19 = result;
      free(*(v10 + 80));
      result = v19;
    }

    *(v10 + 86) = 0;
    *(v10 + 80) = 0;
    return result;
  }

  if (!*v7 || (v11 = *(*v7 + 24)) == 0)
  {
LABEL_36:
    v17 = 115;
    v18 = 83;
LABEL_39:
    ERR_put_error(17, 0, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v18);
    result = 4294967294;
LABEL_40:
    *(*(this + 6) + 196) = 2;
    v10 = *(this + 6);
    if (*(v10 + 90))
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!*(v7 + 16))
  {
LABEL_38:
    v17 = 114;
    v18 = 87;
    goto LABEL_39;
  }

  if (!*(v8 + 92))
  {
LABEL_44:
    result = 0;
    *(*(this + 6) + 196) = 2;
    v10 = *(this + 6);
    if (*(v10 + 90))
    {
      return result;
    }

    goto LABEL_41;
  }

  result = v11(*(this + 3), *(v8 + 80) + *(v8 + 88));
  if (result <= 0)
  {
    goto LABEL_40;
  }

  *(v7 + 56) += result;
  v12 = *(v8 + 90);
  if (*(v8 + 92) - v12 < result)
  {
LABEL_46:
    abort();
  }

  *(v8 + 90) = v12 + result;
  return 1;
}

uint64_t bssl::ssl_handle_open_record(bssl *a1, _BYTE *a2, int a3, ssl_st *a4, int a5)
{
  *a2 = 0;
  v5 = *(a1 + 6);
  v6 = *(v5 + 90);
  if (a3 != 2)
  {
    if (v6 < a4)
    {
      abort();
    }

    *(v5 + 88) += a4;
    LOWORD(v6) = v6 - a4;
    *(v5 + 90) = v6;
    *(v5 + 92) -= a4;
    if (!a3)
    {
      return 1;
    }
  }

  if (v6)
  {
    if (a3 > 1)
    {
      goto LABEL_6;
    }

LABEL_15:
    if (a3 == 1)
    {
      result = 1;
      *a2 = 1;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v5 + 80) != v5 + 94)
  {
    v9 = a1;
    v10 = a2;
    v11 = a4;
    v12 = a5;
    v13 = a3;
    free(*(v5 + 80));
    a3 = v13;
    a5 = v12;
    a4 = v11;
    a1 = v9;
    a2 = v10;
  }

  *(v5 + 86) = 0;
  *(v5 + 80) = 0;
  if (a3 <= 1)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (a3 == 4)
  {
    if (a5)
    {
      bssl::ssl_send_alert(a1, 2, a5);
    }

    return 0xFFFFFFFFLL;
  }

  if (a3 == 3)
  {
    v14 = *(a1 + 6);
    result = 0;
    *(v14 + 196) = 6;
    return result;
  }

  if (a3 != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  result = bssl::ssl_read_buffer_extend_to(a1, a4);
  if (result >= 1)
  {
    result = 1;
    *v7 = 1;
  }

  return result;
}