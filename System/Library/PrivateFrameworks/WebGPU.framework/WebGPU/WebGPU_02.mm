uint64_t WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256782B8);
  }

  result = *a1;
  if (!result)
  {
    v7 = a2;
    v8 = WTF::fastMalloc(0x30);
    a2 = v7;
    *&v9 = -1;
    *(&v9 + 1) = -1;
    v8[2] = v9;
    *v8 = xmmword_225881CF0;
    v8[1] = v9;
    result = (v8 + 1);
    *a1 = result;
    v4 = *v7;
  }

  v10 = *(result - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (result + 4 * v13);
  v15 = *v14;
  if (*v14 != -1)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v24 = result + 4 * *(result - 4);
        *a3 = v14;
        *(a3 + 8) = v24;
        *(a3 + 16) = 0;
        return result;
      }

      if (v15 == -2)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (result + 4 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14 != -1);
    if (v16)
    {
      *v16 = -1;
      --*(result - 16);
      v4 = *a2;
      v14 = v16;
    }
  }

  *v14 = v4;
  v18 = *(result - 16);
  v19 = *(result - 12) + 1;
  *(result - 12) = v19;
  v20 = (v18 + v19);
  v21 = *(result - 4);
  if (v21 <= 0x400)
  {
    if (3 * v21 > 4 * v20)
    {
      goto LABEL_24;
    }

LABEL_17:
    v22 = v21 << (6 * v19 >= (2 * v21));
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = 8;
    }

    v14 = WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, v23, v14);
    result = *a1;
    if (*a1)
    {
      v21 = *(result - 4);
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_24;
  }

  if (v21 <= 2 * v20)
  {
    goto LABEL_17;
  }

LABEL_24:
  *a3 = v14;
  *(a3 + 8) = result + 4 * v21;
  *(a3 + 16) = 1;
  return result;
}

_DWORD *WTF::HashMap<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>(_DWORD *result, uint64_t *a2, int *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*a3 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22567850CLL);
  }

  v7 = result;
  v8 = *a2;
  if (!*a2)
  {
    v9 = a4;
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a4 = v9;
    v8 = *a2;
    v4 = *a3;
  }

  v10 = *(v8 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v8 + 20 * v13);
  v15 = *v14;
  if (*v14 != -1)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v24 = v8 + 20 * *(v8 - 4);
        *v7 = v14;
        *(v7 + 1) = v24;
        *(v7 + 16) = 0;
        v25 = *a4;
        v14[3] = *(a4 + 2);
        *(v14 + 1) = v25;
        v14[4] = *(a4 + 3);
        return result;
      }

      if (v15 == -2)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (v8 + 20 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14 != -1);
    if (v16)
    {
      *v16 = -1;
      *(v16 + 3) = 0;
      *(v16 + 1) = 0;
      --*(*a2 - 16);
      v4 = *a3;
      v14 = v16;
    }
  }

  *v14 = v4;
  v18 = a4[1];
  *(v14 + 1) = *a4;
  *(v14 + 3) = v18;
  v19 = *a2;
  if (*a2)
  {
    v20 = *(v19 - 16);
    v21 = *(v19 - 12) + 1;
    *(v19 - 12) = v21;
    v22 = (v20 + v21);
    v23 = *(v19 - 4);
    if (v23 <= 0x400)
    {
      goto LABEL_15;
    }

LABEL_21:
    if (v23 > 2 * v22)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v21 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v22 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v23 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (3 * v23 <= 4 * v22)
  {
    if (!v23)
    {
      result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, 8u, v14);
      v14 = result;
      v19 = *a2;
      if (!*a2)
      {
LABEL_18:
        LODWORD(v23) = 0;
        goto LABEL_24;
      }

LABEL_23:
      LODWORD(v23) = *(v19 - 4);
      goto LABEL_24;
    }

LABEL_22:
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, v23 << (6 * v21 >= (2 * v23)), v14);
    v14 = result;
    v19 = *a2;
    if (!*a2)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  *v7 = v14;
  *(v7 + 1) = v19 + 20 * v23;
  *(v7 + 16) = 1;
  return result;
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, _DWORD *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((20 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = WTF::fastMalloc((20 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v12 = a2;
  v13 = v9 + 5;
  do
  {
    *(v13 - 1) = -1;
    *v13 = 0;
    v13[1] = 0;
    v13 = (v13 + 20);
    --v12;
  }

  while (v12);
LABEL_7:
  *a1 = v11;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = (v6 + 20 * v14);
      if (*v16 <= 0xFFFFFFFD)
      {
        v17 = *a1;
        if (*a1)
        {
          v18 = *(v17 - 8);
        }

        else
        {
          v18 = 0;
        }

        v19 = 0;
        v20 = 9 * ((*v16 + ~(*v16 << 15)) ^ ((*v16 + ~(*v16 << 15)) >> 10));
        v21 = (v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11);
        v22 = v21 ^ HIWORD(v21);
        do
        {
          v23 = v22 & v18;
          v24 = (v17 + 20 * v23);
          v22 = ++v19 + v23;
        }

        while (*v24 != -1);
        v25 = *v16;
        v24[4] = v16[4];
        *v24 = v25;
        if (v16 == a3)
        {
          v15 = v24;
        }
      }

      ++v14;
    }

    while (v14 != v7);
  }

  else
  {
    v15 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v15;
}

_OWORD *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,MTLBindingAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,MTLBindingAccess>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,MTLBindingAccess,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<MTLBindingAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (a2 < 4)
  {
    v12 = 0;
LABEL_10:
    v15 = a2 - v12;
    v16 = &v9[4 * v12 + 4];
    do
    {
      *v16++ = xmmword_225881D00;
      --v15;
    }

    while (v15);
    goto LABEL_12;
  }

  v12 = a2 & 0xFFFFFFFC;
  v13 = v9 + 12;
  v14 = v12;
  do
  {
    *(v13 - 2) = xmmword_225881D00;
    *(v13 - 1) = xmmword_225881D00;
    *v13 = xmmword_225881D00;
    v13[1] = xmmword_225881D00;
    v13 += 4;
    v14 -= 4;
  }

  while (v14);
  if (v12 != a2)
  {
    goto LABEL_10;
  }

LABEL_12:
  *a1 = v11;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (v6 + 16 * v17);
      if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = *a1;
        if (*a1)
        {
          v21 = *(v20 - 8);
        }

        else
        {
          v21 = 0;
        }

        v22 = (*v19 + ~(*v19 << 32)) ^ ((*v19 + ~(*v19 << 32)) >> 22);
        v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
        v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
        v25 = v21 & ((v24 >> 31) ^ v24);
        v26 = 1;
        do
        {
          v27 = v25;
          v28 = *(v20 + 16 * v25);
          v25 = (v25 + v26++) & v21;
        }

        while (v28 != -1);
        v29 = (v20 + 16 * v27);
        *v29 = *v19;
        if (v19 == a3)
        {
          v18 = v29;
        }
      }

      ++v17;
    }

    while (v17 != v7);
  }

  else
  {
    v18 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v18;
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebGPU::BindGroupLayout::Entry>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebGPU::BindGroupLayout::Entry>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebGPU::BindGroupLayout::Entry,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::BindGroupLayout::Entry>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    result = WTF::fastMalloc((136 * a2 + 16));
    v9 = result + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    result = WTF::fastMalloc((136 * a2 + 16));
    v9 = result + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v10 = a2;
  v11 = result + 6;
  do
  {
    *(v11 - 2) = -1;
    *v11 = 0uLL;
    v11[1] = 0uLL;
    v11[2] = 0uLL;
    v11[3] = 0uLL;
    v11[4] = 0uLL;
    v11[5] = 0uLL;
    v11[6] = 0uLL;
    v11[7] = 0uLL;
    v11 = (v11 + 136);
    --v10;
  }

  while (v10);
LABEL_7:
  *a1 = v9;
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v13 = (v4 + 136 * i);
      v14 = *v13;
      if (*v13 <= 0xFFFFFFFD)
      {
        v15 = *a1;
        if (*a1)
        {
          v16 = *(v15 - 8);
        }

        else
        {
          v16 = 0;
        }

        v17 = 0;
        v18 = 9 * ((v14 + ~(v14 << 15)) ^ ((v14 + ~(v14 << 15)) >> 10));
        v19 = (v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11);
        LODWORD(v8) = v19 ^ HIWORD(v19);
        do
        {
          v20 = v8 & v16;
          v21 = v15 + 136 * v20;
          v8 = ++v17 + v20;
        }

        while (*v21 != -1);
        *v21 = v14;
        v22 = *(v13 + 2);
        v23 = *(v13 + 6);
        *(v21 + 40) = *(v13 + 10);
        *(v21 + 24) = v23;
        *(v21 + 8) = v22;
        v24 = *(v13 + 14);
        *(v21 + 72) = *(v13 + 9);
        *(v21 + 56) = v24;
        v25 = *(v13 + 5);
        *(v21 + 96) = *(v13 + 12);
        *(v21 + 80) = v25;
        v26 = *(v13 + 26);
        *(v21 + 116) = *(v13 + 29);
        *(v21 + 104) = v26;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t *WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (*a2 == -2 || v3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225678C1CLL);
  }

  v4 = result;
  v6 = *result;
  if (!*result)
  {
    v7 = a2;
    result = WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(result, 8u, 0);
    a2 = v7;
    v6 = *v4;
    v3 = *v7;
  }

  v8 = *(v6 - 8);
  v9 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v6 + 8 * v12);
  v14 = *v13;
  if (*v13 == -1)
  {
LABEL_13:
    v17 = *(v6 - 16);
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v3)
      {
        v22 = v6 + 8 * *(v6 - 4);
        *a3 = v13;
        *(a3 + 8) = v22;
        *(a3 + 16) = 0;
        return result;
      }

      if (v14 == -2)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v6 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13 != -1);
    if (!v15)
    {
      goto LABEL_13;
    }

    *v15 = -1;
    v17 = *(v6 - 16) - 1;
    *(v6 - 16) = v17;
    v3 = *a2;
  }

  *v15 = v3;
  v18 = *(v6 - 12) + 1;
  *(v6 - 12) = v18;
  v19 = (v18 + v17);
  v20 = *(v6 - 4);
  if (v20 <= 0x400)
  {
    if (3 * v20 > 4 * v19)
    {
      goto LABEL_25;
    }

LABEL_18:
    if (v20)
    {
      v21 = v20 << (6 * v18 >= (2 * v20));
    }

    else
    {
      v21 = 8;
    }

    result = WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v4, v21, v15);
    v15 = result;
    v6 = *v4;
    if (*v4)
    {
      v20 = *(v6 - 4);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_25;
  }

  if (v20 <= 2 * v19)
  {
    goto LABEL_18;
  }

LABEL_25:
  *a3 = v15;
  *(a3 + 8) = v6 + 8 * v20;
  *(a3 + 16) = 1;
  return result;
}

char *WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = 8 * a2;
    v11 = WTF::fastMalloc((v9 + 16));
    v12 = (v11 + 4);
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v8 = 0;
  v9 = 8 * a2;
  v11 = WTF::fastMalloc((v9 + 16));
  v12 = (v11 + 4);
  if (a2)
  {
LABEL_3:
    memset(v12, 255, v9);
  }

LABEL_4:
  *a1 = v12;
  v13 = a2 - 1;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (!v7)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if (v12)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = (v6 + 8 * v14);
      v17 = *v16;
      if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
        v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
        v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
        v21 = v13 & ((v20 >> 31) ^ v20);
        v22 = 1;
        do
        {
          v23 = v21;
          v24 = *&v12[8 * v21];
          v21 = (v21 + v22++) & v13;
        }

        while (v24 != -1);
        *&v12[8 * v23] = v17;
        if (v16 == a3)
        {
          v15 = &v12[8 * v23];
        }
      }

      ++v14;
    }

    while (v14 != v7);
LABEL_17:
    if (!v6)
    {
      return v15;
    }

    goto LABEL_20;
  }

  v15 = 0;
LABEL_20:
  WTF::fastFree((v6 - 16), v10);
  return v15;
}

unint64_t WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3)
  {
    v6 = *(a1 + 12);
    if (v5 + 8 * v6 > a3)
    {
      v7 = *(a1 + 8);
      if (v7 + (v7 >> 1) <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = v7 + (v7 >> 1);
      }

      if (v8 <= a2)
      {
        v8 = a2;
      }

      if (!(v8 >> 29))
      {
        v9 = a3 - v5;
        if (v8 <= 0x10)
        {
          v10 = 16;
        }

        else
        {
          v10 = v8;
        }

        v11 = WTF::fastMalloc((8 * v10));
        *(a1 + 8) = v10;
        *a1 = v11;
        memcpy(v11, v5, 8 * v6);
        if (v5)
        {
          if (*a1 == v5)
          {
            *a1 = 0;
            *(a1 + 8) = 0;
          }

          WTF::fastFree(v5, v12);
        }

        return *a1 + v9;
      }

LABEL_31:
      __break(0xC471u);
      JUMPOUT(0x225678F0CLL);
    }
  }

  v14 = *(a1 + 8);
  if (v14 + (v14 >> 1) <= v14 + 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v14 + (v14 >> 1);
  }

  if (v15 <= a2)
  {
    v15 = a2;
  }

  if (v15 >> 29)
  {
    goto LABEL_31;
  }

  if (v15 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a1 + 12);
  v18 = WTF::fastMalloc((8 * v16));
  *(a1 + 8) = v16;
  *a1 = v18;
  memcpy(v18, v5, 8 * v17);
  if (!v5)
  {
    return v3;
  }

  if (*a1 == v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  WTF::fastFree(v5, v19);
  return v3;
}

id WebGPU::Device::safeCreateBuffer(WebGPU::Device *this, unint64_t a2, MTLStorageMode a3, char a4, MTLCPUCacheMode a5, MTLHazardTrackingMode a6)
{
  v8 = a5 | (16 * a3) | (a6 << 8);
  v9 = *(this + 1);
  if (a2 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2;
  }

  v11 = [v9 newBufferWithLength:v10 options:v8];
  if ((a4 & 1) == 0)
  {
    WebGPU::Device::setOwnerWithIdentity(this, v11);
  }

  return v11;
}

id WebGPU::Device::safeCreateBuffer(WebGPU::Device *this, unint64_t a2, char a3)
{
  v5 = *(this + 1);
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = [v5 newBufferWithLength:v6 options:0];
  if ((a3 & 1) == 0)
  {
    WebGPU::Device::setOwnerWithIdentity(this, v7);
  }

  return v7;
}

void WebGPU::Device::createBuffer(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  if (*a2 || (v7 = *(a1 + 8)) == 0)
  {
    if (WebGPU::Buffer::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Buffer::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebGPU::Buffer::operatorNewSlow(0);
    }

    v6 = NonCompact;
    WebGPU::Buffer::Buffer(NonCompact, a1);
LABEL_25:
    *a3 = v6;
    return;
  }

  if ((*(a1 + 64) & 1) != 0 || (v8 = a2[4]) == 0 || (a2[4] & 3) == 3 || v8 > 0x3FF || (v8 & 0x3FF) == 0 || (v8 & 1) != 0 && (v8 & 0x3F6) != 0 || (v8 & 2) != 0 && (v8 & 0x3F9) != 0 || (v9 = *(a2 + 3), a2[8]) && (v9 & 3) != 0 || v9 > *(a1 + 168))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    if ((*(a1 + 548) & 1) == 0)
    {
      v13 = *(a1 + 32) + 32 * *(a1 + 44);
      v14 = (v13 + 16);
      v15 = -32 * *(a1 + 44);
      while (v15)
      {
        v16 = *(v13 - 8);
        v13 -= 32;
        v14 -= 32;
        v15 += 32;
        if (!v16)
        {
          if ((*v14 & 1) == 0)
          {
            v17 = v44[0];
            v44[0] = 0;
            *(v14 - 4) = 1;
            *(v14 - 1) = v17;
            *v14 = 1;
          }

          goto LABEL_19;
        }
      }

      v18 = *(a1 + 24);
      if (v18)
      {
        (*(*v18 + 16))(v18, 1, v44);
        v19 = *(a1 + 24);
        *(a1 + 24) = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }
      }
    }

LABEL_19:
    v11 = v44[0];
    v44[0] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    if (WebGPU::Buffer::s_heapRef)
    {
      v12 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Buffer::s_heapRef, v10);
    }

    else
    {
      v12 = WebGPU::Buffer::operatorNewSlow(0);
    }

    v6 = v12;
    WebGPU::Buffer::Buffer(v12, a1);
    goto LABEL_25;
  }

  if ([v7 hasUnifiedMemory])
  {
    v21 = 0;
  }

  else
  {
    v21 = 32;
  }

  v22 = a2;
  if (*(a2 + 3) <= 1uLL)
  {
    v23 = 1;
  }

  else
  {
    v23 = *(a2 + 3);
  }

  v24 = [*(a1 + 8) newBufferWithLength:v23 options:v21];
  WebGPU::Device::setOwnerWithIdentity(a1, v24);
  if (v24)
  {
    if (*(v22 + 1))
    {
      strlen(*(v22 + 1));
    }

    WTF::String::fromUTF8();
    v29 = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
      MEMORY[0x22AA68130](v44, v29);
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v30);
      }
    }

    else
    {
      v44[0] = &stru_2838D6D18;
    }

    [v24 setLabel:v44[0]];
    v31 = v44[0];
    v44[0] = 0;

    v33 = v46;
    v46 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v32);
    }

    v34 = v22[8];
    v35 = *(v22 + 3);
    if (v34)
    {
      v36 = *(v22 + 3);
    }

    else
    {
      v36 = 0;
    }

    if (v34)
    {
      v37 = 1;
    }

    else
    {
      v37 = 3;
    }

    v38 = v22[4];
    v40 = v24;
    if (WebGPU::Buffer::s_heapRef)
    {
      v41 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Buffer::s_heapRef, v39);
    }

    else
    {
      v41 = WebGPU::Buffer::operatorNewSlow(0);
    }

    v42 = v41;
    WebGPU::Buffer::Buffer(v41, v40, v35, v38, v37, 0, v36, a1);
    *a3 = v42;

    v43 = [v40 gpuAddress];
    v45 = v42;
    v46 = v43;
    WTF::HashMap<unsigned long long,WebGPU::Buffer *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::Buffer *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebGPU::Buffer *>(v44, (a1 + 488), &v46, &v45);
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v46 = v44[0];
    WebGPU::Device::generateAnOutOfMemoryError(a1, &v46);
    v26 = v46;
    v46 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v25);
    }

    if (WebGPU::Buffer::s_heapRef)
    {
      v27 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Buffer::s_heapRef, v25);
    }

    else
    {
      v27 = WebGPU::Buffer::operatorNewSlow(0);
    }

    v28 = v27;
    WebGPU::Buffer::Buffer(v27, a1);
    *a3 = v28;
  }
}

void sub_22567940C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  bmalloc::api::tzoneFree(v15, a2);

  _Unwind_Resume(a1);
}

void sub_2256794D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_OWORD *WTF::HashMap<unsigned long long,WebGPU::Buffer *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::Buffer *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebGPU::Buffer *>(_OWORD *result, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  if (*a3 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225679704);
  }

  v7 = result;
  v8 = *a2;
  if (!*a2)
  {
    v9 = a4;
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::Buffer *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::Buffer *>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::Buffer *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::Buffer *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a4 = v9;
    v8 = *a2;
    v4 = *a3;
  }

  v10 = *(v8 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v8 + 16 * v14);
  v16 = *v15;
  if (*v15 == -1)
  {
LABEL_13:
    v19 = *(v8 - 16);
    v17 = v15;
  }

  else
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v25 = v8 + 16 * *(v8 - 4);
        *v7 = v15;
        *(v7 + 1) = v25;
        *(v7 + 16) = 0;
        return result;
      }

      if (v16 == -2)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v8 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15 != -1);
    if (!v17)
    {
      goto LABEL_13;
    }

    *v17 = -1;
    v17[1] = 0;
    v19 = *(v8 - 16) - 1;
    *(v8 - 16) = v19;
    v4 = *a3;
  }

  v20 = *a4;
  *v17 = v4;
  v17[1] = v20;
  v21 = *(v8 - 12) + 1;
  *(v8 - 12) = v21;
  v22 = (v21 + v19);
  v23 = *(v8 - 4);
  if (v23 <= 0x400)
  {
    if (3 * v23 > 4 * v22)
    {
      goto LABEL_25;
    }

LABEL_18:
    if (v23)
    {
      v24 = v23 << (6 * v21 >= (2 * v23));
    }

    else
    {
      v24 = 8;
    }

    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::Buffer *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::Buffer *>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::Buffer *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::Buffer *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a2, v24, v17);
    v17 = result;
    v8 = *a2;
    if (*a2)
    {
      v23 = *(v8 - 4);
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_25;
  }

  if (v23 <= 2 * v22)
  {
    goto LABEL_18;
  }

