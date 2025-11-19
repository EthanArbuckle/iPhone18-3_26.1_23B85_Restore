uint64_t bn_expand(uint64_t *a1, unint64_t a2)
{
  if (a2 >= 0xFFFFFFFFFFFFFFC1)
  {
    ERR_put_error(3, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 326);
    return 0;
  }

  v3 = (a2 + 63) >> 6;
  if (v3 <= *(a1 + 3))
  {
    return 1;
  }

  if (a2 >= 0x1FFFFFC1)
  {
    ERR_put_error(3, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 301);
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    ERR_put_error(3, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 306);
    return 0;
  }

  else
  {
    v5 = malloc_type_malloc(8 * v3 + 8, 0xB4E622C9uLL);
    if (v5)
    {
      *v5 = 8 * v3;
      v6 = v5 + 1;
      bzero(v5 + 1, 8 * v3);
      v7 = a1;
      v8 = *(a1 + 2);
      if (v8)
      {
        memcpy(v6, *a1, 8 * v8);
        v7 = a1;
      }

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
        v7 = a1;
      }

      *v7 = v6;
      *(v7 + 3) = v3;
      return 1;
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

uint64_t bn_resize_words(uint64_t *a1, unint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = v2 - a2;
  if (v2 > a2)
  {
    v4 = *a1;
    if (v3 >= 4)
    {
      v6 = (v3 & 0xFFFFFFFFFFFFFFFCLL) + a2;
      v8 = (v4 + 8 * a2 + 16);
      v9 = 0uLL;
      v10 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = 0uLL;
      do
      {
        v9 = vorrq_s8(v8[-1], v9);
        v11 = vorrq_s8(*v8, v11);
        v8 += 2;
        v10 -= 4;
      }

      while (v10);
      v12 = vorrq_s8(v11, v9);
      v5 = vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_12:
        if (v5)
        {
          ERR_put_error(3, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 345);
          return 0;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v5 = 0;
      v6 = a2;
    }

    v13 = v2 - v6;
    v14 = (v4 + 8 * v6);
    do
    {
      v15 = *v14++;
      *&v5 |= v15;
      --v13;
    }

    while (v13);
    goto LABEL_12;
  }

  if (*(a1 + 3) >= a2)
  {
LABEL_23:
    v26 = 8 * (a2 - v2);
    if (v26)
    {
      v27 = a1;
      v28 = a2;
      bzero((*a1 + 8 * v2), v26);
      a1 = v27;
      LODWORD(a2) = v28;
    }

LABEL_25:
    *(a1 + 2) = a2;
    return 1;
  }

  if (a2 >= 0x800000)
  {
    ERR_put_error(3, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 301);
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    ERR_put_error(3, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 306);
    return 0;
  }

  else
  {
    v16 = a1;
    v17 = a2;
    v18 = 8 * a2;
    v19 = malloc_type_malloc(8 * a2 + 8, 0xB4E622C9uLL);
    if (v19)
    {
      *v19 = v18;
      v20 = v19 + 1;
      bzero(v19 + 1, v18);
      a1 = v16;
      v21 = *(v16 + 2);
      if (v21)
      {
        memcpy(v20, *v16, 8 * v21);
        a1 = v16;
      }

      v22 = *a1;
      if (*a1)
      {
        v24 = *(v22 - 8);
        v23 = (v22 - 8);
        v25 = v24 + 8;
        if (v24 != -8)
        {
          bzero(v23, v25);
        }

        free(v23);
        a1 = v16;
      }

      *a1 = v20;
      a2 = v17;
      *(a1 + 3) = v17;
      v2 = *(a1 + 2);
      goto LABEL_23;
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

BIGNUM *__cdecl BN_bin2bn(const unsigned __int8 *s, int len, BIGNUM *ret)
{
  if (ret)
  {
    v3 = 0;
    if (*&len)
    {
      goto LABEL_3;
    }

LABEL_20:
    ret->top = 0;
    return ret;
  }

  v16 = *&len;
  v17 = s;
  v18 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v18)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  *v18 = 24;
  *(v18 + 1) = 0;
  ret = (v18 + 8);
  *(v18 + 2) = 0;
  *(v18 + 3) = 0x100000000;
  v3 = v18 + 8;
  s = v17;
  *&len = v16;
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = (*&len - 1) >> 3;
  v5 = v4 + 1;
  if (v4 < ret->dmax)
  {
    ret->top = v5;
    ret->neg = 0;
    v6 = v5 << 32;
    if (*&len <= (8 * v5))
    {
      goto LABEL_5;
    }

LABEL_34:
    abort();
  }

  if ((*&len - 1) >= 0x3FFFFF8)
  {
    ERR_put_error(3, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 301);
    if (!v3)
    {
      return 0;
    }

    goto LABEL_42;
  }

  if ((ret->flags & 2) != 0)
  {
    ERR_put_error(3, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 306);
    if (!v3)
    {
      return 0;
    }

LABEL_42:
    v38 = *(v3 + 5);
    if ((v38 & 2) == 0)
    {
      v39 = *v3;
      if (*v3)
      {
        v41 = *(v39 - 8);
        v40 = (v39 - 8);
        v42 = v41 + 8;
        if (v41 != -8)
        {
          bzero(v40, v42);
        }

        free(v40);
        v38 = *(v3 + 5);
      }
    }

    if ((v38 & 1) == 0)
    {
      ret = 0;
      *v3 = 0;
      return ret;
    }

    v44 = *(v3 - 1);
    v43 = v3 - 8;
    v45 = v44 + 8;
    if (v44 != -8)
    {
      bzero(v43, v45);
    }

    free(v43);
    return 0;
  }

  v19 = *&len;
  v20 = s;
  v21 = ret;
  v22 = malloc_type_malloc(8 * v5 + 8, 0xB4E622C9uLL);
  if (!v22)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    if (!v3)
    {
      return 0;
    }

    goto LABEL_42;
  }

  *v22 = 8 * v5;
  v23 = v22 + 1;
  bzero(v22 + 1, 8 * v5);
  ret = v21;
  top = v21->top;
  if (top)
  {
    memcpy(v23, v21->d, 8 * top);
    ret = v21;
  }

  d = ret->d;
  if (ret->d)
  {
    v27 = *(d - 1);
    v26 = d - 1;
    v28 = v27 + 8;
    if (v27 != -8)
    {
      bzero(v26, v28);
    }

    free(v26);
    ret = v21;
  }

  ret->d = v23;
  ret->top = v5;
  ret->dmax = v5;
  s = v20;
  *&len = v19;
  ret->neg = 0;
  v6 = v5 << 32;
  if (v19 > 8 * v5)
  {
    goto LABEL_34;
  }

LABEL_5:
  v7 = v6 >> 32;
  v8 = ret->d;
  v9 = *&len - 8;
  if (*&len >= 8uLL)
  {
    if (v9 > 0x47 && (v8 >= &s[*&len] || &s[len & 7] >= v8 + (*&len & 0xFFFFFFFFFFFFFFF8)))
    {
      v29 = (v9 >> 3) + 1;
      v30 = v29 & 0x3FFFFFFFFFFFFFFCLL;
      v10 = *&len - v30 * 8;
      v11 = &v8[v30];
      v31 = (v8 + 2);
      v32 = &s[*&len - 16];
      v33 = 0uLL;
      v34 = v7;
      v35.i64[0] = -1;
      v35.i64[1] = -1;
      v36 = v29 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v37 = vrev64q_s8(vextq_s8(v32[-1], v32[-1], 8uLL));
        v31[-1] = vrev64q_s8(vextq_s8(*v32, *v32, 8uLL));
        *v31 = v37;
        v34 = vaddq_s64(v34, v35);
        v33 = vaddq_s64(v33, v35);
        v31 += 2;
        v32 -= 2;
        v36 -= 4;
      }

      while (v36);
      v7 = vaddvq_s64(vpaddq_s64(v34, v33));
      if (v29 == (v29 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_12:
        *&len = v10;
        v8 = v11;
        if (!v10)
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = *&len;
      v11 = ret->d;
    }

    v12 = v10;
    do
    {
      v10 = v12 - 8;
      *v11++ = bswap64(*&s[v12 - 8]);
      --v7;
      v12 = v10;
    }

    while (v10 > 7);
    goto LABEL_12;
  }

LABEL_13:
  v13 = 0;
  do
  {
    v14 = *s++;
    v13 = v14 | (v13 << 8);
    --*&len;
  }

  while (*&len);
  *v8 = v13;
  --v7;
  v11 = v8 + 1;
LABEL_16:
  if (8 * v7)
  {
    v15 = ret;
    bzero(v11, 8 * v7);
    return v15;
  }

  return ret;
}

uint64_t BN_bn2bin_padded(char *a1, unint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = 8 * *(a3 + 8);
  v5 = v4 - a2;
  if (v4 <= a2)
  {
    goto LABEL_20;
  }

  if (v5 < 8)
  {
    v6 = 0;
    v7 = a2;
    goto LABEL_15;
  }

  if (v5 >= 0x20)
  {
    v8 = v5 & 0xFFFFFFFFFFFFFFE0;
    v9 = (v3 + a2 + 16);
    v10 = 0uLL;
    v11 = v5 & 0xFFFFFFFFFFFFFFE0;
    v12 = 0uLL;
    do
    {
      v10 = vorrq_s8(v9[-1], v10);
      v12 = vorrq_s8(*v9, v12);
      v9 += 2;
      v11 -= 32;
    }

    while (v11);
    v13 = vorrq_s8(v12, v10);
    *v13.i8 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    v14 = v13.i64[0] | HIDWORD(v13.i64[0]) | ((v13.i64[0] | HIDWORD(v13.i64[0])) >> 16);
    v6 = v14 | BYTE1(v14);
    if (v5 == v8)
    {
      goto LABEL_18;
    }

    if ((v5 & 0x18) == 0)
    {
      v7 = v8 + a2;
LABEL_15:
      v20 = v7 - v4;
      v21 = &v3->i8[v7];
      do
      {
        v22 = *v21++;
        v6 |= v22;
        v25 = __CFADD__(v20++, 1);
      }

      while (!v25);
      goto LABEL_18;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v7 = (v5 & 0xFFFFFFFFFFFFFFF8) + a2;
  v15 = v6;
  v16 = &v3->i8[v8 + a2];
  v17 = v8 - (v5 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v18 = *v16++;
    v15 = vorr_s8(v18, v15);
    v17 += 8;
  }

  while (v17);
  v19 = *&v15 | HIDWORD(*&v15) | ((*&v15 | HIDWORD(*&v15)) >> 16);
  v6 = v19 | BYTE1(v19);
  if (v5 != (v5 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_15;
  }

LABEL_18:
  if (v6)
  {
    return 0;
  }

LABEL_20:
  if (v4 >= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = 8 * *(a3 + 8);
  }

  if (!v24)
  {
    goto LABEL_35;
  }

  if (v24 < 8 || (&a1[a2 - v24] < &v3->i8[v24] ? (v25 = v3 >= &a1[a2]) : (v25 = 1), !v25))
  {
    v26 = 0;
    goto LABEL_33;
  }

  if (v24 >= 0x20)
  {
    v26 = v24 & 0xFFFFFFFFFFFFFFE0;
    v31 = v3 + 1;
    v32 = &a1[a2 - 16];
    v33 = v24 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v34 = vrev64q_s8(v31[-1]);
      v35 = vrev64q_s8(*v31);
      v32[-1] = vextq_s8(v35, v35, 8uLL);
      *v32 = vextq_s8(v34, v34, 8uLL);
      v31 += 2;
      v32 -= 2;
      v33 -= 32;
    }

    while (v33);
    if (v24 == v26)
    {
      goto LABEL_35;
    }

    if ((v24 & 0x18) == 0)
    {
LABEL_33:
      v27 = v24 - v26;
      v28 = &a1[a2 + ~v26];
      v29 = &v3->i8[v26];
      do
      {
        v30 = *v29++;
        *v28-- = v30;
        --v27;
      }

      while (v27);
      goto LABEL_35;
    }
  }

  else
  {
    v26 = 0;
  }

  v36 = v26;
  v26 = v24 & 0xFFFFFFFFFFFFFFF8;
  v37 = &v3->i8[v36];
  v38 = &a1[a2 - v36 - 8];
  v39 = v36 - (v24 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v40 = *v37++;
    *v38-- = vrev64_s8(v40);
    v39 += 8;
  }

  while (v39);
  if (v24 != v26)
  {
    goto LABEL_33;
  }

LABEL_35:
  if (v4 < a2)
  {
    bzero(a1, a2 - v24);
  }

  return 1;
}

int BN_cmp(const BIGNUM *a, const BIGNUM *b)
{
  if (a && b)
  {
    neg = a->neg;
    if (neg == b->neg)
    {
      result = BN_ucmp(a, b);
      if (neg)
      {
        return -result;
      }
    }

    else if (neg)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else if (a)
  {
    return -1;
  }

  else
  {
    return b != 0;
  }

  return result;
}

uint64_t BN_cmp_word(BIGNUM *a)
{
  result = 1;
  v4 = 1;
  *&v3.neg = 0x200000000;
  v3.d = &v4;
  *&v3.top = 0x100000001;
  if (a)
  {
    if (a->neg)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return BN_ucmp(a, &v3);
    }
  }

  return result;
}

BOOL BN_is_one(unint64_t **a1)
{
  if (*(a1 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = **a1 ^ 1;
  if (v2 >= 2)
  {
    if (v2 >= 5)
    {
      v6 = (v2 - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v5 = v6 | 1;
      v7 = 0uLL;
      v8 = **a1 ^ 1uLL;
      v9 = (v3 + 3);
      v10 = v6;
      do
      {
        v8 = vorrq_s8(v9[-1], v8);
        v7 = vorrq_s8(*v9, v7);
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      v11 = vorrq_s8(v7, v8);
      v4 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
      if (v2 - 1 == v6)
      {
        return v4 == 0;
      }
    }

    else
    {
      v5 = 1;
    }

    v12 = v2 - v5;
    v13 = &v3[v5];
    do
    {
      v14 = *v13++;
      v4 |= v14;
      --v12;
    }

    while (v12);
  }

  return v4 == 0;
}

BOOL BN_equal_consttime(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 >= v3)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v4 = *a2;
  v5 = v3 - v2;
  if ((v3 - v2) <= 3)
  {
    v6 = 0;
    v7 = *(a1 + 8);
LABEL_8:
    v13 = v3 - v7;
    v14 = &v4->i64[v7];
    do
    {
      v15 = *v14++;
      *&v6 |= v15;
      --v13;
    }

    while (v13);
    goto LABEL_10;
  }

  v7 = (v5 & 0xFFFFFFFFFFFFFFFCLL) + v2;
  v8 = (v4 + 8 * v2 + 16);
  v9 = 0uLL;
  v10 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = 0uLL;
  do
  {
    v9 = vorrq_s8(v8[-1], v9);
    v11 = vorrq_s8(*v8, v11);
    v8 += 2;
    v10 -= 4;
  }

  while (v10);
  v12 = vorrq_s8(v11, v9);
  v6 = vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
  if (v5 != (v5 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v3 < v2)
  {
    v16 = *a1;
    v17 = v2 - v3;
    if ((v2 - v3) > 3)
    {
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + v3;
      v19 = 0uLL;
      v20 = v6;
      v21 = (v16 + 8 * v3 + 16);
      v22 = v17 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20 = vorrq_s8(v21[-1], v20);
        v19 = vorrq_s8(*v21, v19);
        v21 += 2;
        v22 -= 4;
      }

      while (v22);
      v23 = vorrq_s8(v19, v20);
      v6 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v17 == (v17 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v18 = *(a2 + 8);
    }

    v24 = v2 - v18;
    v25 = &v16->i64[v18];
    do
    {
      v26 = *v25++;
      *&v6 |= v26;
      --v24;
    }

    while (v24);
  }

LABEL_18:
  if (v2 >= v3)
  {
    v3 = v3;
  }

  else
  {
    v3 = v2;
  }

  if (v3 >= 1)
  {
    v27 = *a1;
    v28 = *a2;
    if (v3 <= 3)
    {
      v29 = 0;
LABEL_27:
      v36 = v3 - v29;
      v37 = v29;
      v38 = &v28->i64[v37];
      v39 = &v27->i64[v37];
      do
      {
        v41 = *v39++;
        v40 = v41;
        v42 = *v38++;
        *&v6 |= v42 ^ v40;
        --v36;
      }

      while (v36);
      return (*&v6 | *(a2 + 16) ^ *(a1 + 16)) == 0;
    }

    v29 = v3 & 0x7FFFFFFC;
    v30 = 0uLL;
    v31 = v6;
    v32 = v27 + 1;
    v33 = v28 + 1;
    v34 = v29;
    do
    {
      v31 = vorrq_s8(veorq_s8(v33[-1], v32[-1]), v31);
      v30 = vorrq_s8(veorq_s8(*v33, *v32), v30);
      v32 += 2;
      v33 += 2;
      v34 -= 4;
    }

    while (v34);
    v35 = vorrq_s8(v30, v31);
    v6 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (v29 != v3)
    {
      goto LABEL_27;
    }
  }

  return (*&v6 | *(a2 + 16) ^ *(a1 + 16)) == 0;
}

void BN_CTX_free(BN_CTX *c)
{
  if (!c)
  {
    return;
  }

  v3 = *(c + 3);
  v2 = *(c + 4);
  v4 = (c + 24);
  if (v2)
  {
    v5 = v3 - 8;
    do
    {
      v5 += 8;
      if (!v5)
      {
        goto LABEL_36;
      }
    }

    while (--v2);
  }

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

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v9 = *c;
  v10 = *(c + 1);
  if (v10)
  {
    while (v9)
    {
      v14 = *v9;
      *v9 = 0;
      if (v14)
      {
        v15 = *(v14 + 5);
        if ((v15 & 2) == 0)
        {
          v16 = *v14;
          if (*v14)
          {
            v18 = *(v16 - 8);
            v17 = (v16 - 8);
            v19 = v18 + 8;
            if (v18 != -8)
            {
              bzero(v17, v19);
            }

            free(v17);
            v15 = *(v14 + 5);
          }
        }

        if (v15)
        {
          v21 = *(v14 - 1);
          v20 = v14 - 1;
          v22 = v21 + 8;
          if (v21 != -8)
          {
            bzero(v20, v22);
          }

          free(v20);
        }

        else
        {
          *v14 = 0;
        }
      }

      ++v9;
      if (!--v10)
      {
        v9 = *c;
        if (!*c)
        {
          goto LABEL_12;
        }

        goto LABEL_31;
      }
    }

LABEL_36:
    __break(1u);
    return;
  }

  if (v9)
  {
LABEL_31:
    v24 = *(v9 - 1);
    v23 = v9 - 1;
    v25 = v24 + 8;
    if (v24 != -8)
    {
      bzero(v23, v25);
    }

    free(v23);
    *c = 0;
    *(c + 1) = 0;
    *(c + 2) = 0;
    v26 = *(c - 1);
    v11 = c - 8;
    v13 = v26 + 8;
    if (v26 == -8)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_12:
  *c = 0;
  *(c + 1) = 0;
  *(c + 2) = 0;
  v12 = *(c - 1);
  v11 = c - 8;
  v13 = v12 + 8;
  if (v12 != -8)
  {
LABEL_13:
    bzero(v11, v13);
  }

LABEL_14:

  free(v11);
}

BIGNUM *__cdecl BN_CTX_get(BN_CTX *ctx)
{
  if (*(ctx + 56) == 1)
  {
    if (*(ctx + 57) != 1)
    {
      return 0;
    }

    ERR_put_error(3, 0, 116, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/ctx.cc.inc", 75);
    result = 0;
    *(ctx + 57) = 0;
    return result;
  }

  v3 = *(ctx + 6);
  v4 = *(ctx + 1);
  if (v3 == v4)
  {
    v5 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v5)
    {
      v6 = v5;
      *v5 = 24;
      v5[1] = 0;
      v7 = v5 + 1;
      v5[2] = 0;
      v5[3] = 0x100000000;
      bssl::Vector<std::unique_ptr<bignum_st,bssl::internal::Deleter>>::MaybeGrow(ctx);
      if (v8)
      {
        v9 = *(ctx + 1);
        *(*ctx + 8 * v9) = v7;
        v4 = v9 + 1;
        *(ctx + 1) = v4;
        v3 = *(ctx + 6);
        goto LABEL_8;
      }

      v10 = v6[7];
      if ((v10 & 2) == 0)
      {
        v11 = *v7;
        if (*v7)
        {
          v13 = *(v11 - 8);
          v12 = (v11 - 8);
          v14 = v13 + 8;
          if (v13 != -8)
          {
            bzero(v12, v14);
          }

          free(v12);
          v10 = v6[7];
        }
      }

      if (v10)
      {
        free(v6);
      }

      else
      {
        *v7 = 0;
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

    ERR_put_error(3, 0, 116, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/ctx.cc.inc", 84);
    result = 0;
    *(ctx + 56) = 1;
    return result;
  }

LABEL_8:
  if (v4 <= v3)
  {
    abort();
  }

  result = *(*ctx + 8 * v3);
  result->neg = 0;
  result->top = 0;
  *(ctx + 6) = v3 + 1;
  return result;
}

int BN_div(BIGNUM *dv, BIGNUM *rem, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx)
{
  top = d->top;
  if (!top)
  {
    goto LABEL_13;
  }

  v6 = ctx;
  v8 = d->d;
  if (top < 4)
  {
    v9 = 0;
    v10 = 0;
LABEL_7:
    v16 = top - v9;
    v17 = &v8[v9];
    do
    {
      v18 = *v17++;
      *&v10 |= v18;
      --v16;
    }

    while (v16);
    goto LABEL_9;
  }

  v9 = top & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v8 + 2);
  v12 = 0uLL;
  v13 = top & 0xFFFFFFFFFFFFFFFCLL;
  v14 = 0uLL;
  do
  {
    v12 = vorrq_s8(v11[-1], v12);
    v14 = vorrq_s8(*v11, v14);
    v11 += 2;
    v13 -= 4;
  }

  while (v13);
  v15 = vorrq_s8(v14, v12);
  v10 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  if (v9 != top)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (!*&v10)
  {
LABEL_13:
    ERR_put_error(3, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/div.cc.inc", 165);
    LODWORD(v23) = 0;
    return v23;
  }

  if ((*(ctx + 56) & 1) == 0)
  {
    v22 = *(ctx + 6);
    if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
    {
      *(*(v6 + 3) + 8 * (*(v6 + 4))++) = v22;
    }

    else
    {
      *(v6 + 28) = 257;
      ERR_clear_error();
    }
  }

  v24 = BN_CTX_get(v6);
  v25 = BN_CTX_get(v6);
  v26 = BN_CTX_get(v6);
  if (!dv)
  {
    dv = BN_CTX_get(v6);
  }

  LODWORD(v23) = 0;
  if (!v24 || !v25 || !v26 || !dv)
  {
    goto LABEL_192;
  }

  v27 = d->top;
  if (v27 >= 1)
  {
    v28 = d->d;
    while (!d->d[v27 - 1])
    {
      v29 = __OFSUB__(v27--, 1);
      if ((v27 < 0) ^ v29 | (v27 == 0))
      {
        goto LABEL_43;
      }
    }

LABEL_29:
    v30 = v27 - 1;
    v31 = v28[v30];
    v32 = v31 != 0;
    v33 = HIDWORD(v31) != 0;
    if (HIDWORD(v31))
    {
      v31 >>= 32;
    }

    v34 = v31 >> 16 != 0;
    if (v31 >> 16)
    {
      v31 >>= 16;
    }

    v35 = v31 > 0xFF;
    if (v31 > 0xFF)
    {
      v31 >>= 8;
    }

    v36 = v31 > 0xF;
    if (v31 > 0xF)
    {
      v31 >>= 4;
    }

    v37 = v31 > 3;
    if (v31 > 3)
    {
      v31 >>= 2;
    }

    v38 = v32 | (v30 << 6) | (32 * v33) | (16 * v34) | (8 * v35) | (4 * v36) | (2 * v37);
    if (v31 > 1)
    {
      ++v38;
    }

    v39 = 64 - (v38 & 0x3F);
    LODWORD(v23) = BN_lshift(v26, d, v39);
    if (!v23)
    {
      goto LABEL_192;
    }

    goto LABEL_44;
  }

  if (v27)
  {
    v28 = d->d;
    goto LABEL_29;
  }

LABEL_43:
  v39 = 64;
  LODWORD(v23) = BN_lshift(v26, d, 64);
  if (!v23)
  {
    goto LABEL_192;
  }

LABEL_44:
  LODWORD(v23) = BN_lshift(v25, m, v39);
  if (!v23)
  {
    goto LABEL_192;
  }

  v40 = v26->top;
  if (v40 < 1)
  {
    if (!v40)
    {
LABEL_51:
      v26->neg = 0;
    }

    v41 = v25->top;
    v161 = dv;
    if (v41 >= 1)
    {
      goto LABEL_53;
    }
  }

  else
  {
    while (!v26->d[v40 - 1])
    {
      v29 = __OFSUB__(v40--, 1);
      if ((v40 < 0) ^ v29 | (v40 == 0))
      {
        v26->top = 0;
        goto LABEL_51;
      }
    }

    v26->top = v40;
    v41 = v25->top;
    v161 = dv;
    if (v41 >= 1)
    {
LABEL_53:
      while (!v25->d[v41 - 1])
      {
        v29 = __OFSUB__(v41--, 1);
        if ((v41 < 0) ^ v29 | (v41 == 0))
        {
          v25->top = 0;
          goto LABEL_59;
        }
      }

      v25->top = v41;
      v42 = v26->top;
      v43 = v26->d;
      v163 = v42 - 1;
      if (v42 == 1)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    }
  }

  if (!v41)
  {
LABEL_59:
    v41 = 0;
    v25->neg = 0;
  }

  v42 = v26->top;
  v43 = v26->d;
  v163 = v42 - 1;
  if (v42 == 1)
  {
LABEL_61:
    v159 = 0;
    goto LABEL_64;
  }

LABEL_63:
  v159 = v43[v42 - 2];
LABEL_64:
  v44 = v43[v163];
  if (v41 <= v42)
  {
    v41 = v42;
  }

  v45 = v41 + 1;
  v46 = v42;
  LODWORD(v23) = bn_resize_words(v25, v41 + 1);
  if (!v23)
  {
    goto LABEL_192;
  }

  v47 = v45 - v46;
  v161->neg = v26->neg ^ v25->neg;
  v48 = v46;
  if (v161->dmax >= v47)
  {
    goto LABEL_78;
  }

  if (v47 < 0x800000)
  {
    if ((v161->flags & 2) != 0)
    {
      goto LABEL_176;
    }

    v49 = v46;
    v23 = OPENSSL_calloc(v47, 8uLL);
    if (!v23)
    {
      goto LABEL_192;
    }

    n = v39;
    v50 = v161->top;
    if (v50)
    {
      v51 = v23;
      memcpy(v23, v161->d, 8 * v50);
      v23 = v51;
    }

    v52 = v161->d;
    if (v161->d)
    {
      v53 = v23;
      v55 = *(v52 - 1);
      v54 = v52 - 1;
      v56 = v55 + 8;
      if (v55 != -8)
      {
        bzero(v54, v56);
      }

      free(v54);
      v23 = v53;
    }

    v161->d = v23;
    v161->dmax = v47;
    v39 = n;
    v48 = v49;
LABEL_78:
    na = v39;
    v57 = v48 + 1;
    v58 = rem;
    v162 = v48 + 1;
    v59 = v44;
    if (v24->dmax >= (v48 + 1))
    {
LABEL_90:
      r = v58;
      v161->top = v47;
      if (v47 < 1)
      {
LABEL_170:
        v149 = v25->top;
        if (v149 < 1)
        {
          v150 = r;
          v151 = na;
          v152 = v161;
          if (!v149)
          {
LABEL_179:
            v25->neg = 0;
          }
        }

        else
        {
          v150 = r;
          v151 = na;
          v152 = v161;
          while (!v25->d[v149 - 1])
          {
            v29 = __OFSUB__(v149--, 1);
            if ((v149 < 0) ^ v29 | (v149 == 0))
            {
              v25->top = 0;
              goto LABEL_179;
            }
          }

          v25->top = v149;
        }

        v153 = v152->top;
        if (v153 < 1)
        {
          if (!v153)
          {
LABEL_187:
            v152->neg = 0;
          }
        }

        else
        {
          while (!v152->d[v153 - 1])
          {
            v29 = __OFSUB__(v153--, 1);
            if ((v153 < 0) ^ v29 | (v153 == 0))
            {
              v152->top = 0;
              goto LABEL_187;
            }
          }

          v152->top = v153;
        }

        if (!v150 || (LODWORD(v23) = BN_rshift(v150, v25, v151), v23))
        {
          LODWORD(v23) = 1;
        }

        goto LABEL_192;
      }

      v69 = v25->d;
      v70 = v24->d;
      v164 = v26->d;
      v71 = v161->d;
      v160 = v6;
      while (1)
      {
        v75 = &v69[v47 - 1];
        if (v75[v48] == v59)
        {
          v73 = -1;
        }

        else
        {
          v76 = v25;
          v77 = v69;
          v78 = v75[v163];
          v79 = v59;
          v80 = v48;
          v73 = __udivti3();
          v48 = v80;
          if (v80 < 2)
          {
            v57 = v162;
            v69 = v77;
            v25 = v76;
            v59 = v79;
            v6 = v160;
          }

          else
          {
            v81 = v78 - v79 * v73;
            v82 = v75[v80 - 2];
            v83 = (v73 * v159) >> 64;
            v84 = v73 * v159;
            v59 = v79;
            if (__PAIR128__(v81, v82) >= v73 * v159)
            {
              v57 = v162;
              v69 = v77;
              v25 = v76;
              v6 = v160;
              if (v48 < 4)
              {
                goto LABEL_106;
              }

              goto LABEL_109;
            }

            v57 = v162;
            v69 = v77;
            v25 = v76;
            v6 = v160;
            do
            {
              --v73;
              v85 = __CFADD__(v81, v79);
              v81 += v79;
              if (v85)
              {
                break;
              }

              v86 = __PAIR128__(v83, v84) - v159;
              v83 = *(&v86 + 1);
              v84 = v86;
            }

            while (__PAIR128__(v81, v82) < v86);
          }
        }

        if (!v48)
        {
          v91 = 0;
          v70[v48] = 0;
          v92 = 1;
LABEL_131:
          v113 = v70;
          v114 = v75;
          do
          {
LABEL_132:
            v115 = *v113++;
            v116 = *v114 - v115;
            v117 = *v114 < v115;
            v85 = v116 >= v91;
            v118 = v116 - v91;
            v91 = !v85 || v117;
            *v114++ = v118;
            --v92;
          }

          while (v92);
          goto LABEL_136;
        }

        if (v48 < 4)
        {
LABEL_106:
          v87 = 0;
          v88 = v70;
          v89 = v164;
          i = v48;
          do
          {
LABEL_124:
            v110 = *v89++;
            v111 = (v110 * v73) >> 64;
            v112 = v110 * v73 + v87;
            if (__CFADD__(v110 * v73, v87))
            {
              v87 = v111 + 1;
            }

            else
            {
              v87 = v111;
            }

            *v88++ = v112;
            --i;
          }

          while (i);
          goto LABEL_128;
        }

LABEL_109:
        v87 = 0;
        v88 = v70;
        v89 = v164;
        for (i = v48; i >= 4; i -= 4)
        {
          v93 = *v89 * v73;
          v85 = __CFADD__(v93, v87);
          v94 = v93 + v87;
          if (v85)
          {
            v95 = ((*v89 * v73) >> 64) + 1;
          }

          else
          {
            v95 = (*v89 * v73) >> 64;
          }

          *v88 = v94;
          v96 = v89[1];
          v97 = (v96 * v73) >> 64;
          v98 = v96 * v73;
          v85 = __CFADD__(v98, v95);
          v99 = v98 + v95;
          if (v85)
          {
            v100 = v97 + 1;
          }

          else
          {
            v100 = v97;
          }

          v88[1] = v99;
          v101 = v89[2];
          v102 = (v101 * v73) >> 64;
          v103 = v101 * v73;
          v85 = __CFADD__(v103, v100);
          v104 = v103 + v100;
          if (v85)
          {
            v105 = v102 + 1;
          }

          else
          {
            v105 = v102;
          }

          v88[2] = v104;
          v106 = v89[3];
          v107 = (v106 * v73) >> 64;
          v108 = v106 * v73;
          v85 = __CFADD__(v108, v105);
          v109 = v108 + v105;
          if (v85)
          {
            v87 = v107 + 1;
          }

          else
          {
            v87 = v107;
          }

          v88[3] = v109;
          v89 += 4;
          v88 += 4;
        }

        if (i)
        {
          goto LABEL_124;
        }

LABEL_128:
        v70[v48] = v87;
        if (!v57)
        {
          goto LABEL_94;
        }

        if (v57 < 4)
        {
          v91 = 0;
          v92 = v57;
          goto LABEL_131;
        }

        v91 = 0;
        v92 = v57;
        v113 = v70;
        v114 = v75;
        do
        {
          v122 = v114[1];
          v123 = *v114 - *v113;
          v85 = v123 >= v91;
          v124 = v123 - v91;
          v125 = !v85 || *v114 < *v113;
          *v114 = v124;
          v126 = v113[1];
          v85 = __CFSUB__(v122, v126, !v125);
          v114[1] = v122 - (v126 + v125);
          v127 = v113[2];
          v128 = v114[2];
          v129 = v114[3];
          v130 = v85;
          v85 = __CFSUB__(v128, v127, v85);
          v114[2] = v128 - (v127 + !v130);
          v131 = v113[3];
          v132 = v129 - (v131 + !v85);
          v91 = !__CFSUB__(v129, v131, v85);
          v114[3] = v132;
          v114 += 4;
          v113 += 4;
          v92 -= 4;
        }

        while (v92 >= 4);
        if (v92)
        {
          goto LABEL_132;
        }

LABEL_136:
        if (!v91)
        {
          goto LABEL_94;
        }

        if (v48)
        {
          if (v48 >= 4)
          {
            v72 = 0;
            v119 = v48;
            v120 = v164;
            v121 = v75;
            do
            {
              v133 = v121[1];
              v134 = *v121 + *v120;
              v135 = __CFADD__(*v121, *v120);
              v85 = __CFADD__(v134, v72);
              v136 = v134 + v72;
              v137 = v85 || v135;
              *v121 = v136;
              v138 = v120[1];
              v85 = __CFADD__(v137 != 0, v133) | __CFADD__(v138, (v137 != 0) + v133);
              v121[1] = v138 + (v137 != 0) + v133;
              v139 = v120[2];
              v140 = v121[2];
              v141 = v121[3];
              v142 = v85 + v140;
              v85 = __CFADD__(v85, v140) | __CFADD__(v139, v142);
              v121[2] = v139 + v142;
              v143 = v120[3];
              v144 = v143 + v85 + v141;
              if (__CFADD__(v85, v141) | __CFADD__(v143, v85 + v141))
              {
                v72 = 1;
              }

              else
              {
                v72 = 0;
              }

              v121[3] = v144;
              v121 += 4;
              v120 += 4;
              v119 -= 4;
            }

            while (v119 >= 4);
            if (!v119)
            {
              goto LABEL_93;
            }
          }

          else
          {
            v72 = 0;
            v119 = v48;
            v120 = v164;
            v121 = v75;
          }

          do
          {
            v145 = *v120++;
            v146 = *v121 + v145;
            v147 = __CFADD__(*v121, v145);
            v85 = __CFADD__(v146, v72);
            v148 = v146 + v72;
            v72 = v85 || v147;
            *v121++ = v148;
            --v119;
          }

          while (v119);
        }

        else
        {
          v72 = 0;
        }

LABEL_93:
        --v73;
        v75[v48] += v72;
LABEL_94:
        v71[v47 - 1] = v73;
        if (v47-- <= 1)
        {
          goto LABEL_170;
        }
      }
    }

    if (v57 >= 0x800000)
    {
      goto LABEL_80;
    }

    if ((v24->flags & 2) == 0)
    {
      v62 = v48;
      v23 = OPENSSL_calloc(v48 + 1, 8uLL);
      if (!v23)
      {
        goto LABEL_192;
      }

      v63 = v23;
      v64 = v24->top;
      if (v64)
      {
        memcpy(v23, v24->d, 8 * v64);
      }

      v65 = v24->d;
      if (v24->d)
      {
        v67 = *(v65 - 1);
        v66 = v65 - 1;
        v68 = v67 + 8;
        if (v67 != -8)
        {
          bzero(v66, v68);
        }

        free(v66);
      }

      v24->d = v63;
      v57 = v162;
      v24->dmax = v162;
      v58 = rem;
      v59 = v44;
      v48 = v62;
      goto LABEL_90;
    }

LABEL_176:
    v60 = 106;
    v61 = 306;
    goto LABEL_177;
  }

LABEL_80:
  v60 = 102;
  v61 = 301;
LABEL_177:
  ERR_put_error(3, 0, v60, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", v61);
  LODWORD(v23) = 0;
LABEL_192:
  if ((*(v6 + 56) & 1) == 0)
  {
    v154 = *(v6 + 4);
    if (!v154)
    {
      abort();
    }

    *(v6 + 6) = *(*(v6 + 3) + 8 * v154 - 8);
    *(v6 + 4) = v154 - 1;
  }

  return v23;
}

int BN_lshift(BIGNUM *r, const BIGNUM *a, int n)
{
  if (n < 0)
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/shift.cc.inc";
    v7 = 3;
    v8 = 109;
    v9 = 31;
    goto LABEL_6;
  }

  r->neg = a->neg;
  v3 = n >> 6;
  LODWORD(v4) = a->top;
  v5 = v3 + v4 + 1;
  if (r->dmax >= v5)
  {
    d = r->d;
    v12 = a->d;
    v13 = v4 + v3;
    r->d[v4 + v3] = 0;
    v14 = v4 < 1;
    v15 = n & 0x3F;
    if ((n & 0x3F) == 0)
    {
      goto LABEL_21;
    }

LABEL_8:
    if (!v14)
    {
      v16 = &d[v4 + v3];
      v17 = *v16;
      v18 = v4 + 1;
      v19 = &v12[v4 - 1];
      do
      {
        v20 = *v19--;
        *v16 = v17 | (v20 >> (64 - v15));
        v17 = v20 << v15;
        *--v16 = v20 << v15;
        --v18;
      }

      while (v18 > 1);
    }

    goto LABEL_27;
  }

  if (v5 >= 0x800000)
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v7 = 3;
    v8 = 102;
    v9 = 301;
LABEL_6:
    ERR_put_error(v7, 0, v8, v6, v9);
    return 0;
  }

  if ((r->flags & 2) != 0)
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v7 = 3;
    v8 = 106;
    v9 = 306;
    goto LABEL_6;
  }

  v21 = n;
  v22 = a;
  v23 = r;
  v24 = 8 * v5;
  v25 = malloc_type_malloc(v24 + 8, 0xB4E622C9uLL);
  if (!v25)
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v7 = 14;
    v8 = 65;
    v9 = 217;
    goto LABEL_6;
  }

  *v25 = v24;
  d = v25 + 1;
  bzero(v25 + 1, 8 * v5);
  r = v23;
  top = v23->top;
  if (top)
  {
    memcpy(d, v23->d, 8 * top);
    r = v23;
  }

  v27 = r->d;
  if (r->d)
  {
    v29 = *(v27 - 1);
    v28 = v27 - 1;
    v30 = v29 + 8;
    if (v29 != -8)
    {
      bzero(v28, v30);
    }

    free(v28);
    r = v23;
  }

  r->d = d;
  r->dmax = v5;
  a = v22;
  LODWORD(v4) = v22->top;
  n = v21;
  v12 = v22->d;
  v13 = v4 + v3;
  d[v4 + v3] = 0;
  v14 = v4 < 1;
  v15 = v21 & 0x3F;
  if ((v21 & 0x3F) != 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  if (v14)
  {
    goto LABEL_27;
  }

  v31 = v4;
  v32 = &d[v3];
  if (v4 < 6 || (v12 - v32) < 0x20)
  {
    v4 = v4;
LABEL_25:
    v33 = v32 - 1;
    v34 = v12 - 1;
    do
    {
      v33[v4] = v34[v4];
      v14 = v4-- > 1;
    }

    while (v14);
    goto LABEL_27;
  }

  v40 = v4 & 0x7FFFFFFC;
  v4 &= 3u;
  v41 = &v12[v31 - 2];
  v42 = &d[v3 - 2 + v31];
  v43 = v31 & 0x7FFFFFFC;
  do
  {
    v44 = *v41;
    *(v42 - 1) = *(v41 - 1);
    *v42 = v44;
    v41 -= 4;
    v42 -= 4;
    v43 -= 4;
  }

  while (v43);
  if (v40 != v31)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (n >= 0x40)
  {
    v35 = r;
    v36 = d;
    v37 = a;
    bzero(v36, (8 * v3));
    r = v35;
    v13 = v37->top + v3;
  }

  v38 = v13 + 1;
  r->top = v13 + 1;
  if (v13 < 0)
  {
    if (v13 == -1)
    {
LABEL_35:
      r->neg = 0;
    }
  }

  else
  {
    while (!r->d[v38 - 1])
    {
      v39 = __OFSUB__(v38--, 1);
      if ((v38 < 0) ^ v39 | (v38 == 0))
      {
        r->top = 0;
        goto LABEL_35;
      }
    }

    r->top = v38;
  }

  return 1;
}

int BN_rshift(BIGNUM *r, const BIGNUM *a, int n)
{
  if (n < 0)
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/shift.cc.inc";
    v7 = 3;
    v8 = 109;
    v9 = 116;
    goto LABEL_6;
  }

  top = a->top;
  v5 = top;
  if (r->dmax >= top)
  {
    d = r->d;
    v12 = n >> 6;
    if (v12 >= top)
    {
LABEL_29:
      if (!top)
      {
        goto LABEL_35;
      }

      v36 = 8 * v5;
      v37 = d;
      goto LABEL_34;
    }
  }

  else
  {
    if (top >= 0x800000)
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v7 = 3;
      v8 = 102;
      v9 = 301;
LABEL_6:
      ERR_put_error(v7, 0, v8, v6, v9);
      return 0;
    }

    if ((r->flags & 2) != 0)
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v7 = 3;
      v8 = 106;
      v9 = 306;
      goto LABEL_6;
    }

    v27 = n;
    v28 = a;
    v29 = 8 * top;
    v30 = malloc_type_malloc(v29 + 8, 0xB4E622C9uLL);
    if (!v30)
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v7 = 14;
      v8 = 65;
      v9 = 217;
      goto LABEL_6;
    }

    *v30 = v29;
    d = v30 + 1;
    bzero(v30 + 1, v29);
    v31 = r->top;
    if (v31)
    {
      memcpy(d, r->d, 8 * v31);
    }

    v32 = r->d;
    if (r->d)
    {
      v34 = *(v32 - 1);
      v33 = v32 - 1;
      v35 = v34 + 8;
      if (v34 != -8)
      {
        bzero(v33, v35);
      }

      free(v33);
    }

    r->d = d;
    r->dmax = top;
    a = v28;
    top = v28->top;
    v5 = top;
    n = v27;
    v12 = v27 >> 6;
    if (v12 >= top)
    {
      goto LABEL_29;
    }
  }

  v13 = a->d;
  v14 = n & 0x3F;
  if ((n & 0x3F) == 0)
  {
    v38 = a;
    v39 = n;
    memmove(d, &v13[v12], 8 * (v5 - v12));
    a = v38;
    if (v39 < 0x40)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v5 - 1 > v12)
  {
    v15 = v5 + ~v12;
    v16 = v12;
    if (v15 <= 5)
    {
      goto LABEL_16;
    }

    if (d < &v13[v5])
    {
      v16 = v12;
      if (&v13[v12] < (d + 8 * v5 - 8 * v12 - 8))
      {
        goto LABEL_16;
      }
    }

    v17 = vdupq_n_s64((64 - v14));
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + v12;
    v18 = &v13[v12 + 2];
    v19 = (d + 2);
    v20 = vnegq_s64(vdupq_n_s64(v14));
    v21 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v22 = vorrq_s8(vshlq_u64(*(v18 + 8), v17), vshlq_u64(*v18, v20));
      v19[-1] = vorrq_s8(vshlq_u64(*(v18 - 8), v17), vshlq_u64(*(v18 - 16), v20));
      *v19 = v22;
      v18 += 32;
      v19 += 2;
      v21 -= 4;
    }

    while (v21);
    if (v15 != (v15 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_16:
      v23 = v16;
      v24 = (d + 8 * v16 - 8 * v12);
      v25 = ~v16 + v5;
      v26 = &v13[v23 + 1];
      do
      {
        *v24++ = (*v26 << (64 - (n & 0x3Fu))) | (*(v26 - 1) >> (n & 0x3F));
        ++v26;
        --v25;
      }

      while (v25);
    }
  }

  d[v5 - 1 - v12] = v13[v5 - 1] >> (n & 0x3F);
  if (n >= 0x40)
  {
LABEL_33:
    v36 = 8 * v12;
    v37 = &d[v5 - v12];
LABEL_34:
    v40 = a;
    bzero(v37, v36);
    a = v40;
  }

LABEL_35:
  r->neg = a->neg;
  v41 = a->top;
  r->top = v41;
  if (v41 < 1)
  {
    if (v41)
    {
      return 1;
    }

    else
    {
LABEL_42:
      r->neg = 0;
      return 1;
    }
  }

  else
  {
    while (!r->d[v41 - 1])
    {
      v42 = __OFSUB__(v41--, 1);
      if ((v41 < 0) ^ v42 | (v41 == 0))
      {
        r->top = 0;
        goto LABEL_42;
      }
    }

    r->top = v41;
    return 1;
  }
}

int BN_nnmod(BIGNUM *r, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx)
{
  result = BN_div(0, r, m, d, ctx);
  if (result)
  {
    if (r->neg)
    {
      result = bn_usub_consttime(r, d, r);
      if (!result)
      {
        return result;
      }

      top = r->top;
      if (top < 1)
      {
        if (!top)
        {
LABEL_10:
          r->neg = 0;
        }
      }

      else
      {
        while (!r->d[top - 1])
        {
          v8 = __OFSUB__(top--, 1);
          if ((top < 0) ^ v8 | (top == 0))
          {
            r->top = 0;
            goto LABEL_10;
          }
        }

        r->top = top;
      }
    }

    return 1;
  }

  return result;
}

unint64_t bn_reduce_once(unint64_t result, unint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5)
{
  if (!a5)
  {
    return result;
  }

  if (a5 >= 4)
  {
    v5 = 0;
    v6 = a5;
    v7 = a2;
    v8 = result;
    do
    {
      v9 = *v7 - *a4;
      v10 = v9 >= v5;
      v11 = v9 - v5;
      v12 = !v10 || *v7 < *a4;
      v10 = !v12;
      *v8 = v11;
      v13 = v7[1];
      v14 = a4[1];
      v15 = v10;
      v10 = __CFSUB__(v13, v14, v10);
      v8[1] = v13 - (v14 + !v15);
      v16 = v7[2];
      v17 = a4[2];
      v18 = v10;
      v10 = __CFSUB__(v16, v17, v10);
      v8[2] = v16 - (v17 + !v18);
      v19 = v7[3];
      v20 = a4[3];
      v22 = v10;
      v10 = __CFSUB__(v19, v20, v10);
      v21 = v19 - (v20 + !v22);
      v5 = !v10;
      v8[3] = v21;
      v7 += 4;
      a4 += 4;
      v8 += 4;
      v6 -= 4;
    }

    while (v6 >= 4);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = 0;
    v6 = a5;
    v7 = a2;
    v8 = result;
  }

  do
  {
    v24 = *v7++;
    v23 = v24;
    v25 = *a4++;
    v10 = v23 >= v25;
    v26 = v23 - v25;
    v27 = !v10;
    v10 = v26 >= v5;
    v28 = v26 - v5;
    if (v10)
    {
      v5 = v27;
    }

    else
    {
      v5 = 1;
    }

    *v8++ = v28;
    --v6;
  }

  while (v6);
LABEL_20:
  v29 = a3 - v5;
  v30 = ~(a3 - v5);
  if (a5 < 4 || a2 + 8 * a5 > result && result + 8 * a5 > a2)
  {
    v31 = 0;
LABEL_24:
    v32 = a5 - v31;
    v33 = 8 * v31;
    v34 = (result + 8 * v31);
    v35 = (a2 + v33);
    do
    {
      v36 = *v35++;
      *v34 = *v34 & v30 | v36 & v29;
      ++v34;
      --v32;
    }

    while (v32);
    return result;
  }

  v37 = vdupq_n_s64(v29);
  v31 = a5 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = vdupq_n_s64(v30);
  v39 = (a2 + 16);
  v40 = (result + 16);
  v41 = a5 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v42 = vorrq_s8(vandq_s8(*v40, v38), vandq_s8(*v39, v37));
    v40[-1] = vorrq_s8(vandq_s8(v40[-1], v38), vandq_s8(v39[-1], v37));
    *v40 = v42;
    v39 += 2;
    v40 += 2;
    v41 -= 4;
  }

  while (v41);
  if (v31 != a5)
  {
    goto LABEL_24;
  }

  return result;
}

unint64_t bn_mod_sub_words(unint64_t result, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t a5, unint64_t a6)
{
  if (!a6)
  {
    return result;
  }

  if (a6 < 4)
  {
    v6 = 0;
    v7 = a6;
    v8 = result;
    do
    {
LABEL_13:
      v24 = *a2++;
      v23 = v24;
      v25 = *a3++;
      v10 = v23 >= v25;
      v26 = v23 - v25;
      v27 = !v10;
      v10 = v26 >= v6;
      v28 = v26 - v6;
      if (v10)
      {
        v6 = v27;
      }

      else
      {
        v6 = 1;
      }

      *v8++ = v28;
      --v7;
    }

    while (v7);
    goto LABEL_20;
  }

  v6 = 0;
  v7 = a6;
  v8 = result;
  do
  {
    v9 = *a2 - *a3;
    v10 = v9 >= v6;
    v11 = v9 - v6;
    v12 = !v10 || *a2 < *a3;
    v10 = !v12;
    *v8 = v11;
    v13 = a2[1];
    v14 = a3[1];
    v15 = v10;
    v10 = __CFSUB__(v13, v14, v10);
    v8[1] = v13 - (v14 + !v15);
    v16 = a2[2];
    v17 = a3[2];
    v18 = v10;
    v10 = __CFSUB__(v16, v17, v10);
    v8[2] = v16 - (v17 + !v18);
    v19 = a2[3];
    v20 = a3[3];
    v22 = v10;
    v10 = __CFSUB__(v19, v20, v10);
    v21 = v19 - (v20 + !v22);
    v6 = !v10;
    v8[3] = v21;
    a2 += 4;
    a3 += 4;
    v8 += 4;
    v7 -= 4;
  }

  while (v7 >= 4);
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_20:
  v29 = (v6 << 63) >> 63;
  if (a6 >= 4)
  {
    v30 = 0;
    v31 = a6;
    v32 = result;
    v33 = a5;
    do
    {
      v34 = *v32 + *a4;
      v35 = __CFADD__(*v32, *a4);
      v10 = __CFADD__(v34, v30);
      v36 = v34 + v30;
      v37 = v10 || v35;
      v10 = v37 != 0;
      *v33 = v36;
      v38 = v32[1];
      v39 = a4[1];
      v41 = v10;
      v10 = __CFADD__(v10, v38);
      v40 = v41 + v38;
      v10 |= __CFADD__(v39, v40);
      v33[1] = v39 + v40;
      v42 = v32[2];
      v43 = a4[2];
      v45 = v10;
      v10 = __CFADD__(v10, v42);
      v44 = v45 + v42;
      v10 |= __CFADD__(v43, v44);
      v33[2] = v43 + v44;
      v46 = v32[3];
      v47 = a4[3];
      v49 = v10 + v46;
      v10 = __CFADD__(v10, v46) | __CFADD__(v47, v49);
      v48 = v47 + v49;
      v30 = v10;
      v33[3] = v48;
      v32 += 4;
      a4 += 4;
      v33 += 4;
      v31 -= 4;
    }

    while (v31 >= 4);
    if (!v31)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v30 = 0;
    v31 = a6;
    v32 = result;
    v33 = a5;
  }

  do
  {
    v51 = *v32++;
    v50 = v51;
    v52 = *a4++;
    v10 = __CFADD__(v50, v52);
    v53 = v50 + v52;
    v54 = v10;
    v10 = __CFADD__(v53, v30);
    v55 = v53 + v30;
    if (v10)
    {
      v30 = 1;
    }

    else
    {
      v30 = v54;
    }

    *v33++ = v55;
    --v31;
  }

  while (v31);
LABEL_41:
  v56 = ~v29;
  if (a6 < 4 || a5 + 8 * a6 > result && result + 8 * a6 > a5)
  {
    v57 = 0;
LABEL_45:
    v58 = a6 - v57;
    v59 = 8 * v57;
    v60 = (result + 8 * v57);
    v61 = (a5 + v59);
    do
    {
      v62 = *v61++;
      *v60 = *v60 & v56 | v62 & v29;
      ++v60;
      --v58;
    }

    while (v58);
    return result;
  }

  v63 = vdupq_n_s64(v29);
  v57 = a6 & 0xFFFFFFFFFFFFFFFCLL;
  v64 = vdupq_n_s64(v56);
  v65 = (a5 + 16);
  v66 = (result + 16);
  v67 = a6 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v68 = vorrq_s8(vandq_s8(*v66, v64), vandq_s8(*v65, v63));
    v66[-1] = vorrq_s8(vandq_s8(v66[-1], v64), vandq_s8(v65[-1], v63));
    *v66 = v68;
    v65 += 2;
    v66 += 2;
    v67 -= 4;
  }

  while (v67);
  if (v57 != a6)
  {
    goto LABEL_45;
  }

  return result;
}

unint64_t bn_mod_add_words(unint64_t result, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t a5, unint64_t a6)
{
  if (!a6)
  {
    return result;
  }

  if (a6 < 4)
  {
    v6 = 0;
    v7 = a6;
    v8 = result;
    do
    {
LABEL_16:
      v27 = *a2++;
      v26 = v27;
      v28 = *a3++;
      v11 = __CFADD__(v26, v28);
      v29 = v26 + v28;
      v30 = v11;
      v11 = __CFADD__(v29, v6);
      v31 = v29 + v6;
      if (v11)
      {
        v6 = 1;
      }

      else
      {
        v6 = v30;
      }

      *v8++ = v31;
      --v7;
    }

    while (v7);
    goto LABEL_23;
  }

  v6 = 0;
  v7 = a6;
  v8 = result;
  do
  {
    v9 = *a2 + *a3;
    v10 = __CFADD__(*a2, *a3);
    v11 = __CFADD__(v9, v6);
    v12 = v9 + v6;
    v13 = v11 || v10;
    v11 = v13 != 0;
    *v8 = v12;
    v14 = a2[1];
    v15 = a3[1];
    v17 = v11;
    v11 = __CFADD__(v11, v14);
    v16 = v17 + v14;
    v11 |= __CFADD__(v15, v16);
    v8[1] = v15 + v16;
    v18 = a2[2];
    v19 = a3[2];
    v21 = v11;
    v11 = __CFADD__(v11, v18);
    v20 = v21 + v18;
    v11 |= __CFADD__(v19, v20);
    v8[2] = v19 + v20;
    v22 = a2[3];
    v23 = a3[3];
    v25 = v11 + v22;
    v11 = __CFADD__(v11, v22) | __CFADD__(v23, v25);
    v24 = v23 + v25;
    v6 = v11;
    v8[3] = v24;
    a2 += 4;
    a3 += 4;
    v8 += 4;
    v7 -= 4;
  }

  while (v7 >= 4);
  if (v7)
  {
    goto LABEL_16;
  }

LABEL_23:
  if (a6 >= 4)
  {
    v32 = 0;
    v33 = a6;
    v34 = result;
    v35 = a5;
    do
    {
      v36 = *v34 - *a4;
      v11 = v36 >= v32;
      v37 = v36 - v32;
      v38 = !v11 || *v34 < *a4;
      v11 = !v38;
      *v35 = v37;
      v39 = v34[1];
      v40 = a4[1];
      v41 = v11;
      v11 = __CFSUB__(v39, v40, v11);
      v35[1] = v39 - (v40 + !v41);
      v42 = v34[2];
      v43 = a4[2];
      v44 = v11;
      v11 = __CFSUB__(v42, v43, v11);
      v35[2] = v42 - (v43 + !v44);
      v45 = v34[3];
      v46 = a4[3];
      v48 = v11;
      v11 = __CFSUB__(v45, v46, v11);
      v47 = v45 - (v46 + !v48);
      v32 = !v11;
      v35[3] = v47;
      v34 += 4;
      a4 += 4;
      v35 += 4;
      v33 -= 4;
    }

    while (v33 >= 4);
    if (!v33)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v32 = 0;
    v33 = a6;
    v34 = result;
    v35 = a5;
  }

  do
  {
    v50 = *v34++;
    v49 = v50;
    v51 = *a4++;
    v11 = v49 >= v51;
    v52 = v49 - v51;
    v53 = !v11;
    v11 = v52 >= v32;
    v54 = v52 - v32;
    if (v11)
    {
      v32 = v53;
    }

    else
    {
      v32 = 1;
    }

    *v35++ = v54;
    --v33;
  }

  while (v33);
LABEL_41:
  v55 = v6 - v32;
  v56 = ~v55;
  if (a6 < 4 || a5 + 8 * a6 > result && result + 8 * a6 > a5)
  {
    v57 = 0;
LABEL_45:
    v58 = a6 - v57;
    v59 = 8 * v57;
    v60 = (a5 + 8 * v57);
    v61 = (result + v59);
    do
    {
      v62 = *v60++;
      *v61 = v62 & v56 | *v61 & v55;
      ++v61;
      --v58;
    }

    while (v58);
    return result;
  }

  v63 = vdupq_n_s64(v55);
  v57 = a6 & 0xFFFFFFFFFFFFFFFCLL;
  v64 = vdupq_n_s64(v56);
  v65 = (result + 16);
  v66 = (a5 + 16);
  v67 = a6 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v68 = vorrq_s8(vandq_s8(*v66, v64), vandq_s8(*v65, v63));
    v65[-1] = vorrq_s8(vandq_s8(v66[-1], v64), vandq_s8(v65[-1], v63));
    *v65 = v68;
    v65 += 2;
    v66 += 2;
    v67 -= 4;
  }

  while (v67);
  if (v57 != a6)
  {
    goto LABEL_45;
  }

  return result;
}

uint64_t bn_div_consttime(BIGNUM *a1, BIGNUM *a2, BIGNUM *a3, uint64_t a4, int a5, BN_CTX *ctx)
{
  if (a3->neg || *(a4 + 16))
  {
    v6 = 109;
    v7 = 401;
LABEL_4:
    ERR_put_error(3, 0, v6, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/div.cc.inc", v7);
    return 0;
  }

  v9 = *(a4 + 8);
  if (!v9)
  {
LABEL_18:
    v6 = 105;
    v7 = 405;
    goto LABEL_4;
  }

  v10 = *a4;
  if (v9 < 4)
  {
    v11 = 0;
    v12 = 0;
LABEL_12:
    v18 = v9 - v11;
    v19 = &v10->i64[v11];
    do
    {
      v20 = *v19++;
      *&v12 |= v20;
      --v18;
    }

    while (v18);
    goto LABEL_14;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = v10 + 1;
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
  if (v11 != v9)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (!*&v12)
  {
    goto LABEL_18;
  }

  v22 = ctx;
  a = a2;
  v23 = a1;
  v24 = a4;
  v25 = a3;
  if ((*(ctx + 56) & 1) == 0)
  {
    v26 = *(ctx + 6);
    if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
    {
      ctx = v22;
      *(*(v22 + 3) + 8 * (*(v22 + 4))++) = v26;
    }

    else
    {
      *(v22 + 28) = 257;
      ERR_clear_error();
      ctx = v22;
    }

    a2 = a;
    a1 = v23;
    a4 = v24;
    a3 = v25;
  }

  if (!a1 || a1 == a3 || (v27 = a1, a1 == a4))
  {
    v28 = BN_CTX_get(ctx);
    a3 = v25;
    a4 = v24;
    a2 = a;
    ctx = v22;
    v27 = v28;
  }

  if (!a2 || a2 == a3 || (v29 = a2, a2 == a4))
  {
    v30 = BN_CTX_get(ctx);
    ctx = v22;
    v29 = v30;
  }

  v31 = BN_CTX_get(ctx);
  result = 0;
  if (!v27 || !v29)
  {
    goto LABEL_49;
  }

  v32 = v22;
  if (!v31)
  {
    goto LABEL_50;
  }

  top = v25->top;
  if (v27->dmax < top)
  {
    if (top >= 0x800000)
    {
      ERR_put_error(3, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 301);
      v32 = v22;
      result = 0;
      goto LABEL_50;
    }

    if ((v27->flags & 2) != 0)
    {
      ERR_put_error(3, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 306);
      result = 0;
    }

    else
    {
      result = OPENSSL_calloc(top, 8uLL);
      if (result)
      {
        v34 = result;
        v35 = v27->top;
        if (v35)
        {
          memcpy(result, v27->d, 8 * v35);
        }

        v119 = v34;
        d = v27->d;
        if (v27->d)
        {
          v38 = *(d - 1);
          v37 = (d - 1);
          v39 = v38 + 8;
          if (v38 != -8)
          {
            bzero(v37, v39);
          }

          free(v37);
        }

        v27->d = v119;
        v27->dmax = top;
        goto LABEL_44;
      }
    }

LABEL_49:
    v32 = v22;
    goto LABEL_50;
  }

LABEL_44:
  result = bn_wexpand(v29, *(v24 + 8));
  if (!result)
  {
    goto LABEL_49;
  }

  result = bn_wexpand(v31, *(v24 + 8));
  if (!result)
  {
    goto LABEL_49;
  }

  v40 = v25->top;
  if (v40)
  {
    bzero(v27->d, 8 * v40);
    v41 = v25;
    LODWORD(v40) = v25->top;
  }

  else
  {
    v41 = v25;
  }

  v27->top = v40;
  v27->neg = 0;
  v43 = *(v24 + 8);
  if (v43)
  {
    bzero(v29->d, 8 * v43);
    v41 = v25;
    v44 = v24;
    v45 = *(v24 + 8);
  }

  else
  {
    v44 = v24;
    v45 = 0;
  }

  v32 = v22;
  v46 = a;
  v47 = v23;
  v29->top = v45;
  v29->neg = 0;
  v48 = v41->top;
  if (a5)
  {
    if (((a5 - 1) >> 6) >= v48)
    {
      v49 = v41->top;
    }

    else
    {
      v49 = (a5 - 1) >> 6;
    }

    if (v49)
    {
      memcpy(v29->d, &v41->d[v48 - v49], 8 * v49);
      v41 = v25;
      v44 = v24;
      v47 = v23;
      v46 = a;
      v32 = v22;
      v48 = v25->top;
    }

    v50 = ~v49;
  }

  else
  {
    v50 = -1;
  }

  v51 = (v50 + v48);
  if (v51 < 0)
  {
    goto LABEL_128;
  }

  v52 = v29->d;
  v53 = *(v44 + 8);
  v54 = v41->d;
  if (!v53)
  {
    v117 = v27->d;
    do
    {
      for (i = 63; i != -1; --i)
      {
        v52->i64[0] |= (v54[v51] >> i) & 1;
        v117[v51] |= 1 << i;
      }

      v59 = v51-- <= 0;
    }

    while (!v59);
    goto LABEL_128;
  }

  v55 = *v31;
  v56 = *v44;
  v57 = v52 >= *v31 + 8 * v53 || v55 >= v52 + 8 * v53;
  v58 = !v57;
  while (2)
  {
    v60 = 63;
    do
    {
      v61 = v60;
      if (v53 < 4)
      {
        v62 = 0;
        v63 = v53;
        v64 = v52;
        do
        {
LABEL_90:
          v76 = 2 * *v64;
          v77 = __CFADD__(*v64, *v64);
          v57 = __CFADD__(v76, v62);
          v78 = v76 + v62;
          v62 = v57 || v77;
          *v64++ = v78;
          --v63;
        }

        while (v63);
        goto LABEL_97;
      }

      v62 = 0;
      v63 = v53;
      v64 = v52;
      do
      {
        v65 = v64[1];
        v66 = 2 * *v64;
        v67 = __CFADD__(*v64, *v64);
        v57 = __CFADD__(v66, v62);
        v68 = v66 + v62;
        v69 = v57 || v67;
        v57 = __CFADD__(v69 != 0, v65);
        v70 = (v69 != 0) + v65;
        v57 |= __CFADD__(v65, v70);
        *v64 = v68;
        v64[1] = v65 + v70;
        v71 = v64[2];
        v72 = v64[3];
        v73 = v71 + v57 + v71;
        v75 = (__CFADD__(v57, v71) | __CFADD__(v71, v57 + v71)) + v72;
        v57 = __CFADD__(__CFADD__(v57, v71) | __CFADD__(v71, v57 + v71), v72) | __CFADD__(v72, v75);
        v74 = v72 + v75;
        v62 = v57;
        v64[2] = v73;
        v64[3] = v74;
        v64 += 4;
        v63 -= 4;
      }

      while (v63 >= 4);
      if (v63)
      {
        goto LABEL_90;
      }

LABEL_97:
      v52->i64[0] |= (v54[v51] >> v61) & 1;
      if (v53 < 4)
      {
        v79 = 0;
        v80 = v53;
        v81 = v56;
        v82 = v52;
        v83 = v55;
        do
        {
LABEL_108:
          v98 = *v82++;
          v97 = v98;
          v99 = *v81++;
          v57 = v97 >= v99;
          v100 = v97 - v99;
          v101 = !v57;
          v57 = v100 >= v79;
          v102 = v100 - v79;
          if (v57)
          {
            v79 = v101;
          }

          else
          {
            v79 = 1;
          }

          *v83++ = v102;
          --v80;
        }

        while (v80);
        goto LABEL_115;
      }

      v79 = 0;
      v80 = v53;
      v81 = v56;
      v82 = v52;
      v83 = v55;
      do
      {
        v84 = *v82 - *v81;
        v57 = v84 >= v79;
        v85 = v84 - v79;
        v86 = !v57 || *v82 < *v81;
        v57 = !v86;
        *v83 = v85;
        v87 = v82[1];
        v88 = v81[1];
        v89 = v57;
        v57 = __CFSUB__(v87, v88, v57);
        v83[1] = v87 - (v88 + !v89);
        v90 = v82[2];
        v91 = v81[2];
        v92 = v57;
        v57 = __CFSUB__(v90, v91, v57);
        v83[2] = v90 - (v91 + !v92);
        v93 = v82[3];
        v94 = v81[3];
        v96 = v57;
        v57 = __CFSUB__(v93, v94, v57);
        v95 = v93 - (v94 + !v96);
        v79 = !v57;
        v83[3] = v95;
        v82 += 4;
        v81 += 4;
        v83 += 4;
        v80 -= 4;
      }

      while (v80 >= 4);
      if (v80)
      {
        goto LABEL_108;
      }

LABEL_115:
      v103 = v62 - v79;
      v104 = ~v103;
      if ((v53 < 4) | v58 & 1)
      {
        v105 = 0;
LABEL_120:
        v112 = v53 - v105;
        v113 = v105;
        v114 = (v55 + 8 * v105);
        v115 = &v52->u64[v113];
        do
        {
          v116 = *v114++;
          *v115 = v116 & v104 | *v115 & v103;
          ++v115;
          --v112;
        }

        while (v112);
        goto LABEL_75;
      }

      v106 = vdupq_n_s64(v103);
      v107 = vdupq_n_s64(v104);
      v108 = v53 & 0xFFFFFFFFFFFFFFFCLL;
      v109 = (v55 + 16);
      v110 = v52 + 1;
      do
      {
        v111 = vorrq_s8(vandq_s8(*v109, v107), vandq_s8(*v110, v106));
        v110[-1] = vorrq_s8(vandq_s8(v109[-1], v107), vandq_s8(v110[-1], v106));
        *v110 = v111;
        v110 += 2;
        v109 += 2;
        v108 -= 4;
      }

      while (v108);
      v105 = v53 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v53 & 0xFFFFFFFFFFFFFFFCLL) != v53)
      {
        goto LABEL_120;
      }

LABEL_75:
      v27->d[v51] |= ((v103 & 1) == 0) << v61;
      v60 = v61 - 1;
    }

    while (v61);
    v59 = v51-- <= 0;
    if (!v59)
    {
      continue;
    }

    break;
  }

LABEL_128:
  if (!v47 || (result = BN_copy(v47, v27), v46 = a, v32 = v22, result))
  {
    if (!v46 || (result = BN_copy(v46, v29), v32 = v22, result))
    {
      result = 1;
    }
  }

LABEL_50:
  if ((*(v32 + 56) & 1) == 0)
  {
    v42 = *(v32 + 4);
    if (!v42)
    {
      abort();
    }

    *(v32 + 6) = *(*(v32 + 3) + 8 * v42 - 8);
    *(v32 + 4) = v42 - 1;
  }

  return result;
}

uint64_t bn_mod_add_consttime(uint64_t a1, const BIGNUM *a2, const BIGNUM *a3, uint64_t a4, BN_CTX *ctx)
{
  v8 = a2;
  if (*(ctx + 56))
  {
    v10 = *(a4 + 8);
    v11 = v10;
    if (a2->top < v10)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (a3->top >= v10)
    {
      goto LABEL_54;
    }

    goto LABEL_12;
  }

  v18 = *(ctx + 6);
  if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
  {
    *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v18;
    v10 = *(a4 + 8);
    v11 = v10;
    if (v8->top >= v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(ctx + 28) = 257;
    ERR_clear_error();
    v10 = *(a4 + 8);
    v11 = v10;
    if (v8->top >= v10)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  v12 = BN_CTX_get(ctx);
  if (!v12)
  {
    goto LABEL_53;
  }

  v13 = v12;
  if (v12->dmax < v10)
  {
    if (v10 >= 0x800000)
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v15 = 3;
      v16 = 102;
      v17 = 301;
LABEL_52:
      ERR_put_error(v15, 0, v16, v14, v17);
LABEL_53:
      v8 = 0;
      v10 = *(a4 + 8);
      v11 = v10;
      if (a3->top >= v10)
      {
        goto LABEL_54;
      }

      goto LABEL_12;
    }

    if ((v12->flags & 2) != 0)
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v15 = 3;
      v16 = 106;
      v17 = 306;
      goto LABEL_52;
    }

    v25 = malloc_type_malloc(8 * v11 + 8, 0xB4E622C9uLL);
    if (!v25)
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v15 = 14;
      v16 = 65;
      v17 = 217;
      goto LABEL_52;
    }

    *v25 = 8 * v11;
    v26 = v25 + 1;
    bzero(v25 + 1, 8 * v11);
    top = v13->top;
    if (top)
    {
      memcpy(v26, v13->d, 8 * top);
    }

    d = v13->d;
    if (v13->d)
    {
      v30 = *(d - 1);
      v29 = d - 1;
      v31 = v30 + 8;
      if (v30 != -8)
      {
        bzero(v29, v31);
      }

      free(v29);
    }

    v13->d = v26;
    v13->dmax = v10;
  }

  v13->neg = 0;
  v13->top = v10;
  if (!BN_copy(v13, v8))
  {
    goto LABEL_53;
  }

  if (bn_resize_words(v13, v11))
  {
    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a4 + 8);
  v11 = v10;
  if (a3->top >= v10)
  {
LABEL_54:
    v39 = *(a4 + 8);
    v40 = BN_CTX_get(ctx);
    if (v40)
    {
      goto LABEL_55;
    }

LABEL_47:
    v41 = 0;
    if (*(ctx + 56))
    {
      return v41;
    }

    goto LABEL_87;
  }

LABEL_12:
  v19 = BN_CTX_get(ctx);
  if (!v19)
  {
    goto LABEL_46;
  }

  v20 = v19;
  if (v19->dmax >= v10)
  {
    goto LABEL_40;
  }

  if (v10 >= 0x800000)
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v22 = 3;
    v23 = 102;
    v24 = 301;
    goto LABEL_91;
  }

  if ((v19->flags & 2) != 0)
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v22 = 3;
    v23 = 106;
    v24 = 306;
    goto LABEL_91;
  }

  v32 = malloc_type_malloc(8 * v11 + 8, 0xB4E622C9uLL);
  if (!v32)
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v22 = 14;
    v23 = 65;
    v24 = 217;
LABEL_91:
    ERR_put_error(v22, 0, v23, v21, v24);
    a3 = 0;
    v39 = *(a4 + 8);
    v40 = BN_CTX_get(ctx);
    if (!v40)
    {
      goto LABEL_47;
    }

    goto LABEL_55;
  }

  *v32 = 8 * v11;
  v33 = v32 + 1;
  bzero(v32 + 1, 8 * v11);
  v34 = v20->top;
  if (v34)
  {
    memcpy(v33, v20->d, 8 * v34);
  }

  v35 = v20->d;
  if (v20->d)
  {
    v37 = *(v35 - 1);
    v36 = v35 - 1;
    v38 = v37 + 8;
    if (v37 != -8)
    {
      bzero(v36, v38);
    }

    free(v36);
  }

  v20->d = v33;
  v20->dmax = v10;
LABEL_40:
  v20->neg = 0;
  v20->top = v10;
  if (!BN_copy(v20, a3))
  {
LABEL_46:
    a3 = 0;
    v39 = *(a4 + 8);
    v40 = BN_CTX_get(ctx);
    if (v40)
    {
      goto LABEL_55;
    }

    goto LABEL_47;
  }

  if (bn_resize_words(v20, v11))
  {
    a3 = v20;
  }

  else
  {
    a3 = 0;
  }

  v39 = *(a4 + 8);
  v40 = BN_CTX_get(ctx);
  if (!v40)
  {
    goto LABEL_47;
  }

LABEL_55:
  if (v40->dmax < v39)
  {
    if (v39 >= 0x800000)
    {
LABEL_70:
      v52 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v53 = 3;
      v54 = 102;
      v55 = 301;
LABEL_85:
      ERR_put_error(v53, 0, v54, v52, v55);
      v41 = 0;
      goto LABEL_86;
    }

    if ((v40->flags & 2) != 0)
    {
      goto LABEL_83;
    }

    v42 = v40;
    v43 = malloc_type_malloc(8 * v39 + 8, 0xB4E622C9uLL);
    if (!v43)
    {
LABEL_84:
      v52 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v53 = 14;
      v54 = 65;
      v55 = 217;
      goto LABEL_85;
    }

    *v43 = 8 * v39;
    v44 = v43 + 1;
    bzero(v43 + 1, 8 * v39);
    v40 = v42;
    v45 = v42->top;
    if (v45)
    {
      memcpy(v44, v42->d, 8 * v45);
      v40 = v42;
    }

    v46 = v40->d;
    if (v40->d)
    {
      v48 = *(v46 - 8);
      v47 = (v46 - 8);
      v49 = v48 + 8;
      if (v48 != -8)
      {
        bzero(v47, v49);
      }

      free(v47);
      v40 = v42;
    }

    v40->d = v44;
    v40->dmax = v39;
  }

  v41 = 0;
  v40->neg = 0;
  v40->top = v39;
  if (!v8 || !a3)
  {
LABEL_86:
    if (*(ctx + 56))
    {
      return v41;
    }

    goto LABEL_87;
  }

  v50 = *(a4 + 8);
  v51 = v50;
  if (*(a1 + 12) >= v50)
  {
    v56 = *a1;
    goto LABEL_72;
  }

  if (v50 >= 0x800000)
  {
    goto LABEL_70;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
LABEL_83:
    v52 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v53 = 3;
    v54 = 106;
    v55 = 306;
    goto LABEL_85;
  }

  v57 = v40;
  v58 = 8 * v50;
  v59 = malloc_type_malloc(v58 + 8, 0xB4E622C9uLL);
  if (!v59)
  {
    goto LABEL_84;
  }

  *v59 = v58;
  v56 = v59 + 1;
  bzero(v59 + 1, v58);
  v60 = *(a1 + 8);
  if (v60)
  {
    memcpy(v56, *a1, 8 * v60);
  }

  v61 = *a1;
  if (*a1)
  {
    v63 = *(v61 - 1);
    v62 = (v61 - 1);
    v64 = v63 + 8;
    if (v63 != -8)
    {
      bzero(v62, v64);
    }

    free(v62);
  }

  *a1 = v56;
  *(a1 + 12) = v50;
  v51 = *(a4 + 8);
  v40 = v57;
LABEL_72:
  bn_mod_add_words(v56, v8->d, a3->d, *a4, v40->d, v51);
  *(a1 + 8) = *(a4 + 8);
  *(a1 + 16) = 0;
  v41 = 1;
  if (*(ctx + 56))
  {
    return v41;
  }

LABEL_87:
  v65 = *(ctx + 4);
  if (!v65)
  {
    abort();
  }

  *(ctx + 6) = *(*(ctx + 3) + 8 * v65 - 8);
  *(ctx + 4) = v65 - 1;
  return v41;
}

uint64_t bn_mod_sub_consttime(uint64_t a1, const BIGNUM *a2, const BIGNUM *a3, uint64_t a4, BN_CTX *ctx)
{
  v8 = a2;
  if (*(ctx + 56))
  {
    v10 = *(a4 + 8);
    v11 = v10;
    if (a2->top < v10)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (a3->top >= v10)
    {
      goto LABEL_54;
    }

    goto LABEL_12;
  }

  v18 = *(ctx + 6);
  if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
  {
    *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v18;
    v10 = *(a4 + 8);
    v11 = v10;
    if (v8->top >= v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(ctx + 28) = 257;
    ERR_clear_error();
    v10 = *(a4 + 8);
    v11 = v10;
    if (v8->top >= v10)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  v12 = BN_CTX_get(ctx);
  if (!v12)
  {
    goto LABEL_53;
  }

  v13 = v12;
  if (v12->dmax < v10)
  {
    if (v10 >= 0x800000)
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v15 = 3;
      v16 = 102;
      v17 = 301;
LABEL_52:
      ERR_put_error(v15, 0, v16, v14, v17);
LABEL_53:
      v8 = 0;
      v10 = *(a4 + 8);
      v11 = v10;
      if (a3->top >= v10)
      {
        goto LABEL_54;
      }

      goto LABEL_12;
    }

    if ((v12->flags & 2) != 0)
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v15 = 3;
      v16 = 106;
      v17 = 306;
      goto LABEL_52;
    }

    v25 = malloc_type_malloc(8 * v11 + 8, 0xB4E622C9uLL);
    if (!v25)
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v15 = 14;
      v16 = 65;
      v17 = 217;
      goto LABEL_52;
    }

    *v25 = 8 * v11;
    v26 = v25 + 1;
    bzero(v25 + 1, 8 * v11);
    top = v13->top;
    if (top)
    {
      memcpy(v26, v13->d, 8 * top);
    }

    d = v13->d;
    if (v13->d)
    {
      v30 = *(d - 1);
      v29 = d - 1;
      v31 = v30 + 8;
      if (v30 != -8)
      {
        bzero(v29, v31);
      }

      free(v29);
    }

    v13->d = v26;
    v13->dmax = v10;
  }

  v13->neg = 0;
  v13->top = v10;
  if (!BN_copy(v13, v8))
  {
    goto LABEL_53;
  }

  if (bn_resize_words(v13, v11))
  {
    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a4 + 8);
  v11 = v10;
  if (a3->top >= v10)
  {
LABEL_54:
    v39 = *(a4 + 8);
    v40 = BN_CTX_get(ctx);
    if (v40)
    {
      goto LABEL_55;
    }

LABEL_47:
    v41 = 0;
    if (*(ctx + 56))
    {
      return v41;
    }

    goto LABEL_87;
  }

LABEL_12:
  v19 = BN_CTX_get(ctx);
  if (!v19)
  {
    goto LABEL_46;
  }

  v20 = v19;
  if (v19->dmax >= v10)
  {
    goto LABEL_40;
  }

  if (v10 >= 0x800000)
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v22 = 3;
    v23 = 102;
    v24 = 301;
    goto LABEL_91;
  }

  if ((v19->flags & 2) != 0)
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v22 = 3;
    v23 = 106;
    v24 = 306;
    goto LABEL_91;
  }

  v32 = malloc_type_malloc(8 * v11 + 8, 0xB4E622C9uLL);
  if (!v32)
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v22 = 14;
    v23 = 65;
    v24 = 217;
LABEL_91:
    ERR_put_error(v22, 0, v23, v21, v24);
    a3 = 0;
    v39 = *(a4 + 8);
    v40 = BN_CTX_get(ctx);
    if (!v40)
    {
      goto LABEL_47;
    }

    goto LABEL_55;
  }

  *v32 = 8 * v11;
  v33 = v32 + 1;
  bzero(v32 + 1, 8 * v11);
  v34 = v20->top;
  if (v34)
  {
    memcpy(v33, v20->d, 8 * v34);
  }

  v35 = v20->d;
  if (v20->d)
  {
    v37 = *(v35 - 1);
    v36 = v35 - 1;
    v38 = v37 + 8;
    if (v37 != -8)
    {
      bzero(v36, v38);
    }

    free(v36);
  }

  v20->d = v33;
  v20->dmax = v10;
LABEL_40:
  v20->neg = 0;
  v20->top = v10;
  if (!BN_copy(v20, a3))
  {
LABEL_46:
    a3 = 0;
    v39 = *(a4 + 8);
    v40 = BN_CTX_get(ctx);
    if (v40)
    {
      goto LABEL_55;
    }

    goto LABEL_47;
  }

  if (bn_resize_words(v20, v11))
  {
    a3 = v20;
  }

  else
  {
    a3 = 0;
  }

  v39 = *(a4 + 8);
  v40 = BN_CTX_get(ctx);
  if (!v40)
  {
    goto LABEL_47;
  }