LABEL_25:
  *v7 = v17;
  *(v7 + 1) = v8 + 16 * v23;
  *(v7 + 16) = 1;
  return result;
}

uint64_t WebGPU::Buffer::Buffer(uint64_t a1, void *a2, uint64_t a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a2;
  *a1 = 3;
  v16 = v15;
  *(a1 + 16) = 0;
  v17 = (a1 + 16);
  *(a1 + 8) = v16;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 44) = a5;
  *(a1 + 48) = a6;
  *(a1 + 56) = a7;
  *(a1 + 64) = a1 + 80;
  *(a1 + 72) = 8;
  *(a1 + 208) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = -1;
  *(a1 + 240) = -1;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  while (1)
  {
    v18 = *a8;
    if ((*a8 & 1) == 0)
    {
      break;
    }

    v19 = *a8;
    atomic_compare_exchange_strong_explicit(a8, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
  v21 = *a8;
  v22 = 1;
  atomic_compare_exchange_strong_explicit(*a8, &v20, 1u, memory_order_acquire, memory_order_acquire);
  if (v20)
  {
    MEMORY[0x22AA683C0](v21);
  }

  ++*(v21 + 8);
  atomic_compare_exchange_strong_explicit(v21, &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != 1)
  {
    WTF::Lock::unlockSlow(v21);
  }

LABEL_9:
  *(a1 + 280) = a8;
  *(a1 + 328) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  if (*(a1 + 41))
  {
    v23 = [*(a8 + 8) newBufferWithLength:20 options:0];
    WebGPU::Device::setOwnerWithIdentity(a8, v23);
    v24 = *v17;
    *v17 = v23;

    v25 = [*(a8 + 8) newBufferWithLength:24 options:0];
    WebGPU::Device::setOwnerWithIdentity(a8, v25);
    v26 = *(a1 + 24);
    *(a1 + 24) = v25;
  }

  return a1;
}

void sub_2256798DC(_Unwind_Exception *a1, void *a2)
{
  v6 = *(v2 + 272);
  if (v6)
  {
    WTF::fastFree((v6 - 16), a2);
  }

  v7 = *(v2 + 64);
  if (v4 != v7)
  {
    if (v7)
    {
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      WTF::fastFree(v7, a2);
    }
  }

  _Unwind_Resume(a1);
}

double WebGPU::Buffer::Buffer(WebGPU::Buffer *this, atomic_ullong *a2)
{
  *this = 3;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 44) = 3;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = this + 80;
  *(this + 9) = 8;
  *(this + 208) = 1;
  *(this + 27) = 0;
  *(this + 112) = 0;
  *(this + 29) = -1;
  *(this + 30) = -1;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 66) = 0;
  *(this + 34) = 0;
  while (1)
  {
    v3 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v4 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_9;
    }
  }

  v5 = this;
  v6 = 0;
  v7 = *a2;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x22AA683C0](v7);
  }

  ++*(v7 + 8);
  atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
  this = v5;
  if (v8 != 1)
  {
    WTF::Lock::unlockSlow(v7);
    this = v5;
  }

LABEL_9:
  *(this + 35) = a2;
  *(this + 41) = 0;
  result = 0.0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 320) = 0;
  return result;
}

void sub_225679AC0(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v3 + 272);
  if (v5)
  {
    WTF::fastFree((v5 - 16), a2);
  }

  v6 = *(v3 + 64);
  if (v2 != v6)
  {
    if (v6)
    {
      *(v3 + 64) = 0;
      *(v3 + 72) = 0;
      WTF::fastFree(v6, a2);
    }
  }

  _Unwind_Resume(a1);
}

void WebGPU::Buffer::~Buffer(WebGPU::Buffer *this)
{
  WTF::HashMap<unsigned long long,WebGPU::Buffer *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::Buffer *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((*(this + 35) + 488), [*(this + 1) gpuAddress]);
  v3 = *(this + 41);
  if (v3)
  {
    WTF::fastFree((v3 - 16), v2);
  }

  v4 = *(this + 39);
  if (v4)
  {
    WTF::fastFree((v4 - 16), v2);
  }

  v5 = *(this + 38);
  if (v5)
  {
    WTF::fastFree((v5 - 16), v2);
  }

  v6 = *(this + 36);
  if (v6)
  {
    *(this + 36) = 0;
    *(this + 74) = 0;
    WTF::fastFree(v6, v2);
  }

  v7 = *(this + 35);
  *(this + 35) = 0;
  if (v7)
  {
    do
    {
      v8 = *v7;
      if ((*v7 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v7, v2);
        goto LABEL_15;
      }

      v9 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v9 != v8);
    if (v8 == 3)
    {
      WebGPU::Device::~Device(v7, v2);
      bmalloc::api::tzoneFree(v10, v11);
    }
  }

LABEL_15:
  v12 = *(this + 34);
  if (v12)
  {
    WTF::fastFree((v12 - 16), v2);
  }

  v13 = *(this + 8);
  if ((this + 80) != v13 && v13 != 0)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v13, v2);
  }
}

void sub_225679C1C(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 328);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
    v5 = *(v2 + 312);
    if (!v5)
    {
LABEL_3:
      v6 = *(v2 + 304);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(v2 + 312);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  WTF::fastFree((v5 - 16), a2);
  v6 = *(v2 + 304);
  if (!v6)
  {
LABEL_4:
    v7 = *(v2 + 288);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  WTF::fastFree((v6 - 16), a2);
  v7 = *(v2 + 288);
  if (!v7)
  {
LABEL_5:
    WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v2 + 280), a2);
    v9 = *(v2 + 272);
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  WTF::fastFree(v7, a2);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v2 + 280), v11);
  v9 = *(v2 + 272);
  if (!v9)
  {
LABEL_6:
    v10 = *(v2 + 64);
    if ((v2 + 80) == v10)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_12:
  WTF::fastFree((v9 - 16), v8);
  v10 = *(v2 + 64);
  if ((v2 + 80) == v10)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v10)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v10, v8);
  }

LABEL_15:

  _Unwind_Resume(a1);
}

uint64_t WebGPU::Buffer::incrementBufferMapCount(uint64_t this, void *a2)
{
  v2 = *(this + 300);
  if (v2)
  {
    v3 = this;
    v4 = *(this + 288);
    v5 = &v4[v2];
    do
    {
      v8 = *v4;
      if (*v4 == -2 || v8 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x225679E38);
      }

      v9 = *(*(v3 + 280) + 480);
      if (v9)
      {
        v10 = *(v9 - 8);
        v11 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
        v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
        v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
        v14 = v10 & ((v13 >> 31) ^ v13);
        v15 = *(v9 + 16 * v14);
        if (v15 == v8)
        {
LABEL_12:
          v17 = *(v9 + 16 * v14 + 8);
          if (v17)
          {
            ++*(v17 + 4);
            this = WebGPU::CommandEncoder::incrementBufferMapCount(v17, a2);
            if (*(v17 + 4) == 1)
            {
              WebGPU::CommandEncoder::~CommandEncoder(v17);
              this = bmalloc::api::tzoneFree(v6, v7);
            }

            else
            {
              --*(v17 + 4);
            }
          }
        }

        else
        {
          v16 = 1;
          while (v15 != -1)
          {
            v14 = (v14 + v16) & v10;
            v15 = *(v9 + 16 * v14);
            ++v16;
            if (v15 == v8)
            {
              goto LABEL_12;
            }
          }
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return this;
}

void WebGPU::Buffer::setCommandEncoder(WebGPU::Buffer *this, WebGPU::CommandEncoder *a2)
{
  v4 = *(a2 + 25);
  v9 = v4;
  v5 = *(this + 75);
  if (v5 == *(this + 74))
  {
    v6 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 288, v5 + 1, &v9);
    v7 = *(this + 75);
    *(*(this + 36) + 8 * v7) = *v6;
    *(this + 75) = v7 + 1;
    if (*(*(this + 35) + 556) != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(*(this + 36) + 8 * v5) = v4;
    *(this + 75) = v5 + 1;
    if (*(*(this + 35) + 556) != 1)
    {
LABEL_3:
      if (*(this + 44) == 3)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  v8 = *(this + 1);
  if (v8)
  {
    [*(a2 + 13) addObject:v8];
  }

  if (*(this + 44) != 3)
  {
LABEL_9:
    WebGPU::CommandEncoder::incrementBufferMapCount(a2, a2);
    if (*(this + 44) == 4)
    {

      WebGPU::CommandEncoder::makeSubmitInvalid(a2, 0);
    }
  }
}

WTF *WebGPU::Buffer::unmap(WebGPU::Buffer *this, void *a2)
{
  v3 = *(this + 75);
  if (v3)
  {
    v4 = *(this + 36);
    v5 = &v4[v3];
    do
    {
      v8 = *v4;
      if (*v4 == -2 || v8 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x22567A160);
      }

      v9 = *(*(this + 35) + 480);
      if (v9)
      {
        v10 = *(v9 - 8);
        v11 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
        v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
        v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
        v14 = v10 & ((v13 >> 31) ^ v13);
        v15 = *(v9 + 16 * v14);
        if (v15 == v8)
        {
LABEL_12:
          v17 = *(v9 + 16 * v14 + 8);
          if (v17)
          {
            ++*(v17 + 4);
            WebGPU::CommandEncoder::decrementBufferMapCount(v17, a2);
            if (*(v17 + 4) == 1)
            {
              WebGPU::CommandEncoder::~CommandEncoder(v17);
              bmalloc::api::tzoneFree(v6, v7);
            }

            else
            {
              --*(v17 + 4);
            }
          }
        }

        else
        {
          v16 = 1;
          while (v15 != -1)
          {
            v14 = (v14 + v16) & v10;
            v15 = *(v9 + 16 * v14);
            ++v16;
            if (v15 == v8)
            {
              goto LABEL_12;
            }
          }
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }

  *(this + 112) = 0;
  *(this + 55) = 0;
  WebGPU::Buffer::indirectBufferInvalidated(this, 0);
  if (*(this + 44) != 4)
  {
    *(this + 44) = 3;
  }

  v20 = v22;
  v21 = 8;
  v23 = 1;
  WTF::Vector<WTF::Range<unsigned long>,8ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(this + 8, &v20);
  *(this + 208) = v23;
  result = v20;
  if (v22 != v20)
  {
    if (v20)
    {
      v20 = 0;
      LODWORD(v21) = 0;
      return WTF::fastFree(result, v18);
    }
  }

  return result;
}

void sub_22567A184(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11)
{
  if (v11 != a10)
  {
    if (a10)
    {
      WTF::fastFree(a10, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebGPU::Buffer::getBufferContents(id *this)
{
  v1 = this[1];
  v2 = [v1 contents];
  [v1 length];

  return v2;
}

uint64_t WebGPU::Buffer::mapAsync(unsigned int,unsigned long,unsigned long,WTF::CompletionHandler<void ()(WGPUBufferMapAsyncStatus)> &&)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    do
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v4, a2);
        return a1;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v6 != v5);
    if (v5 == 3)
    {
      WebGPU::Buffer::~Buffer(v4);
      bmalloc::api::tzoneFree(v7, v8);
    }
  }

  return a1;
}

uint64_t WebGPU::Buffer::indirectBufferInvalidated(uint64_t this, WebGPU::CommandEncoder *a2)
{
  if ((*(this + 40) & 0x110) == 0)
  {
    return this;
  }

  v2 = this;
  v3 = *(this + 312);
  if (!v3)
  {
    goto LABEL_58;
  }

  v4 = *(v3 - 1);
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = *(*(this + 280) + 480);
  if (v5)
  {
    v6 = 0;
    v7 = *(v3 - 1);
    while (1)
    {
      v8 = v3[--v7];
      if (v8 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = *(v5 - 8);
        v10 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
        v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
        v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
        v13 = v9 & ((v12 >> 31) ^ v12);
        this = 16 * v13;
        v14 = *(v5 + this);
        if (v14 == v8)
        {
LABEL_13:
          if (*(v5 + 16 * v13 + 8))
          {
            goto LABEL_7;
          }
        }

        else
        {
          this = 1;
          while (v14 != -1)
          {
            v13 = (v13 + this) & v9;
            v14 = *(v5 + 16 * v13);
            this = (this + 1);
            if (v14 == v8)
            {
              goto LABEL_13;
            }
          }
        }

        v3[v7] = -2;
        ++v6;
      }

LABEL_7:
      if (!v7)
      {
        goto LABEL_19;
      }
    }
  }

  v6 = 0;
  v15 = v4;
  v16 = v3 - 1;
  do
  {
    if (v16[v15] <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16[v15] = -2;
      ++v6;
    }

    --v15;
  }

  while (v15 * 8);
LABEL_19:
  if (v6)
  {
    v17 = *(v3 - 4) + v6;
    v18 = *(v3 - 3) - v6;
    *(v3 - 4) = v17;
    *(v3 - 3) = v18;
    if (v4 < 9)
    {
      goto LABEL_39;
    }
  }

  else
  {
LABEL_22:
    v18 = *(v3 - 3);
    if (v4 < 9)
    {
      goto LABEL_39;
    }
  }

  if (6 * v18 >= v4)
  {
    goto LABEL_39;
  }

  if (v18 <= 1)
  {
    v19 = v18;
    v20 = 1;
    goto LABEL_28;
  }

  v21 = __clz(v18 - 1);
  if (!v21)
  {
    __break(1u);
    goto LABEL_68;
  }

  v20 = (1 << -v21);
  v19 = v18;
  if (v18 <= 0x400)
  {
LABEL_28:
    if (3 * v20 > 4 * v19)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v20 <= 2 * v18)
  {
LABEL_29:
    LODWORD(v20) = 2 * v20;
  }

LABEL_30:
  v22 = v18;
  v23 = v20;
  v24 = a2;
  if (v20 > 0x400)
  {
    if (v23 * 0.416666667 > v22)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v23 * 0.604166667 <= v22)
  {
LABEL_34:
    LODWORD(v20) = 2 * v20;
  }

LABEL_35:
  if (v20 <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v20;
  }

  this = WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash((v2 + 312), v25, 0);
  v3 = *(v2 + 312);
  a2 = v24;
  if (!v3)
  {
    goto LABEL_58;
  }

LABEL_39:
  v26 = *(v3 - 3);
  if (!v26)
  {
    goto LABEL_58;
  }

  if (!a2 || v26 != 1)
  {
    goto LABEL_57;
  }

  v27 = *(v3 - 1);
  if (v27)
  {
    v28 = 8 * v27;
    v29 = &v3[v27];
    while (1)
    {
      v30 = *v3;
      if (*v3 < 0xFFFFFFFFFFFFFFFELL)
      {
        break;
      }

      ++v3;
      v28 -= 8;
      if (!v28)
      {
        v3 = v29;
        goto LABEL_47;
      }
    }
  }

  else
  {
LABEL_47:
    v30 = *v3;
  }

  if (v30 == -2 || v30 == -1)
  {
LABEL_68:
    __break(0xC471u);
    JUMPOUT(0x22567A648);
  }

  v31 = *(*(v2 + 280) + 480);
  if (v31)
  {
    v32 = *(v31 - 2);
    v33 = (v30 + ~(v30 << 32)) ^ ((v30 + ~(v30 << 32)) >> 22);
    v34 = 9 * ((v33 + ~(v33 << 13)) ^ ((v33 + ~(v33 << 13)) >> 8));
    v35 = (v34 ^ (v34 >> 15)) + ~((v34 ^ (v34 >> 15)) << 27);
    v36 = v32 & ((v35 >> 31) ^ v35);
    v37 = *(v31 + 2 * v36);
    if (v37 != v30)
    {
      v38 = 1;
      while (v37 != -1)
      {
        v36 = (v36 + v38) & v32;
        v37 = *(v31 + 2 * v36);
        ++v38;
        if (v37 == v30)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_57;
    }

LABEL_55:
    v31 = *(v31 + 2 * v36 + 1);
  }

  if (v31 != a2)
  {
LABEL_57:
    *(v2 + 320) = 1;
  }

LABEL_58:
  v39 = *(v2 + 304);
  if (v39)
  {
    *(v2 + 304) = 0;
    this = WTF::fastFree((v39 - 16), a2);
  }

  v40 = *(v2 + 272);
  if (v40)
  {
    *(v2 + 272) = 0;
    this = WTF::fastFree((v40 - 16), a2);
  }

  *(v2 + 232) = -1;
  *(v2 + 240) = -1;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  return this;
}

void WebGPU::Buffer::canSkipDrawIndexedValidation(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, int a10, int a11, void *a12)
{
  v21 = a12;
  v27[0] = a2;
  v27[2] = a3;
  v27[4] = a4;
  v27[6] = a5;
  v27[8] = a7;
  v27[10] = a8;
  v27[12] = a11;
  v27[14] = a10 | (2 * a6);
  v28 = [v21 gpuResourceID];
  if (!*(a1 + 272))
  {
    goto LABEL_12;
  }

  v22 = WTF::HashTable<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>>,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>>,(WTF::ShouldValidateKey)1,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>( (a1 + 272),  v27);
  v23 = *(a1 + 272);
  if (v22)
  {
    if (v23)
    {
      v24 = *(v23 - 4);
      goto LABEL_7;
    }
  }

  else if (v23)
  {
    v24 = *(v23 - 4);
    v22 = v23 + 80 * v24;
LABEL_7:
    v25 = v23 + 80 * v24;
    if (v22 == v23 + 80 * *(v23 - 4))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v25 = 0;
  if (!v22)
  {
LABEL_12:
    LOBYTE(v26) = 0;
    *a9 = 0;
    goto LABEL_13;
  }

LABEL_10:
  v26 = *(v22 + 72);
  if (v26 != 1)
  {
    goto LABEL_12;
  }

  *a9 = v22;
  *(a9 + 8) = v25;
LABEL_13:
  *(a9 + 16) = v26;
}

uint64_t WebGPU::Buffer::takeSlowIndexValidationPath(WebGPU::Buffer *this, WebGPU::CommandBuffer *a2, unsigned int a3, int a4, int a5, int a6, MTLIndexType a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v17 = a9;
  v18 = a10;
  WTFLogAlways();
  v20 = *(this + 35);
  while (1)
  {
    v21 = *v20;
    if ((*v20 & 1) == 0)
    {
      break;
    }

    v22 = *v20;
    atomic_compare_exchange_strong_explicit(v20, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v22 == v21)
    {
      goto LABEL_9;
    }
  }

  v23 = a6;
  v24 = a8;
  v25 = a2;
  v26 = 0;
  v27 = *v20;
  v28 = 1;
  atomic_compare_exchange_strong_explicit(*v20, &v26, 1u, memory_order_acquire, memory_order_acquire);
  if (v26)
  {
    MEMORY[0x22AA683C0](v27);
  }

  ++*(v27 + 8);
  atomic_compare_exchange_strong_explicit(v27, &v28, 0, memory_order_release, memory_order_relaxed);
  v29 = v28 == 1;
  a2 = v25;
  a8 = v24;
  a6 = v23;
  v18 = a10;
  v17 = a9;
  if (!v29)
  {
    WTF::Lock::unlockSlow(v27);
  }

LABEL_9:
  v30 = v20[2];
  atomic_fetch_add(v30, 1u);
  v70 = v30;
  do
  {
    v31 = *v20;
    if ((*v20 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v20, v19);
      goto LABEL_15;
    }

    v32 = *v20;
    atomic_compare_exchange_strong_explicit(v20, &v32, v31 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v32 != v31);
  if (v31 == 3)
  {
    WebGPU::Device::~Device(v20, v19);
    bmalloc::api::tzoneFree(v33, v34);
  }

LABEL_15:
  WebGPU::Queue::waitForAllCommitedWorkToComplete(v30);
  v35 = *(this + 1);
  if (a7)
  {
    result = WebGPU::verifyIndexBufferData<unsigned int>(v35, a3, a4, a5, a6, v17, a8, v18, a11);
  }

  else
  {
    result = WebGPU::verifyIndexBufferData<unsigned short>(v35, a3, a4, a5, a6, v17, a8, v18, a11);
  }

  if ((result & 1) == 0)
  {
    v37 = *(this + 1);
    v38 = [v37 contents];
    v39 = [v37 length];

    v40 = *(this + 1);
    [v40 length];
    v41 = WebGPU::Queue::ensureBlitCommandEncoder(v30);
    [*(v30 + 3) fillBuffer:v40 range:0 value:{objc_msgSend(v40, "length"), 0}];

    v42 = *(v30 + 3);
    if (v42)
    {
      WebGPU::Queue::endEncoding(v30, v42, *(v30 + 2));
      WebGPU::Queue::commitMTLCommandBuffer(v30, *(v30 + 2));
      v43 = *(v30 + 3);
      *(v30 + 3) = 0;

      v44 = *(v30 + 2);
      *(v30 + 2) = 0;
    }

    atomic_fetch_add(v30, 1u);
    v66 = v30;
    *&v67 = v38;
    *(&v67 + 1) = v39;
    while (1)
    {
      v45 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      v46 = *this;
      atomic_compare_exchange_strong_explicit(this, &v46, v45 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v46 == v45)
      {
        goto LABEL_29;
      }
    }

    v47 = 0;
    v48 = *this;
    v49 = 1;
    atomic_compare_exchange_strong_explicit(*this, &v47, 1u, memory_order_acquire, memory_order_acquire);
    if (v47)
    {
      MEMORY[0x22AA683C0](v48);
    }

    ++*(v48 + 8);
    atomic_compare_exchange_strong_explicit(v48, &v49, 0, memory_order_release, memory_order_relaxed);
    if (v49 != 1)
    {
      WTF::Lock::unlockSlow(v48);
    }

LABEL_29:
    v68 = this;
    v50 = WTF::fastMalloc(0x28);
    *v50 = &unk_2838D2B00;
    *(v50 + 8) = v66;
    *(v50 + 16) = v67;
    v52 = v68;
    v68 = 0;
    v69 = v50;
    *(v50 + 32) = v52;
    v53 = *(a2 + 21);
    if (v53 == *(a2 + 20))
    {
      v54 = WTF::Vector<WTF::Function<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 72, v53 + 1, &v69);
      v53 = *(a2 + 21);
      v55 = (*(a2 + 9) + 8 * v53);
      v50 = *v54;
    }

    else
    {
      v55 = (*(a2 + 9) + 8 * v53);
      v54 = &v69;
    }

    *v54 = 0;
    *v55 = v50;
    *(a2 + 21) = v53 + 1;
    v56 = v69;
    v69 = 0;
    if (v56)
    {
      (*(*v56 + 8))(v56);
    }

    v57 = v68;
    HIWORD(v68) = 0;
    if (v57)
    {
      do
      {
        v58 = *v57;
        if ((*v57 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v57, v51);
          goto LABEL_40;
        }

        v59 = *v57;
        atomic_compare_exchange_strong_explicit(v57, &v59, v58 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v59 != v58);
      if (v58 == 3)
      {
        WebGPU::Buffer::~Buffer(v57);
        bmalloc::api::tzoneFree(v60, v61);
      }
    }

LABEL_40:
    result = 0;
    v30 = v70;
  }

  v70 = 0;
  if (v30)
  {
    if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v30);
      WebGPU::Queue::~Queue(v30);
      return bmalloc::api::tzoneFree(v62, v63);
    }
  }

  return result;
}

void sub_22567ABFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, atomic_uint *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_22567AC18(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v7 = v13;
  v13 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  WebGPU::Buffer::takeSlowIndexValidationPath(WebGPU::CommandBuffer &,unsigned int,unsigned int,unsigned int,unsigned int,MTLIndexType,unsigned int,unsigned int,unsigned int,unsigned int)::$_0::~$_0(va, a2);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_22567AC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22567AC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22567ACA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22567ACB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

BOOL WebGPU::verifyIndexBufferData<unsigned short>(void *a1, unsigned int a2, int a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, unsigned int a9)
{
  v16 = a1;
  v17 = v16;
  v18 = 0;
  if (a7 + a5 <= a8 && a7 < a8)
  {
    v19 = v16;
    v20 = [v19 contents];
    [v19 length];

    if ([v19 length])
    {
      v21 = [v19 length] >> 1;
      v22 = a9;

      v18 = 0;
      if (~a6 < a9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = 0;
      v22 = a9;

      v18 = 0;
      if (~a6 < a9)
      {
        goto LABEL_17;
      }
    }

    v23 = a3 + a2;
    if (v21 >= v23)
    {
      if (v23 <= a2)
      {
        v18 = 1;
      }

      else
      {
        v24 = v22 + a4;
        v25 = ~a2 + v23;
        v26 = (v20 + 2 * a2);
        do
        {
          v27 = *v26++;
          v28 = a6 + (v27 + v22);
          v30 = v25-- != 0;
          v18 = v28 < v24;
        }

        while (v28 < v24 && v30);
      }
    }
  }

LABEL_17:

  return v18;
}

BOOL WebGPU::verifyIndexBufferData<unsigned int>(void *a1, unsigned int a2, int a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, unsigned int a9)
{
  v16 = a1;
  v17 = v16;
  v18 = 0;
  if (a7 + a5 <= a8 && a7 < a8)
  {
    v19 = v16;
    v20 = [v19 contents];
    [v19 length];

    if ([v19 length])
    {
      v21 = [v19 length] >> 2;
      v22 = a9;

      v18 = 0;
      if (~a6 < a9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = 0;
      v22 = a9;

      v18 = 0;
      if (~a6 < a9)
      {
        goto LABEL_17;
      }
    }

    v23 = a3 + a2;
    if (v21 >= v23)
    {
      if (v23 <= a2)
      {
        v18 = 1;
      }

      else
      {
        v24 = v22 + a4;
        v25 = ~a2 + v23;
        v26 = (v20 + 4 * a2);
        do
        {
          v27 = *v26++;
          v28 = v22 + a6 + v27;
          v30 = v25-- != 0;
          v18 = v28 < v24;
        }

        while (v28 < v24 && v30);
      }
    }
  }

LABEL_17:

  return v18;
}

uint64_t WebGPU::Buffer::takeSlowIndexValidationPath(WebGPU::CommandBuffer &,unsigned int,unsigned int,unsigned int,unsigned int,MTLIndexType,unsigned int,unsigned int,unsigned int,unsigned int)::$_0::~$_0(uint64_t result, void *a2)
{
  v2 = *(result + 24);
  *(result + 24) = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        v8 = *v2;
        v9 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v8, a2);
        result = v9;
        goto LABEL_7;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 == 3)
    {
      v5 = result;
      WebGPU::Buffer::~Buffer(v2);
      bmalloc::api::tzoneFree(v6, v7);
      result = v5;
    }
  }

LABEL_7:
  v10 = *result;
  *result = 0;
  if (v10)
  {
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      v11 = result;
      WebGPU::Queue::~Queue(v10);
      bmalloc::api::tzoneFree(v12, v13);
      return v11;
    }
  }

  return result;
}

WTF *WebGPU::Buffer::skippedDrawIndexedValidation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(a2 + 200);
  WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((a1 + 312), &v9, &v8);
  v6 = [*(a1 + 8) gpuAddress];

  return WebGPU::CommandEncoder::skippedDrawIndexedValidation(a2, v6, a3);
}

uint64_t WTF::ThreadSafeWeakPtr<WebGPU::Buffer,WTF::NoTaggingTraits<WebGPU::Buffer>>::~ThreadSafeWeakPtr(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *(result + 8) = 0;
  if (v2)
  {
    v3 = 0;
    atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      v6 = result;
      MEMORY[0x22AA683C0](v2);
      result = v6;
      v7 = *(v2 + 16) - 1;
      *(v2 + 16) = v7;
      if (v7)
      {
LABEL_4:
        v5 = 1;
        atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
        if (v5 != 1)
        {
          v11 = result;
          WTF::Lock::unlockSlow(v2);
          return v11;
        }

        return result;
      }
    }

    else
    {
      v4 = *(v2 + 16) - 1;
      *(v2 + 16) = v4;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v8 = *(v2 + 8);
    v9 = 1;
    atomic_compare_exchange_strong_explicit(v2, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 == 1)
    {
      if (v8)
      {
        return result;
      }
    }

    else
    {
      v12 = result;
      WTF::Lock::unlockSlow(v2);
      result = v12;
      if (v8)
      {
        return result;
      }
    }

    v10 = result;
    WTF::fastFree(v2, a2);
    return v10;
  }

  return result;
}

uint64_t WebGPU::Buffer::skippedDrawIndirectValidation(WebGPU::Buffer *this, WebGPU::CommandEncoder *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v25 = *(a2 + 25);
  WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 39, &v25, &v22);
  v22 = this;
  v10 = *this;
  if (*this)
  {
    v18 = WTF::fastMalloc(0x20);
    v10 = v18;
    *v18 = 0;
    *(v18 + 8) = xmmword_225881A50;
    *(v18 + 24) = this;
    while (1)
    {
      v20 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      *(v18 + 8) = v20 >> 1;
      v21 = v20;
      atomic_compare_exchange_strong_explicit(this, &v21, v18, memory_order_release, memory_order_relaxed);
      if (v21 == v20)
      {
        goto LABEL_3;
      }
    }

    WTF::fastFree(v18, v19);
    v10 = *this;
    if (!*this)
    {
      goto LABEL_5;
    }
  }

  else if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = 0;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(v10, &v11, 1u, memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    MEMORY[0x22AA683C0](v10);
    ++*(v10 + 16);
    atomic_compare_exchange_strong_explicit(v10, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 == 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    ++*(v10 + 16);
    atomic_compare_exchange_strong_explicit(v10, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 == 1)
    {
      goto LABEL_5;
    }
  }

  WTF::Lock::unlockSlow(v10);
LABEL_5:
  v23 = v10;
  *&v24 = a3;
  *(&v24 + 1) = __PAIR64__(a5, a4);
  v13 = WTF::fastMalloc(0x28);
  *v13 = &unk_2838D2B50;
  *(v13 + 8) = v22;
  *(v13 + 16) = v10;
  v22 = 0;
  v23 = 0;
  *(v13 + 24) = v24;
  v25 = v13;
  v14 = *(a2 + 35);
  if (v14 == *(a2 + 34))
  {
    v15 = WTF::Vector<WTF::Function<BOOL ()(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 128, v14 + 1, &v25);
    v14 = *(a2 + 35);
    v16 = (*(a2 + 16) + 8 * v14);
    v13 = *v15;
  }

  else
  {
    v16 = (*(a2 + 16) + 8 * v14);
    v15 = &v25;
  }

  *v15 = 0;
  *v16 = v13;
  *(a2 + 35) = v14 + 1;
  result = v25;
  v25 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_22567B3C0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
    WTF::ThreadSafeWeakPtr<WebGPU::Buffer,WTF::NoTaggingTraits<WebGPU::Buffer>>::~ThreadSafeWeakPtr(&a10, v16);
    _Unwind_Resume(a1);
  }

  WTF::ThreadSafeWeakPtr<WebGPU::Buffer,WTF::NoTaggingTraits<WebGPU::Buffer>>::~ThreadSafeWeakPtr(&a10, a2);
  _Unwind_Resume(a1);
}

uint64_t WebGPU::Buffer::didReadOOB(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 gpuResourceID];
  v5 = *(a1 + 328);
  if (!v5)
  {
    goto LABEL_9;
  }

  if (v4 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22567B530);
  }

  v6 = *(v5 - 8);
  v7 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = *(v5 + 16 * v10);
  if (v11 != v4)
  {
    v12 = 1;
    while (v11 != -1)
    {
      v10 = (v10 + v12) & v6;
      v11 = *(v5 + 16 * v10);
      ++v12;
      if (v11 == v4)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_9;
  }

LABEL_8:
  if (v10 == *(v5 - 4))
  {
LABEL_9:

    return 0;
  }

  v14 = *(v5 + 16 * v10 + 8);

  return v14 & 1;
}

uint64_t WebGPU::Buffer::indirectBufferInvalidated(WebGPU::Buffer *this, WebGPU::CommandEncoder *a2)
{
  *(this + 112) = 0;
  *(this + 55) = 0;
  WebGPU::Buffer::indirectBufferInvalidated(this, 0);
  v21 = this;
  v4 = *this;
  if (*this)
  {
    v17 = WTF::fastMalloc(0x20);
    v4 = v17;
    *v17 = 0;
    *(v17 + 8) = xmmword_225881A50;
    *(v17 + 24) = this;
    while (1)
    {
      v19 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      *(v17 + 8) = v19 >> 1;
      v20 = v19;
      atomic_compare_exchange_strong_explicit(this, &v20, v17, memory_order_release, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_3;
      }
    }

    WTF::fastFree(v17, v18);
    v4 = *this;
    if (*this)
    {
LABEL_3:
      v5 = 0;
      v6 = 1;
      atomic_compare_exchange_strong_explicit(v4, &v5, 1u, memory_order_acquire, memory_order_acquire);
      if (v5)
      {
        MEMORY[0x22AA683C0](v4);
        ++*(v4 + 16);
        atomic_compare_exchange_strong_explicit(v4, &v6, 0, memory_order_release, memory_order_relaxed);
        if (v6 == 1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        ++*(v4 + 16);
        atomic_compare_exchange_strong_explicit(v4, &v6, 0, memory_order_release, memory_order_relaxed);
        if (v6 == 1)
        {
          goto LABEL_5;
        }
      }

      WTF::Lock::unlockSlow(v4);
    }
  }

  else if (v4)
  {
    goto LABEL_3;
  }

LABEL_5:
  v22[0] = v4;
  if (!*(a2 + 1))
  {
    v8 = WTF::fastCompactMalloc(0x10);
    *v8 = 1;
    *(v8 + 8) = a2;
    v9 = *(a2 + 1);
    *(a2 + 1) = v8;
    if (v9)
    {
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        WTF::fastFree(v9, v7);
      }
    }
  }

  v10 = *(a2 + 1);
  atomic_fetch_add(v10, 1u);
  v22[1] = v10;
  v11 = WTF::fastMalloc(0x20);
  *v11 = &unk_2838D2BA0;
  *(v11 + 8) = v21;
  *(v11 + 16) = *v22;
  v23 = v11;
  v12 = *(a2 + 35);
  if (v12 == *(a2 + 34))
  {
    v13 = WTF::Vector<WTF::Function<BOOL ()(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 128, v12 + 1, &v23);
    v12 = *(a2 + 35);
    v14 = (*(a2 + 16) + 8 * v12);
    v11 = *v13;
  }

  else
  {
    v14 = (*(a2 + 16) + 8 * v12);
    v13 = &v23;
  }

  *v13 = 0;
  *v14 = v11;
  *(a2 + 35) = v12 + 1;
  v15 = v23;
  v23 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return 0;
}

void sub_22567B880(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    WebGPU::Buffer::indirectBufferInvalidated(WebGPU::CommandEncoder &)::$_0::~$_0(&a9, v14);
    _Unwind_Resume(a1);
  }

  WebGPU::Buffer::indirectBufferInvalidated(WebGPU::CommandEncoder &)::$_0::~$_0(&a9, a2);
  _Unwind_Resume(a1);
}

uint64_t WebGPU::Buffer::indirectBufferInvalidated(WebGPU::CommandEncoder &)::$_0::~$_0(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v7 = result;
    WTF::fastFree(v2, a2);
    result = v7;
    v3 = *(v7 + 8);
    *(result + 8) = 0;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    v3 = *(result + 8);
    *(result + 8) = 0;
    if (!v3)
    {
      return result;
    }
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (!v4)
  {
    v5 = *(v3 + 16) - 1;
    *(v3 + 16) = v5;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_11:
    v10 = *(v3 + 8);
    v11 = 1;
    atomic_compare_exchange_strong_explicit(v3, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 == 1)
    {
      if (v10)
      {
        return result;
      }
    }

    else
    {
      v14 = result;
      WTF::Lock::unlockSlow(v3);
      result = v14;
      if (v10)
      {
        return result;
      }
    }

    v12 = result;
    WTF::fastFree(v3, a2);
    return v12;
  }

  v8 = result;
  MEMORY[0x22AA683C0](v3);
  result = v8;
  v9 = *(v3 + 16) - 1;
  *(v3 + 16) = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    v13 = result;
    WTF::Lock::unlockSlow(v3);
    return v13;
  }

  return result;
}

uint64_t WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return v2;
  }

  v3 = *a2;
  if (*a2 == -2 || v3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22567BB40);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 8 * v8);
  if (v9 != v3)
  {
    v10 = 1;
    while (v9 != -1)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v2 + 8 * v8);
      ++v10;
      if (v9 == v3)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v11 = *(v2 - 4);
  if (v8 == v11)
  {
    return 0;
  }

  *(v2 + 8 * v8) = -2;
  v13 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v13;
  v2 = 1;
  if (v11 < 9 || 6 * v13.i32[1] >= v11)
  {
    return v2;
  }

  WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1, v11 >> 1, 0);
  return 1;
}

atomic_ullong *wgpuBufferReference(atomic_ullong *result)
{
  while (1)
  {
    v1 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v2 = *result;
    atomic_compare_exchange_strong_explicit(result, &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return result;
    }
  }

  v3 = 0;
  v4 = *result;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(*result, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    result = MEMORY[0x22AA683C0](v4);
    ++*(v4 + 8);
    atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      return result;
    }
  }

  else
  {
    ++*(v4 + 8);
    atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      return result;
    }
  }

  return WTF::Lock::unlockSlow(v4);
}

atomic_ullong *wgpuBufferRelease(atomic_ullong *result, void *a2)
{
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        WebGPU::Buffer::~Buffer(result);

        return bmalloc::api::tzoneFree(v4, v5);
      }

      return result;
    }
  }

  v6 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v6, a2);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Buffer,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        WebGPU::Buffer::~Buffer(result);

        return bmalloc::api::tzoneFree(v4, v5);
      }

      return result;
    }
  }

  v6 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v6, a2);
}

void wgpuBufferDestroy(WebGPU::Buffer *this, void *a2)
{
  while (1)
  {
    v3 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v4 = *this;
    atomic_compare_exchange_strong_explicit(this, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *this;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*this, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x22AA683C0](v6);
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
LABEL_6:
      v8 = *(this + 44);
      if ((v8 - 3) < 2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }
  }

  WTF::Lock::unlockSlow(v6);
  v8 = *(this + 44);
  if ((v8 - 3) >= 2)
  {
LABEL_7:
    WebGPU::Buffer::unmap(this, a2);
    v8 = *(this + 44);
  }

LABEL_8:
  if (v8 != 4)
  {
    *(this + 44) = 4;
  }

  v9 = *(this + 75);
  if (v9)
  {
    v10 = *(this + 36);
    v11 = &v10[v9];
    do
    {
      v14 = *v10;
      if (*v10 == -2 || v14 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x22567C078);
      }

      v15 = *(*(this + 35) + 480);
      if (v15)
      {
        v16 = *(v15 - 8);
        v17 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
        v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
        v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
        v20 = v16 & ((v19 >> 31) ^ v19);
        v21 = *(v15 + 16 * v20);
        if (v21 == v14)
        {
LABEL_21:
          v23 = *(v15 + 16 * v20 + 8);
          if (v23)
          {
            ++*(v23 + 4);
            WebGPU::CommandEncoder::makeSubmitInvalid(v23, 0);
            if (*(v23 + 4) == 1)
            {
              WebGPU::CommandEncoder::~CommandEncoder(v23);
              bmalloc::api::tzoneFree(v12, v13);
            }

            else
            {
              --*(v23 + 4);
            }
          }
        }

        else
        {
          v22 = 1;
          while (v21 != -1)
          {
            v20 = (v20 + v22) & v16;
            v21 = *(v15 + 16 * v20);
            ++v22;
            if (v21 == v14)
            {
              goto LABEL_21;
            }
          }
        }
      }

      ++v10;
    }

    while (v10 != v11);
  }

  if (*(this + 74))
  {
    if (*(this + 75))
    {
      *(this + 75) = 0;
    }

    v24 = *(this + 36);
    if (v24)
    {
      *(this + 36) = 0;
      *(this + 74) = 0;
      WTF::fastFree(v24, a2);
    }
  }

  WTF::HashMap<unsigned long long,WebGPU::Buffer *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::Buffer *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((*(this + 35) + 488), [*(this + 1) gpuAddress]);
  v25 = *(this + 35);
  while (1)
  {
    v26 = *v25;
    if ((*v25 & 1) == 0)
    {
      break;
    }

    v27 = *v25;
    atomic_compare_exchange_strong_explicit(v25, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v27 == v26)
    {
      goto LABEL_37;
    }
  }

  v28 = 0;
  v29 = *v25;
  v30 = 1;
  atomic_compare_exchange_strong_explicit(*v25, &v28, 1u, memory_order_acquire, memory_order_acquire);
  if (v28)
  {
    MEMORY[0x22AA683C0](v29);
  }

  ++*(v29 + 8);
  atomic_compare_exchange_strong_explicit(v29, &v30, 0, memory_order_release, memory_order_relaxed);
  if (v30 != 1)
  {
    WTF::Lock::unlockSlow(v29);
  }