LABEL_55:
  if (v40->dmax < v39)
  {
    if (v39 >= 0x800000)
    {
LABEL_70:
      v52 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v53 = 3;
      v54 = 102;
      v55 = 301;
LABEL_85:
      ERR_put_error(v53, 0, v54, v52, v55);
      v41 = 0;
      goto LABEL_86;
    }

    if ((v40->flags & 2) != 0)
    {
      goto LABEL_83;
    }

    v42 = v40;
    v43 = malloc_type_malloc(8 * v39 + 8, 0xB4E622C9uLL);
    if (!v43)
    {
LABEL_84:
      v52 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v53 = 14;
      v54 = 65;
      v55 = 217;
      goto LABEL_85;
    }

    *v43 = 8 * v39;
    v44 = v43 + 1;
    bzero(v43 + 1, 8 * v39);
    v40 = v42;
    v45 = v42->top;
    if (v45)
    {
      memcpy(v44, v42->d, 8 * v45);
      v40 = v42;
    }

    v46 = v40->d;
    if (v40->d)
    {
      v48 = *(v46 - 8);
      v47 = (v46 - 8);
      v49 = v48 + 8;
      if (v48 != -8)
      {
        bzero(v47, v49);
      }

      free(v47);
      v40 = v42;
    }

    v40->d = v44;
    v40->dmax = v39;
  }

  v41 = 0;
  v40->neg = 0;
  v40->top = v39;
  if (!v8 || !a3)
  {
LABEL_86:
    if (*(ctx + 56))
    {
      return v41;
    }

    goto LABEL_87;
  }

  v50 = *(a4 + 8);
  v51 = v50;
  if (*(a1 + 12) >= v50)
  {
    v56 = *a1;
    goto LABEL_72;
  }

  if (v50 >= 0x800000)
  {
    goto LABEL_70;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
LABEL_83:
    v52 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v53 = 3;
    v54 = 106;
    v55 = 306;
    goto LABEL_85;
  }

  v57 = v40;
  v58 = 8 * v50;
  v59 = malloc_type_malloc(v58 + 8, 0xB4E622C9uLL);
  if (!v59)
  {
    goto LABEL_84;
  }

  *v59 = v58;
  v56 = v59 + 1;
  bzero(v59 + 1, v58);
  v60 = *(a1 + 8);
  if (v60)
  {
    memcpy(v56, *a1, 8 * v60);
  }

  v61 = *a1;
  if (*a1)
  {
    v63 = *(v61 - 1);
    v62 = (v61 - 1);
    v64 = v63 + 8;
    if (v63 != -8)
    {
      bzero(v62, v64);
    }

    free(v62);
  }

  *a1 = v56;
  *(a1 + 12) = v50;
  v51 = *(a4 + 8);
  v40 = v57;