LABEL_37:
  objc_storeStrong(this + 1, *(v25 + 288));
  do
  {
    v32 = *v25;
    if ((*v25 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v25, v31);
      goto LABEL_43;
    }

    v33 = *v25;
    atomic_compare_exchange_strong_explicit(v25, &v33, v32 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v33 != v32);
  if (v32 == 3)
  {
    WebGPU::Device::~Device(v25, v31);
    bmalloc::api::tzoneFree(v34, v35);
  }

LABEL_43:
  while (1)
  {
    v36 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v37 = *this;
    atomic_compare_exchange_strong_explicit(this, &v37, v36 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v37 == v36)
    {
      if (v36 == 3)
      {
        WebGPU::Buffer::~Buffer(this);

        bmalloc::api::tzoneFree(v38, v39);
      }

      return;
    }
  }

  v40 = *this;

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v40, v31);
}

void sub_22567C09C(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_22567C0B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::CommandEncoder>::deref(v2 + 8);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v4);
  _Unwind_Resume(a1);
}

uint64_t wgpuBufferGetMapState(uint64_t a1, void *a2)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v15 = a1;
    MEMORY[0x22AA683C0](v5);
    a1 = v15;
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_16:
    v14 = a1;
    WTF::Lock::unlockSlow(v5);
    a1 = v14;
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_16;
  }

LABEL_6:
  v7 = *(a1 + 44);
  while (1)
  {
    v8 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v9 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      if (v8 == 3)
      {
        WebGPU::Buffer::~Buffer(a1);
        bmalloc::api::tzoneFree(v10, v11);
      }

      v12 = v7 - 2;
      if ((v7 - 2) <= 2)
      {
        return dword_225881D48[v12];
      }

      return 2;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a1, a2);
  v12 = v7 - 2;
  if ((v7 - 2) <= 2)
  {
    return dword_225881D48[v12];
  }

  return 2;
}

char *wgpuBufferGetMappedRange(WebGPU::Buffer *this, char *a2, unint64_t a3, __n128 a4)
{
  while (1)
  {
    v6 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v7 = *this;
    atomic_compare_exchange_strong_explicit(this, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
  v9 = *this;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*this, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (!v8)
  {
    ++*(v9 + 8);
    atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      goto LABEL_6;
    }

LABEL_103:
    v66 = v9;
    v67 = a3;
    WTF::Lock::unlockSlow(v66);
    a3 = v67;
    v11 = *(this + 44);
    if (v11 == 4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v65 = a3;
  MEMORY[0x22AA683C0](v9);
  a3 = v65;
  ++*(v9 + 8);
  atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    goto LABEL_103;
  }

LABEL_6:
  v11 = *(this + 44);
  if (v11 == 4)
  {
    goto LABEL_8;
  }

LABEL_7:
  if (!*(this + 1))
  {
    goto LABEL_68;
  }

LABEL_8:
  if (a3 != -1)
  {
    if (v11 <= 1)
    {
      goto LABEL_10;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_69;
  }

  v18 = [*(this + 1) length];
  if (v18 >= a2)
  {
    a3 = v18 - a2;
  }

  else
  {
    a3 = 0;
  }

  if (*(this + 44) > 1u)
  {
    goto LABEL_24;
  }

LABEL_10:
  v12 = 0;
  if (a3 & 3 | a2 & 7)
  {
    goto LABEL_69;
  }

  if (*(this + 6) > a2)
  {
    goto LABEL_68;
  }

  v13 = &a2[a3];
  if (__CFADD__(a2, a3) || v13 > *(this + 7))
  {
    goto LABEL_68;
  }

  if (v13 == a2)
  {
    goto LABEL_15;
  }

  v19 = *(this + 19);
  if ((*(this + 208) & 1) == 0)
  {
    if (*(this + 19))
    {
      v20 = a3;
      a4 = std::__introsort<std::_ClassicAlgPolicy,WTF::RangeSet<WTF::Range<unsigned long>>::compact(void)::{lambda(WTF::Range<unsigned long> const&,WTF::Range<unsigned long> const&)#1} &,WTF::Range<unsigned long>*,false>(*(this + 8), (*(this + 8) + 16 * v19), 126 - 2 * __clz(v19), 1, a4);
      v21 = *(this + 19);
      if (!v21)
      {
        __break(0xC471u);
        JUMPOUT(0x22567C740);
      }

      v22 = v21 - 1;
      a3 = v20;
      if (v21 == 1)
      {
        v19 = 1;
      }

      else
      {
        v33 = *(this + 8);
        v34 = v33 + 1;
        v19 = 1;
        v35 = v33;
        do
        {
          a4 = *v34;
          v38 = v35->n128_u64[1];
          v37 = v34->n128_u64[1];
          if (v37 > v38)
          {
            if (a4.n128_u64[0] <= v38)
            {
              v36 = v35->n128_u64[0];
              if (v35->n128_u64[0] == v37)
              {
                v36 = 0;
                v37 = 0;
              }

              v35->n128_u64[0] = v36;
              v35->n128_u64[1] = v37;
            }

            else
            {
              if (v21 <= v19)
              {
                __break(0xC471u);
                goto LABEL_107;
              }

              v35 = &v33[v19++];
              *v35 = a4;
            }
          }

          ++v34;
          --v22;
        }

        while (v22);
        if (v21 < v19)
        {
          goto LABEL_107;
        }
      }

      *(this + 19) = v19;
    }

    *(this + 208) = 1;
  }

  if (v19)
  {
    v39 = (*(this + 8) + 8);
    v40 = 0xFFFFFFFFLL;
    v41 = v19;
    while (v13 <= *(v39 - 1) || *v39 <= a2)
    {
      v39 += 2;
      --v40;
      if (!--v41)
      {
        goto LABEL_75;
      }
    }

    if (v40)
    {
      goto LABEL_68;
    }

LABEL_75:
    v68.n128_u64[0] = a2;
    v68.n128_u64[1] = v13;
    if (a3)
    {
      v49 = *(this + 8) + 16 * v19;
      v51 = *(v49 - 16);
      v50 = *(v49 - 8);
      v52 = v51 <= a2 && v50 >= v13;
      v43 = v19;
      if (!v52)
      {
        goto LABEL_80;
      }
    }
  }

  else
  {
    v68.n128_u64[0] = a2;
    v68.n128_u64[1] = v13;
    if (a3)
    {
      v43 = 0;
LABEL_80:
      *(this + 208) = 0;
      v53 = *(this + 18);
      if (v43 + 1 >= v53)
      {
        if (v19 == v53)
        {
          v54 = WTF::Vector<WTF::Range<unsigned long>,8ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 64, v43 + 1, &v68);
          a4 = *v54;
          *(*(this + 8) + 16 * *(this + 19)) = *v54;
        }

        else
        {
          a4 = v68;
          *(*(this + 8) + 16 * v43) = v68;
        }

        v55 = (*(this + 19) + 1);
        *(this + 19) = v55;
        if ((*(this + 208) & 1) == 0)
        {
          if (v55)
          {
            a4 = std::__introsort<std::_ClassicAlgPolicy,WTF::RangeSet<WTF::Range<unsigned long>>::compact(void)::{lambda(WTF::Range<unsigned long> const&,WTF::Range<unsigned long> const&)#1} &,WTF::Range<unsigned long>*,false>(*(this + 8), (*(this + 8) + 16 * v55), 126 - 2 * __clz(v55), 1, a4);
            v56 = *(this + 19);
            if (!v56)
            {
LABEL_111:
              __break(0xC471u);
              JUMPOUT(0x22567C728);
            }

            v57 = v56 - 1;
            if (v56 == 1)
            {
              LODWORD(v58) = 1;
            }

            else
            {
              v59 = *(this + 8);
              v60 = v59 + 1;
              v58 = 1;
              v61 = v59;
              do
              {
                a4 = *v60;
                v64 = v61->n128_u64[1];
                v63 = v60->n128_u64[1];
                if (v63 > v64)
                {
                  if (a4.n128_u64[0] <= v64)
                  {
                    v62 = v61->n128_u64[0];
                    if (v61->n128_u64[0] == v63)
                    {
                      v62 = 0;
                      v63 = 0;
                    }

                    v61->n128_u64[0] = v62;
                    v61->n128_u64[1] = v63;
                  }

                  else
                  {
                    if (v56 <= v58)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x22567C748);
                    }

                    v61 = &v59[v58++];
                    *v61 = a4;
                  }
                }

                ++v60;
                --v57;
              }

              while (v57);
              if (v56 < v58)
              {
LABEL_107:
                __break(1u);
                goto LABEL_108;
              }
            }

            *(this + 19) = v58;
          }

          *(this + 208) = 1;
        }
      }

      else
      {
        a4 = v68;
        *(*(this + 8) + 16 * v43) = v68;
        ++*(this + 19);
      }
    }
  }

LABEL_15:
  if ((*(this + 208) & 1) == 0)
  {
    v14 = *(this + 19);
    if (v14)
    {
      std::__introsort<std::_ClassicAlgPolicy,WTF::RangeSet<WTF::Range<unsigned long>>::compact(void)::{lambda(WTF::Range<unsigned long> const&,WTF::Range<unsigned long> const&)#1} &,WTF::Range<unsigned long>*,false>(*(this + 8), (*(this + 8) + 16 * v14), 126 - 2 * __clz(v14), 1, a4);
      v15 = *(this + 19);
      if (!v15)
      {
LABEL_108:
        __break(0xC471u);
        JUMPOUT(0x22567C738);
      }

      v16 = v15 - 1;
      if (v15 == 1)
      {
        LODWORD(v17) = 1;
      }

      else
      {
        v23 = *(this + 8);
        v24 = v23 + 2;
        v17 = 1;
        v25 = v23;
        do
        {
          v28 = *v24;
          v29 = v25[1];
          v27 = v24[1];
          if (v27 > v29)
          {
            if (v28 <= v29)
            {
              v26 = *v25;
              if (*v25 == v27)
              {
                v26 = 0;
                v27 = 0;
              }

              *v25 = v26;
              v25[1] = v27;
            }

            else
            {
              if (v15 <= v17)
              {
                goto LABEL_111;
              }

              v25 = &v23[2 * v17++];
              *v25 = v28;
            }
          }

          v24 += 2;
          --v16;
        }

        while (v16);
        if (v15 < v17)
        {
          goto LABEL_107;
        }
      }

      *(this + 19) = v17;
    }

    *(this + 208) = 1;
  }

  if ([*(this + 1) contents])
  {
    v30 = *(this + 1);
    v31 = [v30 contents];
    v32 = [v30 length];

    if (v32 >= a2)
    {
      v12 = &a2[v31];
      goto LABEL_69;
    }

    goto LABEL_107;
  }

LABEL_68:
  v12 = 0;
  do
  {
LABEL_69:
    v44 = *this;
    if ((*this & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*this, a2);
      return v12;
    }

    v45 = *this;
    atomic_compare_exchange_strong_explicit(this, &v45, v44 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v45 != v44);
  if (v44 == 3)
  {
    WebGPU::Buffer::~Buffer(this);
    bmalloc::api::tzoneFree(v46, v47);
  }

  return v12;
}

void sub_22567C754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v4);
  _Unwind_Resume(a1);
}

void sub_22567C76C(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuBufferGetBufferContents(uint64_t a1)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x22AA683C0](v5);
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    WTF::Lock::unlockSlow(v5);
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v7 = *(a1 + 8);
  v8 = [v7 contents];
  [v7 length];

  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a1, v9);
      return v8;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Buffer::~Buffer(a1);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v8;
}

void sub_22567C8A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v4);
  _Unwind_Resume(a1);
}

atomic_ullong wgpuBufferGetInitialSize(atomic_ullong *a1, void *a2)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v14 = a1;
    MEMORY[0x22AA683C0](v5);
    a1 = v14;
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = a1;
    WTF::Lock::unlockSlow(v5);
    a1 = v13;
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v7 = a1[4];
  do
  {
    v8 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a1, a2);
      return v7;
    }

    v9 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v9 != v8);
  if (v8 == 3)
  {
    WebGPU::Buffer::~Buffer(a1);
    bmalloc::api::tzoneFree(v10, v11);
  }

  return v7;
}

uint64_t wgpuBufferGetCurrentSize(uint64_t a1)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x22AA683C0](v5);
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    WTF::Lock::unlockSlow(v5);
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v8 = [*(a1 + 8) length];
  do
  {
    v9 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a1, v7);
      return v8;
    }

    v10 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v10, v9 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v10 != v9);
  if (v9 == 3)
  {
    WebGPU::Buffer::~Buffer(a1);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

void sub_22567CACC(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

unsigned int *wgpuBufferMapAsync(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  while (1)
  {
    v12 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v13 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_6;
    }
  }

  v14 = 0;
  v15 = *a1;
  v16 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    MEMORY[0x22AA683C0](v15);
    ++*(v15 + 8);
    atomic_compare_exchange_strong_explicit(v15, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 == 1)
    {
      goto LABEL_6;
    }

LABEL_68:
    WTF::Lock::unlockSlow(v15);
    goto LABEL_6;
  }

  ++*(v15 + 8);
  atomic_compare_exchange_strong_explicit(v15, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != 1)
  {
    goto LABEL_68;
  }

LABEL_6:
  v17 = WTF::fastMalloc(0x18);
  *v17 = &unk_2838D2BC8;
  v17[1] = a5;
  v17[2] = a6;
  if (a4 == -1)
  {
    v18 = [*(a1 + 8) length];
    if (v18 >= a3)
    {
      a4 = v18 - a3;
    }

    else
    {
      a4 = 0;
    }
  }

  v19 = *(a1 + 280);
  while (1)
  {
    v20 = *v19;
    if ((*v19 & 1) == 0)
    {
      break;
    }

    v21 = *v19;
    atomic_compare_exchange_strong_explicit(v19, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v21 == v20)
    {
      goto LABEL_17;
    }
  }

  v22 = 0;
  v23 = *v19;
  v24 = 1;
  atomic_compare_exchange_strong_explicit(*v19, &v22, 1u, memory_order_acquire, memory_order_acquire);
  if (v22)
  {
    MEMORY[0x22AA683C0](v23);
  }

  ++*(v23 + 8);
  atomic_compare_exchange_strong_explicit(v23, &v24, 0, memory_order_release, memory_order_relaxed);
  if (v24 == 1)
  {
LABEL_17:
    v51 = v19;
    if (*(a1 + 44) == 4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(v23);
    v51 = v19;
    if (*(a1 + 44) == 4)
    {
      goto LABEL_19;
    }
  }

  if (!*(a1 + 8))
  {
    v25 = @"GPUBuffer.mapAsync: Buffer is not valid";
    goto LABEL_27;
  }

LABEL_19:
  if ((a3 & 7) != 0)
  {
    v25 = @"GPUBuffer.mapAsync: Offset is not divisible by 8";
LABEL_27:
    WebGPU::Device::generateAValidationError(v19, &v25->isa);
    (*(*v17 + 16))(v17, 1);
    result = (*(*v17 + 8))(v17);
    v51 = 0;
    goto LABEL_28;
  }

  if ((a4 & 3) != 0)
  {
    v25 = @"GPUBuffer.mapAsync: range size is not divisible by 4";
    goto LABEL_27;
  }

  if (__CFADD__(a3, a4) || a3 + a4 > [*(a1 + 8) length])
  {
    v25 = @"GPUBuffer.mapAsync: offset and rangeSize overflowed";
    goto LABEL_27;
  }

  if (*(a1 + 44) != 3)
  {
    v25 = @"GPUBuffer.mapAsync: state != Unmapped";
    goto LABEL_27;
  }

  if ((a2 & 3u) - 3 < 0xFFFFFFFE)
  {
    v25 = @"GPUBuffer.mapAsync: readWriteModeFlags != Read && readWriteModeFlags != Write";
    goto LABEL_27;
  }

  if ((a2 & 1) != 0 && (*(a1 + 40) & 1) == 0)
  {
    v25 = @"GPUBuffer.mapAsync: (mode & Read) && !(usage & Read)";
    goto LABEL_27;
  }

  if ((a2 & 2) != 0 && (*(a1 + 40) & 2) == 0)
  {
    v25 = @"GPUBuffer.mapAsync: (mode & Write) && !(usage & Write)";
    goto LABEL_27;
  }

  *(a1 + 44) = 2;
  WebGPU::Buffer::incrementBufferMapCount(a1, v26);
  *(a1 + 216) = a2;
  v38 = v19[2];
  atomic_fetch_add(v38, 1u);
  v50 = v38;
  while (1)
  {
    v39 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v40 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v40, v39 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v40 == v39)
    {
      goto LABEL_61;
    }
  }

  v41 = 0;
  v42 = *a1;
  v43 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v41, 1u, memory_order_acquire, memory_order_acquire);
  if (v41)
  {
    MEMORY[0x22AA683C0](v42);
  }

  ++*(v42 + 8);
  atomic_compare_exchange_strong_explicit(v42, &v43, 0, memory_order_release, memory_order_relaxed);
  if (v43 != 1)
  {
    WTF::Lock::unlockSlow(v42);
  }

LABEL_61:
  v48.n128_u64[0] = a3;
  v48.n128_u64[1] = a4;
  v44 = WTF::fastMalloc(0x28);
  *v44 = &unk_2838D2AD8;
  *(v44 + 8) = a1;
  *(v44 + 16) = v48;
  v49 = v44;
  *(v44 + 32) = v17;
  WebGPU::Queue::onSubmittedWorkDone(v38, &v49, v48);
  v45 = v49;
  v49 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  result = v50;
  v50 = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    WebGPU::Queue::~Queue(result);
    result = bmalloc::api::tzoneFree(v46, v47);
    v19 = v51;
    v51 = 0;
    if (!v19)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v19 = v51;
    v51 = 0;
    if (!v19)
    {
      goto LABEL_33;
    }
  }

  do
  {
LABEL_28:
    v29 = *v19;
    if ((*v19 & 1) == 0)
    {
      result = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v19, v28);
      goto LABEL_33;
    }

    v30 = *v19;
    atomic_compare_exchange_strong_explicit(v19, &v30, v29 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v30 != v29);
  if (v29 == 3)
  {
    WebGPU::Device::~Device(v19, v28);
    result = bmalloc::api::tzoneFree(v31, v32);
  }

LABEL_33:
  while (1)
  {
    v33 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v34 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v34, v33 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v34 == v33)
    {
      if (v33 == 3)
      {
        WebGPU::Buffer::~Buffer(a1);

        return bmalloc::api::tzoneFree(v35, v36);
      }

      return result;
    }
  }

  v37 = *a1;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v37, v28);
}

void sub_22567CFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15, atomic_ullong *a16)
{
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a15);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a16, v18);
  if (v16)
  {
    (*(*v16 + 8))(v16);
    WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(&a9, v20);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(&a9, v19);
  _Unwind_Resume(a1);
}

WTF *wgpuBufferUnmap(atomic_ullong *this, void *a2)
{
  while (1)
  {
    v3 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v4 = *this;
    atomic_compare_exchange_strong_explicit(this, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *this;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*this, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x22AA683C0](v6);
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_18:
    WTF::Lock::unlockSlow(v6);
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_18;
  }

LABEL_6:
  result = WebGPU::Buffer::unmap(this, a2);
  while (1)
  {
    v10 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v11 = *this;
    atomic_compare_exchange_strong_explicit(this, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      if (v10 == 3)
      {
        WebGPU::Buffer::~Buffer(this);

        return bmalloc::api::tzoneFree(v12, v13);
      }

      return result;
    }
  }

  v14 = *this;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v14, v9);
}

void sub_22567D224(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuBufferSetLabel(uint64_t a1, char *__s)
{
  while (1)
  {
    v4 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v5 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  v7 = *a1;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x22AA683C0](v7);
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
LABEL_6:
      if (!__s)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else
  {
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_6;
    }
  }

  WTF::Lock::unlockSlow(v7);
  if (__s)
  {
LABEL_7:
    strlen(__s);
  }

LABEL_10:
  WTF::String::fromUTF8();
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v18);
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v9);
    }
  }

  else
  {
    v18 = &stru_2838D6D18;
  }

  [*(a1 + 8) setLabel:v18];
  v10 = v18;
  v18 = 0;

  result = v17;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v17, v11);
  }

  do
  {
    v13 = *a1;
    if ((*a1 & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a1, v11);
    }

    v14 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v14, v13 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v14 != v13);
  if (v13 == 3)
  {
    WebGPU::Buffer::~Buffer(a1);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

void sub_22567D3E8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, atomic_ullong *a11, __int16 a12, char a13, char a14)
{
  if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(&a11, v16);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(&a11, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuBufferGetUsage(uint64_t a1, void *a2)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v14 = a1;
    MEMORY[0x22AA683C0](v5);
    a1 = v14;
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = a1;
    WTF::Lock::unlockSlow(v5);
    a1 = v13;
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v7 = *(a1 + 40);
  do
  {
    v8 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a1, a2);
      return v7;
    }

    v9 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v9 != v8);
  if (v8 == 3)
  {
    WebGPU::Buffer::~Buffer(a1);
    bmalloc::api::tzoneFree(v10, v11);
  }

  return v7;
}

uint64_t *WTF::HashMap<unsigned long long,WebGPU::Buffer *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::Buffer *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    if (a2 == -2 || a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x22567D66CLL);
    }

    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
LABEL_8:
      v10 = *(v2 - 4);
      if (v7 != v10)
      {
        *(v2 + 16 * v7) = -2;
        v11 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
        *(v2 - 16) = v11;
        if (v10 >= 9 && 6 * v11.i32[1] < v10)
        {
          return WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::Buffer *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::Buffer *>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::Buffer *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::Buffer *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(result, v10 >> 1, 0);
        }
      }
    }

    else
    {
      v9 = 1;
      while (v8 != -1)
      {
        v7 = (v7 + v9) & v3;
        v8 = *(v2 + 16 * v7);
        ++v9;
        if (v8 == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

_OWORD *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::Buffer *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::Buffer *>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::Buffer *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::Buffer *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (a2 < 4)
  {
    v12 = 0;
LABEL_10:
    v15 = a2 - v12;
    v16 = &v9[4 * v12 + 6];
    do
    {
      *(v16 - 1) = -1;
      *v16 = 0;
      v16 += 2;
      --v15;
    }

    while (v15);
    goto LABEL_12;
  }

  v12 = a2 & 0xFFFFFFFC;
  v13 = v9 + 12;
  v14 = v12;
  do
  {
    *(v13 - 2) = xmmword_225881D00;
    *(v13 - 1) = xmmword_225881D00;
    *v13 = xmmword_225881D00;
    v13[1] = xmmword_225881D00;
    v13 += 4;
    v14 -= 4;
  }

  while (v14);
  if (v12 != a2)
  {
    goto LABEL_10;
  }

LABEL_12:
  *a1 = v11;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (v6 + 16 * v17);
      if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = *a1;
        if (*a1)
        {
          v21 = *(v20 - 8);
        }

        else
        {
          v21 = 0;
        }

        v22 = (*v19 + ~(*v19 << 32)) ^ ((*v19 + ~(*v19 << 32)) >> 22);
        v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
        v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
        v25 = v21 & ((v24 >> 31) ^ v24);
        v26 = 1;
        do
        {
          v27 = v25;
          v28 = *(v20 + 16 * v25);
          v25 = (v25 + v26++) & v21;
        }

        while (v28 != -1);
        v29 = (v20 + 16 * v27);
        *v29 = *v19;
        if (v19 == a3)
        {
          v18 = v29;
        }
      }

      ++v17;
    }

    while (v17 != v7);
  }

  else
  {
    v18 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v18;
}

WTF **WTF::Vector<WTF::Range<unsigned long>,8ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(WTF **result, const void **a2)
{
  if (a2 == result)
  {
    return result;
  }

  v3 = *(result + 3);
  v4 = *(a2 + 3);
  if (v3 <= v4)
  {
    v13 = *(result + 2);
    if (v4 <= v13)
    {
      goto LABEL_36;
    }

    if (v13)
    {
      if (v3)
      {
        *(result + 3) = 0;
      }

      v15 = (result + 2);
      v14 = *result;
      if (result + 2 != *result && v14)
      {
        *result = 0;
        *(result + 2) = 0;
        v16 = result;
        WTF::fastFree(v14, a2);
        result = v16;
        v14 = *v16;
      }

      if (v14)
      {
        v17 = *(a2 + 3);
        if (*(result + 2) >= v17)
        {
          goto LABEL_36;
        }
      }

      else
      {
        *result = v15;
        *(result + 2) = 8;
        v17 = *(a2 + 3);
        if (v17 <= 8)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v17 = *(a2 + 3);
      if (!v17)
      {
        goto LABEL_36;
      }
    }

    v18 = *result;
    v19 = *(result + 3);
    if (v17 < 9)
    {
      v21 = (result + 2);
      *result = (result + 2);
      *(result + 2) = 8;
    }

    else
    {
      if (v17 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      v20 = result;
      v21 = WTF::fastMalloc((16 * v17));
      result = v20;
      *(v20 + 2) = v17;
      *v20 = v21;
    }

    if (v19)
    {
      v22 = 16 * v19;
      v23 = v18;
      do
      {
        v24 = *v23;
        v23 = (v23 + 16);
        *v21 = v24;
        v21 = (v21 + 16);
        v22 -= 16;
      }

      while (v22);
    }

    if (result + 2 != v18 && v18)
    {
      if (*result == v18)
      {
        *result = 0;
        *(result + 2) = 0;
      }

      v25 = result;
      WTF::fastFree(v18, a2);
      result = v25;
    }

LABEL_36:
    v4 = *(result + 3);
    v5 = *result;
    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(result + 3) = v4;
  v5 = *result;
  if (v4)
  {
LABEL_4:
    v6 = result;
    memmove(v5, *a2, 16 * v4);
    result = v6;
    v4 = *(v6 + 3);
    v5 = *v6;
  }

LABEL_5:
  v7 = *(a2 + 3);
  if (v4 != v7)
  {
    v8 = 16 * v4;
    v9 = v5 + v8;
    v10 = (*a2 + v8);
    v11 = 16 * v7 - v8;
    do
    {
      v12 = *v10++;
      *v9 = v12;
      v9 += 16;
      v11 -= 16;
    }

    while (v11);
    v4 = *(a2 + 3);
  }

  *(result + 3) = v4;
  return result;
}

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebGPU::CommandEncoder>::deref(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder((result - 8));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*(result + 8);
  }

  return result;
}

unint64_t WTF::Vector<WTF::Range<unsigned long>,8ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 > a3 || *a1 + 16 * v6 <= a3)
  {
    v8 = *(a1 + 8);
    if (v8 + (v8 >> 1) <= v8 + 1)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v8 + (v8 >> 1);
    }

    if (v9 <= a2)
    {
      v9 = a2;
    }

    if (!(v9 >> 28))
    {
      if (v9 <= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      v11 = WTF::fastMalloc((16 * v10));
      *(a1 + 8) = v10;
      *a1 = v11;
      if (v6)
      {
        v13 = 16 * v6;
        v14 = v5;
        do
        {
          v15 = *v14;
          v14 = (v14 + 16);
          *v11++ = v15;
          v13 -= 16;
        }

        while (v13);
      }

      if ((a1 + 16) != v5 && v5)
      {
        if (*a1 == v5)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v5, v12);
      }

      return a3;
    }

LABEL_40:
    __break(0xC471u);
    JUMPOUT(0x22567DC04);
  }

  v17 = *(a1 + 8);
  if (v17 + (v17 >> 1) <= v17 + 1)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = v17 + (v17 >> 1);
  }

  if (v18 <= a2)
  {
    v18 = a2;
  }

  if (v18 >> 28)
  {
    goto LABEL_40;
  }

  v19 = a3 - v5;
  if (v18 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = v18;
  }

  v21 = WTF::fastMalloc((16 * v20));
  v23 = 0;
  *(a1 + 8) = v20;
  *a1 = v21;
  do
  {
    *(v21 + v23) = *(v5 + v23);
    v23 += 16;
  }

  while (16 * v6 != v23);
  if ((a1 + 16) != v5 && v5)
  {
    if (*a1 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v22);
  }

  return *a1 + v19;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,WTF::RangeSet<WTF::Range<unsigned long>>::compact(void)::{lambda(WTF::Range<unsigned long> const&,WTF::Range<unsigned long> const&)#1} &,WTF::Range<unsigned long>*,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  for (i = a1; ; *(i - 8) = v38)
  {
LABEL_2:
    a1 = i;
    v13 = (a2 - i) >> 4;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v19 = i + 16;
          v57 = *(i + 16);
          v60 = a2[-1].n128_u64[0];
          v59 = a2 - 1;
          v58 = v60;
          if (v57 < *i)
          {
            if (v58 >= v57)
            {
              v126 = *i;
              *i = *v19;
              result = v126;
              *v19 = v126;
              if (v59->n128_u64[0] < *(i + 16))
              {
                result = *v19;
                *v19 = *v59;
                *v59 = result;
              }

              return result;
            }

LABEL_120:
            v127 = *i;
            *i = *v59;
            result = v127;
            *v59 = v127;
            return result;
          }

          if (v58 >= v57)
          {
            return result;
          }

          result = *v19;
          *v19 = *v59;
          *v59 = result;
LABEL_201:
          if (*(a1 + 16) < *a1)
          {
            v132 = *a1;
            *a1 = *v19;
            result = v132;
            *v19 = v132;
          }

          return result;
        case 4:
          v19 = i + 16;
          v62 = *(i + 16);
          v38 = i + 32;
          v39 = *(i + 32);
          if (v62 >= *i)
          {
            if (v39 < v62)
            {
              result = *v19;
              *v19 = *v38;
              *v38 = result;
              if (*(i + 16) < *i)
              {
                v130 = *i;
                *i = *v19;
                result = v130;
                *v19 = v130;
              }
            }
          }

          else
          {
            if (v39 < v62)
            {
              v128 = *i;
              *i = *v38;
              result = v128;
              goto LABEL_197;
            }

LABEL_195:
            v131 = *a1;
            *a1 = *v19;
            result = v131;
            *v19 = v131;
            if (v39 < *(a1 + 16))
            {
              result = *v19;
              *v19 = *v38;
LABEL_197:
              *v38 = result;
            }
          }

          if (v9->n128_u64[0] >= *v38)
          {
            return result;
          }

          result = *v38;
          *v38 = *v9;
          *v9 = result;
          if (*v38 >= *v19)
          {
            return result;
          }

          result = *v19;
          *v19 = *v38;
          *v38 = result;
          goto LABEL_201;
        case 5:

          result.n128_u64[0] = std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RangeSet<WTF::Range<unsigned long>>::compact(void)::{lambda(WTF::Range<unsigned long> const&,WTF::Range<unsigned long> const&)#1} &,WTF::Range<unsigned long>*,0>(i, (i + 16), (i + 32), (i + 48), a2[-1].n128_u64, result).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v61 = a2[-1].n128_u64[0];
        v59 = a2 - 1;
        if (v61 >= *i)
        {
          return result;
        }

        goto LABEL_120;
      }
    }

    if (v13 <= 23)
    {
      v63 = (i + 16);
      v65 = i == a2 || v63 == a2;
      if (a4)
      {
        if (v65)
        {
          return result;
        }

        v66 = 0;
        v67 = i;
        while (1)
        {
          v69 = v63;
          v70 = v67[2];
          if (v70 < *v67)
          {
            v71 = v67[3];
            v72 = v66;
            do
            {
              result = *(i + v72);
              *(i + v72 + 16) = result;
              if (!v72)
              {
                v68 = i;
                goto LABEL_134;
              }

              v73 = *(i + v72 - 16);
              v72 -= 16;
            }

            while (v70 < v73);
            v68 = (i + v72 + 16);
LABEL_134:
            *v68 = v70;
            v68[1] = v71;
          }

          v63 = v69 + 1;
          v66 += 16;
          v67 = v69;
          if (&v69[1] == a2)
          {
            return result;
          }
        }
      }

      if (v65)
      {
        return result;
      }

      v19 = 16;
      v38 = i;
      while (1)
      {
        v39 = v63->n128_u64[0];
        if (v39 < *v38)
        {
          v104 = 0;
          v105 = *(v38 + 24);
          do
          {
            result = *(v38 + v104);
            *(v38 + v104 + 16) = result;
            if (!(v19 + v104))
            {
              goto LABEL_194;
            }

            v106 = *(v38 + v104 - 16);
            v104 -= 16;
          }

          while (v39 < v106);
          v103 = v38 + v104;
          *(v103 + 16) = v39;
          *(v103 + 24) = v105;
        }

        v38 += 16;
        v19 += 16;
        v63 = (i + v19);
        if ((i + v19) == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v14 = i + 16 * (v13 >> 1);
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 < 0x81)
    {
      v18 = *i;
      if (*i >= *v14)
      {
        if (v16 < v18)
        {
          v111 = *i;
          *i = *v9;
          result = v111;
          *v9 = v111;
          if (*i < *v14)
          {
            v112 = *v14;
            *v14 = *i;
            result = v112;
            *i = v112;
            --a3;
            v19 = *i;
            if (a4)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }
        }
      }

      else
      {
        if (v16 < v18)
        {
          v108 = *v14;
          *v14 = *v9;
          goto LABEL_36;
        }

        v115 = *v14;
        *v14 = *i;
        result = v115;
        *i = v115;
        if (v9->n128_u64[0] < *i)
        {
          v108 = *i;
          *i = *v9;
LABEL_36:
          result = v108;
          *v9 = v108;
        }
      }

      --a3;
      v19 = *i;
      if (a4)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v17 = *v14;
    if (*v14 >= *i)
    {
      if (v16 < v17)
      {
        v109 = *v14;
        *v14 = *v9;
        *v9 = v109;
        if (*v14 < *i)
        {
          v110 = *i;
          *i = *v14;
          *v14 = v110;
        }
      }
    }

    else
    {
      if (v16 >= v17)
      {
        v113 = *i;
        *i = *v14;
        *v14 = v113;
        if (v9->n128_u64[0] >= *v14)
        {
          goto LABEL_28;
        }

        v107 = *v14;
        *v14 = *v9;
      }

      else
      {
        v107 = *i;
        *i = *v9;
      }

      *v9 = v107;
    }

LABEL_28:
    v20 = (i + 16);
    v21 = (v14 - 16);
    v22 = *(v14 - 16);
    v23 = v10->n128_u64[0];
    if (v22 >= *(i + 16))
    {
      if (v23 < v22)
      {
        v114 = *v21;
        *v21 = *v10;
        *v10 = v114;
        if (v21->n128_u64[0] < v20->n128_u64[0])
        {
          v25 = *v20;
          *v20 = *v21;
          *v21 = v25;
        }
      }
    }

    else
    {
      if (v23 >= v22)
      {
        v26 = *v20;
        *v20 = *v21;
        *v21 = v26;
        if (v10->n128_u64[0] >= v21->n128_u64[0])
        {
          goto LABEL_42;
        }

        v116 = *v21;
        *v21 = *v10;
        v24 = v116;
      }

      else
      {
        v24 = *v20;
        *v20 = *v10;
      }

      *v10 = v24;
    }

LABEL_42:
    v27 = (i + 32);
    v30 = *(v14 + 16);
    v28 = (v14 + 16);
    v29 = v30;
    v31 = v11->n128_u64[0];
    if (v30 >= *(i + 32))
    {
      if (v31 < v29)
      {
        v117 = *v28;
        *v28 = *v11;
        *v11 = v117;
        if (v28->n128_u64[0] < v27->n128_u64[0])
        {
          v33 = *v27;
          *v27 = *v28;
          *v28 = v33;
        }
      }
    }

    else
    {
      if (v31 >= v29)
      {
        v34 = *v27;
        *v27 = *v28;
        *v28 = v34;
        if (v11->n128_u64[0] >= v28->n128_u64[0])
        {
          goto LABEL_51;
        }

        v118 = *v28;
        *v28 = *v11;
        v32 = v118;
      }

      else
      {
        v32 = *v27;
        *v27 = *v11;
      }

      *v11 = v32;
    }

LABEL_51:
    v35 = *v15;
    v36 = v28->n128_u64[0];
    if (*v15 >= v21->n128_u64[0])
    {
      if (v36 < v35)
      {
        v120 = *v15;
        *v15 = *v28;
        *v28 = v120;
        if (*v15 < v21->n128_u64[0])
        {
          v121 = *v21;
          *v21 = *v15;
          *v15 = v121;
        }
      }
    }

    else
    {
      if (v36 >= v35)
      {
        v122 = *v21;
        *v21 = *v15;
        *v15 = v122;
        if (v28->n128_u64[0] >= *v15)
        {
          goto LABEL_60;
        }

        v119 = *v15;
        *v15 = *v28;
      }

      else
      {
        v119 = *v21;
        *v21 = *v28;
      }

      *v28 = v119;
    }

LABEL_60:
    v123 = *i;
    *i = *v15;
    result = v123;
    *v15 = v123;
    --a3;
    v19 = *i;
    if (a4)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(i - 16) < v19)
    {
LABEL_62:
      v37 = 0;
      v38 = *(i + 8);
      do
      {
        v39 = (i + v37 + 16);
        if (v39 == a2)
        {
          goto LABEL_194;
        }

        v37 += 16;
      }

      while (v39->n128_u64[0] < v19);
      v39 = (i + v37);
      v40 = a2;
      if (v37 != 16)
      {
        while (v40 != i)
        {
          v41 = v40[-1].n128_u64[0];
          --v40;
          if (v41 < v19)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_194;
      }

      v40 = a2;
      do
      {
        if (v39 >= v40)
        {
          break;
        }

        v42 = v40[-1].n128_u64[0];
        --v40;
      }

      while (v42 >= v19);
LABEL_72:
      i += v37;
      if (v39 < v40)
      {
        v43 = v40;
LABEL_74:
        v124 = *i;
        *i = *v43;
        result = v124;
        *v43 = v124;
        v44 = (i + 16);
        while (v44 != a2)
        {
          v45 = v44->n128_u64[0];
          ++v44;
          if (v45 >= v19)
          {
            i = v44[-1].n128_u64;
            while (v43 != a1)
            {
              v46 = v43[-1].n128_u64[0];
              --v43;
              if (v46 < v19)
              {
                if (i < v43)
                {
                  goto LABEL_74;
                }

                goto LABEL_81;
              }
            }

            break;
          }
        }

LABEL_194:
        __break(1u);
        goto LABEL_195;
      }

LABEL_81:
      v47 = (i - 16);
      if (i - 16 != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      *(i - 16) = v19;
      *(i - 8) = v38;
      if (v39 < v40)
      {
        goto LABEL_86;
      }

      v48 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RangeSet<WTF::Range<unsigned long>>::compact(void)::{lambda(WTF::Range<unsigned long> const&,WTF::Range<unsigned long> const&)#1} &,WTF::Range<unsigned long>*>(a1, (i - 16), result);
      if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RangeSet<WTF::Range<unsigned long>>::compact(void)::{lambda(WTF::Range<unsigned long> const&,WTF::Range<unsigned long> const&)#1} &,WTF::Range<unsigned long>*>(i, a2, v49))
      {
        if (v48)
        {
          goto LABEL_2;
        }

LABEL_86:
        std::__introsort<std::_ClassicAlgPolicy,WTF::RangeSet<WTF::Range<unsigned long>>::compact(void)::{lambda(WTF::Range<unsigned long> const&,WTF::Range<unsigned long> const&)#1} &,WTF::Range<unsigned long>*,false>(a1, i - 16, a3, a4 & 1);
        a4 = 0;
        goto LABEL_2;
      }

      a2 = (i - 16);
      if (v48)
      {
        return result;
      }

      goto LABEL_1;
    }

    v38 = *(i + 8);
    if (v19 >= v9->n128_u64[0])
    {
      v51 = i + 16;
      do
      {
        i = v51;
        if (v51 >= a2)
        {
          break;
        }

        v51 += 16;
      }

      while (v19 >= *i);
    }

    else
    {
      v39 = (i + 16);
      do
      {
        if (v39 == a2)
        {
          goto LABEL_194;
        }

        v50 = v39->n128_u64[0];
        ++v39;
      }

      while (v19 >= v50);
      i = v39[-1].n128_u64;
    }

    v39 = a2;
    if (i < a2)
    {
      v39 = a2;
      while (v39 != a1)
      {
        v52 = v39[-1].n128_u64[0];
        --v39;
        if (v19 >= v52)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_194;
    }

LABEL_106:
    if (i < v39)
    {
      v125 = *i;
      *i = *v39;
      result = v125;
      *v39 = v125;
      v53 = (i + 16);
      while (v53 != a2)
      {
        v54 = v53->n128_u64[0];
        ++v53;
        if (v19 < v54)
        {
          i = v53[-1].n128_u64;
          while (v39 != a1)
          {
            v55 = v39[-1].n128_u64[0];
            --v39;
            if (v19 >= v55)
            {
              goto LABEL_106;
            }
          }

          goto LABEL_194;
        }
      }

      goto LABEL_194;
    }

    v56 = (i - 16);
    if (i - 16 != a1)
    {
      result = *v56;
      *a1 = *v56;
    }

    a4 = 0;
    *(i - 16) = v19;
  }

  if (i == a2)
  {
    return result;
  }

  v74 = (v13 - 2) >> 1;
  v75 = v74;
  while (2)
  {
    if (v74 >= v75)
    {
      v77 = (2 * (v75 & 0xFFFFFFFFFFFFFFFLL)) | 1;
      v78 = (i + 16 * v77);
      if (2 * (v75 & 0xFFFFFFFFFFFFFFFLL) + 2 >= v13)
      {
        v81 = (i + 16 * v75);
        v82 = *v81;
        if (*v78 >= *v81)
        {
LABEL_154:
          v83 = v81[1];
          while (1)
          {
            v86 = v81;
            v81 = v78;
            *v86 = *v78;
            if (v74 < v77)
            {
              break;
            }

            v87 = (2 * (v77 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v78 = (i + 16 * v87);
            v77 = 2 * v77 + 2;
            if (v77 < v13)
            {
              v84 = *v78;
              v85 = v78[2];
              if (*v78 <= v85)
              {
                v84 = v78[2];
              }

              if (*v78 >= v85)
              {
                v77 = v87;
              }

              else
              {
                v78 += 2;
              }

              if (v84 < v82)
              {
                break;
              }
            }

            else
            {
              v77 = v87;
              if (*v78 < v82)
              {
                break;
              }
            }
          }

          *v81 = v82;
          v81[1] = v83;
        }
      }

      else
      {
        v79 = v78[2];
        v80 = *v78 >= v79;
        if (*v78 > v79)
        {
          v79 = *v78;
        }

        if (!v80)
        {
          v78 += 2;
          v77 = 2 * (v75 & 0xFFFFFFFFFFFFFFFLL) + 2;
        }

        v81 = (i + 16 * v75);
        v82 = *v81;
        if (v79 >= *v81)
        {
          goto LABEL_154;
        }
      }
    }

    v76 = v75-- <= 0;
    if (!v76)
    {
      continue;
    }

    break;
  }

  do
  {
    v88 = 0;
    v129 = *i;
    v89 = (v13 - 2) >> 1;
    n128_u64 = i;
    do
    {
      while (1)
      {
        v94 = &n128_u64[v88];
        v93 = v94 + 1;
        v95 = (2 * v88) | 1;
        v88 = 2 * v88 + 2;
        if (v88 < v13)
        {
          break;
        }

        v88 = v95;
        *n128_u64 = *v93;
        n128_u64 = v94[1].n128_u64;
        if (v95 > v89)
        {
          goto LABEL_174;
        }
      }

      v92 = v94[2].n128_u64[0];
      v91 = v94 + 2;
      if (v91[-1].n128_u64[0] >= v92)
      {
        v88 = v95;
      }

      else
      {
        v93 = v91;
      }

      *n128_u64 = *v93;
      n128_u64 = v93;
    }

    while (v88 <= v89);
LABEL_174:
    if (v93 == --a2)
    {
      result = v129;
      *v93 = v129;
    }

    else
    {
      *v93 = *a2;
      result = v129;
      *a2 = v129;
      v96 = (&v93[1] - i) >> 4;
      v76 = v96 < 2;
      v97 = v96 - 2;
      if (!v76)
      {
        v98 = v97 >> 1;
        v99 = (i + 16 * v98);
        v100 = v93->n128_u64[0];
        if (v99->n128_u64[0] < v93->n128_u64[0])
        {
          v101 = v93->n128_u64[1];
          do
          {
            v102 = v93;
            v93 = v99;
            result = *v99;
            *v102 = *v99;
            if (!v98)
            {
              break;
            }

            v98 = (v98 - 1) >> 1;
            v99 = (i + 16 * v98);
          }

          while (v99->n128_u64[0] < v100);
          v93->n128_u64[0] = v100;
          v93->n128_u64[1] = v101;
        }
      }
    }

    v76 = v13-- <= 2;
  }

  while (!v76);
  return result;
}

__n128 std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RangeSet<WTF::Range<unsigned long>>::compact(void)::{lambda(WTF::Range<unsigned long> const&,WTF::Range<unsigned long> const&)#1} &,WTF::Range<unsigned long>*,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RangeSet<WTF::Range<unsigned long>>::compact(void)::{lambda(WTF::Range<unsigned long> const&,WTF::Range<unsigned long> const&)#1} &,WTF::Range<unsigned long>*>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 16);
      v8 = *(a1 + 16);
      v10 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 >= v8)
        {
          v29 = *a1;
          *a1 = *v7;
          *v7 = v29;
          if (v4->n128_u64[0] < *(a1 + 16))
          {
            v30 = *v7;
            *v7 = *v4;
            *v4 = v30;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *v7;
      *v7 = *v4;
      *v4 = v24;
LABEL_49:
      if (*(a1 + 16) < *a1)
      {
        v43 = *a1;
        *a1 = *v7;
        *v7 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RangeSet<WTF::Range<unsigned long>>::compact(void)::{lambda(WTF::Range<unsigned long> const&,WTF::Range<unsigned long> const&)#1} &,WTF::Range<unsigned long>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v7 = (a1 + 16);
    v18 = *(a1 + 16);
    v19 = (a1 + 32);
    v20 = *(a1 + 32);
    v21 = a2 - 1;
    v22 = *a1;
    if (v18 >= *a1)
    {
      if (v20 < v18)
      {
        v27 = *v7;
        *v7 = *v19;
        *v19 = v27;
        if (v7->n128_u64[0] < v22)
        {
          v28 = *a1;
          *a1 = *v7;
          *v7 = v28;
        }
      }

      goto LABEL_46;
    }

    if (v20 >= v18)
    {
      v40 = *a1;
      *a1 = *v7;
      *v7 = v40;
      if (v20 >= *(a1 + 16))
      {
        goto LABEL_46;
      }

      v23 = *v7;
      *v7 = *v19;
    }

    else
    {
      v23 = *a1;
      *a1 = *v19;
    }

    *v19 = v23;
LABEL_46:
    if (v21->n128_u64[0] >= v19->n128_u64[0])
    {
      return 1;
    }

    v41 = *v19;
    *v19 = *v21;
    *v21 = v41;
    if (v19->n128_u64[0] >= v7->n128_u64[0])
    {
      return 1;
    }

    v42 = *v7;
    *v7 = *v19;
    *v19 = v42;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

LABEL_12:
    v11 = *a1;
    *a1 = *v4;
    *v4 = v11;
    return 1;
  }

LABEL_13:
  v12 = (a1 + 32);
  v13 = *(a1 + 32);
  v14 = (a1 + 16);
  v15 = *(a1 + 16);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      v25 = *v14;
      *v14 = *v12;
      *v12 = v25;
      if (v14->n128_u64[0] < v16)
      {
        v26 = *a1;
        *a1 = *v14;
        *v14 = v26;
      }
    }
  }

  else
  {
    if (v13 >= v15)
    {
      v31 = *a1;
      *a1 = *v14;
      *v14 = v31;
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_32;
      }

      v17 = *v14;
      *v14 = *v12;
    }

    else
    {
      v17 = *a1;
      *a1 = *v12;
    }

    *v12 = v17;
  }

LABEL_32:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (v32->n128_u64[0] < v12->n128_u64[0])
    {
      break;
    }

LABEL_41:
    v12 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }

  v36 = v32->n128_i64[1];
  v37 = v33;
  do
  {
    *(a1 + v37 + 48) = *(a1 + v37 + 32);
    if (v37 == -32)
    {
      *a1 = v35;
      *(a1 + 8) = v36;
      if (++v34 != 8)
      {
        goto LABEL_41;
      }

      return &v32[1] == a2;
    }

    v38 = *(a1 + v37 + 16);
    v37 -= 16;
  }

  while (v35 < v38);
  v39 = a1 + v37;
  *(v39 + 48) = v35;
  *(v39 + 56) = v36;
  if (++v34 != 8)
  {
    goto LABEL_41;
  }

  return &v32[1] == a2;
}

void *WTF::Detail::CallableWrapper<WebGPU::Buffer::mapAsync(unsigned int,unsigned long,unsigned long,WTF::CompletionHandler<void ()(WGPUBufferMapAsyncStatus)> &&)::$_0,void,WGPUQueueWorkDoneStatus>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_2838D2AD8;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    do
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v4, a2);
        return a1;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v6 != v5);
    if (v5 == 3)
    {
      WebGPU::Buffer::~Buffer(v4);
      bmalloc::api::tzoneFree(v7, v8);
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Buffer::mapAsync(unsigned int,unsigned long,unsigned long,WTF::CompletionHandler<void ()(WGPUBufferMapAsyncStatus)> &&)::$_0,void,WGPUQueueWorkDoneStatus>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_2838D2AD8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        if (v5 == 3)
        {
          WebGPU::Buffer::~Buffer(v4);
          bmalloc::api::tzoneFree(v7, v8);
        }

        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v4, a2);
    v9 = this;
  }

  else
  {
LABEL_8:
    v9 = this;
  }

  return WTF::fastFree(v9, a2);
}

WTF *WTF::Detail::CallableWrapper<WebGPU::Buffer::mapAsync(unsigned int,unsigned long,unsigned long,WTF::CompletionHandler<void ()(WGPUBufferMapAsyncStatus)> &&)::$_0,void,WGPUQueueWorkDoneStatus>::call(WTF *result, int a2)
{
  v3 = result;
  v4 = *(result + 1);
  if (*(v4 + 44) == 2)
  {
    *(v4 + 44) = 0;
    v5 = *(result + 2);
    v6 = *(result + 3) + v5;
    *(v4 + 48) = v5;
    *(v4 + 56) = v6;
    v9 = v11;
    v10 = 8;
    v12 = 1;
    WTF::Vector<WTF::Range<unsigned long>,8ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v4 + 64), &v9);
    *(v4 + 208) = v12;
    result = v9;
    if (v11 != v9)
    {
      if (v9)
      {
        v9 = 0;
        LODWORD(v10) = 0;
        result = WTF::fastFree(result, v7);
      }
    }
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      v8 = *(v3 + 4);
      *(v3 + 4) = 0;
      (*(*v8 + 16))(v8, 0);
      return (*(*v8 + 8))(v8);
    }

    if (a2 != 1)
    {
      return result;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v8 = *(v3 + 4);
      *(v3 + 4) = 0;
      (*(*v8 + 16))(v8, 2);
      return (*(*v8 + 8))(v8);
    }

    if (a2 == 3)
    {
      v8 = *(v3 + 4);
      *(v3 + 4) = 0;
      (*(*v8 + 16))(v8, 3);
      return (*(*v8 + 8))(v8);
    }

    if (a2 != 0x7FFFFFFF)
    {
      return result;
    }
  }

  v8 = *(v3 + 4);
  *(v3 + 4) = 0;
  (*(*v8 + 16))(v8, 1);
  return (*(*v8 + 8))(v8);
}