LABEL_72:
  bn_mod_sub_words(v56, v8->d, a3->d, *a4, v40->d, v51);
  *(a1 + 8) = *(a4 + 8);
  *(a1 + 16) = 0;
  v41 = 1;
  if (*(ctx + 56))
  {
    return v41;
  }

LABEL_87:
  v65 = *(ctx + 4);
  if (!v65)
  {
    abort();
  }

  *(ctx + 6) = *(*(ctx + 3) + 8 * v65 - 8);
  *(ctx + 4) = v65 - 1;
  return v41;
}

int BN_mod_mul(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m, BN_CTX *ctx)
{
  if (*(ctx + 56))
  {
LABEL_4:
    v11 = BN_CTX_get(ctx);
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_5;
  }

  v10 = *(ctx + 6);
  if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
  {
    *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v10;
    goto LABEL_4;
  }

  *(ctx + 28) = 257;
  ERR_clear_error();
  v11 = BN_CTX_get(ctx);
  if (!v11)
  {
    goto LABEL_35;
  }

LABEL_5:
  v12 = v11;
  if (a == b)
  {
    LODWORD(v11) = bn_sqr_consttime(v11, a, ctx);
    if (!v11)
    {
      goto LABEL_35;
    }

    top = v12->top;
    if (top >= 1)
    {
      while (!v12->d[top - 1])
      {
        v14 = __OFSUB__(top--, 1);
        if ((top < 0) ^ v14 | (top == 0))
        {
LABEL_19:
          v12->top = 0;
          goto LABEL_21;
        }
      }

      goto LABEL_22;
    }

LABEL_20:
    if (!top)
    {
LABEL_21:
      v12->neg = 0;
    }

    goto LABEL_23;
  }

  LODWORD(v11) = bn_mul_impl(v11, a, b, ctx);
  if (!v11)
  {
    goto LABEL_35;
  }

  top = v12->top;
  if (top < 1)
  {
    goto LABEL_20;
  }

  while (!v12->d[top - 1])
  {
    v14 = __OFSUB__(top--, 1);
    if ((top < 0) ^ v14 | (top == 0))
    {
      goto LABEL_19;
    }
  }

LABEL_22:
  v12->top = top;
LABEL_23:
  LODWORD(v11) = BN_div(0, r, v12, m, ctx);
  if (!v11)
  {
    goto LABEL_35;
  }

  if (r->neg)
  {
    LODWORD(v11) = bn_usub_consttime(r, m, r);
    if (!v11)
    {
      goto LABEL_35;
    }

    v15 = r->top;
    if (v15 < 1)
    {
      if (!v15)
      {
LABEL_32:
        r->neg = 0;
      }
    }

    else
    {
      while (!r->d[v15 - 1])
      {
        v14 = __OFSUB__(v15--, 1);
        if ((v15 < 0) ^ v14 | (v15 == 0))
        {
          r->top = 0;
          goto LABEL_32;
        }
      }

      r->top = v15;
    }
  }

  LODWORD(v11) = 1;
LABEL_35:
  if ((*(ctx + 56) & 1) == 0)
  {
    v16 = *(ctx + 4);
    if (!v16)
    {
      abort();
    }

    *(ctx + 6) = *(*(ctx + 3) + 8 * v16 - 8);
    *(ctx + 4) = v16 - 1;
  }

  return v11;
}

int BN_mod_sqr(BIGNUM *r, const BIGNUM *a, const BIGNUM *m, BN_CTX *ctx)
{
  result = bn_sqr_consttime(r, a, ctx);
  if (result)
  {
    top = r->top;
    if (top < 1)
    {
      if (!top)
      {
LABEL_9:
        r->neg = 0;
      }
    }

    else
    {
      while (!r->d[top - 1])
      {
        v9 = __OFSUB__(top--, 1);
        if ((top < 0) ^ v9 | (top == 0))
        {
          r->top = 0;
          goto LABEL_9;
        }
      }

      r->top = top;
    }

    return BN_div(0, r, r, m, ctx);
  }

  return result;
}

unint64_t BN_div_word(BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    return -1;
  }

  if (!a->top)
  {
    return 0;
  }

  v3 = HIDWORD(w);
  if (!HIDWORD(w))
  {
    v3 = w;
  }

  v5 = v3 >> 16;
  if (HIDWORD(w))
  {
    v6 = 31;
  }

  else
  {
    v6 = 63;
  }

  if (v5)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v3 >>= 16;
  }

  if (v3 <= 0xFF)
  {
    v8 = 0;
  }

  else
  {
    v8 = -8;
  }

  if (v3 > 0xFF)
  {
    v3 >>= 8;
  }

  if (v3 <= 0xF)
  {
    v9 = 0;
  }

  else
  {
    v9 = -4;
  }

  if (v3 > 0xF)
  {
    v3 >>= 4;
  }

  if (v3 <= 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = -2;
  }

  if (v3 > 3)
  {
    v3 >>= 2;
  }

  v11 = v3 > 1;
  v12 = v7 + v6 + v8 + v9 + v10 - v11;
  if (!BN_lshift(a, a, v7 + v6 + v8 + v9 + v10 - v11))
  {
    return -1;
  }

  top = a->top;
  if (top < 1)
  {
    v20 = 0;
    if (!top)
    {
LABEL_40:
      a->neg = 0;
    }
  }

  else
  {
    v14 = w << v12;
    d = a->d;
    v16 = top + 1;
    v17 = &a->d[top - 1];
    do
    {
      v18 = *v17;
      v19 = __udivti3();
      v20 = v18 - v14 * v19;
      *v17-- = v19;
      --v16;
    }

    while (v16 > 1);
    while (!d[top - 1])
    {
      v21 = __OFSUB__(top, 1);
      LODWORD(top) = top - 1;
      if ((top < 0) ^ v21 | (top == 0))
      {
        a->top = 0;
        goto LABEL_40;
      }
    }

    a->top = top;
  }

  return v20 >> v12;
}

uint64_t bn_mod_u16_consttime(uint64_t a1, unsigned int a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 - 1;
  v5 = (a2 != 1) | (8 * (v4 > 0xFF));
  if (v4 > 0xFF)
  {
    v4 >>= 8;
  }

  v6 = v5 | (4 * (v4 > 0xF));
  if (v4 > 0xF)
  {
    v4 >>= 4;
  }

  v7 = v6 | (2 * (v4 > 3));
  if (v4 > 3)
  {
    v4 >>= 2;
  }

  if (v4 > 1)
  {
    ++v7;
  }

  v8 = ((a2 | (1 << (v7 | 0x20u))) - 1) / a2;
  v9 = v7 - 1;
  v10 = v2 + 1;
  v11 = (*a1 + 8 * v2 - 8);
  do
  {
    v12 = *v11--;
    v13 = WORD2(v12) | ((HIWORD(v12) - ((((v8 * (__PAIR64__(v3, HIDWORD(v12)) >> 16)) >> 32) + (((__PAIR64__(v3, HIDWORD(v12)) >> 16) - ((v8 * (__PAIR64__(v3, HIDWORD(v12)) >> 16)) >> 32)) >> 1)) >> v9) * a2) << 16);
    HIDWORD(v14) = HIDWORD(v12) - ((((v8 * v13) >> 32) + ((v13 - ((v8 * v13) >> 32)) >> 1)) >> v9) * a2;
    LODWORD(v14) = v12;
    v15 = v12 | ((WORD1(v12) - ((((v8 * (v14 >> 16)) >> 32) + (((v14 >> 16) - ((v8 * (v14 >> 16)) >> 32)) >> 1)) >> v9) * a2) << 16);
    v3 = v12 - ((((v8 * v15) >> 32) + ((v15 - ((v8 * v15) >> 32)) >> 1)) >> v9) * a2;
    --v10;
  }

  while (v10 > 1);
  return v3;
}