void sub_22567F0F8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11)
{
  if (v11 != a10)
  {
    if (a10)
    {
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>>,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>>,(WTF::ShouldValidateKey)1,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  if (*a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 == 0;
  }

  v14 = v9 && v4 == 0 && v5 == 0 && v6 == 0 && v7 == 0 && v8 == 0;
  if (v14 && !*(a2 + 56) && !*(a2 + 64) || v2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22567F2E0);
  }

  v15 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v16 = *(v15 - 8);
  v18 = WTF::PairHash<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>::hash(a2);
  for (i = 0; ; v18 = i + v20)
  {
    v20 = v18 & v16;
    result = v15 + 80 * (v18 & v16);
    v22 = *(result + 8);
    v23 = *(result + 16);
    if (*result == v2 && v22 == v3)
    {
      v22 = v3;
      if (v23 == v4)
      {
        v23 = v4;
        v22 = v3;
        if (*(result + 24) == v5)
        {
          v23 = v4;
          v22 = v3;
          if (*(result + 32) == v6)
          {
            v23 = v4;
            v22 = v3;
            if (*(result + 40) == v7)
            {
              v23 = v4;
              v22 = v3;
              if (*(result + 48) == v8)
              {
                v25 = *(result + 56) == *(a2 + 56) && *(result + 64) == *(a2 + 64);
                v23 = v4;
                v22 = v3;
                if (v25)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

    if (*result)
    {
      v26 = 0;
    }

    else
    {
      v26 = v22 == 0;
    }

    if (v26 && v23 == 0 && *(result + 24) == 0 && *(result + 32) == 0 && *(result + 40) == 0 && *(result + 48) == 0 && !*(result + 56) && *(result + 64) == 0)
    {
      return 0;
    }

    ++i;
  }

  return result;
}

unint64_t WTF::PairHash<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>::hash(uint64_t a1)
{
  v1 = *a1 + ~(*a1 << 15);
  v2 = (9 * (v1 ^ (v1 >> 10))) ^ ((9 * (v1 ^ (v1 >> 10))) >> 6);
  v3 = *(a1 + 8) + ~(*(a1 + 8) << 15);
  v4 = (9 * (v3 ^ (v3 >> 10))) ^ ((9 * (v3 ^ (v3 >> 10))) >> 6);
  v5 = *(a1 + 16) + ~(*(a1 + 16) << 15);
  v6 = (9 * (v5 ^ (v5 >> 10))) ^ ((9 * (v5 ^ (v5 >> 10))) >> 6);
  v7 = *(a1 + 24) + ~(*(a1 + 24) << 15);
  v8 = (9 * (v7 ^ (v7 >> 10))) ^ ((9 * (v7 ^ (v7 >> 10))) >> 6);
  v9 = *(a1 + 32) + ~(*(a1 + 32) << 15);
  v10 = (9 * (v9 ^ (v9 >> 10))) ^ ((9 * (v9 ^ (v9 >> 10))) >> 6);
  v11 = *(a1 + 40) + ~(*(a1 + 40) << 15);
  v12 = (9 * (v11 ^ (v11 >> 10))) ^ ((9 * (v11 ^ (v11 >> 10))) >> 6);
  v13 = *(a1 + 48) + ~(*(a1 + 48) << 15);
  v14 = (9 * (v13 ^ (v13 >> 10))) ^ ((9 * (v13 ^ (v13 >> 10))) >> 6);
  v15 = *(a1 + 56) + ~(*(a1 + 56) << 15);
  v16 = (9 * (v15 ^ (v15 >> 10))) ^ ((9 * (v15 ^ (v15 >> 10))) >> 6);
  v17 = (v16 + ~(v16 << 11)) ^ ((v16 + ~(v16 << 11)) >> 16);
  v18 = *(a1 + 64) + ~(*(a1 + 64) << 32);
  v19 = (v18 ^ (v18 >> 22)) + ~((v18 ^ (v18 >> 22)) << 13);
  v20 = (9 * (v19 ^ (v19 >> 8))) ^ ((9 * (v19 ^ (v19 >> 8))) >> 15);
  return (0xD7862706ELL * (277951225 * ((v2 + ~(v2 << 11)) ^ ((v2 + ~(v2 << 11)) >> 16)) + 95187966 * ((0xD7862706ELL * (277951225 * ((v4 + ~(v4 << 11)) ^ ((v4 + ~(v4 << 11)) >> 16)) + 95187966 * ((0xD7862706ELL * (277951225 * ((v6 + ~(v6 << 11)) ^ ((v6 + ~(v6 << 11)) >> 16)) + 95187966 * ((0xD7862706ELL * (277951225 * ((v8 + ~(v8 << 11)) ^ ((v8 + ~(v8 << 11)) >> 16)) + 95187966 * ((0xD7862706ELL * (277951225 * ((v10 + ~(v10 << 11)) ^ ((v10 + ~(v10 << 11)) >> 16)) + 95187966 * ((0xD7862706ELL * (277951225 * ((v12 + ~(v12 << 11)) ^ ((v12 + ~(v12 << 11)) >> 16)) + 95187966 * ((0xD7862706ELL * (277951225 * ((v14 + ~(v14 << 11)) ^ ((v14 + ~(v14 << 11)) >> 16)) + 95187966 * ((0xD7862706ELL * (277951225 * v17 + 95187966 * (((v20 + ~(v20 << 27)) >> 31) ^ (v20 + ~(v20 << 27))))) >> 4))) >> 4))) >> 4))) >> 4))) >> 4))) >> 4))) >> 4))) >> 4;
}

uint64_t WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,int>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a2 + 8) == 0;
  }

  v13 = v8 && *(a2 + 16) == 0 && *(a2 + 24) == 0 && *(a2 + 32) == 0 && *(a2 + 40) == 0 && *(a2 + 48) == 0;
  if (v13 && !*(a2 + 56) && !*(a2 + 64) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22567F7FCLL);
  }

  v14 = *a1;
  if (*a1 || (WTF::HashTable<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>>,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::FastMalloc>::rehash(a1, 8u, 0), (v14 = *a1) != 0))
  {
    v15 = *(v14 - 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = WTF::PairHash<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>::hash(a2);
  v17 = 0;
  v18 = *a2;
  v19 = 1;
  v20 = *(a2 + 64);
  while (1)
  {
    result = v16 & v15;
    v22 = v14 + 80 * result;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
    v27 = *(v22 + 32);
    v28 = *(v22 + 40);
    v29 = *(v22 + 48);
    v30 = !*v22 && v24 == 0;
    v31 = v30 && v25 == 0;
    v32 = v31 && v26 == 0;
    v33 = v32 && v27 == 0;
    v34 = v33 && v28 == 0;
    if (v34 && v29 == 0 && !*(v22 + 56) && *(v22 + 64) == 0)
    {
      break;
    }

    if (v23 == v18 && v24 == *(a2 + 8) && v25 == *(a2 + 16) && v26 == *(a2 + 24) && v27 == *(a2 + 32) && v28 == *(a2 + 40) && v29 == *(a2 + 48) && *(v22 + 56) == *(a2 + 56) && *(v22 + 64) == v20)
    {
      v44 = v14 + 80 * *(v14 - 4);
      *a4 = v22;
      *(a4 + 8) = v44;
      *(a4 + 16) = 0;
      *(v22 + 72) = *a3 != 0;
      return result;
    }

    if (v23 == -1)
    {
      v17 = (v14 + 80 * result);
    }

    v16 = v19 + result;
    ++v19;
  }

  if (v17)
  {
    v17[3] = 0u;
    v17[4] = 0u;
    v17[1] = 0u;
    v17[2] = 0u;
    *v17 = 0u;
    v14 = *a1;
    --*(*a1 - 16);
    v18 = *a2;
    v20 = *(a2 + 64);
    v22 = v17;
  }

  *v22 = v18;
  *(v22 + 8) = *(a2 + 8);
  *(v22 + 16) = *(a2 + 16);
  *(v22 + 24) = *(a2 + 24);
  *(v22 + 32) = *(a2 + 32);
  *(v22 + 40) = *(a2 + 40);
  *(v22 + 48) = *(a2 + 48);
  *(v22 + 56) = *(a2 + 56);
  *(v22 + 64) = v20;
  *(v22 + 72) = *a3 != 0;
  v45 = *(v14 - 16);
  v46 = *(v14 - 12) + 1;
  *(v14 - 12) = v46;
  v47 = (v45 + v46);
  v48 = *(v14 - 4);
  if (v48 > 0x400)
  {
    if (v48 > 2 * v47)
    {
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  if (3 * v48 <= 4 * v47)
  {
    if (!v48)
    {
      result = WTF::HashTable<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>>,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::FastMalloc>::rehash(a1, 8u, v22);
      v22 = result;
      v14 = *a1;
      if (!*a1)
      {
LABEL_87:
        LODWORD(v48) = 0;
        goto LABEL_91;
      }

LABEL_90:
      LODWORD(v48) = *(v14 - 4);
      goto LABEL_91;
    }

LABEL_89:
    result = WTF::HashTable<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>>,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::FastMalloc>::rehash(a1, v48 << (6 * v46 >= (2 * v48)), v22);
    v22 = result;
    v14 = *a1;
    if (!*a1)
    {
      goto LABEL_87;
    }

    goto LABEL_90;
  }

LABEL_91:
  *a4 = v22;
  *(a4 + 8) = v14 + 80 * v48;
  *(a4 + 16) = 1;
  return result;
}

uint64_t WTF::HashTable<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>>,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((80 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v6 + 80 * v11;
      if (*v13 != -1)
      {
        v14 = !*v13 && *(v13 + 8) == 0;
        v15 = v14 && *(v13 + 16) == 0;
        v16 = v15 && *(v13 + 24) == 0;
        v17 = v16 && *(v13 + 32) == 0;
        v18 = v17 && *(v13 + 40) == 0;
        v19 = v18 && *(v13 + 48) == 0;
        if (!v19 || (!*(v13 + 56) ? (v20 = *(v13 + 64) == 0) : (v20 = 0), !v20))
        {
          v21 = *a1;
          if (*a1)
          {
            v22 = *(v21 - 8);
          }

          else
          {
            v22 = 0;
          }

          v23 = WTF::PairHash<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>::hash(v6 + 80 * v11);
          for (i = 0; ; v23 = i + v25)
          {
            v25 = v23 & v22;
            v26 = v21 + 80 * (v23 & v22);
            v27 = !*v26 && *(v26 + 8) == 0;
            v28 = v27 && *(v26 + 16) == 0;
            v29 = v28 && *(v26 + 24) == 0;
            v30 = v29 && *(v26 + 32) == 0;
            v31 = v30 && *(v26 + 40) == 0;
            if (v31 && *(v26 + 48) == 0 && !*(v26 + 56) && *(v26 + 64) == 0)
            {
              break;
            }

            ++i;
          }

          *v26 = *v13;
          v34 = *(v13 + 16);
          v35 = *(v13 + 32);
          v36 = *(v13 + 64);
          *(v26 + 48) = *(v13 + 48);
          *(v26 + 64) = v36;
          *(v26 + 16) = v34;
          *(v26 + 32) = v35;
          if (v13 == a3)
          {
            v12 = v21 + 80 * v25;
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

void *WTF::Detail::CallableWrapper<WebGPU::Buffer::takeSlowIndexValidationPath(WebGPU::CommandBuffer &,unsigned int,unsigned int,unsigned int,unsigned int,MTLIndexType,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,void,objc_object  {objcproto16MTLCommandBuffer}* {__strong}>::~CallableWrapper(void *result, void *a2)
{
  *result = &unk_2838D2B00;
  v2 = result[4];
  result[4] = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        v8 = *v2;
        v9 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v8, a2);
        result = v9;
        goto LABEL_7;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 == 3)
    {
      v5 = result;
      WebGPU::Buffer::~Buffer(v2);
      bmalloc::api::tzoneFree(v6, v7);
      result = v5;
    }
  }

LABEL_7:
  v10 = result[1];
  result[1] = 0;
  if (v10)
  {
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      v11 = result;
      WebGPU::Queue::~Queue(v10);
      bmalloc::api::tzoneFree(v12, v13);
      return v11;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Buffer::takeSlowIndexValidationPath(WebGPU::CommandBuffer &,unsigned int,unsigned int,unsigned int,unsigned int,MTLIndexType,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,void,objc_object  {objcproto16MTLCommandBuffer}* {__strong}>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D2B00;
  v2 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        v8 = *v2;
        v9 = a1;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v8, a2);
        a1 = v9;
        goto LABEL_7;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 == 3)
    {
      v5 = a1;
      WebGPU::Buffer::~Buffer(v2);
      bmalloc::api::tzoneFree(v6, v7);
      a1 = v5;
    }
  }

LABEL_7:
  v10 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    v12 = a1;
    WebGPU::Queue::~Queue(v10);
    bmalloc::api::tzoneFree(v13, v14);
    a1 = v12;
  }

  return WTF::fastFree(a1, a2);
}

void WTF::Detail::CallableWrapper<WebGPU::Buffer::takeSlowIndexValidationPath(WebGPU::CommandBuffer &,unsigned int,unsigned int,unsigned int,unsigned int,MTLIndexType,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,void,objc_object  {objcproto16MTLCommandBuffer}* {__strong}>::call(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 waitUntilCompleted];
  WebGPU::Queue::writeBuffer(*(a1 + 8), *(a1 + 32), 0, *(a1 + 16), *(a1 + 24));
}

void *WTF::Detail::CallableWrapper<WebGPU::Buffer::takeSlowIndirectValidationPath(WebGPU::CommandBuffer &,unsigned long long,unsigned int,unsigned int)::$_0,void,objc_object  {objcproto16MTLCommandBuffer}* {__strong}>::~CallableWrapper(void *result, void *a2)
{
  *result = &unk_2838D2B28;
  v2 = result[4];
  result[4] = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        v8 = *v2;
        v9 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v8, a2);
        result = v9;
        goto LABEL_7;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 == 3)
    {
      v5 = result;
      WebGPU::Buffer::~Buffer(v2);
      bmalloc::api::tzoneFree(v6, v7);
      result = v5;
    }
  }

LABEL_7:
  v10 = result[1];
  result[1] = 0;
  if (v10)
  {
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      v11 = result;
      WebGPU::Queue::~Queue(v10);
      bmalloc::api::tzoneFree(v12, v13);
      return v11;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Buffer::takeSlowIndirectValidationPath(WebGPU::CommandBuffer &,unsigned long long,unsigned int,unsigned int)::$_0,void,objc_object  {objcproto16MTLCommandBuffer}* {__strong}>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D2B28;
  v2 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        v8 = *v2;
        v9 = a1;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v8, a2);
        a1 = v9;
        goto LABEL_7;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 == 3)
    {
      v5 = a1;
      WebGPU::Buffer::~Buffer(v2);
      bmalloc::api::tzoneFree(v6, v7);
      a1 = v5;
    }
  }

LABEL_7:
  v10 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    v12 = a1;
    WebGPU::Queue::~Queue(v10);
    bmalloc::api::tzoneFree(v13, v14);
    a1 = v12;
  }

  return WTF::fastFree(a1, a2);
}

void WTF::Detail::CallableWrapper<WebGPU::Buffer::takeSlowIndirectValidationPath(WebGPU::CommandBuffer &,unsigned long long,unsigned int,unsigned int)::$_0,void,objc_object  {objcproto16MTLCommandBuffer}* {__strong}>::call(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 waitUntilCompleted];
  WebGPU::Queue::writeBuffer(*(a1 + 8), *(a1 + 32), 0, *(a1 + 16), *(a1 + 24));
}

void *WTF::Detail::CallableWrapper<WebGPU::Buffer::skippedDrawIndirectValidation(WebGPU::CommandEncoder &,unsigned long long,unsigned int,unsigned int)::$_0,BOOL,WebGPU::CommandBuffer &,WebGPU::CommandEncoder &>::~CallableWrapper(void *result, void *a2)
{
  *result = &unk_2838D2B50;
  v2 = result[2];
  result[2] = 0;
  if (v2)
  {
    v3 = 0;
    atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      v6 = result;
      MEMORY[0x22AA683C0](v2);
      result = v6;
      v7 = *(v2 + 16) - 1;
      *(v2 + 16) = v7;
      if (v7)
      {
LABEL_4:
        v5 = 1;
        atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
        if (v5 != 1)
        {
          v11 = result;
          WTF::Lock::unlockSlow(v2);
          return v11;
        }

        return result;
      }
    }

    else
    {
      v4 = *(v2 + 16) - 1;
      *(v2 + 16) = v4;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v8 = *(v2 + 8);
    v9 = 1;
    atomic_compare_exchange_strong_explicit(v2, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 == 1)
    {
      if (v8)
      {
        return result;
      }
    }

    else
    {
      v12 = result;
      WTF::Lock::unlockSlow(v2);
      result = v12;
      if (v8)
      {
        return result;
      }
    }

    v10 = result;
    WTF::fastFree(v2, a2);
    return v10;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Buffer::skippedDrawIndirectValidation(WebGPU::CommandEncoder &,unsigned long long,unsigned int,unsigned int)::$_0,BOOL,WebGPU::CommandBuffer &,WebGPU::CommandEncoder &>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D2B50;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = 0;
  atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    v7 = a1;
    MEMORY[0x22AA683C0](v2);
    a1 = v7;
    v8 = *(v2 + 16) - 1;
    *(v2 + 16) = v8;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_9:
    v9 = *(v2 + 8);
    v10 = 1;
    atomic_compare_exchange_strong_explicit(v2, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = a1;
      WTF::Lock::unlockSlow(v2);
      a1 = v13;
      if (!v9)
      {
LABEL_11:
        v11 = a1;
        WTF::fastFree(v2, a2);
        a1 = v11;

        return WTF::fastFree(a1, a2);
      }
    }

LABEL_5:

    return WTF::fastFree(a1, a2);
  }

  v4 = *(v2 + 16) - 1;
  *(v2 + 16) = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  v12 = a1;
  WTF::Lock::unlockSlow(v2);
  a1 = v12;

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Buffer::skippedDrawIndirectValidation(WebGPU::CommandEncoder &,unsigned long long,unsigned int,unsigned int)::$_0,BOOL,WebGPU::CommandBuffer &,WebGPU::CommandEncoder &>::call(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return 1;
  }

  v7 = 0;
  v8 = a1[1];
  atomic_compare_exchange_strong_explicit(v3, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (!v7)
  {
    if (*(v3 + 24))
    {
      goto LABEL_4;
    }

LABEL_18:
    v8 = 0;
    v18 = 1;
    atomic_compare_exchange_strong_explicit(v3, &v18, 0, memory_order_release, memory_order_relaxed);
    if (v18 == 1)
    {
LABEL_5:
      if (v8)
      {
        goto LABEL_6;
      }

      return 1;
    }

    goto LABEL_19;
  }

  MEMORY[0x22AA683C0](v3);
  if (!*(v3 + 24))
  {
    goto LABEL_18;
  }

LABEL_4:
  ++*(v3 + 8);
  v9 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 == 1)
  {
    goto LABEL_5;
  }

LABEL_19:
  WTF::Lock::unlockSlow(v3);
  if (!v8)
  {
    return 1;
  }

  do
  {
LABEL_6:
    v10 = *v8;
    if ((*v8 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v8, a2);
      v14 = a1[2];
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_16:
      v16 = 0;
      goto LABEL_23;
    }

    v11 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Buffer::~Buffer(v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  v14 = a1[2];
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_11:
  v15 = 0;
  v16 = a1[1];
  atomic_compare_exchange_strong_explicit(v14, &v15, 1u, memory_order_acquire, memory_order_acquire);
  if (v15)
  {
    MEMORY[0x22AA683C0](v14);
    if (*(v14 + 24))
    {
      goto LABEL_13;
    }

LABEL_22:
    v16 = 0;
    v19 = 1;
    atomic_compare_exchange_strong_explicit(v14, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 != 1)
    {
      goto LABEL_86;
    }

    goto LABEL_23;
  }

  if (!*(v14 + 24))
  {
    goto LABEL_22;
  }

LABEL_13:
  ++*(v14 + 8);
  v17 = 1;
  atomic_compare_exchange_strong_explicit(v14, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 == 1)
  {
    goto LABEL_23;
  }

LABEL_86:
  WTF::Lock::unlockSlow(v14);
LABEL_23:
  v82 = *(a3 + 200);
  WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((v16 + 312), &v82);
  if ((*(v16 + 320) & 1) == 0)
  {
    do
    {
      v26 = *v16;
      if ((*v16 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v16, v20);
        return 1;
      }

      v27 = *v16;
      atomic_compare_exchange_strong_explicit(v16, &v27, v26 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v27 != v26);
    if (v26 == 3)
    {
      WebGPU::Buffer::~Buffer(v16);
      bmalloc::api::tzoneFree(v28, v29);
    }

    return 1;
  }

  v21 = a1[3];
  v81 = a1[4];
  WTFLogAlways();
  v23 = *(v16 + 280);
  while (1)
  {
    v24 = *v23;
    if ((*v23 & 1) == 0)
    {
      break;
    }

    v25 = *v23;
    atomic_compare_exchange_strong_explicit(v23, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v24)
    {
      goto LABEL_37;
    }
  }

  v30 = 0;
  v31 = *v23;
  v32 = 1;
  atomic_compare_exchange_strong_explicit(*v23, &v30, 1u, memory_order_acquire, memory_order_acquire);
  if (v30)
  {
    MEMORY[0x22AA683C0](v31);
  }

  ++*(v31 + 8);
  atomic_compare_exchange_strong_explicit(v31, &v32, 0, memory_order_release, memory_order_relaxed);
  if (v32 != 1)
  {
    WTF::Lock::unlockSlow(v31);
  }

LABEL_37:
  v33 = v23[2];
  atomic_fetch_add(v33, 1u);
  v88 = v33;
  do
  {
    v34 = *v23;
    if ((*v23 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v23, v22);
      goto LABEL_43;
    }

    v35 = *v23;
    atomic_compare_exchange_strong_explicit(v23, &v35, v34 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v35 != v34);
  if (v34 == 3)
  {
    WebGPU::Device::~Device(v23, v22);
    bmalloc::api::tzoneFree(v36, v37);
  }

LABEL_43:
  WebGPU::Queue::waitForAllCommitedWorkToComplete(v33);
  v38 = *(v16 + 8);
  v39 = [v38 contents];
  v40 = [v38 length];

  if (v40 < v21)
  {
    __break(1u);
    goto LABEL_88;
  }

  if ([v38 length] <= v21)
  {

    goto LABEL_59;
  }

  v42 = [v38 length];

  if (!v39 || v42 - v21 < 0x10 || (v43 = v39 + v21, v44 = vand_s8(vcgt_u32(v81, *(v39 + v21 + 8)), vcge_u32(v81, vadd_s32(*(v39 + v21), *(v39 + v21 + 8)))), (vand_s8(v44, vdup_lane_s32(v44, 1)).u8[0] & 1) != 0))
  {
LABEL_59:
    v88 = 0;
    if (!v33)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v45 = *(v16 + 8);
  v46 = [v45 contents];
  v47 = [v45 length];

  v86 = 0;
  v87 = 0;
  v48 = *v43;
  if (*v43 >= v81.i32[0])
  {
    v48 = v81.i32[0];
  }

  LODWORD(v86) = v48;
  v49 = *(v43 + 4);
  if (v49 >= v81.i32[1])
  {
    v49 = v81.u32[1];
  }

  HIDWORD(v86) = v49;
  v87 = *(v43 + 8);
  WebGPU::Queue::writeBuffer(v33, *(v16 + 8), v21, &v86, 0x10uLL);
  v50 = *(v33 + 24);
  if (v50)
  {
    WebGPU::Queue::endEncoding(v33, v50, *(v33 + 16));
    WebGPU::Queue::commitMTLCommandBuffer(v33, *(v33 + 16));
    v51 = *(v33 + 24);
    *(v33 + 24) = 0;

    v52 = *(v33 + 16);
    *(v33 + 16) = 0;
  }

  atomic_fetch_add(v33, 1u);
  v82 = v33;
  *&v83 = v46;
  *(&v83 + 1) = v47;
  while (1)
  {
    v53 = *v16;
    if ((*v16 & 1) == 0)
    {
      break;
    }

    v54 = *v16;
    atomic_compare_exchange_strong_explicit(v16, &v54, v53 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v54 == v53)
    {
      goto LABEL_71;
    }
  }

  v61 = 0;
  v62 = *v16;
  v63 = 1;
  atomic_compare_exchange_strong_explicit(*v16, &v61, 1u, memory_order_acquire, memory_order_acquire);
  if (v61)
  {
    MEMORY[0x22AA683C0](v62);
  }

  ++*(v62 + 8);
  atomic_compare_exchange_strong_explicit(v62, &v63, 0, memory_order_release, memory_order_relaxed);
  if (v63 != 1)
  {
    WTF::Lock::unlockSlow(v62);
  }

LABEL_71:
  v84 = v16;
  v64 = WTF::fastMalloc(0x28);
  *v64 = &unk_2838D2B28;
  *(v64 + 8) = v82;
  *(v64 + 16) = v83;
  v66 = v84;
  v82 = 0;
  v84 = 0;
  v85 = v64;
  *(v64 + 32) = v66;
  v67 = *(a2 + 84);
  if (v67 == *(a2 + 80))
  {
    v68 = WTF::Vector<WTF::Function<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 72, v67 + 1, &v85);
    v67 = *(a2 + 84);
    v69 = (*(a2 + 72) + 8 * v67);
    v64 = *v68;
  }

  else
  {
    v69 = (*(a2 + 72) + 8 * v67);
    v68 = &v85;
  }

  *v68 = 0;
  *v69 = v64;
  *(a2 + 84) = v67 + 1;
  v70 = v85;
  v85 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  v71 = v84;
  v84 = 0;
  if (v71)
  {
    do
    {
      v72 = *v71;
      if ((*v71 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v71, v65);
        goto LABEL_82;
      }

      v73 = *v71;
      atomic_compare_exchange_strong_explicit(v71, &v73, v72 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v73 != v72);
    if (v72 == 3)
    {
      WebGPU::Buffer::~Buffer(v71);
      bmalloc::api::tzoneFree(v74, v75);
    }
  }

LABEL_82:
  v76 = v82;
  v82 = 0;
  if (!v76 || atomic_fetch_add(v76, 0xFFFFFFFF) != 1)
  {
    v33 = v88;
    v88 = 0;
    if (!v33)
    {
      goto LABEL_61;
    }

LABEL_60:
    add = atomic_fetch_add(v33, 0xFFFFFFFF);
    if (add != 1)
    {
      goto LABEL_61;
    }

LABEL_88:
    atomic_store(add, v33);
    WebGPU::Queue::~Queue(v33);
    bmalloc::api::tzoneFree(v77, v78);
    goto LABEL_61;
  }

  atomic_store(1u, v76);
  WebGPU::Queue::~Queue(v76);
  bmalloc::api::tzoneFree(v79, v80);
  v33 = v88;
  v88 = 0;
  if (v33)
  {
    goto LABEL_60;
  }

LABEL_61:
  v86 = v16;
  v55 = WTF::fastMalloc(0x10);
  *v55 = &unk_2838D2B78;
  *(v55 + 1) = v16;
  v86 = 0;
  v82 = v55;
  v56 = *(a2 + 84);
  if (v56 == *(a2 + 80))
  {
    v57 = WTF::Vector<WTF::Function<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 72, v56 + 1, &v82);
    v56 = *(a2 + 84);
    v58 = (*(a2 + 72) + 8 * v56);
    v55 = *v57;
  }

  else
  {
    v58 = (*(a2 + 72) + 8 * v56);
    v57 = &v82;
  }

  *v57 = 0;
  *v58 = v55;
  *(a2 + 84) = v56 + 1;
  v59 = v82;
  v82 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  return 1;
}

void sub_225680774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, atomic_uint *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va1);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Buffer,(WTF::DestructionThread)0>::deref(v3, v5);
  _Unwind_Resume(a1);
}

uint64_t **WebGPU::Buffer::skippedDrawIndirectValidation(WebGPU::CommandEncoder &,unsigned long long,unsigned int,unsigned int)::$_0::operator() const(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)::{lambda(objc_object  {objcproto16MTLCommandBuffer}*)#1}::~objc_object(uint64_t **a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v3, a2);
        return a1;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      WebGPU::Buffer::~Buffer(v3);
      bmalloc::api::tzoneFree(v6, v7);
    }
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebGPU::Buffer::skippedDrawIndirectValidation(WebGPU::CommandEncoder &,unsigned long long,unsigned int,unsigned int)::$_0::operator() const(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)::{lambda(objc_object  {objcproto16MTLCommandBuffer}*)#1},void,objc_object  {objcproto16MTLCommandBuffer} {__strong}>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_2838D2B78;
  a1[1] = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v3, a2);
        return a1;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      WebGPU::Buffer::~Buffer(v3);
      bmalloc::api::tzoneFree(v6, v7);
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Buffer::skippedDrawIndirectValidation(WebGPU::CommandEncoder &,unsigned long long,unsigned int,unsigned int)::$_0::operator() const(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)::{lambda(objc_object  {objcproto16MTLCommandBuffer}*)#1},void,objc_object  {objcproto16MTLCommandBuffer} {__strong}>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_2838D2B78;
  *(this + 1) = 0;
  if (v3)
  {
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        if (v4 == 3)
        {
          WebGPU::Buffer::~Buffer(v3);
          bmalloc::api::tzoneFree(v6, v7);
        }

        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v3, a2);
    v8 = this;
  }

  else
  {
LABEL_6:
    v8 = this;
  }

  return WTF::fastFree(v8, a2);
}

uint64_t *WTF::HashMap<unsigned long long,BOOL,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned long long,BOOL>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (*a2 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225680C28);
  }

  v5 = result;
  v7 = *result;
  if (!*result)
  {
    v8 = a2;
    v9 = a3;
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,BOOL>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,BOOL,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(result, 8u, 0);
    a2 = v8;
    a3 = v9;
    v7 = *v5;
    v4 = *v8;
  }

  v10 = *(v7 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = v7 + 16 * v14;
  v16 = *v15;
  if (*v15 == -1)
  {
LABEL_13:
    v19 = *(v7 - 16);
    v17 = v15;
  }

  else
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v24 = v7 + 16 * *(v7 - 4);
        *a4 = v15;
        *(a4 + 8) = v24;
        *(a4 + 16) = 0;
        *(v15 + 8) = *a3;
        return result;
      }

      if (v16 == -2)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = v7 + 16 * v14;
      v16 = *v15;
      ++v18;
    }

    while (*v15 != -1);
    if (!v17)
    {
      goto LABEL_13;
    }

    *v17 = -1;
    *(v17 + 8) = 0;
    v19 = *(v7 - 16) - 1;
    *(v7 - 16) = v19;
    v4 = *a2;
  }

  *v17 = v4;
  *(v17 + 8) = *a3;
  v20 = *(v7 - 12) + 1;
  *(v7 - 12) = v20;
  v21 = (v20 + v19);
  v22 = *(v7 - 4);
  if (v22 <= 0x400)
  {
    if (3 * v22 > 4 * v21)
    {
      goto LABEL_25;
    }

LABEL_18:
    if (v22)
    {
      v23 = v22 << (6 * v20 >= (2 * v22));
    }

    else
    {
      v23 = 8;
    }

    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,BOOL>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,BOOL,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v5, v23, v17);
    v17 = result;
    v7 = *v5;
    if (*v5)
    {
      v22 = *(v7 - 4);
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_25;
  }

  if (v22 <= 2 * v21)
  {
    goto LABEL_18;
  }