int BN_mod_exp_mont(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *m_ctx)
{
  v88 = *MEMORY[0x277D85DE8];
  top = m->top;
  if (top < 1 || (d = m->d, v8 = *m->d, (v8 & 1) == 0))
  {
    v9 = 104;
    v10 = 129;
LABEL_9:
    ERR_put_error(3, 0, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/exponentiation.cc.inc", v10);
    return 0;
  }

  if (m->neg)
  {
    v9 = 109;
    v10 = 133;
    goto LABEL_9;
  }

  if (a->neg || (BN_ucmp(a, m) & 0x80000000) == 0)
  {
    v9 = 107;
    v10 = 138;
    goto LABEL_9;
  }

  v18 = ctx;
  v19 = p->top;
  if (v19 < 1)
  {
    if (!v19)
    {
      goto LABEL_36;
    }

    v20 = p->d;
  }

  else
  {
    v20 = p->d;
    while (!v20[v19 - 1])
    {
      v21 = __OFSUB__(v19--, 1);
      if ((v19 < 0) ^ v21 | (v19 == 0))
      {
        goto LABEL_36;
      }
    }
  }

  v22 = v19 - 1;
  v23 = v20[v22];
  v24 = v23 != 0;
  v25 = HIDWORD(v23) != 0;
  if (HIDWORD(v23))
  {
    v23 >>= 32;
  }

  v26 = v23 >> 16 != 0;
  if (v23 >> 16)
  {
    v23 >>= 16;
  }

  v27 = v23 > 0xFF;
  if (v23 > 0xFF)
  {
    v23 >>= 8;
  }

  v28 = v23 > 0xF;
  if (v23 > 0xF)
  {
    v23 >>= 4;
  }

  v29 = v23 > 3;
  if (v23 > 3)
  {
    v23 >>= 2;
  }

  v30 = v24 | (v22 << 6) | (32 * v25) | (16 * v26) | (8 * v27) | (4 * v28) | (2 * v29);
  if (v23 <= 1)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 + 1;
  }

  if (!v31)
  {
LABEL_36:
    v33 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if (top == 1)
    {
      goto LABEL_44;
    }

    if (top >= 5)
    {
      v35 = (top - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v34 = v35 | 1;
      v36 = 0uLL;
      v37.i64[1] = 0;
      v37.i64[0] = v8 & 0xFFFFFFFFFFFFFFFELL;
      v38 = (d + 3);
      v39 = v35;
      do
      {
        v37 = vorrq_s8(v38[-1], v37);
        v36 = vorrq_s8(*v38, v36);
        v38 += 2;
        v39 -= 4;
      }

      while (v39);
      v40 = vorrq_s8(v36, v37);
      v33 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
      if (top - 1 == v35)
      {
LABEL_44:
        if (v33)
        {

          return BN_one(r);
        }

        else
        {
          r->neg = 0;
          r->top = 0;
          return 1;
        }
      }
    }

    else
    {
      v34 = 1;
    }

    v41 = top - v34;
    v42 = &d[v34];
    do
    {
      v43 = *v42++;
      v33 |= v43;
      --v41;
    }

    while (v41);
    goto LABEL_44;
  }

  v87 = 0;
  memset(v86, 0, sizeof(v86));
  if ((*(ctx + 56) & 1) == 0)
  {
    v32 = *(ctx + 6);
    if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
    {
      v18 = ctx;
      *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v32;
    }

    else
    {
      *(ctx + 28) = 257;
      ERR_clear_error();
      v18 = ctx;
    }
  }

  v44 = v18;
  v45 = BN_CTX_get(v18);
  v46 = BN_CTX_get(v44);
  result = 0;
  v85 = v46;
  if (v45 && v46)
  {
    v47 = a;
    v84 = 0;
    v48 = m_ctx;
    if (!m_ctx && (v49 = BN_MONT_CTX_new_consttime(m, ctx), v47 = a, v48 = v49, (v84 = v49) == 0) || (v31 <= 0x29F ? ((v51 = ctx, v31 <= 0xEF) ? (v31 <= 0x4F ? (v31 <= 0x17 ? (v50 = 1) : (v50 = 3)) : (v50 = 4)) : (v50 = 5)) : (v50 = 6, v51 = ctx), v52 = v48, !BN_mod_mul_montgomery(v46, v47, v48, v48, v51)))
    {
LABEL_128:
      v82 = 0;
LABEL_129:
      std::unique_ptr<bn_mont_ctx_st,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](&v84);
      result = v82;
      goto LABEL_130;
    }

    v53 = ctx;
    if (v50 >= 2)
    {
      v54 = BN_CTX_get(ctx);
      if (v54)
      {
        v55 = v54;
        if (BN_mod_mul_montgomery(v54, v46, v46, v52, ctx))
        {
          v56 = v86;
          v57 = (1 << (v50 - 1)) - 1;
          v53 = ctx;
          while (1)
          {
            v58 = BN_CTX_get(v53);
            *v56 = v58;
            if (!v58 || !BN_mod_mul_montgomery(v58, *(v56 - 1), v55, v52, ctx))
            {
              break;
            }

            ++v56;
            --v57;
            v53 = ctx;
            if (!v57)
            {
              goto LABEL_71;
            }
          }
        }
      }

      goto LABEL_128;
    }

LABEL_71:
    v59 = 0;
    v60 = r;
    v61 = v52;
    v62 = p;
    v63 = v31 - 1;
    if (((v31 - 1) & 0x80000000) != 0)
    {
      goto LABEL_74;
    }

    while (1)
    {
LABEL_72:
      v64 = v62->top;
      if (v63 >> 6 >= v64 || (v65 = v62->d, ((v62->d[v63 >> 6] >> v63) & 1) == 0))
      {
LABEL_74:
        while (1)
        {
          if (v59)
          {
            v66 = BN_mod_mul_montgomery(v45, v45, v45, v61, ctx);
            v62 = p;
            v61 = v52;
            v53 = ctx;
            v67 = v66;
            v60 = r;
            if (!v67)
            {
              goto LABEL_128;
            }
          }

          if (!v63)
          {
            goto LABEL_133;
          }

          if ((--v63 & 0x80000000) == 0)
          {
            goto LABEL_72;
          }
        }
      }

      if (v50 >= 2 && v63)
      {
        v68 = v63 & 0x7FFFFFFF;
        if (v63 & 0x7FFFFFFF) != 0 && (v69 = (v68 - 1) >> 6, v69 < v64) && ((v65[v69] >> (v63 - 1)))
        {
          v70 = 3;
          v71 = 1;
        }

        else
        {
          v71 = 0;
          v70 = 1;
        }

        v73 = v68 - 2;
        if (v68 >= 2)
        {
          if (v73 >> 6 < v64 && ((v65[v73 >> 6] >> v73) & 1) != 0)
          {
            v70 = (v70 << (2 - v71)) | 1;
            v71 = 2;
          }

          v74 = v68 - 3;
          if (v68 >= 3 && v50 >= 4)
          {
            if (v74 >> 6 < v64 && ((v65[v74 >> 6] >> v74) & 1) != 0)
            {
              v70 = (v70 << (v71 ^ 3)) | 1;
              v71 = 3;
            }

            v75 = v68 - 4;
            if (v68 >= 4 && v50 >= 5)
            {
              if (v75 >> 6 < v64 && ((v65[v75 >> 6] >> v75) & 1) != 0)
              {
                v70 = (v70 << (4 - v71)) | 1;
                v71 = 4;
              }

              v76 = v68 >= 5;
              v77 = v68 - 5;
              if (v76 && v50 >= 6 && v77 >> 6 < v64 && ((v65[v77 >> 6] >> v77) & 1) != 0)
              {
                v70 = (v70 << (5 - v71)) | 1;
                v71 = 5;
              }
            }
          }
        }

        v72 = v70 >> 1;
        if ((v59 & 1) == 0)
        {
LABEL_123:
          if (!BN_copy(v45, *(&v85 + v72)))
          {
            goto LABEL_128;
          }

          goto LABEL_124;
        }

        v53 = ctx;
        v61 = v52;
      }

      else
      {
        v72 = 0;
        v71 = 0;
        if ((v59 & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      if (!BN_mod_mul_montgomery(v45, v45, v45, v61, v53))
      {
        goto LABEL_128;
      }

      if (!v71)
      {
        goto LABEL_120;
      }

      if (!BN_mod_mul_montgomery(v45, v45, v45, v52, ctx))
      {
        goto LABEL_128;
      }

      if (v71 == 1)
      {
        goto LABEL_120;
      }

      if (!BN_mod_mul_montgomery(v45, v45, v45, v52, ctx))
      {
        goto LABEL_128;
      }

      if (v71 == 2)
      {
        goto LABEL_120;
      }

      if (!BN_mod_mul_montgomery(v45, v45, v45, v52, ctx))
      {
        goto LABEL_128;
      }

      if (v71 == 3)
      {
        goto LABEL_120;
      }

      if (!BN_mod_mul_montgomery(v45, v45, v45, v52, ctx))
      {
        goto LABEL_128;
      }

      if (v71 == 4)
      {
LABEL_120:
        v78 = ctx;
        v79 = v52;
      }

      else
      {
        v81 = BN_mod_mul_montgomery(v45, v45, v45, v52, ctx);
        v79 = v52;
        v78 = ctx;
        if (!v81)
        {
          goto LABEL_128;
        }
      }

      if (!BN_mod_mul_montgomery(v45, v45, *(&v85 + v72), v79, v78))
      {
        goto LABEL_128;
      }

LABEL_124:
      v53 = ctx;
      v60 = r;
      v61 = v52;
      if (v63 == v71)
      {
LABEL_133:
        v82 = BN_from_montgomery(v60, v45, v61, v53);
        goto LABEL_129;
      }

      v62 = p;
      v80 = ~v71 + v63;
      v59 = 1;
      v63 = v80;
      if ((v80 & 0x80000000) != 0)
      {
        goto LABEL_74;
      }
    }
  }

LABEL_130:
  if ((*(ctx + 56) & 1) == 0)
  {
    v83 = *(ctx + 4);
    if (!v83)
    {
      abort();
    }

    *(ctx + 6) = *(*(ctx + 3) + 8 * v83 - 8);
    *(ctx + 4) = v83 - 1;
  }

  return result;
}

BIGNUM *BN_MONT_CTX_new_consttime(const bignum_st *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (v4)
  {
    *v4 = 64;
    *(v4 + 8) = 0u;
    v5 = (v4 + 8);
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    if (bn_mont_ctx_set_N_and_n0((v4 + 8), a1) && bn_mont_ctx_set_RR_consttime(v5, a2))
    {
      return v5;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v5 = 0;
  }

  BN_MONT_CTX_free(v5);
  return 0;
}

int BN_mod_mul_montgomery(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, BN_MONT_CTX *mont, BN_CTX *ctx)
{
  if (a->neg || b->neg)
  {
    ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/montgomery.cc.inc", 308);
    LODWORD(v5) = 0;
    return v5;
  }

  v10 = ctx;
  if ((*(ctx + 56) & 1) == 0)
  {
    v11 = *(ctx + 6);
    if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
    {
      ctx = v10;
      *(*(v10 + 3) + 8 * (*(v10 + 4))++) = v11;
    }

    else
    {
      *(v10 + 28) = 257;
      ERR_clear_error();
      ctx = v10;
    }
  }

  v5 = BN_CTX_get(ctx);
  if (!v5)
  {
    goto LABEL_18;
  }

  if (a == b)
  {
    v16 = v5;
    LODWORD(v5) = bn_sqr_consttime(v5, a, v10);
    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (a->neg || (v12 = b, b->neg))
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/mul.cc.inc";
    v14 = 109;
    v15 = 208;
LABEL_17:
    ERR_put_error(3, 0, v14, v13, v15);
    LODWORD(v5) = 0;
    goto LABEL_18;
  }

  v16 = v5;
  LODWORD(v5) = bn_mul_impl(v5, a, v12, v10);
  if (v5)
  {
LABEL_15:
    if (v16->neg)
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/montgomery.cc.inc";
      v14 = 109;
      v15 = 226;
      goto LABEL_17;
    }

    d_low = SLODWORD(mont->N.d);
    if (d_low)
    {
      v19 = v16;
      LODWORD(v5) = bn_resize_words(v16, 2 * d_low);
      if (!v5)
      {
        goto LABEL_18;
      }

      d = mont->N.d;
      v21 = d;
      if (r->dmax >= d)
      {
        v22 = mont;
        v23 = r->d;
        r->top = d;
        r->neg = 0;
        v24 = SLODWORD(mont->N.d);
        if (v24 != d)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (d >= 0x800000)
        {
          v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
          v14 = 102;
          v15 = 301;
          goto LABEL_17;
        }

        if ((r->flags & 2) != 0)
        {
          v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
          v14 = 106;
          v15 = 306;
          goto LABEL_17;
        }

        v5 = OPENSSL_calloc(d, 8uLL);
        if (!v5)
        {
          goto LABEL_18;
        }

        v23 = v5;
        v34 = r;
        top = r->top;
        if (top)
        {
          memcpy(v5, r->d, 8 * top);
          v34 = r;
        }

        v36 = v34->d;
        if (v34->d)
        {
          v38 = *(v36 - 1);
          v37 = v36 - 1;
          v39 = v38 + 8;
          if (v38 != -8)
          {
            bzero(v37, v39);
          }

          free(v37);
          v34 = r;
        }

        v34->d = v23;
        v34->dmax = d;
        v22 = mont;
        d = mont->N.d;
        v21 = d;
        v34->top = d;
        v34->neg = 0;
        v24 = SLODWORD(mont->N.d);
        if (v24 != d)
        {
LABEL_45:
          v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/montgomery.cc.inc";
          v14 = 66;
          v15 = 197;
          goto LABEL_17;
        }
      }

      if (2 * v24 != v19->top)
      {
        goto LABEL_45;
      }

      v25 = v19->d;
      v26 = *&v22->RR.neg;
      v27 = 0;
      if (d)
      {
        v28 = *&v22->N.neg;
        v29 = v25;
        v30 = v21;
        do
        {
          v31 = bn_mul_add_words(v29, v26, v21, *v29 * v28);
          v32 = v29[v21];
          v33 = v31 + v27 + v32;
          v27 = (v33 <= v32) & ((v31 + v27 != 0) | v27);
          v29[v21] = v33;
          ++v29;
          --v30;
        }

        while (v30);
      }

      bn_reduce_once(v23, &v25[v21], v27, v26, v21);
    }

    else
    {
      r->top = 0;
    }

    LODWORD(v5) = 1;
  }

LABEL_18:
  if ((*(v10 + 56) & 1) == 0)
  {
    v17 = *(v10 + 4);
    if (!v17)
    {
      abort();
    }

    *(v10 + 6) = *(*(v10 + 3) + 8 * v17 - 8);
    *(v10 + 4) = v17 - 1;
  }

  return v5;
}

int BN_from_montgomery(BIGNUM *r, const BIGNUM *a, BN_MONT_CTX *mont, BN_CTX *ctx)
{
  if ((*(ctx + 56) & 1) == 0)
  {
    v8 = *(ctx + 6);
    if (!bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
    {
      *(ctx + 28) = 257;
      ERR_clear_error();
      v9 = BN_CTX_get(ctx);
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_5;
    }

    *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v8;
  }

  v9 = BN_CTX_get(ctx);
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_5:
  v10 = v9;
  v9 = BN_copy(v9, a);
  if (!v9)
  {
    goto LABEL_24;
  }

  if (v10->neg)
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/montgomery.cc.inc";
    v12 = 109;
    v13 = 226;
LABEL_8:
    ERR_put_error(3, 0, v12, v11, v13);
    LODWORD(v9) = 0;
    goto LABEL_24;
  }

  d_low = SLODWORD(mont->N.d);
  if (!d_low)
  {
    r->top = 0;
LABEL_23:
    LODWORD(v9) = 1;
    goto LABEL_24;
  }

  LODWORD(v9) = bn_resize_words(v10, 2 * d_low);
  if (!v9)
  {
    goto LABEL_24;
  }

  d = mont->N.d;
  v16 = d;
  if (r->dmax >= d)
  {
    v17 = r->d;
    r->top = d;
    r->neg = 0;
    v18 = SLODWORD(mont->N.d);
    if (v18 != d)
    {
      goto LABEL_37;
    }

    goto LABEL_18;
  }

  if (d >= 0x800000)
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v12 = 102;
    v13 = 301;
    goto LABEL_8;
  }

  if ((r->flags & 2) != 0)
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v12 = 106;
    v13 = 306;
    goto LABEL_8;
  }

  v9 = OPENSSL_calloc(d, 8uLL);
  if (v9)
  {
    v17 = v9;
    top = r->top;
    if (top)
    {
      memcpy(v9, r->d, 8 * top);
    }

    v30 = r->d;
    if (r->d)
    {
      v32 = *(v30 - 1);
      v31 = v30 - 1;
      v33 = v32 + 8;
      if (v32 != -8)
      {
        bzero(v31, v33);
      }

      free(v31);
    }

    r->d = v17;
    r->dmax = d;
    d = mont->N.d;
    v16 = d;
    r->top = d;
    r->neg = 0;
    v18 = SLODWORD(mont->N.d);
    if (v18 != d)
    {
      goto LABEL_37;
    }

LABEL_18:
    if (2 * v18 == v10->top)
    {
      v19 = v10->d;
      v20 = *&mont->RR.neg;
      v21 = 0;
      if (d)
      {
        v22 = *&mont->N.neg;
        v23 = v19;
        v24 = v16;
        do
        {
          v25 = bn_mul_add_words(v23, v20, v16, *v23 * v22);
          v26 = v23[v16];
          v27 = v25 + v21 + v26;
          v21 = (v27 <= v26) & ((v25 + v21 != 0) | v21);
          v23[v16] = v27;
          ++v23;
          --v24;
        }

        while (v24);
      }

      bn_reduce_once(v17, v19 + 8 * v16, v21, v20, v16);
      goto LABEL_23;
    }

LABEL_37:
    v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/montgomery.cc.inc";
    v12 = 66;
    v13 = 197;
    goto LABEL_8;
  }

LABEL_24:
  if ((*(ctx + 56) & 1) == 0)
  {
    v28 = *(ctx + 4);
    if (!v28)
    {
      abort();
    }

    *(ctx + 6) = *(*(ctx + 3) + 8 * v28 - 8);
    *(ctx + 4) = v28 - 1;
  }

  return v9;
}

uint64_t **std::unique_ptr<bn_mont_ctx_st,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
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

    if (v3)
    {
      v9 = *(v2 - 1);
      if (v9 != -8)
      {
        bzero(v2 - 1, v9 + 8);
      }

      free(v2 - 1);
      v8 = *(v2 + 11);
      if ((v8 & 2) != 0)
      {
LABEL_17:
        if (v8)
        {
          v17 = v2[2];
          if (v17 != -8)
          {
            bzero(v2 + 2, v17 + 8);
          }

          free(v2 + 2);
          v18 = *(v2 - 1);
          v14 = v2 - 1;
          v16 = v18 + 8;
          if (v18 == -8)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v2[3] = 0;
          v15 = *(v2 - 1);
          v14 = v2 - 1;
          v16 = v15 + 8;
          if (v15 == -8)
          {
            goto LABEL_24;
          }
        }

        bzero(v14, v16);
LABEL_24:
        free(v14);
        return a1;
      }
    }

    else
    {
      *v2 = 0;
      v8 = *(v2 + 11);
      if ((v8 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    v10 = v2[3];
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
      v8 = *(v2 + 11);
    }

    goto LABEL_17;
  }

  return a1;
}

void bn_mod_exp_mont_small(int8x16_t *a1, const void *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  __dst[144] = *MEMORY[0x277D85DE8];
  if (a5 >> 58 || a3 > 9 || *(a6 + 32) != a3)
  {
    abort();
  }

  v8 = a5;
  if (!a5)
  {
LABEL_8:
    v13 = *a6;

    bn_from_montgomery_small(a1, a3, v13, a3, a6);
    return;
  }

  v10 = a4;
  v11 = -64 * a5;
  while (1)
  {
    v12 = *(a4 - 8 + 8 * v8);
    if (v12)
    {
      break;
    }

    v11 += 64;
    if (!--v8)
    {
      goto LABEL_8;
    }
  }

  v14 = HIDWORD(v12);
  v15 = 33;
  if (!HIDWORD(v12))
  {
    v15 = 1;
    v14 = *(a4 - 8 + 8 * v8);
  }

  v16 = v14 >> 16 != 0;
  if (v14 >> 16)
  {
    v14 >>= 16;
  }

  v17 = v14 > 0xFF;
  if (v14 > 0xFF)
  {
    v14 >>= 8;
  }

  v18 = v14 > 0xF;
  if (v14 > 0xF)
  {
    v14 >>= 4;
  }

  v19 = v14 > 3;
  if (v14 > 3)
  {
    v14 >>= 2;
  }

  v20 = v14 > 1;
  v49 = v14 > 1;
  v50 = v15;
  v21 = v15 & 0xFFFFFFFFFFFFFFE1 | (16 * v16) | (8 * v17) | (4 * v18) | (2 * v19);
  if (v20)
  {
    ++v21;
  }

  v22 = v21 - v11 - 64;
  if (v22 <= 0x29F)
  {
    if (v22 <= 0xEF)
    {
      if (v22 <= 0x17)
      {
        v24 = 1;
      }

      else
      {
        v24 = 3;
      }

      if (v22 <= 0x4F)
      {
        v23 = v24;
      }

      else
      {
        v23 = 4;
      }
    }

    else
    {
      v23 = 5;
    }
  }

  else
  {
    v23 = 6;
  }

  if (v23 >= 5)
  {
    v25 = 5;
  }

  else
  {
    v25 = v23;
  }

  v52 = v25;
  v51 = v23;
  if (a3)
  {
    v26 = v19;
    memcpy(__dst, a2, 8 * a3);
    v19 = v26;
    v10 = a4;
    v23 = v51;
  }

  v27 = 16 * v16;
  v28 = 8 * v17;
  v29 = 4 * v18;
  v30 = 2 * v19;
  if (v23 >= 2)
  {
    v46 = 2 * v19;
    v47 = 8 * v17;
    bn_mod_mul_montgomery_small(v53, __dst, __dst, a3, a6);
    if (v52 != 1)
    {
      v31 = 2;
      do
      {
        bn_mod_mul_montgomery_small(&__dst[9 * v31 - 9], &__dst[9 * v31 - 18], v53, a3, a6);
      }

      while (!(v31++ >> (v52 - 1)));
    }

    v28 = v47;
    v27 = 16 * v16;
    v29 = 4 * v18;
    v30 = v46;
  }

  v33 = 0;
  v34 = v50 + v27 + v28 + v29 + v30 + v49 - v11 - 65;
  while ((v33 & 1) == 0)
  {
    while (v34 >> 6 >= v8 || ((*(v10 + 8 * (v34 >> 6)) >> v34) & 1) == 0)
    {
      if (!v34)
      {
        return;
      }

      --v34;
    }

LABEL_54:
    if (v51 >= 2 && v34)
    {
      v36 = v34 - 1;
      if (v34 - 1 >= v52 - 2)
      {
        v37 = v52 - 2;
      }

      else
      {
        v37 = v34 - 1;
      }

      if (v36 >> 6 < v8 && ((*(v10 + 8 * (v36 >> 6)) >> v36) & 1) != 0)
      {
        v38 = 3;
        v39 = 1;
      }

      else
      {
        v39 = 0;
        v38 = 1;
      }

      if (v37)
      {
        v41 = (v34 - 2) >> 6;
        if (v41 < v8 && ((*(v10 + 8 * v41) >> (v34 - 2)) & 1) != 0)
        {
          v38 = (v38 << (2 - v39)) | 1;
          v39 = 2;
        }

        v42 = v37 + 1;
        if (v42 != 2)
        {
          v43 = (v34 - 3) >> 6;
          if (v43 < v8 && ((*(v10 + 8 * v43) >> (v34 - 3)) & 1) != 0)
          {
            v38 = (v38 << (v39 ^ 3)) | 1;
            v39 = 3;
          }

          if (v42 != 3)
          {
            v44 = (v34 - 4) >> 6;
            if (v44 < v8 && ((*(v10 + 8 * v44) >> (v34 - 4)) & 1) != 0)
            {
              v38 = (v38 << (4 - v39)) | 1;
              v39 = 4;
            }
          }
        }
      }

      v40 = v38 >> 1;
      if ((v33 & 1) == 0)
      {
LABEL_84:
        if (a3)
        {
          memcpy(a1, &__dst[9 * v40], 8 * a3);
        }

        goto LABEL_86;
      }
    }

    else
    {
      v40 = 0;
      v39 = 0;
      if ((v33 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    bn_mod_mul_montgomery_small(a1, a1, a1, a3, a6);
    if (v39)
    {
      bn_mod_mul_montgomery_small(a1, a1, a1, a3, a6);
      if (v39 != 1)
      {
        bn_mod_mul_montgomery_small(a1, a1, a1, a3, a6);
        if (v39 != 2)
        {
          bn_mod_mul_montgomery_small(a1, a1, a1, a3, a6);
          if (v39 != 3)
          {
            bn_mod_mul_montgomery_small(a1, a1, a1, a3, a6);
          }
        }
      }
    }

    bn_mod_mul_montgomery_small(a1, a1, &__dst[9 * v40], a3, a6);
LABEL_86:
    v45 = v34 == v39;
    v34 -= (v39 + 1);
    v33 = 1;
    if (v45)
    {
      return;
    }
  }

  v35 = v34 >> 6;
  if (v34 >> 6 >= v8)
  {
    goto LABEL_47;
  }

LABEL_46:
  if ((*(v10 + 8 * v35) >> v34))
  {
    goto LABEL_54;
  }

LABEL_47:
  while (1)
  {
    bn_mod_mul_montgomery_small(a1, a1, a1, a3, a6);
    if (!v34)
    {
      break;
    }

    v35 = --v34 >> 6;
    if (v34 >> 6 < v8)
    {
      goto LABEL_46;
    }
  }
}

uint64_t bn_from_montgomery_small(uint64_t result, unint64_t num, void *__src, unint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x277D85DE8];
  if (num > 9 || ((v7 = *(a5 + 32), v7 == num) ? (v8 = 2 * num >= a4) : (v8 = 0), !v8))
  {
    abort();
  }

  v9 = result;
  memset(v52, 0, sizeof(v52));
  if (a4)
  {
    result = memcpy(v52, __src, 8 * a4);
  }

  v10 = *(a5 + 24);
  if (v7)
  {
    v11 = 0;
    v12 = *(a5 + 48);
    v13 = v52;
    v14 = num;
    do
    {
      result = bn_mul_add_words(v13, v10, num, *v13 * v12);
      v15 = v13[num];
      v16 = result + v11 + v15;
      v11 = (v16 <= v15) & ((result + v11 != 0) | v11);
      v13[num] = v16;
      ++v13;
      --v14;
    }

    while (v14);
    v17 = v52 + num;
    if (num < 4)
    {
LABEL_13:
      v18 = 0;
      v19 = num;
      v20 = v9;
      do
      {
LABEL_25:
        v33 = *v17++;
        v32 = v33;
        v34 = *v10;
        v10 += 8;
        v8 = v32 >= v34;
        v35 = v32 - v34;
        v36 = !v8;
        v8 = v35 >= v18;
        v37 = v35 - v18;
        if (v8)
        {
          v18 = v36;
        }

        else
        {
          v18 = 1;
        }

        *v20++ = v37;
        --v19;
      }

      while (v19);
      goto LABEL_32;
    }
  }

  else
  {
    if (!num)
    {
      return result;
    }

    v11 = 0;
    v17 = v52 + num;
    if (num < 4)
    {
      goto LABEL_13;
    }
  }

  v18 = 0;
  v19 = num;
  v20 = v9;
  do
  {
    v21 = v17[1];
    v22 = *v17 - *v10;
    v8 = v22 >= v18;
    v23 = v22 - v18;
    v24 = !v8 || *v17 < *v10;
    *v20 = v23;
    v25 = *(v10 + 8);
    v8 = __CFSUB__(v21, v25, !v24);
    v20[1] = v21 - (v25 + v24);
    v26 = *(v10 + 16);
    v27 = v17[2];
    v28 = v17[3];
    v29 = v8;
    v8 = __CFSUB__(v27, v26, v8);
    v20[2] = v27 - (v26 + !v29);
    v30 = *(v10 + 24);
    v31 = v28 - (v30 + !v8);
    v18 = !__CFSUB__(v28, v30, v8);
    v20[3] = v31;
    v17 += 4;
    v10 += 32;
    v20 += 4;
    v19 -= 4;
  }

  while (v19 >= 4);
  if (v19)
  {
    goto LABEL_25;
  }

LABEL_32:
  v38 = v11 - v18;
  v39 = ~(v11 - v18);
  if (num < 4)
  {
    v40 = 0;
LABEL_37:
    v47 = num - v40;
    v48 = 8 * v40;
    v49 = (v9 + 8 * v40);
    v50 = (v52 + 8 * num + v48);
    do
    {
      v51 = *v50++;
      *v49 = *v49 & v39 | v51 & v38;
      ++v49;
      --v47;
    }

    while (v47);
    return result;
  }

  v41 = vdupq_n_s64(v38);
  v42 = vdupq_n_s64(v39);
  v40 = num & 0xC;
  v43 = (&v52[1] + 8 * num);
  v44 = (v9 + 16);
  v45 = v40;
  do
  {
    v46 = vorrq_s8(vandq_s8(*v44, v42), vandq_s8(*v43, v41));
    v44[-1] = vorrq_s8(vandq_s8(v44[-1], v42), vandq_s8(v43[-1], v41));
    *v44 = v46;
    v43 += 2;
    v44 += 2;
    v45 -= 4;
  }

  while (v45);
  if (v40 != num)
  {
    goto LABEL_37;
  }

  return result;
}

void bn_mod_mul_montgomery_small(int8x16_t *a1, unint64_t *a2, unint64_t *a3, unint64_t a4, uint64_t a5)
{
  v99[15] = *MEMORY[0x277D85DE8];
  if (a4 > 9 || *(a5 + 32) != a4)
  {
    abort();
  }

  if (a2 == a3)
  {
    switch(a4)
    {
      case 0uLL:
        goto LABEL_57;
      case 8uLL:
        bn_sqr_comba8(&rp, a2);
        goto LABEL_57;
      case 4uLL:
        bn_sqr_comba4(&rp, a2);
        goto LABEL_57;
    }

    v8 = 2 * a4;
    p_rp = &rp;
    *&v98[16 * a4 - 16] = 0;
    rp = 0;
    v10 = a4 - 1;
    if (a4 == 1)
    {
      v8 = 2;
      do
      {
LABEL_49:
        v50 = 2 * *p_rp;
        v51 = __CFADD__(*p_rp, *p_rp);
        v18 = __CFADD__(v50, v10);
        v52 = v50 + v10;
        v10 = v18 || v51;
        *p_rp++ = v52;
        --v8;
      }

      while (v8);
LABEL_56:
      bn_sqr_add_words(&rp, a2, a4);
      goto LABEL_57;
    }

    v11 = v98;
    v12 = a2 + 1;
    v13 = *a2;
    if (v10 >= 4)
    {
      v15 = 0;
      do
      {
        v16 = v12[1];
        v17 = *v12 * v13;
        v18 = __CFADD__(v17, v15);
        v19 = v17 + v15;
        if (v18)
        {
          v20 = ((*v12 * v13) >> 64) + 1;
        }

        else
        {
          v20 = (*v12 * v13) >> 64;
        }

        v21 = (v16 * v13) >> 64;
        v22 = v16 * v13;
        v18 = __CFADD__(v22, v20);
        v23 = v22 + v20;
        if (v18)
        {
          v24 = v21 + 1;
        }

        else
        {
          v24 = v21;
        }

        *v11 = v19;
        v11[1] = v23;
        v25 = v12[2];
        v26 = v12[3];
        v27 = (v25 * v13) >> 64;
        v28 = v25 * v13;
        v18 = __CFADD__(v28, v24);
        v29 = v28 + v24;
        if (v18)
        {
          v30 = v27 + 1;
        }

        else
        {
          v30 = v27;
        }

        v18 = __CFADD__(v26 * v13, v30);
        v31 = v26 * v13 + v30;
        v15 = (v26 * v13) >> 64;
        if (v18)
        {
          ++v15;
        }

        v11[2] = v29;
        v11[3] = v31;
        v12 += 4;
        v11 += 4;
        v10 -= 4;
      }

      while (v10 >= 4);
      v14 = a2;
      if (!v10)
      {
LABEL_34:
        *&v98[8 * a4 - 8] = v15;
        if (a4 >= 3)
        {
          v35 = a4 - 2;
          v36 = v99;
          v37 = &v98[8 * a4];
          v38 = v14 + 2;
          do
          {
            *v37++ = bn_mul_add_words(v36, v38, v35, *(v38 - 1));
            v36 += 2;
            ++v38;
            --v35;
          }

          while (v35);
        }

        a2 = v14;
        v10 = 0;
        p_rp = &rp;
        do
        {
          v39 = p_rp[1];
          v40 = 2 * *p_rp;
          v41 = __CFADD__(*p_rp, *p_rp);
          v18 = __CFADD__(v40, v10);
          v42 = v40 + v10;
          v43 = v18 || v41;
          v18 = __CFADD__(v43 != 0, v39);
          v44 = (v43 != 0) + v39;
          v18 |= __CFADD__(v39, v44);
          *p_rp = v42;
          p_rp[1] = v39 + v44;
          v45 = p_rp[2];
          v46 = p_rp[3];
          v47 = v45 + v18 + v45;
          v49 = (__CFADD__(v18, v45) | __CFADD__(v45, v18 + v45)) + v46;
          v18 = __CFADD__(__CFADD__(v18, v45) | __CFADD__(v45, v18 + v45), v46) | __CFADD__(v46, v49);
          v48 = v46 + v49;
          v10 = v18;
          p_rp[2] = v47;
          p_rp[3] = v48;
          p_rp += 4;
          v8 -= 4;
        }

        while (v8 >= 4);
        if (!v8)
        {
          goto LABEL_56;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v14 = a2;
      v15 = 0;
    }

    do
    {
      v32 = *v12++;
      v33 = (v32 * v13) >> 64;
      v34 = v32 * v13 + v15;
      if (__CFADD__(v32 * v13, v15))
      {
        v15 = v33 + 1;
      }

      else
      {
        v15 = v33;
      }

      *v11++ = v34;
      --v10;
    }

    while (v10);
    goto LABEL_34;
  }

  if (a4 == 8)
  {
    bn_mul_comba8(&rp, a2, a3);
  }

  else
  {
    bn_mul_normal(&rp, a2, a4, a3, a4);
  }

LABEL_57:
  v53 = *(a5 + 32);
  if (v53 != a4)
  {
    ERR_put_error(3, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/montgomery.cc.inc", 197);
    abort();
  }

  v54 = *(a5 + 24);
  if (v53)
  {
    v55 = 0;
    v56 = *(a5 + 48);
    v57 = &rp;
    v58 = a4;
    do
    {
      v59 = bn_mul_add_words(v57, v54, a4, *v57 * v56);
      v60 = v57[a4];
      v61 = v59 + v55 + v60;
      v55 = (v61 <= v60) & ((v59 + v55 != 0) | v55);
      v57[a4] = v61;
      ++v57;
      --v58;
    }

    while (v58);
    v62 = &v98[8 * a4 - 8];
    if (a4 < 4)
    {
LABEL_62:
      v63 = 0;
      v64 = a4;
      v65 = a1;
      do
      {
LABEL_74:
        v78 = *v62++;
        v77 = v78;
        v79 = *v54;
        v54 += 8;
        v18 = v77 >= v79;
        v80 = v77 - v79;
        v81 = !v18;
        v18 = v80 >= v63;
        v82 = v80 - v63;
        if (v18)
        {
          v63 = v81;
        }

        else
        {
          v63 = 1;
        }

        *v65++ = v82;
        --v64;
      }

      while (v64);
      goto LABEL_81;
    }
  }

  else
  {
    if (!a4)
    {
      return;
    }

    v55 = 0;
    v62 = &v98[8 * a4 - 8];
    if (a4 < 4)
    {
      goto LABEL_62;
    }
  }

  v63 = 0;
  v64 = a4;
  v65 = a1;
  do
  {
    v66 = v62[1];
    v67 = *v62 - *v54;
    v18 = v67 >= v63;
    v68 = v67 - v63;
    v69 = !v18 || *v62 < *v54;
    *v65 = v68;
    v70 = *(v54 + 8);
    v18 = __CFSUB__(v66, v70, !v69);
    v65[1] = v66 - (v70 + v69);
    v71 = *(v54 + 16);
    v72 = v62[2];
    v73 = v62[3];
    v74 = v18;
    v18 = __CFSUB__(v72, v71, v18);
    v65[2] = v72 - (v71 + !v74);
    v75 = *(v54 + 24);
    v76 = v73 - (v75 + !v18);
    v63 = !__CFSUB__(v73, v75, v18);
    v65[3] = v76;
    v62 += 4;
    v54 += 32;
    v65 += 4;
    v64 -= 4;
  }

  while (v64 >= 4);
  if (v64)
  {
    goto LABEL_74;
  }

LABEL_81:
  v83 = v55 - v63;
  v84 = ~(v55 - v63);
  if (a4 < 4)
  {
    v85 = 0;
LABEL_86:
    v92 = a4 - v85;
    v93 = 8 * v85;
    v94 = a1 + v85;
    v95 = &v98[8 * a4 - 8 + v93];
    do
    {
      v96 = *v95++;
      *v94 = *v94 & v84 | v96 & v83;
      ++v94;
      --v92;
    }

    while (v92);
    return;
  }

  v86 = vdupq_n_s64(v83);
  v87 = vdupq_n_s64(v84);
  v85 = a4 & 0xC;
  v88 = &v98[8 * a4 + 8];
  v89 = a1 + 1;
  v90 = v85;
  do
  {
    v91 = vorrq_s8(vandq_s8(*v89, v87), vandq_s8(*v88, v86));
    v89[-1] = vorrq_s8(vandq_s8(v89[-1], v87), vandq_s8(v88[-1], v86));
    *v89 = v91;
    v88 += 2;
    v89 += 2;
    v90 -= 4;
  }

  while (v90);
  if (v85 != a4)
  {
    goto LABEL_86;
  }
}

int BN_mod_exp_mont_consttime(BIGNUM *rr, const BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *in_mont)
{
  top = m->top;
  if (top < 1 || (d = m->d, v8 = *m->d, (v8 & 1) == 0))
  {
    v9 = 104;
    v10 = 422;
LABEL_9:
    ERR_put_error(3, 0, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/exponentiation.cc.inc", v10);
    return 0;
  }

  if (m->neg)
  {
    v9 = 109;
    v10 = 426;
    goto LABEL_9;
  }

  if (a->neg || BN_ucmp(a, m) >= 0)
  {
    v9 = 107;
    v10 = 432;
    goto LABEL_9;
  }

  v18 = m;
  v19 = p->top;
  if (!v19)
  {
    v56 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if (top == 1)
    {
      goto LABEL_97;
    }

    if (top >= 5)
    {
      v59 = (top - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v57 = v59 | 1;
      v60 = 0uLL;
      v61.i64[1] = 0;
      v61.i64[0] = v8 & 0xFFFFFFFFFFFFFFFELL;
      v62 = (d + 3);
      v63 = v59;
      do
      {
        v61 = vorrq_s8(v62[-1], v61);
        v60 = vorrq_s8(*v62, v60);
        v62 += 2;
        v63 -= 4;
      }

      while (v63);
      v64 = vorrq_s8(v60, v61);
      v56 = vorr_s8(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
      if (top - 1 == v59)
      {
LABEL_97:
        if (v56)
        {

          return BN_one(rr);
        }

        else
        {
          rr->neg = 0;
          rr->top = 0;
          return 1;
        }
      }
    }

    else
    {
      v57 = 1;
    }

    v65 = top - v57;
    v66 = &d[v57];
    do
    {
      v67 = *v66++;
      v56 |= v67;
      --v65;
    }

    while (v65);
    goto LABEL_97;
  }

  p_ri = &in_mont->ri;
  v77 = 0;
  if (!in_mont)
  {
    p_ri = BN_MONT_CTX_new_consttime(v18, ctx);
    v77 = p_ri;
    if (!p_ri)
    {
      goto LABEL_91;
    }
  }

  mont = p_ri;
  v21 = *(p_ri + 8);
  v22 = v21;
  if (v19 == 1)
  {
    v23 = 3;
  }

  else
  {
    v23 = 1;
  }

  if (v19 <= 1)
  {
    v24 = v23;
  }

  else
  {
    v24 = 4;
  }

  if (v19 <= 4)
  {
    v25 = v24;
  }

  else
  {
    v25 = 5;
  }

  if (v19 > 14)
  {
    v25 = 6;
  }

  v72 = v25;
  v26 = 1 << v25;
  v27 = 8 * v21 * ((1 << v25) + 2);
  v28 = OPENSSL_malloc(v27 + 64);
  if (v28)
  {
    v29 = v28;
    v30 = v21;
    v31 = -v28 & 0x3FLL;
    v32 = v28 + v31;
    v71 = v30;
    v73 = v28 + v31;
    if (v30)
    {
      bzero(v73, v27);
      v32 = v73;
    }

    b.d = &v32[8 * (v71 << v72)];
    r.d = &b.d[v22];
    r.top = 0;
    r.dmax = v71;
    b.top = 0;
    b.dmax = v71;
    *&r.neg = 0x200000000;
    *&b.neg = 0x200000000;
    v33 = bn_one_to_montgomery(&b, mont, ctx);
    if (v33)
    {
      v33 = bn_resize_words(&b, v22);
      if (v33)
      {
        v33 = BN_mod_mul_montgomery(&r, a, mont, mont, ctx);
        if (v33)
        {
          v33 = bn_resize_words(&r, v22);
          if (v33)
          {
            bn_copy_words(v73, v22, &b);
            bn_copy_words(&v73[8 * v22], v22, &r);
            if (v72 < 2)
            {
LABEL_39:
              v37 = v19 << 6;
              v38 = v37 - 1;
              v39 = v72;
              v40 = 0;
              v41 = (v37 - 1) % v72;
              if ((v41 & 0x80000000) == 0)
              {
                v42 = v41 + 1;
                do
                {
                  while (1)
                  {
                    if ((v38 & 0x80000000) == 0)
                    {
                      v43 = v38 >> 6;
                      if (v43 < p->top)
                      {
                        break;
                      }
                    }

                    v40 *= 2;
                    --v38;
                    if (--v42 <= 0)
                    {
                      goto LABEL_45;
                    }
                  }

                  v40 = (p->d[v43] >> v38--) & 1 | (2 * v40);
                  --v42;
                }

                while (v42 > 0);
              }

LABEL_45:
              v33 = copy_from_prebuf(&b, v71, v73, v40, v72);
              if (v33)
              {
                if (v41 >= -1)
                {
                  v44 = -1;
                }

                else
                {
                  v44 = (v37 - 1) % v72;
                }

                v45 = v44 + v37 - v41 - 6;
                v46 = v71;
                while (1)
                {
                  v47 = v45 + 5;
                  if ((v45 + 5) < 0)
                  {
                    break;
                  }

                  v33 = BN_mod_mul_montgomery(&b, &b, &b, mont, ctx);
                  if (!v33)
                  {
                    goto LABEL_103;
                  }

                  if (v47 >> 6 >= p->top)
                  {
                    LODWORD(v48) = 0;
                  }

                  else
                  {
                    v48 = (p->d[(v45 + 5) >> 6] >> (v45 + 5)) & 1;
                  }

                  if (v39 != 1)
                  {
                    v33 = BN_mod_mul_montgomery(&b, &b, &b, mont, ctx);
                    if (!v33)
                    {
                      goto LABEL_103;
                    }

                    v49 = v45 == -5 || (v45 + 4) >> 6 >= p->top ? 0 : 2 * ((p->d[(v45 + 4) >> 6] >> (v45 + 4)) & 1);
                    v33 = BN_mod_mul_montgomery(&b, &b, &b, mont, ctx);
                    if (!v33)
                    {
                      goto LABEL_103;
                    }

                    if (v47 < 2 || (v45 + 3) >> 6 >= p->top)
                    {
                      LODWORD(v50) = 0;
                    }

                    else
                    {
                      v50 = (p->d[(v45 + 3) >> 6] >> (v45 + 3)) & 1;
                    }

                    LODWORD(v48) = v50 | v49 | (4 * v48);
                    if (v39 != 3)
                    {
                      v33 = BN_mod_mul_montgomery(&b, &b, &b, mont, ctx);
                      if (!v33)
                      {
                        goto LABEL_103;
                      }

                      if (v47 < 3 || (v45 + 2) >> 6 >= p->top)
                      {
                        LODWORD(v51) = 0;
                      }

                      else
                      {
                        v51 = (p->d[(v45 + 2) >> 6] >> (v45 + 2)) & 1;
                      }

                      LODWORD(v48) = v51 | (2 * v48);
                      if (v39 != 4)
                      {
                        v33 = BN_mod_mul_montgomery(&b, &b, &b, mont, ctx);
                        if (!v33)
                        {
                          goto LABEL_103;
                        }

                        if (v47 < 4 || (v45 + 1) >> 6 >= p->top)
                        {
                          LODWORD(v52) = 0;
                        }

                        else
                        {
                          v52 = (p->d[(v45 + 1) >> 6] >> (v45 + 1)) & 1;
                        }

                        LODWORD(v48) = v52 | (2 * v48);
                        if (v39 != 5)
                        {
                          v33 = BN_mod_mul_montgomery(&b, &b, &b, mont, ctx);
                          if (!v33)
                          {
                            goto LABEL_103;
                          }

                          if (v47 < 5 || (v53 = v45 >> 6, v53 >= p->top))
                          {
                            LODWORD(v54) = 0;
                          }

                          else
                          {
                            v54 = (p->d[v53] >> v45) & 1;
                          }

                          LODWORD(v48) = v54 | (2 * v48);
                          v46 = v71;
                          v39 = v72;
                        }
                      }
                    }
                  }

                  v33 = copy_from_prebuf(&r, v46, v73, v48, v39);
                  if (v33)
                  {
                    v55 = BN_mod_mul_montgomery(&b, &b, &r, mont, ctx);
                    v33 = 0;
                    v45 -= v39;
                    if (v55)
                    {
                      continue;
                    }
                  }

                  goto LABEL_103;
                }

                v33 = BN_from_montgomery(rr, &b, mont, ctx);
              }
            }

            else
            {
              v33 = BN_mod_mul_montgomery(&b, &r, &r, mont, ctx);
              if (v33)
              {
                bn_copy_words(&v73[16 * v22], v22, &b);
                if (v26 <= 4)
                {
                  v34 = 4;
                }

                else
                {
                  v34 = v26;
                }

                v35 = v34 - 3;
                v36 = &v29[3 * v22] + v31;
                while (1)
                {
                  v33 = BN_mod_mul_montgomery(&b, &r, &b, mont, ctx);
                  if (!v33)
                  {
                    break;
                  }

                  bn_copy_words(v36, v22, &b);
                  v36 += 8 * v22;
                  if (!--v35)
                  {
                    goto LABEL_39;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_103:
    v58 = v33;
    v69 = *(v29 - 1);
    v68 = v29 - 1;
    v70 = v69 + 8;
    if (v69 != -8)
    {
      bzero(v68, v70);
    }

    free(v68);
  }

  else
  {
LABEL_91:
    v58 = 0;
  }

  std::unique_ptr<bn_mont_ctx_st,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](&v77);
  return v58;
}

uint64_t bn_one_to_montgomery(uint64_t a1, BIGNUM *a, BN_CTX *ctx)
{
  top = a[1].top;
  if (top >= 1)
  {
    d = a[1].d;
    if ((d[top - 1] & 0x8000000000000000) != 0)
    {
      if (*(a1 + 12) >= top)
      {
        v11 = *a1;
        **a1 = -*d;
        if (top < 2)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (top >= 0x800000)
        {
          v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
          v8 = 3;
          v9 = 102;
          v10 = 301;
LABEL_30:
          ERR_put_error(v8, 0, v9, v7, v10);
          return 0;
        }

        if ((*(a1 + 20) & 2) != 0)
        {
          v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
          v8 = 3;
          v9 = 106;
          v10 = 306;
          goto LABEL_30;
        }

        v23 = a1;
        v24 = malloc_type_malloc(8 * top + 8, 0xB4E622C9uLL);
        if (!v24)
        {
          v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
          v8 = 14;
          v9 = 65;
          v10 = 217;
          goto LABEL_30;
        }

        *v24 = 8 * top;
        v11 = v24 + 1;
        bzero(v24 + 1, 8 * top);
        a1 = v23;
        v25 = *(v23 + 8);
        if (v25)
        {
          memcpy(v11, *v23, 8 * v25);
          a1 = v23;
        }

        v26 = *a1;
        if (*a1)
        {
          v28 = *(v26 - 1);
          v27 = v26 - 1;
          v29 = v28 + 8;
          if (v28 != -8)
          {
            bzero(v27, v29);
          }

          free(v27);
          a1 = v23;
        }

        *a1 = v11;
        *(a1 + 12) = top;
        d = a[1].d;
        LODWORD(top) = a[1].top;
        *v11 = -*d;
        if (top < 2)
        {
LABEL_17:
          *(a1 + 8) = top;
          *(a1 + 16) = 0;
          return 1;
        }
      }

      v12 = 1;
      if (top < 5)
      {
        goto LABEL_15;
      }

      if ((v11 - d) <= 0x1F)
      {
        goto LABEL_15;
      }

      v13 = (top - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v12 = v13 | 1;
      v14 = (d + 3);
      v15 = (v11 + 3);
      v16 = v13;
      do
      {
        v17 = vmvnq_s8(*v14);
        v15[-1] = vmvnq_s8(v14[-1]);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (top - 1 != v13)
      {
LABEL_15:
        v18 = top - v12;
        v19 = v12;
        v20 = &v11[v12];
        v21 = &d[v19];
        do
        {
          v22 = *v21++;
          *v20++ = ~v22;
          --v18;
        }

        while (v18);
      }

      goto LABEL_17;
    }
  }

  return BN_from_montgomery(a1, a, a, ctx);
}

uint64_t copy_from_prebuf(bignum_st *a1, int a2, unint64_t *a3, int a4, char a5)
{
  v10 = a2;
  if (a1->dmax < a2)
  {
    if (a2 >= 0x800000)
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v12 = 3;
      v13 = 102;
      v14 = 301;
LABEL_34:
      ERR_put_error(v12, 0, v13, v11, v14);
      return 0;
    }

    if ((a1->flags & 2) != 0)
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v12 = 3;
      v13 = 106;
      v14 = 306;
      goto LABEL_34;
    }

    v18 = 8 * a2;
    v19 = malloc_type_malloc(v18 + 8, 0xB4E622C9uLL);
    if (!v19)
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v12 = 14;
      v13 = 65;
      v14 = 217;
      goto LABEL_34;
    }

    *v19 = v18;
    v20 = v19 + 1;
    bzero(v19 + 1, 8 * v10);
    top = a1->top;
    if (top)
    {
      memcpy(v20, a1->d, 8 * top);
    }

    d = a1->d;
    if (a1->d)
    {
      v24 = *(d - 1);
      v23 = d - 1;
      v25 = v24 + 8;
      if (v24 != -8)
      {
        bzero(v23, v25);
      }

      free(v23);
    }

    a1->d = v20;
    a1->dmax = a2;
    bzero(v20, 8 * v10);
    goto LABEL_18;
  }

  if (a2)
  {
    bzero(a1->d, 8 * a2);
    if (a2 >= 1)
    {
LABEL_18:
      v26 = 0;
      v27 = a2;
      v28 = 8 * v10;
      v29 = &a3[v27];
      v30 = a3 + 2;
      while (1)
      {
        v31 = (((v26 ^ a4) - 1) & ~(v26 ^ a4)) >> 63;
        v32 = a1->d;
        if (a2 >= 4)
        {
          if (v32 >= (v29 + v28 * v26) || a3 >= &v32[v27])
          {
            v35 = vdupq_n_s64(v31);
            v36 = (v32 + 2);
            v37 = a2 & 0xFFFFFFFC;
            v38 = v30;
            do
            {
              v39 = vorrq_s8(*v36, vandq_s8(*v38, v35));
              v36[-1] = vorrq_s8(v36[-1], vandq_s8(v38[-1], v35));
              *v36 = v39;
              v38 += 2;
              v36 += 2;
              v37 -= 4;
            }

            while (v37);
            v33 = a2 & 0xFFFFFFFC;
            if (v33 == a2)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        do
        {
          v32[v33] |= a3[v33] & v31;
          ++v33;
        }

        while (a2 != v33);
LABEL_19:
        ++v26;
        a3 = (a3 + v28);
        v30 = (v30 + v28);
        if (v26 >> a5)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v15 = 1;
    ;
  }

LABEL_8:
  a1->top = a2;
  return 1;
}

uint64_t BN_mod_inverse_odd(BIGNUM *a1, _DWORD *a2, BIGNUM *a, BIGNUM *b, uint64_t a5)
{
  *a2 = 0;
  if (b->top < 1 || (*b->d & 1) == 0)
  {
    v5 = 104;
    v6 = 27;
LABEL_8:
    ERR_put_error(3, 0, v5, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/gcd.cc.inc", v6);
    return 0;
  }

  if (a->neg || b->neg || (BN_ucmp(a, b) & 0x80000000) == 0)
  {
    v5 = 107;
    v6 = 32;
    goto LABEL_8;
  }

  v12 = a5;
  if ((*(a5 + 56) & 1) == 0)
  {
    v13 = *(a5 + 48);
    if (bssl::Vector<unsigned long>::MaybeGrow((a5 + 24)))
    {
      v12 = a5;
      *(*(a5 + 24) + 8 * (*(a5 + 32))++) = v13;
    }

    else
    {
      *(a5 + 56) = 257;
      ERR_clear_error();
      v12 = a5;
    }
  }

  v14 = v12;
  v15 = BN_CTX_get(v12);
  v16 = BN_CTX_get(v14);
  v17 = BN_CTX_get(v14);
  result = BN_CTX_get(v14);
  if (!result)
  {
    goto LABEL_81;
  }

  v18 = result;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v17->dmax)
  {
    v19 = a;
    d = v17->d;
  }

  else
  {
    if ((v17->flags & 2) != 0)
    {
      v49 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v50 = 106;
      v51 = 306;
LABEL_80:
      ERR_put_error(3, 0, v50, v49, v51);
      result = 0;
      goto LABEL_81;
    }

    result = OPENSSL_calloc(1uLL, 8uLL);
    if (!result)
    {
      goto LABEL_81;
    }

    d = result;
    top = v17->top;
    if (top)
    {
      memcpy(result, v17->d, 8 * top);
    }

    v45 = v17->d;
    if (v17->d)
    {
      v47 = *(v45 - 1);
      v46 = v45 - 1;
      v48 = v47 + 8;
      if (v47 != -8)
      {
        bzero(v46, v48);
      }

      free(v46);
    }

    v17->d = d;
    v17->dmax = 1;
    v19 = a;
  }

  v17->neg = 0;
  *d = 1;
  v17->top = 1;
  result = BN_copy(v16, v19);
  if (!result)
  {
    goto LABEL_81;
  }

  result = BN_copy(v15, b);
  if (!result)
  {
    goto LABEL_81;
  }

  v15->neg = 0;
  do
  {
    v21 = v16->top;
    if (!v21)
    {
LABEL_85:
      if (BN_is_one(&v15->d))
      {
        result = BN_sub(v18, b, v18);
        if (result)
        {
          if (!v18->neg && BN_ucmp(v18, b) < 0 || (result = BN_nnmod(v18, v18, b, a5), result))
          {
            result = BN_copy(a1, v18) != 0;
          }
        }

        break;
      }

      *a2 = 1;
      v49 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/gcd.cc.inc";
      v50 = 112;
      v51 = 150;
      goto LABEL_80;
    }

    v22 = v21;
    v23 = v16->d;
    if (v21 >= 4)
    {
      v24 = v21 & 0xFFFFFFFFFFFFFFFCLL;
      v26 = v23 + 1;
      v27 = 0uLL;
      v28 = v22 & 0xFFFFFFFFFFFFFFFCLL;
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
      if (v24 == v22)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    v31 = v22 - v24;
    v32 = &v23->i64[v24];
    do
    {
      v33 = *v32++;
      *&v25 |= v33;
      --v31;
    }

    while (v31);
LABEL_28:
    if (!*&v25)
    {
      goto LABEL_85;
    }

    v34 = 0;
    while (v34 >> 6 >= v16->top || ((v16->d[v34 >> 6] >> v34) & 1) == 0)
    {
      if (v17->top < 1 || (*v17->d & 1) == 0)
      {
        goto LABEL_31;
      }

      result = bn_uadd_consttime(v17, v17, b);
      if (!result)
      {
        goto LABEL_81;
      }

      v35 = v17->top;
      if (v35 >= 1)
      {
        do
        {
          if (v17->d[v35 - 1])
          {
            v17->top = v35;
            goto LABEL_31;
          }

          v36 = __OFSUB__(v35--, 1);
        }

        while (!((v35 < 0) ^ v36 | (v35 == 0)));
        v17->top = 0;
LABEL_43:
        v17->neg = 0;
        goto LABEL_31;
      }

      if (!v35)
      {
        goto LABEL_43;
      }

LABEL_31:
      ++v34;
      result = BN_rshift1(v17, v17);
      if (!result)
      {
        goto LABEL_81;
      }
    }

    if (v34)
    {
      result = BN_rshift(v16, v16, v34);
      if (!result)
      {
        break;
      }
    }

    v37 = 0;
LABEL_49:
    if (v37 >> 6 >= v15->top || ((v15->d[v37 >> 6] >> v37) & 1) == 0)
    {
      if (v18->top >= 1 && (*v18->d & 1) != 0)
      {
        result = bn_uadd_consttime(v18, v18, b);
        if (!result)
        {
          break;
        }

        v40 = v18->top;
        if (v40 < 1)
        {
          if (!v40)
          {
            goto LABEL_60;
          }
        }

        else
        {
          do
          {
            if (v18->d[v40 - 1])
            {
              v18->top = v40;
              goto LABEL_48;
            }

            v36 = __OFSUB__(v40--, 1);
          }

          while (!((v40 < 0) ^ v36 | (v40 == 0)));
          v18->top = 0;
LABEL_60:
          v18->neg = 0;
        }
      }

LABEL_48:
      ++v37;
      v38 = BN_rshift1(v18, v18);
      result = 0;
      v39 = a5;
      if (!v38)
      {
        goto LABEL_82;
      }

      goto LABEL_49;
    }

    if (v37)
    {
      result = BN_rshift(v15, v15, v37);
      if (!result)
      {
        break;
      }
    }

    if ((BN_ucmp(v16, v15) & 0x80000000) == 0)
    {
      result = BN_uadd(v17, v17, v18);
      if (result)
      {
        v41 = v16;
        v42 = v16;
        v43 = v15;
        goto LABEL_68;
      }

      break;
    }

    result = BN_uadd(v18, v18, v17);
    if (!result)
    {
      break;
    }

    v41 = v15;
    v42 = v15;
    v43 = v16;
LABEL_68:
    result = BN_usub(v41, v42, v43);
  }

  while (result);
LABEL_81:
  v39 = a5;
LABEL_82:
  if ((*(v39 + 56) & 1) == 0)
  {
    v52 = *(v39 + 32);
    if (!v52)
    {
      abort();
    }

    *(v39 + 48) = *(*(v39 + 24) + 8 * v52 - 8);
    *(v39 + 32) = v52 - 1;
  }

  return result;
}

int BN_rshift1(BIGNUM *r, const BIGNUM *a)
{
  top = a->top;
  if (r->dmax >= top)
  {
    d = r->d;
    if (!top)
    {
LABEL_25:
      r->top = 0;
      p_neg = &r->neg;
LABEL_34:
      *p_neg = 0;
      return 1;
    }
  }

  else
  {
    if (top >= 0x800000)
    {
      v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v4 = 3;
      v5 = 102;
      v6 = 301;
LABEL_39:
      ERR_put_error(v4, 0, v5, v3, v6);
      return 0;
    }

    if ((r->flags & 2) != 0)
    {
      v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
      v4 = 3;
      v5 = 106;
      v6 = 306;
      goto LABEL_39;
    }

    v16 = a;
    v17 = r;
    v18 = malloc_type_malloc(8 * top + 8, 0xB4E622C9uLL);
    if (!v18)
    {
      v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v4 = 14;
      v5 = 65;
      v6 = 217;
      goto LABEL_39;
    }

    *v18 = 8 * top;
    d = v18 + 1;
    bzero(v18 + 1, 8 * top);
    r = v17;
    v19 = v17->top;
    if (v19)
    {
      memcpy(d, v17->d, 8 * v19);
      r = v17;
    }

    v20 = r->d;
    if (r->d)
    {
      v22 = *(v20 - 1);
      v21 = v20 - 1;
      v23 = v22 + 8;
      if (v22 != -8)
      {
        bzero(v21, v23);
      }

      free(v21);
      r = v17;
    }

    r->d = d;
    r->dmax = top;
    a = v16;
    LODWORD(top) = v16->top;
    if (!top)
    {
      goto LABEL_25;
    }
  }

  v8 = a->d;
  v9 = top - 1;
  if (top != 1)
  {
    if (top >= 7 && (d < &v8[top] ? (v10 = v8 >= &d[top - 1]) : (v10 = 1), v10))
    {
      v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = v8 + 2;
      v13 = (d + 2);
      v14 = v9 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = vsraq_n_u64(vshlq_n_s64(*(v12 + 1), 0x3FuLL), *v12, 1uLL);
        v13[-1] = vsraq_n_u64(vshlq_n_s64(*(v12 - 1), 0x3FuLL), *(v12 - 1), 1uLL);
        *v13 = v15;
        v12 += 4;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v9 == v11)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v11 = 0;
    }

    v25 = &d[v11];
    v26 = ~v11 + top;
    v27 = &v8[v11 + 1];
    do
    {
      *v25++ = *(v27 - 8) >> 1;
      v27 += 8;
      --v26;
    }

    while (v26);
  }

LABEL_29:
  d[v9] = v8[v9] >> 1;
  r->neg = a->neg;
  p_neg = &r->neg;
  r->top = top;
  if (top >= 1)
  {
    while (!d[top - 1])
    {
      v28 = __OFSUB__(top, 1);
      LODWORD(top) = top - 1;
      if ((top < 0) ^ v28 | (top == 0))
      {
        r->top = 0;
        goto LABEL_34;
      }
    }

    r->top = top;
  }

  return 1;
}

uint64_t bn_mod_inverse_consttime(BIGNUM *a1, _DWORD *a2, BIGNUM *a, BIGNUM *b, uint64_t a5)
{
  *a2 = 0;
  if (a->neg || (BN_ucmp(a, b) & 0x80000000) == 0)
  {
    v10 = 107;
    v11 = 163;
LABEL_4:
    ERR_put_error(3, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/gcd_extra.cc.inc", v11);
    return 0;
  }

  top = a->top;
  if (!top)
  {
LABEL_20:
    if (b->neg || (v26 = b->top, !v26))
    {
LABEL_21:
      *a2 = 1;
      v10 = 112;
      v11 = 172;
      goto LABEL_4;
    }

    d = b->d;
    v28 = *b->d ^ 1;
    if (v26 >= 2)
    {
      if (v26 < 5)
      {
        v29 = 1;
LABEL_60:
        v45 = v26 - v29;
        v46 = &d[v29];
        do
        {
          v47 = *v46++;
          v28 |= v47;
          --v45;
        }

        while (v45);
        goto LABEL_62;
      }

      v39 = (v26 - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v29 = v39 | 1;
      v40 = 0uLL;
      v41 = *b->d ^ 1uLL;
      v42 = (d + 3);
      v43 = v39;
      do
      {
        v41 = vorrq_s8(v42[-1], v41);
        v40 = vorrq_s8(*v42, v40);
        v42 += 2;
        v43 -= 4;
      }

      while (v43);
      v44 = vorrq_s8(v40, v41);
      v28 = vorr_s8(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
      if (v26 - 1 != v39)
      {
        goto LABEL_60;
      }
    }

LABEL_62:
    if (!v28)
    {
      a1->neg = 0;
      a1->top = 0;
      return 1;
    }

    goto LABEL_21;
  }

  v14 = a->d;
  if (top < 4)
  {
    v15 = 0;
    v16 = 0;
LABEL_12:
    v22 = top - v15;
    v23 = &v14[v15];
    do
    {
      v24 = *v23++;
      *&v16 |= v24;
      --v22;
    }

    while (v22);
    goto LABEL_14;
  }

  v15 = top & 0xFFFFFFFFFFFFFFFCLL;
  v17 = (v14 + 2);
  v18 = 0uLL;
  v19 = top & 0xFFFFFFFFFFFFFFFCLL;
  v20 = 0uLL;
  do
  {
    v18 = vorrq_s8(v17[-1], v18);
    v20 = vorrq_s8(*v17, v20);
    v17 += 2;
    v19 -= 4;
  }

  while (v19);
  v21 = vorrq_s8(v20, v18);
  v16 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
  if (v15 != top)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (!*&v16)
  {
    goto LABEL_20;
  }

  if (top >= 1 && (*v14 & 1) != 0)
  {
    v25 = b->top;
  }

  else
  {
    v25 = b->top;
    if (v25 < 1 || (*b->d & 1) == 0)
    {
      *a2 = 1;
      v10 = 112;
      v11 = 188;
      goto LABEL_4;
    }
  }

  if (top >= v25)
  {
    v30 = v25;
  }

  else
  {
    v30 = a->top;
  }

  if ((*(a5 + 56) & 1) == 0)
  {
    v31 = *(a5 + 48);
    if (bssl::Vector<unsigned long>::MaybeGrow((a5 + 24)))
    {
      *(*(a5 + 24) + 8 * (*(a5 + 32))++) = v31;
    }

    else
    {
      *(a5 + 56) = 257;
      ERR_clear_error();
    }
  }

  v32 = BN_CTX_get(a5);
  v33 = BN_CTX_get(a5);
  v34 = BN_CTX_get(a5);
  v211 = BN_CTX_get(a5);
  v210 = BN_CTX_get(a5);
  v213 = BN_CTX_get(a5);
  v212 = BN_CTX_get(a5);
  v35 = BN_CTX_get(a5);
  result = 0;
  if (v32)
  {
    if (v33)
    {
      if (v34)
      {
        if (v211)
        {
          if (v210)
          {
            if (v213)
            {
              if (v212)
              {
                if (v35)
                {
                  v209 = v35;
                  result = BN_copy(v32, a);
                  if (result)
                  {
                    result = BN_copy(v33, b);
                    if (result)
                    {
                      result = BN_one(v34);
                      if (result)
                      {
                        result = BN_one(v213);
                        if (result)
                        {
                          result = bn_resize_words(v32, v25);
                          if (result)
                          {
                            result = bn_resize_words(v33, v25);
                            if (result)
                            {
                              result = bn_resize_words(v34, v25);
                              if (result)
                              {
                                result = bn_resize_words(v210, v25);
                                if (result)
                                {
                                  result = bn_resize_words(v211, v30);
                                  if (result)
                                  {
                                    result = bn_resize_words(v213, v30);
                                    if (result)
                                    {
                                      result = bn_resize_words(v212, v25);
                                      if (result)
                                      {
                                        result = bn_resize_words(v209, v25);
                                        if (result)
                                        {
                                          v208 = v30;
                                          v36 = v30 + v25;
                                          if (__CFADD__(v30, v25))
                                          {
                                            v37 = 102;
                                            v38 = 244;
                                          }

                                          else
                                          {
                                            if (v36)
                                            {
                                              v48 = 0;
                                              v49 = v36 << 6;
                                              if (v49 <= 1)
                                              {
                                                v50 = 1;
                                              }

                                              else
                                              {
                                                v50 = v49;
                                              }

                                              v185 = 8 * v30;
                                              v186 = v50;
                                              v199 = v25;
                                              v187 = v25 & 0xFFFFFFFFFFFFFFFCLL;
                                              v184 = v30 & 0xFFFFFFFFFFFFFFFCLL;
                                              while (1)
                                              {
                                                v198 = v48;
                                                v51 = ((*v32->d << 63) >> 63) & -(*v33->d & 1);
                                                v52 = bn_sub_words(*v212, v33->d, v32->d, v25);
                                                v53 = v33->d;
                                                v200 = v51;
                                                if (v52)
                                                {
                                                  v54 = 0;
                                                }

                                                else
                                                {
                                                  v54 = v51;
                                                }

                                                v55 = *v212;
                                                if (v25)
                                                {
                                                  v56 = ~v54;
                                                  if (v25 < 4 || (v53 < &v55[v199] ? (v57 = v55 >= &v53[v199]) : (v57 = 1), !v57))
                                                  {
                                                    v64 = 0;
LABEL_85:
                                                    v65 = v25 - v64;
                                                    v66 = v64;
                                                    v67 = &v53[v64];
                                                    v68 = &v55[v66];
                                                    do
                                                    {
                                                      v69 = *v68++;
                                                      *v67 = *v67 & v56 | v69 & v54;
                                                      ++v67;
                                                      --v65;
                                                    }

                                                    while (v65);
                                                    goto LABEL_87;
                                                  }

                                                  v58 = vdupq_n_s64(v54);
                                                  v59 = vdupq_n_s64(v56);
                                                  v60 = (v55 + 2);
                                                  v61 = (v53 + 2);
                                                  v62 = v25 & 0xFFFFFFFFFFFFFFFCLL;
                                                  do
                                                  {
                                                    v63 = vorrq_s8(vandq_s8(*v61, v59), vandq_s8(*v60, v58));
                                                    v61[-1] = vorrq_s8(vandq_s8(v61[-1], v59), vandq_s8(v60[-1], v58));
                                                    *v61 = v63;
                                                    v60 += 2;
                                                    v61 += 2;
                                                    v62 -= 4;
                                                  }

                                                  while (v62);
                                                  v64 = v25 & 0xFFFFFFFFFFFFFFFCLL;
                                                  if (v187 != v25)
                                                  {
                                                    goto LABEL_85;
                                                  }
                                                }

LABEL_87:
                                                v205 = v54;
                                                v70 = -v52;
                                                bn_sub_words(v55, v32->d, v53, v25);
                                                v71 = v200 & v70;
                                                v72 = *v212;
                                                if (!v25)
                                                {
                                                  goto LABEL_94;
                                                }

                                                v73 = v32->d;
                                                v74 = ~v71;
                                                if (v25 < 4 || v73 < &v72[v199] && v72 < &v73->u64[v199])
                                                {
                                                  v75 = 0;
LABEL_92:
                                                  v76 = v25 - v75;
                                                  v77 = v75;
                                                  v78 = &v73->u64[v77];
                                                  v79 = &v72[v77];
                                                  do
                                                  {
                                                    v80 = *v79++;
                                                    *v78 = *v78 & v74 | v80 & v71;
                                                    ++v78;
                                                    --v76;
                                                  }

                                                  while (v76);
                                                  goto LABEL_94;
                                                }

                                                v136 = vdupq_n_s64(v71);
                                                v137 = vdupq_n_s64(v74);
                                                v138 = (v72 + 2);
                                                v139 = v73 + 1;
                                                v140 = v25 & 0xFFFFFFFFFFFFFFFCLL;
                                                do
                                                {
                                                  v141 = vorrq_s8(vandq_s8(*v139, v137), vandq_s8(*v138, v136));
                                                  v139[-1] = vorrq_s8(vandq_s8(v139[-1], v137), vandq_s8(v138[-1], v136));
                                                  *v139 = v141;
                                                  v138 += 2;
                                                  v139 += 2;
                                                  v140 -= 4;
                                                }

                                                while (v140);
                                                v75 = v25 & 0xFFFFFFFFFFFFFFFCLL;
                                                if (v187 != v25)
                                                {
                                                  goto LABEL_92;
                                                }

LABEL_94:
                                                v201 = v200 & v70;
                                                v192 = bn_add_words(v72, *v34, *v210, v25);
                                                v81 = v192 - bn_sub_words(*v209, *v212, b->d, v25);
                                                v82 = *v212;
                                                if (!v25)
                                                {
                                                  goto LABEL_127;
                                                }

                                                v83 = *v209;
                                                v84 = ~v81;
                                                if (v25 >= 4 && (v82 >= v83 + v199 * 8 || v83 >= &v82[v199]))
                                                {
                                                  v142 = vdupq_n_s64(v81);
                                                  v143 = vdupq_n_s64(v84);
                                                  v144 = (v82 + 2);
                                                  v145 = (v83 + 16);
                                                  v146 = v25 & 0xFFFFFFFFFFFFFFFCLL;
                                                  do
                                                  {
                                                    v147 = vorrq_s8(vandq_s8(*v145, v143), vandq_s8(*v144, v142));
                                                    v144[-1] = vorrq_s8(vandq_s8(v145[-1], v143), vandq_s8(v144[-1], v142));
                                                    *v144 = v147;
                                                    v144 += 2;
                                                    v145 += 2;
                                                    v146 -= 4;
                                                  }

                                                  while (v146);
                                                  v85 = v25 & 0xFFFFFFFFFFFFFFFCLL;
                                                  v87 = v201;
                                                  v86 = v205;
                                                  if (v187 == v25)
                                                  {
                                                    goto LABEL_101;
                                                  }
                                                }

                                                else
                                                {
                                                  v85 = 0;
                                                  v87 = v201;
                                                  v86 = v205;
                                                }

                                                v88 = v25 - v85;
                                                v89 = v85;
                                                v90 = (v83 + v89 * 8);
                                                v91 = &v82[v89];
                                                do
                                                {
                                                  v92 = *v90++;
                                                  *v91 = v92 & v84 | *v91 & v81;
                                                  ++v91;
                                                  --v88;
                                                }

                                                while (v88);
LABEL_101:
                                                v93 = *v34;
                                                v94 = ~v87;
                                                if (v25 >= 4 && (v93 < &v82[v199] ? (v95 = v82 >= v93 + v199 * 8) : (v95 = 1), v95))
                                                {
                                                  v96 = vdupq_n_s64(v87);
                                                  v97 = vdupq_n_s64(v94);
                                                  v98 = (v82 + 2);
                                                  v99 = (v93 + 16);
                                                  v100 = v25 & 0xFFFFFFFFFFFFFFFCLL;
                                                  do
                                                  {
                                                    v101 = vorrq_s8(vandq_s8(*v99, v97), vandq_s8(*v98, v96));
                                                    v99[-1] = vorrq_s8(vandq_s8(v99[-1], v97), vandq_s8(v98[-1], v96));
                                                    *v99 = v101;
                                                    v98 += 2;
                                                    v99 += 2;
                                                    v100 -= 4;
                                                  }

                                                  while (v100);
                                                  v102 = v25 & 0xFFFFFFFFFFFFFFFCLL;
                                                  if (v187 == v25)
                                                  {
                                                    goto LABEL_114;
                                                  }
                                                }

                                                else
                                                {
                                                  v102 = 0;
                                                }

                                                v103 = v25 - v102;
                                                v104 = v102;
                                                v105 = (v93 + v104 * 8);
                                                v106 = &v82[v104];
                                                do
                                                {
                                                  v107 = *v106++;
                                                  *v105 = *v105 & v94 | v107 & v87;
                                                  ++v105;
                                                  --v103;
                                                }

                                                while (v103);
LABEL_114:
                                                v108 = *v210;
                                                v109 = ~v86;
                                                if (v25 < 4 || (v108 < &v82[v199] ? (v110 = v82 >= v108 + v199 * 8) : (v110 = 1), !v110))
                                                {
                                                  v117 = 0;
LABEL_125:
                                                  v118 = v25 - v117;
                                                  v119 = v117;
                                                  v120 = (v108 + v119 * 8);
                                                  v121 = &v82[v119];
                                                  do
                                                  {
                                                    v122 = *v121++;
                                                    *v120 = *v120 & v109 | v122 & v86;
                                                    ++v120;
                                                    --v118;
                                                  }

                                                  while (v118);
                                                  goto LABEL_127;
                                                }

                                                v111 = vdupq_n_s64(v86);
                                                v112 = vdupq_n_s64(v109);
                                                v113 = (v82 + 2);
                                                v114 = (v108 + 16);
                                                v115 = v25 & 0xFFFFFFFFFFFFFFFCLL;
                                                do
                                                {
                                                  v116 = vorrq_s8(vandq_s8(*v114, v112), vandq_s8(*v113, v111));
                                                  v114[-1] = vorrq_s8(vandq_s8(v114[-1], v112), vandq_s8(v113[-1], v111));
                                                  *v114 = v116;
                                                  v113 += 2;
                                                  v114 += 2;
                                                  v115 -= 4;
                                                }

                                                while (v115);
                                                v117 = v25 & 0xFFFFFFFFFFFFFFFCLL;
                                                if (v187 != v25)
                                                {
                                                  goto LABEL_125;
                                                }

LABEL_127:
                                                v193 = v81;
                                                bn_add_words(v82, *v211, *v213, v208);
                                                bn_sub_words(*v209, *v212, a->d, v208);
                                                v123 = *v212;
                                                if (!v25)
                                                {
                                                  goto LABEL_175;
                                                }

                                                v124 = *v209;
                                                v125 = ~v193;
                                                if (v208 >= 4)
                                                {
                                                  v129 = v123 >= v124 + v185 || v124 >= &v123->u64[v185 / 8];
                                                  v128 = v201;
                                                  if (v129)
                                                  {
                                                    v130 = vdupq_n_s64(v193);
                                                    v131 = vdupq_n_s64(v125);
                                                    v132 = v123 + 1;
                                                    v133 = (v124 + 16);
                                                    v134 = v184;
                                                    do
                                                    {
                                                      v135 = vorrq_s8(vandq_s8(*v133, v131), vandq_s8(*v132, v130));
                                                      v132[-1] = vorrq_s8(vandq_s8(v133[-1], v131), vandq_s8(v132[-1], v130));
                                                      *v132 = v135;
                                                      v132 += 2;
                                                      v133 += 2;
                                                      v134 -= 4;
                                                    }

                                                    while (v134);
                                                    v126 = v184;
                                                    v127 = v211;
                                                    if (v184 == v208)
                                                    {
                                                      goto LABEL_149;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v126 = 0;
                                                    v127 = v211;
                                                  }
                                                }

                                                else
                                                {
                                                  v126 = 0;
                                                  v127 = v211;
                                                  v128 = v201;
                                                }

                                                v148 = v208 - v126;
                                                v149 = v126;
                                                v150 = (v124 + v149 * 8);
                                                v151 = &v123->u64[v149];
                                                do
                                                {
                                                  v152 = *v150++;
                                                  *v151 = v152 & v125 | *v151 & v193;
                                                  ++v151;
                                                  --v148;
                                                }

                                                while (v148);
LABEL_149:
                                                v153 = *v127;
                                                v154 = ~v128;
                                                if (v208 >= 4 && (v153 < &v123->i8[v185] ? (v155 = v123 >= &v153->i8[v185]) : (v155 = 1), v155))
                                                {
                                                  v156 = vdupq_n_s64(v128);
                                                  v157 = vdupq_n_s64(v154);
                                                  v158 = v123 + 1;
                                                  v159 = v153 + 1;
                                                  v160 = v184;
                                                  do
                                                  {
                                                    v161 = vorrq_s8(vandq_s8(*v159, v157), vandq_s8(*v158, v156));
                                                    v159[-1] = vorrq_s8(vandq_s8(v159[-1], v157), vandq_s8(v158[-1], v156));
                                                    *v159 = v161;
                                                    v158 += 2;
                                                    v159 += 2;
                                                    v160 -= 4;
                                                  }

                                                  while (v160);
                                                  v162 = v184;
                                                  if (v184 == v208)
                                                  {
                                                    goto LABEL_162;
                                                  }
                                                }

                                                else
                                                {
                                                  v162 = 0;
                                                }

                                                v163 = v208 - v162;
                                                v164 = v162;
                                                v165 = &v153->u64[v164];
                                                v166 = &v123->i64[v164];
                                                do
                                                {
                                                  v167 = *v166++;
                                                  *v165 = *v165 & v154 | v167 & v128;
                                                  ++v165;
                                                  --v163;
                                                }

                                                while (v163);
LABEL_162:
                                                v168 = *v213;
                                                v169 = ~v205;
                                                if (v208 < 4 || (v168 < &v123->u64[v185 / 8] ? (v170 = v123 >= v168 + v185) : (v170 = 1), !v170))
                                                {
                                                  v177 = 0;
LABEL_173:
                                                  v178 = v208 - v177;
                                                  v179 = v177;
                                                  v180 = (v168 + v179 * 8);
                                                  v181 = &v123->i64[v179];
                                                  do
                                                  {
                                                    v182 = *v181++;
                                                    *v180 = *v180 & v169 | v182 & v205;
                                                    ++v180;
                                                    --v178;
                                                  }

                                                  while (v178);
                                                  goto LABEL_175;
                                                }

                                                v171 = vdupq_n_s64(v205);
                                                v172 = vdupq_n_s64(v169);
                                                v173 = v123 + 1;
                                                v174 = (v168 + 16);
                                                v175 = v184;
                                                do
                                                {
                                                  v176 = vorrq_s8(vandq_s8(*v174, v172), vandq_s8(*v173, v171));
                                                  v174[-1] = vorrq_s8(vandq_s8(v174[-1], v172), vandq_s8(v173[-1], v171));
                                                  *v174 = v176;
                                                  v173 += 2;
                                                  v174 += 2;
                                                  v175 -= 4;
                                                }

                                                while (v175);
                                                v177 = v184;
                                                if (v184 != v208)
                                                {
                                                  goto LABEL_173;
                                                }

LABEL_175:
                                                v202 = *v33->d;
                                                v206 = (*v32->d & 1) - 1;
                                                maybe_rshift1_words(v32->d, v206, v123, v25);
                                                v194 = -(**v211 & 1) | -(**v34 & 1);
                                                v189 = maybe_add_words(*v34, v194 & v206, b->d, *v212, v25);
                                                v195 = maybe_add_words(*v211, v194 & v206, a->d, *v212, v208);
                                                v188 = *v34;
                                                maybe_rshift1_words(*v34, v206, *v212, v25);
                                                if (v25)
                                                {
                                                  *(v188 + 8 * v25 - 8) |= (v189 & v206) << 63;
                                                  v190 = *v211;
                                                  maybe_rshift1_words(*v211, v206, *v212, v208);
                                                  *(v190 + 8 * v208 - 8) |= (v195 & v206) << 63;
                                                }

                                                else
                                                {
                                                  maybe_rshift1_words(*v211, v206, *v212, v208);
                                                }

                                                v207 = (v202 & 1) - 1;
                                                maybe_rshift1_words(v33->d, v207, *v212, v25);
                                                v203 = -(**v213 & 1) | -(**v210 & 1);
                                                v196 = maybe_add_words(*v210, v203 & v207, b->d, *v212, v25);
                                                v204 = maybe_add_words(*v213, v203 & v207, a->d, *v212, v208);
                                                v191 = *v210;
                                                maybe_rshift1_words(*v210, v207, *v212, v25);
                                                if (v25)
                                                {
                                                  *(v191 + 8 * v25 - 8) |= (v196 & v207) << 63;
                                                  v197 = *v213;
                                                  maybe_rshift1_words(*v213, v207, *v212, v208);
                                                  *(v197 + 8 * v208 - 8) |= (v204 & v207) << 63;
                                                  v48 = v198 + 1;
                                                  if (v198 + 1 == v186)
                                                  {
                                                    break;
                                                  }
                                                }

                                                else
                                                {
                                                  maybe_rshift1_words(*v213, v207, *v212, v208);
                                                  v48 = v198 + 1;
                                                  if (v198 + 1 == v186)
                                                  {
                                                    break;
                                                  }
                                                }
                                              }
                                            }

                                            if (BN_is_one(&v32->d))
                                            {
                                              result = BN_copy(a1, v34) != 0;
                                              if (*(a5 + 56))
                                              {
                                                return result;
                                              }

                                              goto LABEL_184;
                                            }

                                            *a2 = 1;
                                            v37 = 112;
                                            v38 = 318;
                                          }

                                          ERR_put_error(3, 0, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/gcd_extra.cc.inc", v38);
                                          result = 0;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (*(a5 + 56))
  {
    return result;
  }

LABEL_184:
  v183 = *(a5 + 32);
  if (!v183)
  {
    abort();
  }

  *(a5 + 48) = *(*(a5 + 24) + 8 * v183 - 8);
  *(a5 + 32) = v183 - 1;
  return result;
}

uint64_t BN_rand_range_ex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (*(a1 + 12) >= v5)
  {
    result = bn_rand_range_words(*a1, a2, *a3, v5, BN_rand_range_ex::kDefaultAdditionalData);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v5 >= 0x800000)
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v7 = 3;
    v8 = 102;
    v9 = 301;
LABEL_19:
    ERR_put_error(v7, 0, v8, v6, v9);
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc";
    v7 = 3;
    v8 = 106;
    v9 = 306;
    goto LABEL_19;
  }

  v12 = 8 * v5;
  v13 = malloc_type_malloc(v12 + 8, 0xB4E622C9uLL);
  if (!v13)
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v7 = 14;
    v8 = 65;
    v9 = 217;
    goto LABEL_19;
  }

  *v13 = v12;
  v14 = v13 + 1;
  bzero(v13 + 1, v12);
  v15 = *(a1 + 8);
  if (v15)
  {
    memcpy(v14, *a1, 8 * v15);
  }

  v16 = *a1;
  if (*a1)
  {
    v18 = *(v16 - 1);
    v17 = v16 - 8;
    v19 = v18 + 8;
    if (v18 != -8)
    {
      bzero(v17, v19);
    }

    free(v17);
  }

  *a1 = v14;
  *(a1 + 12) = v5;
  result = bn_rand_range_words(v14, a2, *a3, *(a3 + 8), BN_rand_range_ex::kDefaultAdditionalData);
  if (result)
  {
LABEL_5:
    *(a1 + 16) = 0;
    *(a1 + 8) = *(a3 + 8);
    return 1;
  }

  return result;
}

BIGNUM *bn_mod_inverse_secret_prime(BIGNUM *a1, const BIGNUM *a2, const BIGNUM *a3, BN_CTX *ctx, BN_MONT_CTX *a5)
{
  if ((*(ctx + 56) & 1) == 0)
  {
    v10 = *(ctx + 6);
    if (!bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
    {
      *(ctx + 28) = 257;
      ERR_clear_error();
      result = BN_CTX_get(ctx);
      if (!result)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    }

    *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v10;
  }

  result = BN_CTX_get(ctx);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = result;
  result = BN_copy(result, a3);
  if (result)
  {
    result = BN_sub_word(v12, 2uLL);
    if (result)
    {
      result = BN_mod_exp_mont_consttime(a1, a2, v12, a3, ctx, a5);
    }
  }

LABEL_9:
  if ((*(ctx + 56) & 1) == 0)
  {
    v13 = *(ctx + 4);
    if (!v13)
    {
      abort();
    }

    *(ctx + 6) = *(*(ctx + 3) + 8 * v13 - 8);
    *(ctx + 4) = v13 - 1;
  }

  return result;
}

int BN_gcd(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx)
{
  n = 0;
  result = bn_gcd_consttime(r, &n, a, b, ctx);
  if (result)
  {
    v6 = n;

    return BN_lshift(r, r, v6);
  }

  return result;
}

uint64_t bn_gcd_consttime(bignum_st *a1, unsigned int *a2, const bignum_st *a3, const bignum_st *a4, bignum_ctx *ctx)
{
  if (a3->top <= a4->top)
  {
    top = a4->top;
  }

  else
  {
    top = a3->top;
  }

  if (!top)
  {
    *a2 = 0;
    a1->neg = 0;
    result = 1;
    a1->top = 0;
    return result;
  }

  if ((*(ctx + 56) & 1) == 0)
  {
    v11 = *(ctx + 6);
    if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
    {
      *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v11;
    }

    else
    {
      *(ctx + 28) = 257;
      ERR_clear_error();
    }
  }

  v14 = BN_CTX_get(ctx);
  v15 = BN_CTX_get(ctx);
  v16 = BN_CTX_get(ctx);
  result = 0;
  if (v14)
  {
    if (v15)
    {
      if (v16)
      {
        result = BN_copy(v14, a3);
        if (result)
        {
          result = BN_copy(v15, a4);
          if (result)
          {
            result = bn_resize_words(v14, top);
            if (result)
            {
              result = bn_resize_words(v15, top);
              if (result)
              {
                result = bn_resize_words(v16, top);
                if (result)
                {
                  v17 = a3->top;
                  v18 = (a4->top + v17) << 6;
                  if (v18 < v17 << 6)
                  {
                    ERR_put_error(3, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/gcd_extra.cc.inc", 79);
                    result = 0;
                    goto LABEL_129;
                  }

                  d = v14->d;
                  v20 = v15->d;
                  v181 = a2;
                  v182 = a1;
                  if (v18)
                  {
                    v21 = 0;
                    v22 = 0;
                    v23 = *v16;
                    v24 = top - 1;
                    v25 = *v16 + 8 * v24;
                    v26 = &v20->i64[top];
                    v27 = *v16 + 8 * top;
                    v28 = v27 - 8;
                    v29 = &d->i8[8 * top];
                    v30 = d < v27;
                    v31 = *v16 >= v29;
                    v32 = *v16 < v29;
                    if (v31)
                    {
                      v30 = 0;
                    }

                    v33 = top & 0xFFFFFFFFFFFFFFFCLL;
                    v34 = v20 < v27;
                    v31 = v23 >= v26;
                    v35 = v23 < v26;
                    if (v31)
                    {
                      v34 = 0;
                    }

                    v36 = d < v28 && v32;
                    v37 = v24 & 0xFFFFFFFFFFFFFFFCLL;
                    v38 = v20 < v28 && v35;
                    while (1)
                    {
                      v39 = 0;
                      if (d->i8[0])
                      {
                        v40 = -(v20->i64[0] & 1);
                      }

                      else
                      {
                        v40 = 0;
                      }

                      v41 = top;
                      v42 = v20;
                      v43 = d;
                      v44 = v23;
                      if (top < 4)
                      {
                        goto LABEL_140;
                      }

                      v39 = 0;
                      v41 = top;
                      v42 = v20;
                      v43 = d;
                      v44 = v23;
                      do
                      {
                        v45 = *v43 - *v42;
                        v46 = *v43 < *v42;
                        v31 = v45 >= v39;
                        v47 = v45 - v39;
                        if (!v31)
                        {
                          v46 = 1;
                        }

                        v31 = !v46;
                        *v44 = v47;
                        v48 = v43[1];
                        v49 = v42[1];
                        v50 = v31;
                        v31 = __CFSUB__(v48, v49, v31);
                        v44[1] = v48 - (v49 + !v50);
                        v51 = v43[2];
                        v52 = v42[2];
                        v53 = v31;
                        v31 = __CFSUB__(v51, v52, v31);
                        v44[2] = v51 - (v52 + !v53);
                        v54 = v43[3];
                        v55 = v42[3];
                        v57 = v31;
                        v31 = __CFSUB__(v54, v55, v31);
                        v56 = v54 - (v55 + !v57);
                        v39 = !v31;
                        v44[3] = v56;
                        v43 += 4;
                        v42 += 4;
                        v44 += 4;
                        v41 -= 4;
                      }

                      while (v41 >= 4);
                      if (v41)
                      {
LABEL_140:
                        do
                        {
                          v59 = *v43++;
                          v58 = v59;
                          v60 = *v42++;
                          v31 = v58 >= v60;
                          v61 = v58 - v60;
                          v62 = !v31;
                          v31 = v61 >= v39;
                          v63 = v61 - v39;
                          if (v31)
                          {
                            v39 = v62;
                          }

                          else
                          {
                            v39 = 1;
                          }

                          *v44++ = v63;
                          --v41;
                        }

                        while (v41);
                      }

                      v64 = 0;
                      if (v39)
                      {
                        v65 = 0;
                      }

                      else
                      {
                        v65 = v40;
                      }

                      v66 = ~v65;
                      if (top < 4 || v30)
                      {
                        goto LABEL_58;
                      }

                      v67 = vdupq_n_s64(v65);
                      v68 = vdupq_n_s64(v66);
                      v69 = top & 0xFFFFFFFFFFFFFFFCLL;
                      v70 = d + 1;
                      v71 = (v23 + 16);
                      do
                      {
                        v72 = vorrq_s8(vandq_s8(*v70, v68), vandq_s8(*v71, v67));
                        v70[-1] = vorrq_s8(vandq_s8(v70[-1], v68), vandq_s8(v71[-1], v67));
                        *v70 = v72;
                        v71 += 2;
                        v70 += 2;
                        v69 -= 4;
                      }

                      while (v69);
                      v64 = top & 0xFFFFFFFFFFFFFFFCLL;
                      if (v33 != top)
                      {
LABEL_58:
                        v73 = top - v64;
                        v74 = 8 * v64;
                        v75 = d + v64;
                        v76 = (v23 + v74);
                        do
                        {
                          v77 = *v76++;
                          *v75 = *v75 & v66 | v77 & v65;
                          ++v75;
                          --v73;
                        }

                        while (v73);
                      }

                      v78 = 0;
                      v79 = top;
                      v80 = d;
                      v81 = v20;
                      v82 = v23;
                      if (top < 4)
                      {
                        goto LABEL_141;
                      }

                      v78 = 0;
                      v79 = top;
                      v80 = d;
                      v81 = v20;
                      v82 = v23;
                      do
                      {
                        v83 = *v81 - *v80;
                        v31 = v83 >= v78;
                        v84 = v83 - v78;
                        v85 = !v31 || *v81 < *v80;
                        v31 = !v85;
                        *v82 = v84;
                        v86 = v81[1];
                        v87 = v80[1];
                        v88 = v31;
                        v31 = __CFSUB__(v86, v87, v31);
                        v82[1] = v86 - (v87 + !v88);
                        v89 = v81[2];
                        v90 = v80[2];
                        v91 = v31;
                        v31 = __CFSUB__(v89, v90, v31);
                        v82[2] = v89 - (v90 + !v91);
                        v92 = v81[3];
                        v93 = v80[3];
                        v95 = v31;
                        v31 = __CFSUB__(v92, v93, v31);
                        v94 = v92 - (v93 + !v95);
                        v78 = !v31;
                        v82[3] = v94;
                        v81 += 4;
                        v80 += 4;
                        v82 += 4;
                        v79 -= 4;
                      }

                      while (v79 >= 4);
                      if (v79)
                      {
LABEL_141:
                        do
                        {
                          v97 = *v81++;
                          v96 = v97;
                          v98 = *v80++;
                          v31 = v96 >= v98;
                          v99 = v96 - v98;
                          v100 = !v31;
                          v31 = v99 >= v78;
                          v101 = v99 - v78;
                          if (v31)
                          {
                            v78 = v100;
                          }

                          else
                          {
                            v78 = 1;
                          }

                          *v82++ = v101;
                          --v79;
                        }

                        while (v79);
                      }

                      v102 = v40 & -v39;
                      v103 = ~v102;
                      if (top < 4 || v34)
                      {
                        break;
                      }

                      v105 = vdupq_n_s64(v102);
                      v106 = vdupq_n_s64(v103);
                      v107 = top & 0xFFFFFFFFFFFFFFFCLL;
                      v108 = v20 + 1;
                      v109 = (v23 + 16);
                      do
                      {
                        v110 = vorrq_s8(vandq_s8(*v108, v106), vandq_s8(*v109, v105));
                        v108[-1] = vorrq_s8(vandq_s8(v108[-1], v106), vandq_s8(v109[-1], v105));
                        *v108 = v110;
                        v109 += 2;
                        v108 += 2;
                        v107 -= 4;
                      }

                      while (v107);
                      v104 = top & 0xFFFFFFFFFFFFFFFCLL;
                      if (v33 != top)
                      {
                        goto LABEL_82;
                      }

LABEL_84:
                      v116 = d->i64[0];
                      v117 = v20->i64[0];
                      if (top == 1)
                      {
                        v119 = d->i64[0];
                        v120 = v23;
                        goto LABEL_94;
                      }

                      if (top < 5 || v36)
                      {
                        v118 = 0;
                      }

                      else
                      {
                        v121 = v24 & 0xFFFFFFFFFFFFFFFCLL;
                        v122 = (v23 + 16);
                        v123 = d + 1;
                        do
                        {
                          v124 = vsraq_n_u64(vshlq_n_s64(*(v123 + 8), 0x3FuLL), *v123, 1uLL);
                          v122[-1] = vsraq_n_u64(vshlq_n_s64(*(&v123[-1] + 8), 0x3FuLL), v123[-1], 1uLL);
                          *v122 = v124;
                          v123 += 2;
                          v122 += 2;
                          v121 -= 4;
                        }

                        while (v121);
                        v118 = v24 & 0xFFFFFFFFFFFFFFFCLL;
                        if (v24 == v37)
                        {
                          goto LABEL_93;
                        }
                      }

                      v125 = 8 * v118;
                      v126 = (v23 + 8 * v118);
                      v127 = v24 - v118;
                      v128 = &d->i8[v125 + 8];
                      do
                      {
                        *v126++ = *(v128 - 8) >> 1;
                        v128 += 8;
                        --v127;
                      }

                      while (v127);
LABEL_93:
                      v119 = d->u64[v24];
                      v120 = v25;
LABEL_94:
                      v129 = (v116 & 1) - 1;
                      *v120 = v119 >> 1;
                      v130 = ~v129;
                      if (top < 4 || v30)
                      {
                        v131 = 0;
LABEL_99:
                        v138 = top - v131;
                        v139 = 8 * v131;
                        v140 = d + v131;
                        v141 = (v23 + v139);
                        do
                        {
                          v142 = *v141++;
                          *v140 = *v140 & v130 | v142 & v129;
                          ++v140;
                          --v138;
                        }

                        while (v138);
                        goto LABEL_101;
                      }

                      v132 = vdupq_n_s64(v129);
                      v133 = vdupq_n_s64(v130);
                      v134 = top & 0xFFFFFFFFFFFFFFFCLL;
                      v135 = d + 1;
                      v136 = (v23 + 16);
                      do
                      {
                        v137 = vorrq_s8(vandq_s8(*v135, v133), vandq_s8(*v136, v132));
                        v135[-1] = vorrq_s8(vandq_s8(v135[-1], v133), vandq_s8(v136[-1], v132));
                        *v135 = v137;
                        v136 += 2;
                        v135 += 2;
                        v134 -= 4;
                      }

                      while (v134);
                      v131 = top & 0xFFFFFFFFFFFFFFFCLL;
                      if (v33 != top)
                      {
                        goto LABEL_99;
                      }

LABEL_101:
                      v143 = v20;
                      v144 = v23;
                      if (top == 1)
                      {
                        goto LABEL_110;
                      }

                      if (top < 5 || v38)
                      {
                        v145 = 0;
LABEL_107:
                        v150 = (v23 + 8 * v145);
                        v151 = v24 - v145;
                        v152 = &v20->i64[v145 + 1];
                        do
                        {
                          *v150++ = *(v152 - 8) >> 1;
                          v152 += 8;
                          --v151;
                        }

                        while (v151);
                        v143 = &v20->i64[v24];
                        v144 = v25;
                        goto LABEL_110;
                      }

                      v146 = v24 & 0xFFFFFFFFFFFFFFFCLL;
                      v147 = (v23 + 16);
                      v148 = v20 + 1;
                      do
                      {
                        v149 = vsraq_n_u64(vshlq_n_s64(*(v148 + 8), 0x3FuLL), *v148, 1uLL);
                        v147[-1] = vsraq_n_u64(vshlq_n_s64(*(&v148[-1] + 8), 0x3FuLL), v148[-1], 1uLL);
                        *v147 = v149;
                        v148 += 2;
                        v147 += 2;
                        v146 -= 4;
                      }

                      while (v146);
                      v145 = v24 & 0xFFFFFFFFFFFFFFFCLL;
                      v143 = &v20->i64[v24];
                      v144 = v25;
                      if (v24 != v37)
                      {
                        goto LABEL_107;
                      }

LABEL_110:
                      v153 = (v117 & 1) - 1;
                      *v144 = *v143 >> 1;
                      v154 = ~v153;
                      if (top < 4 || v34)
                      {
                        v155 = 0;
                      }

                      else
                      {
                        v156 = vdupq_n_s64(v153);
                        v157 = vdupq_n_s64(v154);
                        v158 = top & 0xFFFFFFFFFFFFFFFCLL;
                        v159 = v20 + 1;
                        v160 = (v23 + 16);
                        do
                        {
                          v161 = vorrq_s8(vandq_s8(*v159, v157), vandq_s8(*v160, v156));
                          v159[-1] = vorrq_s8(vandq_s8(v159[-1], v157), vandq_s8(v160[-1], v156));
                          *v159 = v161;
                          v160 += 2;
                          v159 += 2;
                          v158 -= 4;
                        }

                        while (v158);
                        v155 = top & 0xFFFFFFFFFFFFFFFCLL;
                        if (v33 == top)
                        {
                          goto LABEL_31;
                        }
                      }

                      v162 = top - v155;
                      v163 = 8 * v155;
                      v164 = v20 + v155;
                      v165 = (v23 + v163);
                      do
                      {
                        v166 = *v165++;
                        *v164 = *v164 & v154 | v166 & v153;
                        ++v164;
                        --v162;
                      }

                      while (v162);
LABEL_31:
                      v22 -= v153 & v129;
                      if (++v21 == v18)
                      {
                        goto LABEL_119;
                      }
                    }

                    v104 = 0;
LABEL_82:
                    v111 = top - v104;
                    v112 = 8 * v104;
                    v113 = v20 + v104;
                    v114 = (v23 + v112);
                    do
                    {
                      v115 = *v114++;
                      *v113 = *v113 & v103 | v115 & v102;
                      ++v113;
                      --v111;
                    }

                    while (v111);
                    goto LABEL_84;
                  }

                  v22 = 0;
LABEL_119:
                  if (top <= 1)
                  {
                    v167 = 1;
                  }

                  else
                  {
                    v167 = top;
                  }

                  if (top > 5 && (v20 >= (d + 8 * v167) || d >= (v20 + 8 * v167)))
                  {
                    v168 = v167 & 0xFFFFFFFFFFFFFFFCLL;
                    v177 = d + 1;
                    v178 = v20 + 1;
                    v179 = v167 & 0xFFFFFFFFFFFFFFFCLL;
                    do
                    {
                      v180 = vorrq_s8(*v178, *v177);
                      v178[-1] = vorrq_s8(v178[-1], v177[-1]);
                      *v178 = v180;
                      v177 += 2;
                      v178 += 2;
                      v179 -= 4;
                    }

                    while (v179);
                    v170 = v181;
                    v169 = v182;
                    if (v168 == top)
                    {
                      goto LABEL_128;
                    }
                  }

                  else
                  {
                    v168 = 0;
                    v170 = v181;
                    v169 = v182;
                  }

                  v171 = v167 - v168;
                  v172 = v168;
                  v173 = &v20->i64[v168];
                  v174 = &d->i64[v172];
                  do
                  {
                    v175 = *v174++;
                    *v173++ |= v175;
                    --v171;
                  }

                  while (v171);
LABEL_128:
                  *v170 = v22;
                  result = bn_set_words(v169, v20, top);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_129:
  if ((*(ctx + 56) & 1) == 0)
  {
    v176 = *(ctx + 4);
    if (!v176)
    {
      abort();
    }

    *(ctx + 6) = *(*(ctx + 3) + 8 * v176 - 8);
    *(ctx + 4) = v176 - 1;
  }

  return result;
}

uint64_t bn_mul_consttime(bignum_st *a1, const bignum_st *a2, const bignum_st *a3, bignum_ctx *a4)
{
  if (a2->neg || a3->neg)
  {
    ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/mul.cc.inc", 208);
    return 0;
  }

  else
  {

    return bn_mul_impl(a1, a2, a3, a4);
  }
}

uint64_t bn_rshift_secret_shift(BIGNUM *a1, const BIGNUM *a2, unsigned int a3, BN_CTX *ctx)
{
  if (*(ctx + 56))
  {
LABEL_4:
    v9 = BN_CTX_get(ctx);
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v8 = *(ctx + 6);
  if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
  {
    *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v8;
    goto LABEL_4;
  }

  *(ctx + 28) = 257;
  ERR_clear_error();
  v9 = BN_CTX_get(ctx);
  if (!v9)
  {
LABEL_10:
    v14 = 0;
    if ((*(ctx + 56) & 1) == 0)
    {
      goto LABEL_62;
    }

    return v14;
  }

LABEL_5:
  v10 = v9;
  if (!BN_copy(a1, a2))
  {
    goto LABEL_10;
  }

  top = a1->top;
  if (v10->dmax >= top)
  {
    v15 = a1->top;
    v14 = 1;
    if (!top)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (top >= 0x800000)
    {
      v12 = 102;
      v13 = 301;
LABEL_60:
      ERR_put_error(3, 0, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", v13);
      v14 = 0;
LABEL_61:
      if ((*(ctx + 56) & 1) == 0)
      {
        goto LABEL_62;
      }

      return v14;
    }

    if ((v10->flags & 2) != 0)
    {
      v12 = 106;
      v13 = 306;
      goto LABEL_60;
    }

    v53 = malloc_type_malloc(8 * top + 8, 0xB4E622C9uLL);
    v14 = v53;
    if (!v53)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      if (*(ctx + 56))
      {
        return v14;
      }

      goto LABEL_62;
    }

    *v53 = 8 * top;
    v54 = v53 + 1;
    bzero(v53 + 1, 8 * top);
    v55 = v10->top;
    if (v55)
    {
      memcpy(v54, v10->d, 8 * v55);
    }

    d = v10->d;
    if (v10->d)
    {
      v58 = *(d - 1);
      v57 = (d - 1);
      v59 = v58 + 8;
      if (v58 != -8)
      {
        bzero(v57, v59);
      }

      free(v57);
    }

    v10->d = v54;
    v10->dmax = top;
    v15 = a1->top;
    v14 = 1;
    if (!v15)
    {
      goto LABEL_61;
    }
  }

  v16 = 0;
  v17 = v15 << 6;
  v18 = v10->d;
  v19 = a1->d;
  do
  {
    v20 = v15;
    v21 = (1 << v16) >> 6;
    if (v21 >= v15)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v24 = 8 * v15;
      v23 = v18;
    }

    else
    {
      if (v16 <= 5)
      {
        v40 = (1 << v16) & 0x3F;
        v41 = v20 - 1 - v21;
        if (v20 - 1 > v21)
        {
          v42 = ~v21 + v20;
          v43 = (1 << v16) >> 6;
          if (v42 <= 3)
          {
            goto LABEL_43;
          }

          if (v18 < v19 + 8 * v20)
          {
            v43 = (1 << v16) >> 6;
            if (v19 + 8 * v21 < &v18->u64[-1] + 8 * v20 - 8 * v21)
            {
              goto LABEL_43;
            }
          }

          v44 = vdupq_n_s64((64 - v40));
          v43 = v42 & 0xFFFFFFFFFFFFFFFCLL | v21;
          v45 = v18 + 1;
          v46 = v19 + 8 * v21 + 16;
          v47 = vnegq_s64(vdupq_n_s64(v40));
          v48 = v42 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v49 = vorrq_s8(vshlq_u64(*(v46 + 8), v44), vshlq_u64(*v46, v47));
            v45[-1] = vorrq_s8(vshlq_u64(*(v46 - 8), v44), vshlq_u64(*(v46 - 16), v47));
            *v45 = v49;
            v45 += 2;
            v46 += 32;
            v48 -= 4;
          }

          while (v48);
          if (v42 != (v42 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_43:
            v50 = (v18->i64 + 8 * v43 - 8 * v21);
            v51 = ~v43 + v20;
            v52 = (v19 + 8 * v43 + 8);
            do
            {
              *v50++ = (*v52 << (64 - ((1 << v16) & 0x3Fu))) | (*(v52 - 1) >> ((1 << v16) & 0x3F));
              ++v52;
              --v51;
            }

            while (v51);
          }
        }

        v18->i64[v41] = *(v19 + 8 * (v20 - 1)) >> ((1 << v16) & 0x3F);
        v19 = a1->d;
        v18 = v10->d;
        v15 = a1->top;
        if (!v15)
        {
          goto LABEL_14;
        }

        goto LABEL_22;
      }

      v22 = 8 * v21;
      memmove(v18, (v19 + 8 * v21), 8 * (v15 - v21));
      v23 = (v18 + 8 * v20 - v22);
      v24 = v22;
    }

    bzero(v23, v24);
LABEL_21:
    v19 = a1->d;
    v18 = v10->d;
    v15 = a1->top;
    if (!v15)
    {
      goto LABEL_14;
    }

LABEL_22:
    v25 = -((a3 >> v16) & 1);
    v26 = ((a3 >> v16) & 1) - 1;
    if (v15 < 4 || (v19 < v18 + 8 * v15 ? (v27 = v18 >= v19 + 8 * v15) : (v27 = 1), !v27))
    {
      v29 = 0;
LABEL_33:
      v35 = v15 - v29;
      v36 = v29;
      v37 = (v19 + 8 * v29);
      v38 = &v18->i64[v36];
      do
      {
        v39 = *v38++;
        *v37 = *v37 & v26 | v39 & v25;
        ++v37;
        --v35;
      }

      while (v35);
      goto LABEL_14;
    }

    v28 = vdupq_n_s64(v25);
    v29 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v30 = vdupq_n_s64(v26);
    v31 = v18 + 1;
    v32 = (v19 + 16);
    v33 = v29;
    do
    {
      v34 = vorrq_s8(vandq_s8(*v32, v30), vandq_s8(*v31, v28));
      v32[-1] = vorrq_s8(vandq_s8(v32[-1], v30), vandq_s8(v31[-1], v28));
      *v32 = v34;
      v31 += 2;
      v32 += 2;
      v33 -= 4;
    }

    while (v33);
    if (v29 != v15)
    {
      goto LABEL_33;
    }

LABEL_14:
    ++v16;
  }

  while (v17 >> v16);
  v14 = 1;
  if (*(ctx + 56))
  {
    return v14;
  }

LABEL_62:
  v60 = *(ctx + 4);
  if (!v60)
  {
    abort();
  }

  *(ctx + 6) = *(*(ctx + 3) + 8 * v60 - 8);
  *(ctx + 4) = v60 - 1;
  return v14;
}

int8x16_t *maybe_rshift1_words(int8x16_t *result, unint64_t a2, int8x16_t *a3, unint64_t a4)
{
  if (!a4)
  {
    return result;
  }

  v4 = a4 - 1;
  if (a4 == 1)
  {
    a3->i64[0] = result->i64[0] >> 1;
    v10 = ~a2;
LABEL_14:
    v11 = 0;
LABEL_15:
    v12 = a4 - v11;
    v13 = v11;
    v14 = result + v11;
    v15 = &a3->u64[v13];
    do
    {
      v16 = *v15++;
      *v14 = *v14 & v10 | v16 & a2;
      ++v14;
      --v12;
    }

    while (v12);
    return result;
  }

  if (a4 > 6 && ((result + 8 * a4) <= a3 || (a3 + 8 * a4 - 8) <= result))
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = result + 1;
    v24 = &a3[1];
    v25 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v26 = vsraq_n_u64(vshlq_n_s64(*(v23 + 8), 0x3FuLL), *v23, 1uLL);
      *(v24 - 1) = vsraq_n_u64(vshlq_n_s64(*(&v23[-1] + 8), 0x3FuLL), v23[-1], 1uLL);
      *v24 = v26;
      v23 += 2;
      v24 += 4;
      v25 -= 4;
    }

    while (v25);
    if (v4 == v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = a3 + v5;
  v8 = ~v5 + a4;
  v9 = &result->i64[v6 + 1];
  do
  {
    *v7++ = *(v9 - 8) >> 1;
    v9 += 8;
    --v8;
  }

  while (v8);
LABEL_9:
  a3->i64[v4] = result->i64[v4] >> 1;
  v10 = ~a2;
  if (a4 < 4 || (a3 + 8 * a4) > result && (result + 8 * a4) > a3)
  {
    goto LABEL_14;
  }

  v17 = vdupq_n_s64(a2);
  v11 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = vdupq_n_s64(v10);
  v19 = a3 + 1;
  v20 = result + 1;
  v21 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v22 = vorrq_s8(vandq_s8(*v20, v18), vandq_s8(*v19, v17));
    v20[-1] = vorrq_s8(vandq_s8(v20[-1], v18), vandq_s8(v19[-1], v17));
    *v20 = v22;
    v19 += 2;
    v20 += 2;
    v21 -= 4;
  }

  while (v21);
  if (v11 != a4)
  {
    goto LABEL_15;
  }

  return result;
}