LABEL_25:
  *a4 = v17;
  *(a4 + 8) = v7 + 16 * v22;
  *(a4 + 16) = 1;
  return result;
}

_OWORD *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,BOOL>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,BOOL,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (a2 == 1)
  {
    v12 = 0;
LABEL_10:
    v15 = a2 - v12;
    v16 = &v9[4 * v12 + 6];
    do
    {
      *(v16 - 1) = -1;
      *v16 = 0;
      v16 += 16;
      --v15;
    }

    while (v15);
    goto LABEL_12;
  }

  v12 = a2 & 0xFFFFFFFE;
  v13 = v9 + 10;
  v14 = v12;
  do
  {
    *(v13 - 3) = -1;
    *(v13 - 1) = -1;
    *(v13 - 16) = 0;
    *v13 = 0;
    v13 += 32;
    v14 -= 2;
  }

  while (v14);
  if (v12 != a2)
  {
    goto LABEL_10;
  }

LABEL_12:
  *a1 = v11;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (v6 + 16 * v17);
      if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = *a1;
        if (*a1)
        {
          v21 = *(v20 - 8);
        }

        else
        {
          v21 = 0;
        }

        v22 = (*v19 + ~(*v19 << 32)) ^ ((*v19 + ~(*v19 << 32)) >> 22);
        v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
        v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
        v25 = v21 & ((v24 >> 31) ^ v24);
        v26 = 1;
        do
        {
          v27 = v25;
          v28 = *(v20 + 16 * v25);
          v25 = (v25 + v26++) & v21;
        }

        while (v28 != -1);
        v29 = (v20 + 16 * v27);
        *v29 = *v19;
        if (v19 == a3)
        {
          v18 = v29;
        }
      }

      ++v17;
    }

    while (v17 != v7);
  }

  else
  {
    v18 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v18;
}

void *WTF::Detail::CallableWrapper<WebGPU::Buffer::indirectBufferInvalidated(WebGPU::CommandEncoder &)::$_0,BOOL,WebGPU::CommandBuffer &,WebGPU::CommandEncoder &>::~CallableWrapper(void *result, void *a2)
{
  *result = &unk_2838D2BA0;
  v2 = result[3];
  result[3] = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v7 = result;
    WTF::fastFree(v2, a2);
    result = v7;
    v3 = v7[2];
    result[2] = 0;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    v3 = result[2];
    result[2] = 0;
    if (!v3)
    {
      return result;
    }
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (!v4)
  {
    v5 = *(v3 + 16) - 1;
    *(v3 + 16) = v5;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_11:
    v10 = *(v3 + 8);
    v11 = 1;
    atomic_compare_exchange_strong_explicit(v3, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 == 1)
    {
      if (v10)
      {
        return result;
      }
    }

    else
    {
      v14 = result;
      WTF::Lock::unlockSlow(v3);
      result = v14;
      if (v10)
      {
        return result;
      }
    }

    v12 = result;
    WTF::fastFree(v3, a2);
    return v12;
  }

  v8 = result;
  MEMORY[0x22AA683C0](v3);
  result = v8;
  v9 = *(v3 + 16) - 1;
  *(v3 + 16) = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    v13 = result;
    WTF::Lock::unlockSlow(v3);
    return v13;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Buffer::indirectBufferInvalidated(WebGPU::CommandEncoder &)::$_0,BOOL,WebGPU::CommandBuffer &,WebGPU::CommandEncoder &>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D2BA0;
  v2 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v8 = a1;
    WTF::fastFree(v2, a2);
    a1 = v8;
    v3 = *(v8 + 2);
    *(a1 + 2) = 0;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 2);
    *(a1 + 2) = 0;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v9 = a1;
    MEMORY[0x22AA683C0](v3);
    a1 = v9;
    v10 = *(v3 + 16) - 1;
    *(v3 + 16) = v10;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_13:
    v11 = *(v3 + 8);
    v12 = 1;
    atomic_compare_exchange_strong_explicit(v3, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 == 1)
    {
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = a1;
      WTF::Lock::unlockSlow(v3);
      a1 = v15;
      if (!v11)
      {
LABEL_15:
        v13 = a1;
        WTF::fastFree(v3, a2);
        a1 = v13;

        return WTF::fastFree(a1, a2);
      }
    }

LABEL_7:

    return WTF::fastFree(a1, a2);
  }

  v5 = *(v3 + 16) - 1;
  *(v3 + 16) = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_6:
  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    goto LABEL_7;
  }

  v14 = a1;
  WTF::Lock::unlockSlow(v3);
  a1 = v14;

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Buffer::indirectBufferInvalidated(WebGPU::CommandEncoder &)::$_0,BOOL,WebGPU::CommandBuffer &,WebGPU::CommandEncoder &>::call(void *a1, void *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1[1];
  atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    v30 = a1;
    MEMORY[0x22AA683C0](v2);
    a1 = v30;
    if (*(v2 + 24))
    {
LABEL_4:
      ++*(v2 + 8);
      v5 = 1;
      atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
      if (v5 == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_37;
    }
  }

  else if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  v4 = 0;
  v31 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 == 1)
  {
LABEL_5:
    if (v4)
    {
      goto LABEL_6;
    }

    return 1;
  }

LABEL_37:
  v32 = a1;
  WTF::Lock::unlockSlow(v2);
  a1 = v32;
  if (!v4)
  {
    return 1;
  }

LABEL_6:
  v6 = a1[3];
  if (v6)
  {
    v7 = *(v6 + 8) == 0;
  }

  else
  {
    v7 = 1;
  }

  do
  {
    v8 = *v4;
    if ((*v4 & 1) == 0)
    {
      v13 = *v4;
      v14 = a1;
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v13, a2);
      a1 = v14;
      if (v7)
      {
        return 1;
      }

      goto LABEL_16;
    }

    v9 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v9 != v8);
  if (v8 == 3)
  {
    v10 = a1;
    WebGPU::Buffer::~Buffer(v4);
    bmalloc::api::tzoneFree(v11, v12);
    a1 = v10;
  }

  if (v7)
  {
    return 1;
  }

LABEL_16:
  v15 = a1[2];
  if (v15)
  {
    v16 = 0;
    v17 = a1[1];
    atomic_compare_exchange_strong_explicit(v15, &v16, 1u, memory_order_acquire, memory_order_acquire);
    if (v16)
    {
      v33 = a1;
      MEMORY[0x22AA683C0](v15);
      a1 = v33;
      if (*(v15 + 24))
      {
LABEL_19:
        ++*(v15 + 8);
        v18 = 1;
        atomic_compare_exchange_strong_explicit(v15, &v18, 0, memory_order_release, memory_order_relaxed);
        if (v18 == 1)
        {
          goto LABEL_20;
        }

LABEL_41:
        v35 = a1;
        WTF::Lock::unlockSlow(v15);
        *(v17 + 224) = 0;
        *(v17 + 220) = 0;
        v19 = v35[3];
        if (!v19)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }
    }

    else if (*(v15 + 24))
    {
      goto LABEL_19;
    }

    v17 = 0;
    v34 = 1;
    atomic_compare_exchange_strong_explicit(v15, &v34, 0, memory_order_release, memory_order_relaxed);
    if (v34 == 1)
    {
LABEL_20:
      *(v17 + 224) = 0;
      *(v17 + 220) = 0;
      v19 = a1[3];
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_24:
      v20 = 0;
      goto LABEL_25;
    }

    goto LABEL_41;
  }

  v17 = 0;
  MEMORY[0xE0] = 0;
  MEMORY[0xDC] = 0;
  v19 = a1[3];
  if (!v19)
  {
    goto LABEL_24;
  }

LABEL_21:
  v20 = *(v19 + 8);
  if (!v20)
  {
LABEL_25:
    v21 = 1;
    goto LABEL_26;
  }

  v21 = 0;
  ++*(v20 + 4);
LABEL_26:
  WebGPU::Buffer::indirectBufferInvalidated(v17, v20);
  if ((v21 & 1) == 0)
  {
    if (*(v20 + 4) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(v20);
      bmalloc::api::tzoneFree(v23, v24);
    }

    else
    {
      --*(v20 + 4);
    }
  }

  do
  {
    v25 = *v17;
    if ((*v17 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v17, v22);
      return 1;
    }

    v26 = *v17;
    atomic_compare_exchange_strong_explicit(v17, &v26, v25 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v26 != v25);
  if (v25 != 3)
  {
    return 1;
  }

  WebGPU::Buffer::~Buffer(v17);
  bmalloc::api::tzoneFree(v27, v28);
  return 1;
}

void sub_22568136C(_Unwind_Exception *a1, void *a2)
{
  v5 = v4;
  if ((v5 & 1) == 0)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::CommandEncoder>::deref(v3 + 8);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Buffer,(WTF::DestructionThread)0>::deref(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t WebGPU::CommandBuffer::CommandBuffer(uint64_t a1, void *a2, atomic_ullong *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v13 = a2;
  v14 = a4;
  *a1 = 3;
  v15 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  while (1)
  {
    v16 = *a3;
    if ((*a3 & 1) == 0)
    {
      break;
    }

    v17 = *a3;
    atomic_compare_exchange_strong_explicit(a3, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v16)
    {
      goto LABEL_9;
    }
  }

  v18 = 0;
  v19 = *a3;
  v20 = 1;
  atomic_compare_exchange_strong_explicit(*a3, &v18, 1u, memory_order_acquire, memory_order_acquire);
  if (v18)
  {
    MEMORY[0x22AA683C0](v19);
  }

  ++*(v19 + 8);
  atomic_compare_exchange_strong_explicit(v19, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
  {
    WTF::Lock::unlockSlow(v19);
  }

LABEL_9:
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v14;
  v21 = *a6;
  *a6 = 0;
  *(a1 + 56) = v21;
  LODWORD(v21) = *(a6 + 2);
  *(a6 + 2) = 0;
  *(a1 + 64) = v21;
  LODWORD(v21) = *(a6 + 3);
  *(a6 + 3) = 0;
  *(a1 + 68) = v21;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  *(a1 + 96) = 0;
  *(a1 + 98) = 0;
  ++*(a7 + 16);
  *(a1 + 104) = a7;

  return a1;
}

uint64_t WTF::Vector<WTF::Function<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WTF::Function<BOOL ()(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WebGPU::CommandBuffer::retainTimestampsForOneUpdateLoop(WebGPU::CommandBuffer *this)
{
  v1 = *(this + 13);
  if (v1)
  {
    ++*(v1 + 16);
    v2 = *(*(this + 4) + 16);
    atomic_fetch_add(v2, 1u);
    WebGPU::Queue::retainTimestampsForOneUpdate(v2, *(v1 + 120));
    if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      WebGPU::Queue::~Queue(v2);
      bmalloc::api::tzoneFree(v4, v5);
      v3 = *(v1 + 16) - 1;
      if (*(v1 + 16) != 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = *(v1 + 16) - 1;
      if (*(v1 + 16) != 1)
      {
LABEL_5:
        *(v1 + 16) = v3;
        return;
      }
    }

    WebGPU::CommandEncoder::~CommandEncoder(v1);

    bmalloc::api::tzoneFree(v6, v7);
  }
}

void sub_225681708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::CommandEncoder>::deref(v2 + 8);
  _Unwind_Resume(a1);
}

void WebGPU::CommandBuffer::~CommandBuffer(void **this)
{
  WebGPU::CommandBuffer::retainTimestampsForOneUpdateLoop(this);
  v2 = *(this[4] + 2);
  atomic_fetch_add(v2, 1u);
  WebGPU::Queue::removeMTLCommandBuffer(v2, this[1]);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    WebGPU::Queue::~Queue(v2);
    bmalloc::api::tzoneFree(v23, v24);
  }

  v3 = this[1];
  this[1] = 0;

  v4 = this[2];
  this[2] = 0;

  v6 = this[13];
  this[13] = 0;
  if (!v6)
  {
LABEL_7:
    v7 = *(this + 21);
    v8 = this[9];
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  if (*(v6 + 4) != 1)
  {
    --*(v6 + 4);
    goto LABEL_7;
  }

  WebGPU::CommandEncoder::~CommandEncoder(v6);
  bmalloc::api::tzoneFree(v19, v20);
  v7 = *(this + 21);
  v8 = this[9];
  if (!v7)
  {
LABEL_8:
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_24:
  v21 = 8 * v7;
  do
  {
    v22 = *v8;
    *v8 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v8 = (v8 + 8);
    v21 -= 8;
  }

  while (v21);
  v8 = this[9];
  if (v8)
  {
LABEL_9:
    this[9] = 0;
    *(this + 20) = 0;
    WTF::fastFree(v8, v5);
  }

LABEL_10:
  v9 = *(this + 17);
  v10 = this[7];
  if (v9)
  {
    v11 = 8 * v9;
    do
    {
      v12 = *v10;
      *v10 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      v10 = (v10 + 8);
      v11 -= 8;
    }

    while (v11);
    v10 = this[7];
  }

  if (v10)
  {
    this[7] = 0;
    *(this + 16) = 0;
    WTF::fastFree(v10, v5);
  }

  v14 = this[4];
  this[4] = 0;
  if (v14)
  {
    do
    {
      v15 = *v14;
      if ((*v14 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v14, v13);
        goto LABEL_31;
      }

      v16 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v16, v15 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v16 != v15);
    if (v15 == 3)
    {
      WebGPU::Device::~Device(v14, v13);
      bmalloc::api::tzoneFree(v17, v18);
    }
  }

LABEL_31:
}

void sub_225681934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  v5 = *(v2 + 104);
  *(v2 + 104) = 0;
  if (v5)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::CommandEncoder>::deref(v5 + 8);
  }

  WTF::Vector<WTF::Function<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 72, v4);
  WTF::Vector<WTF::Function<BOOL ()(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 56, v6);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v2 + 32), v7);
  _Unwind_Resume(a1);
}

void WebGPU::CommandBuffer::makeInvalid(WebGPU::CommandBuffer *this, NSString *a2)
{
  v22 = a2;
  v4 = *(this + 1);
  if (!v4 || [v4 status] > 1)
  {
    goto LABEL_29;
  }

  objc_storeStrong(this + 5, a2);
  v5 = *(*(this + 4) + 16);
  atomic_fetch_add(v5, 1u);
  WebGPU::Queue::removeMTLCommandBuffer(v5, *(this + 1));
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WebGPU::Queue::~Queue(v5);
    bmalloc::api::tzoneFree(v20, v21);
  }

  WebGPU::CommandBuffer::retainTimestampsForOneUpdateLoop(this);
  v6 = *(this + 1);
  *(this + 1) = 0;

  v7 = *(this + 2);
  *(this + 2) = 0;

  v9 = *(this + 13);
  *(this + 13) = 0;
  if (v9)
  {
    if (*(v9 + 4) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(v9);
      bmalloc::api::tzoneFree(v10, v11);
      if (!*(this + 16))
      {
        goto LABEL_20;
      }

LABEL_12:
      v12 = *(this + 17);
      v13 = *(this + 7);
      if (v12)
      {
        v14 = 8 * v12;
        do
        {
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          v13 = (v13 + 8);
          v14 -= 8;
        }

        while (v14);
        *(this + 17) = 0;
        v13 = *(this + 7);
      }

      if (v13)
      {
        *(this + 7) = 0;
        *(this + 16) = 0;
        WTF::fastFree(v13, v8);
      }

      goto LABEL_20;
    }

    --*(v9 + 4);
  }

  if (*(this + 16))
  {
    goto LABEL_12;
  }

LABEL_20:
  if (*(this + 20))
  {
    v16 = *(this + 21);
    v17 = *(this + 9);
    if (v16)
    {
      v18 = 8 * v16;
      do
      {
        v19 = *v17;
        *v17 = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        v17 = (v17 + 8);
        v18 -= 8;
      }

      while (v18);
      *(this + 21) = 0;
      v17 = *(this + 9);
    }

    if (v17)
    {
      *(this + 9) = 0;
      *(this + 20) = 0;
      WTF::fastFree(v17, v8);
    }
  }

LABEL_29:
}

void sub_225681B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, atomic_uint *a10)
{
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a10);

  _Unwind_Resume(a1);
}

void WebGPU::CommandBuffer::makeInvalidDueToCommit(WebGPU::CommandBuffer *this, NSString *a2)
{
  v4 = a2;
  v5 = *(this + 6);
  if (v5)
  {
    [*(this + 1) encodeSignalEvent:v5 value:*(this + 11)];
  }

  objc_storeStrong(this + 2, *(this + 1));
  v6 = *(this + 1);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3321888768;
  v30[2] = ___ZN6WebGPU13CommandBuffer22makeInvalidDueToCommitEP8NSString_block_invoke;
  v30[3] = &__block_descriptor_40_ea8_32c69_ZTSKZN6WebGPU13CommandBuffer22makeInvalidDueToCommitEP8NSStringE3__0_e28_v16__0___MTLCommandBuffer__8l;
  while (1)
  {
    v7 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v8 = *this;
    atomic_compare_exchange_strong_explicit(this, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_11;
    }
  }

  v9 = 0;
  v10 = *this;
  v11 = 1;
  atomic_compare_exchange_strong_explicit(*this, &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    MEMORY[0x22AA683C0](v10);
  }

  ++*(v10 + 8);
  atomic_compare_exchange_strong_explicit(v10, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow(v10);
  }

LABEL_11:
  while (1)
  {
    v12 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v13 = *this;
    atomic_compare_exchange_strong_explicit(this, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_18;
    }
  }

  v14 = 0;
  v15 = *this;
  v16 = 1;
  atomic_compare_exchange_strong_explicit(*this, &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    MEMORY[0x22AA683C0](v15);
  }

  ++*(v15 + 8);
  atomic_compare_exchange_strong_explicit(v15, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != 1)
  {
    WTF::Lock::unlockSlow(v15);
  }

LABEL_18:
  v31 = this;
  [v6 addCompletedHandler:{v30, this}];
  if (v29)
  {
    do
    {
      v18 = *v29;
      if ((*v29 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v29, v17);
        goto LABEL_24;
      }

      v19 = *v29;
      atomic_compare_exchange_strong_explicit(v29, &v19, v18 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v19 != v18);
    if (v18 == 3)
    {
      WebGPU::CommandBuffer::~CommandBuffer(v29);
      bmalloc::api::tzoneFree(v20, v21);
    }
  }

LABEL_24:
  objc_storeStrong(this + 5, a2);
  v22 = *(this + 1);
  *(this + 1) = 0;

  v24 = v31;
  v31 = 0;
  if (v24)
  {
    do
    {
      v25 = *v24;
      if ((*v24 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v24, v23);
        goto LABEL_30;
      }

      v26 = *v24;
      atomic_compare_exchange_strong_explicit(v24, &v26, v25 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v26 != v25);
    if (v25 == 3)
    {
      WebGPU::CommandBuffer::~CommandBuffer(v24);
      bmalloc::api::tzoneFree(v27, v28);
    }
  }

LABEL_30:
}

void sub_225681E04(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong *a9)
{
  WebGPU::CommandBuffer::makeInvalidDueToCommit(NSString *)::$_0::~$_0(&a9, a2);

  _Unwind_Resume(a1);
}

void sub_225681E3C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong *a9)
{
  WebGPU::CommandBuffer::makeInvalidDueToCommit(NSString *)::$_0::~$_0((v10 + 32), a2);
  WebGPU::CommandBuffer::makeInvalidDueToCommit(NSString *)::$_0::~$_0(&a9, v12);

  _Unwind_Resume(a1);
}

void ___ZN6WebGPU13CommandBuffer22makeInvalidDueToCommitEP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WTF::BinarySemaphore::signal((*(a1 + 32) + 96));
  v4 = *(*(*(a1 + 32) + 32) + 16);
  atomic_fetch_add(v4, 1u);
  v17 = v4;
  v5 = *(a1 + 32);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_9;
    }
  }

  v8 = 0;
  v9 = *v5;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*v5, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x22AA683C0](v9);
  }

  ++*(v9 + 8);
  atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    WTF::Lock::unlockSlow(v9);
  }

LABEL_9:
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_2838D2C20;
  v11[1] = v5;
  v16 = v11;
  WebGPU::Queue::scheduleWork(v4, &v16);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v17;
  v17 = 0;
  if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13);
    WebGPU::Queue::~Queue(v13);
    bmalloc::api::tzoneFree(v14, v15);
  }
}