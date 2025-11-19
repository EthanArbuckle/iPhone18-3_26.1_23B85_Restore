unint64_t llvm::MDNodeKeyImpl<llvm::DIImportedEntity>::getHashValue(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 10);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v5);
  v5 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,unsigned int,llvm::MDString *,llvm::Metadata *>(&v5, 0, v6, v7, a1 + 1, a1 + 2, a1 + 3, a1 + 8, v2, a1 + 6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,unsigned int,llvm::MDString *,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int *a8, uint64_t *a9, uint64_t *a10)
{
  v18 = a2;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, a3, a4, *a5);
  v19 = v18;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v15, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,int,llvm::MDString *,llvm::MDString *>(a1, v19, v16, a4, a7, a8, a9, a10);
}

BOOL llvm::MDNodeKeyImpl<llvm::DIImportedEntity>::isKeyOf(uint64_t a1, uint64_t a2)
{
  if (*a1 == *(a2 + 2) && ((v2 = a2 - 16, v3 = *(a2 - 16), (v3 & 2) != 0) ? (v4 = *(a2 - 32)) : (v4 = (v2 - 8 * ((v3 >> 2) & 0xF))), *(a1 + 8) == *v4 && *(a1 + 16) == v4[1] && *(a1 + 24) == v4[3] && *(a1 + 32) == *(a2 + 16) && ((v3 & 2) != 0 ? (v5 = *(a2 - 32)) : (v5 = v2 - 8 * ((v3 >> 2) & 0xF)), *(a1 + 40) == *(v5 + 16))))
  {
    return *(a1 + 48) == *(v5 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::LookupBucketFor<llvm::DIImportedEntity *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::InsertIntoBucketImpl<llvm::DIImportedEntity *>(a1, a2, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::LookupBucketFor<llvm::DIImportedEntity *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DIImportedEntity>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DIImportedEntity>::getHashValue(v17);
    v8 = v4 - 1;
    v9 = HashValue & (v4 - 1);
    v10 = (v6 + 8 * v9);
    v11 = *v10;
    if (*a2 == *v10)
    {
      result = 1;
    }

    else
    {
      v13 = 0;
      v14 = 1;
      result = 1;
      while (v11 != -4096)
      {
        if (v13)
        {
          v15 = 0;
        }

        else
        {
          v15 = v11 == -8192;
        }

        if (v15)
        {
          v13 = v10;
        }

        v16 = v9 + v14++;
        v9 = v16 & v8;
        v10 = (v6 + 8 * (v16 & v8));
        v11 = *v10;
        if (*a2 == *v10)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v13)
      {
        v10 = v13;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v10;
  return result;
}

uint64_t llvm::MDNodeKeyImpl<llvm::DIImportedEntity>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 2);
  v2 = (a2 - 16);
  v3 = *(a2 - 16);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 32);
  }

  else
  {
    v4 = &v2[-((v3 >> 2) & 0xF)];
  }

  *(result + 8) = *v4;
  if ((*v2 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 16) = v5[1];
  if ((*v2 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 24) = v6[3];
  *(result + 32) = *(a2 + 16);
  v7 = *(a2 - 16);
  if ((v7 & 2) != 0)
  {
    v8 = *(a2 - 32);
  }

  else
  {
    v8 = &v2[-((v7 >> 2) & 0xF)];
  }

  *(result + 40) = v8[2];
  if ((*v2 & 2) != 0)
  {
    v9 = *(a2 - 32);
  }

  else
  {
    v9 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 48) = v9[4];
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::InsertIntoBucketImpl<llvm::DIImportedEntity *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::LookupBucketFor<llvm::DIImportedEntity *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 8;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 2;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::LookupBucketFor<llvm::DIImportedEntity *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIMacro>>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DIMacro>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIMacro>::isKeyOf(a2, v13))
        {
          result = 1;
          goto LABEL_18;
        }

        v13 = *v12;
      }

      if (v13 == -4096)
      {
        break;
      }

      if (v8)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13 == -8192;
      }

      if (v14)
      {
        v8 = (v6 + 8 * v11);
      }

      HashValue = v11 + i;
    }

    result = 0;
    if (v8)
    {
      v12 = v8;
    }
  }

  else
  {
    v12 = 0;
    result = 0;
  }

LABEL_18:
  *a3 = v12;
  return result;
}

unint64_t llvm::MDNodeKeyImpl<llvm::DIMacro>::getHashValue(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v4);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,unsigned int,llvm::MDString *,llvm::MDString *>(v4, 0, v4, v5, a1, (a1 + 4), (a1 + 8), (a1 + 16));
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,unsigned int,llvm::MDString *,llvm::MDString *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, int *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(a1, v17, v14, a4, a7, a8);
}

BOOL llvm::MDNodeKeyImpl<llvm::DIMacro>::isKeyOf(uint64_t a1, uint64_t a2)
{
  if (*a1 == *(a2 + 2) && *(a1 + 4) == *(a2 + 16) && ((v2 = *(a2 - 16), (v2 & 2) != 0) ? (v3 = *(a2 - 32)) : (v3 = (a2 - 16 - 8 * ((v2 >> 2) & 0xF))), *(a1 + 8) == *v3))
  {
    return *(a1 + 16) == v3[1];
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::LookupBucketFor<llvm::DIMacro *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::InsertIntoBucketImpl<llvm::DIMacro *>(a1, a2, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::LookupBucketFor<llvm::DIMacro *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DIMacro>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DIMacro>::getHashValue(v17);
    v8 = v4 - 1;
    v9 = HashValue & (v4 - 1);
    v10 = (v6 + 8 * v9);
    v11 = *v10;
    if (*a2 == *v10)
    {
      result = 1;
    }

    else
    {
      v13 = 0;
      v14 = 1;
      result = 1;
      while (v11 != -4096)
      {
        if (v13)
        {
          v15 = 0;
        }

        else
        {
          v15 = v11 == -8192;
        }

        if (v15)
        {
          v13 = v10;
        }

        v16 = v9 + v14++;
        v9 = v16 & v8;
        v10 = (v6 + 8 * (v16 & v8));
        v11 = *v10;
        if (*a2 == *v10)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v13)
      {
        v10 = v13;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v10;
  return result;
}

uint64_t llvm::MDNodeKeyImpl<llvm::DIMacro>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  *result = *(a2 + 2);
  *(result + 4) = v2;
  v3 = (a2 - 16);
  v4 = *(a2 - 16);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v3[-((v4 >> 2) & 0xF)];
  }

  *(result + 8) = *v5;
  if ((*v3 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = &v3[-((*v3 >> 2) & 0xFLL)];
  }

  *(result + 16) = v6[1];
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::InsertIntoBucketImpl<llvm::DIMacro *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::LookupBucketFor<llvm::DIMacro *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 8;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 2;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::LookupBucketFor<llvm::DIMacro *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIArgList>>(uint64_t *a1, uint64_t a2, uint64_t **a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (!v5)
  {
    v13 = 0;
    result = 0;
    goto LABEL_18;
  }

  v7 = *a1;
  v8 = 0;
  v9 = (v5 - 1) & llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a2, *a2 + 8 * *(a2 + 8), a3, a4);
  v10 = *a2;
  v11 = *(a2 + 8);
  for (i = 1; ; ++i)
  {
    v13 = (v7 + 8 * v9);
    v14 = *v13;
    if (*v13 == -8192)
    {
      goto LABEL_7;
    }

    if (v14 == -4096)
    {
      break;
    }

    if (v11 == *(v14 + 24))
    {
      v19 = v10;
      v15 = memcmp(v10, *(v14 + 16), 8 * v11);
      v10 = v19;
      if (!v15)
      {
        result = 1;
        goto LABEL_18;
      }
    }

LABEL_7:
    if (v8)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14 == -8192;
    }

    if (v16)
    {
      v8 = (v7 + 8 * v9);
    }

    v17 = v9 + i;
    v9 = v17 & (v5 - 1);
  }

  result = 0;
  if (v8)
  {
    v13 = v8;
  }

LABEL_18:
  *a3 = v13;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::LookupBucketFor<llvm::DIArgList *>(a1, a2, &v11, a3);
  v8 = v11;
  if (result)
  {
    v9 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::InsertIntoBucketImpl<llvm::DIArgList *>(a1, a2, a2, v11);
    v8 = result;
    *result = *a2;
    v9 = 1;
  }

  v10 = *a1 + 8 * *(a1 + 16);
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v9;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::LookupBucketFor<llvm::DIArgList *>(uint64_t *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*(*a2 + 16), *(*a2 + 16) + 8 * *(*a2 + 24), a3, a4);
    v9 = v5 - 1;
    v10 = (v5 - 1) & v8;
    v11 = (v7 + 8 * v10);
    v12 = *v11;
    if (*a2 == *v11)
    {
      result = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      result = 1;
      while (v12 != -4096)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v12 == -8192;
        }

        if (v16)
        {
          v14 = v11;
        }

        v17 = v10 + v15++;
        v10 = v17 & v9;
        v11 = (v7 + 8 * (v17 & v9));
        v12 = *v11;
        if (*a2 == *v11)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v14)
      {
        v11 = v14;
      }
    }
  }

  else
  {
    v11 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v11;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::InsertIntoBucketImpl<llvm::DIArgList *>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::LookupBucketFor<llvm::DIArgList *>(a1, a3, &v10, v9);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::moveFromOldBuckets(a1, v4, &v4[v3], v10);

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v11 + 0x1FFFFFFFFFFFFFFFLL;
    v14 = v13 & 0x1FFFFFFFFFFFFFFFLL;
    v15 = (v13 & 0x1FFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
    v16 = vdupq_n_s64(v14);
    v17 = result + 8;
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_2750C1210)));
      if (v18.i8[0])
      {
        *(v17 - 1) = -4096;
      }

      if (v18.i8[4])
      {
        *v17 = -4096;
      }

      v12 += 2;
      v17 += 2;
    }

    while (v15 != v12);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3, unint64_t *a4)
{
  v6 = result;
  *(result + 8) = 0;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v7 + 0x1FFFFFFFFFFFFFFFLL;
    v10 = v9 & 0x1FFFFFFFFFFFFFFFLL;
    v11 = (v9 & 0x1FFFFFFFFFFFFFFFLL) - (v9 & 1) + 2;
    v12 = vdupq_n_s64(v10);
    v13 = (*result + 8);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v8), xmmword_2750C1210)));
      if (v14.i8[0])
      {
        *(v13 - 1) = -4096;
      }

      if (v14.i8[4])
      {
        *v13 = -4096;
      }

      v8 += 2;
      v13 += 2;
    }

    while (v11 != v8);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::LookupBucketFor<llvm::DIArgList *>(v6, a2, &v15, a4);
      *v15 = *a2;
      ++*(v6 + 8);
    }

    ++a2;
  }

  return result;
}

double _GLOBAL__sub_I_DebugInfoMetadata_cpp()
{
  v0 = llvm::cl::Option::Option(&llvm::EnableFSDiscriminator, 0, 0);
  byte_2815AC2C0 = 0;
  qword_2815AC2C8 = &unk_2883EAB68;
  unk_2815AC2D0 = 0;
  llvm::EnableFSDiscriminator = &unk_2883EAB00;
  qword_2815AC2D8 = &unk_2883EA848;
  qword_2815AC2E0 = &unk_2883EAB88;
  qword_2815AC2F8 = &qword_2815AC2E0;
  llvm::cl::Option::setArgStr(v0, "enable-fs-discriminator", 0x17uLL);
  word_2815AC24A = word_2815AC24A & 0xFF9F | 0x20;
  qword_2815AC260 = "Enable adding flow sensitive discriminators";
  unk_2815AC268 = 43;
  llvm::cl::Option::addArgument(&llvm::EnableFSDiscriminator);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &llvm::EnableFSDiscriminator, &dword_274E5C000);
  result = NAN;
  llvm::DebugVariable::DefaultFragment = xmmword_2750C1220;
  return result;
}

uint64_t llvm::DILocation::getInlinedAtScope(llvm::DILocation *this)
{
  do
  {
    v1 = *(this - 2);
    if ((v1 & 2) != 0)
    {
      v2 = *(this - 4);
      if (*(this - 6) != 2)
      {
        return *v2;
      }
    }

    else
    {
      v2 = (this - 8 * ((v1 >> 2) & 0xF) - 16);
      if ((*(this - 2) & 0x3C0) != 0x80)
      {
        return *v2;
      }
    }

    this = v2[1];
  }

  while (this);
  return *v2;
}

void anonymous namespace::PassRemarksOpt::~PassRemarksOpt(_anonymous_namespace_::PassRemarksOpt *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void llvm::cl::opt<anonymous namespace::PassRemarksOpt,true,llvm::cl::parser<std::string>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883F1190;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 152);

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883F1190;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 152);
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::cl::opt<anonymous namespace::PassRemarksOpt,true,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, __int16 a2, int a3, int a4, void *a5, size_t a6)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  v9 = llvm::cl::parser<std::string>::parse(a1 + 144, a1, a3, a4, a5, a6, &__p);
  if ((v9 & 1) == 0)
  {
    v10 = HIBYTE(v17);
    if (v17 < 0)
    {
      v10 = v16;
    }

    if (v10)
    {
      v11 = *(a1 + 128);
      operator new();
    }

    *(a1 + 12) = a2;
    v12 = *(a1 + 176);
    if (!v12)
    {
      v14 = std::__throw_bad_function_call[abi:nn200100]();
      v24 = "Invalid regular expression '";
      v25 = 259;
      v23 = 260;
      p_p = &__p;
      llvm::operator+(&v24, &p_p, v26);
      v20 = "' in -pass-remarks: ";
      v21 = 259;
      llvm::operator+(v26, &v20, v27);
      v19 = 260;
      v18[0] = &v29;
      llvm::operator+(v27, v18, v28);
      llvm::report_fatal_error(v28, 0);
    }

    (*(*v12 + 48))(v12, &__p);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  return v9;
}

double llvm::cl::opt<anonymous namespace::PassRemarksOpt,true,llvm::cl::parser<std::string>>::printOptionValue(llvm::cl::Option *a1, int a2, int a3)
{
  if (a3)
  {
    return llvm::cl::basic_parser_impl::printOptionNoValue((a1 + 144), a1, a2);
  }

  return result;
}

void llvm::cl::opt<anonymous namespace::PassRemarksOpt,true,llvm::cl::parser<std::string>>::setDefault(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void std::__shared_ptr_emplace<llvm::Regex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883F11F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::cl::apply<llvm::cl::opt<anonymous namespace::PassRemarksOpt,true,llvm::cl::parser<std::string>>,llvm::cl::value_desc,llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::LocationClass<anonymous namespace::PassRemarksOpt>,llvm::cl::ValueExpected>(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, char a5, void *a6, _WORD *a7)
{
  v8 = result;
  *(result + 48) = a2;
  *(result + 56) = a3;
  *(result + 32) = *a4;
  v9 = *(result + 10) & 0xFF9F | (32 * (a5 & 3));
  *(result + 10) = v9;
  if (*(result + 128))
  {
    v11 = "cl::location(x) specified more than once!";
    v12 = 259;
    v10 = llvm::errs(result);
    result = llvm::cl::Option::error(v8, &v11, 0, 0, v10);
    v9 = *(v8 + 10);
  }

  else
  {
    *(result + 128) = *a6;
  }

  *(v8 + 10) = (8 * (*a7 & 3)) | v9 & 0xFFE7;
  return result;
}

uint64_t _GLOBAL__sub_I_DiagnosticHandler_cpp()
{
  *&v6 = "Enable optimization remarks from passes whose name match the given regular expression";
  *(&v6 + 1) = 85;
  v5 = &_MergedGlobals_44;
  v4 = 2;
  v0 = llvm::cl::Option::Option(qword_2815AAA10, 0, 0);
  qword_2815AAA90 = 0;
  unk_2815AAA98 = &unk_2883F1230;
  qword_2815AAA10[0] = &unk_2883F1190;
  qword_2815AAAA0 = &unk_2883EA998;
  qword_2815AAAA8 = &unk_2883F1250;
  qword_2815AAAC0 = &qword_2815AAAA8;
  llvm::cl::Option::setArgStr(v0, "pass-remarks", 0xCuLL);
  llvm::cl::Option::addArgument(qword_2815AAA10);
  *&v6 = "Enable missed optimization remarks from passes whose name match the given regular expression";
  *(&v6 + 1) = 92;
  v5 = &unk_2815AA9F0;
  v4 = 2;
  v1 = llvm::cl::Option::Option(qword_2815AAAC8, 0, 0);
  qword_2815AAB48 = 0;
  unk_2815AAB50 = &unk_2883F1230;
  qword_2815AAAC8[0] = &unk_2883F1190;
  qword_2815AAB58 = &unk_2883EA998;
  qword_2815AAB60 = &unk_2883F1250;
  qword_2815AAB78 = &qword_2815AAB60;
  llvm::cl::Option::setArgStr(v1, "pass-remarks-missed", 0x13uLL);
  llvm::cl::Option::addArgument(qword_2815AAAC8);
  *&v6 = "Enable optimization analysis remarks from passes whose name match the given regular expression";
  *(&v6 + 1) = 94;
  v5 = &unk_2815AAA00;
  v4 = 2;
  v2 = llvm::cl::Option::Option(&qword_2815AAB80, 0, 0);
  qword_2815AAC00 = 0;
  qword_2815AAC08 = &unk_2883F1230;
  qword_2815AAB80 = &unk_2883F1190;
  qword_2815AAC10 = &unk_2883EA998;
  qword_2815AAC18 = &unk_2883F1250;
  qword_2815AAC30 = &qword_2815AAC18;
  llvm::cl::Option::setArgStr(v2, "pass-remarks-analysis", 0x15uLL);
  llvm::cl::Option::addArgument(&qword_2815AAB80);
}

uint64_t llvm::DiagnosticInfoDebugMetadataVersion::print(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 48))(a2, "ignoring debug info with an invalid version (");
  v4 = (*(*v3 + 104))(v3, *(a1 + 24));
  v5 = (*(*v4 + 48))(v4, ") in ");
  v6 = *(a1 + 16);
  v7 = *(*v5 + 144);

  return v7();
}

uint64_t llvm::DiagnosticInfoIgnoringInvalidDebugMetadata::print(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(*a2 + 48))(a2, "ignoring invalid debug info in ") + 56);
  v4 = *(a1 + 16) + 160;

  return v3();
}

uint64_t llvm::DiagnosticPrinterRawOStream::operator<<(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 4);
  if (v4 >= *(v3 + 3))
  {
    llvm::raw_ostream::write(v3, a2);
  }

  else
  {
    *(v3 + 4) = v4 + 1;
    *v4 = a2;
  }

  return a1;
}

{
  v3 = *(a1 + 8);
  v4 = *(v3 + 4);
  if (v4 >= *(v3 + 3))
  {
    llvm::raw_ostream::write(v3, a2);
  }

  else
  {
    *(v3 + 4) = v4 + 1;
    *v4 = a2;
  }

  return a1;
}

{
  v3 = *(a1 + 8);
  v4 = *(v3 + 4);
  if (v4 >= *(v3 + 3))
  {
    llvm::raw_ostream::write(v3, a2);
  }

  else
  {
    *(v3 + 4) = v4 + 1;
    *v4 = a2;
  }

  return a1;
}

uint64_t llvm::DiagnosticPrinterRawOStream::operator<<(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  llvm::raw_ostream::write(v3, a2, v5);
  return a1;
}

uint64_t llvm::DiagnosticPrinterRawOStream::operator<<(uint64_t a1, unint64_t a2)
{
  write_unsigned<unsigned long>(*(a1 + 8), a2, 0, 0, 0);
  return a1;
}

{
  llvm::write_integer(*(a1 + 8), a2, 0, 0);
  return a1;
}

{
  write_unsigned<unsigned long>(*(a1 + 8), a2, 0, 0, 0);
  return a1;
}

{
  llvm::write_integer(*(a1 + 8), a2, 0, 0);
  return a1;
}

{
  llvm::write_hex(*(a1 + 8), a2, 3, 0, 0);
  return a1;
}

uint64_t llvm::DiagnosticPrinterRawOStream::operator<<(uint64_t a1, uint64_t ***this)
{
  v3 = *(a1 + 8);
  if ((*(this + 23) & 0x10) != 0)
  {
    ValueName = llvm::Value::getValueName(this);
    v5 = ValueName + 2;
    v4 = *ValueName;
  }

  else
  {
    v4 = 0;
    v5 = &str_3_24;
  }

  llvm::raw_ostream::operator<<(v3, v5, v4);
  return a1;
}

uint64_t llvm::DiagnosticPrinterRawOStream::operator<<(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v6 = *(a2 + 160);
  v4 = a2 + 160;
  v5 = v6;
  v7 = *(v4 + 8);
  if (*(v4 + 23) >= 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v4 = v5;
    v8 = v7;
  }

  llvm::raw_ostream::write(v3, v4, v8);
  return a1;
}

uint64_t llvm::DominatorTreeBase<llvm::BasicBlock,false>::dominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1;
  if (a3 != a2)
  {
    v4 = a3;
    if (a3)
    {
      if (!a2)
      {
        return 0;
      }

      if (*(a3 + 8) == a2)
      {
        return 1;
      }

      if (*(a2 + 8) == a3)
      {
        return 0;
      }

      v6 = *(a2 + 16);
      if (v6 >= *(a3 + 16))
      {
        return 0;
      }

      if (*(a1 + 64) == 1)
      {
LABEL_10:
        if (*(v4 + 72) >= *(a2 + 72))
        {
          return *(v4 + 76) <= *(a2 + 76);
        }

        return 0;
      }

      v7 = *(a1 + 68) + 1;
      *(a1 + 68) = v7;
      if (v7 > 0x20)
      {
        llvm::DominatorTreeBase<llvm::BasicBlock,false>::updateDFSNumbers(a1);
        goto LABEL_10;
      }

      do
      {
        v8 = v4;
        v4 = *(v4 + 8);
      }

      while (v4 && *(v4 + 16) >= v6);
      return v8 == a2;
    }
  }

  return v3;
}

{
  if (a2 == a3)
  {
    return 1;
  }

  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(a1 + 24, a2);
  if (*(a1 + 24) + 16 * *(a1 + 40) == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v6 + 8);
  }

  v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(a1 + 24, a3);
  if (*(a1 + 24) + 16 * *(a1 + 40) == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 8);
  }

  return llvm::DominatorTreeBase<llvm::BasicBlock,false>::dominates(a1, v7, v10);
}

void llvm::DominatorTreeBase<llvm::BasicBlock,false>::updateDFSNumbers(uint64_t a1)
{
  v12[64] = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    *(a1 + 68) = 0;
  }

  else
  {
    v10 = v12;
    v11 = 0x2000000000;
    v2 = *(a1 + 48);
    if (v2)
    {
      llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v10, *(a1 + 48), *(v2 + 24));
      *(v2 + 72) = 0;
      v3 = v11;
      if (v11)
      {
        v4 = 1;
        do
        {
          v5 = v10 + 16 * v3;
          v7 = *(v5 - 2);
          v6 = *(v5 - 1);
          if (v6 == (*(v7 + 24) + 8 * *(v7 + 32)))
          {
            *(v7 + 76) = v4;
            LODWORD(v11) = --v3;
          }

          else
          {
            v8 = *v6;
            *(v5 - 1) = v6 + 1;
            llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v10, v8, *(v8 + 24));
            *(v8 + 72) = v4;
            v3 = v11;
          }

          ++v4;
        }

        while (v3);
      }

      *(a1 + 68) = 0;
      *(a1 + 64) = 1;
      if (v10 != v12)
      {
        free(v10);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::CalculateFromScratch(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::clear((a1 + 24));
  *(a1 + 8) = 0;
  *(a1 + 68) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v4;
  if (a2)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *(a2 + 8);
      if (v5 != v6)
      {
        llvm::SmallDenseMap<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts>>::copyFrom(*(a2 + 8), *(a2 + 16));
        llvm::SmallDenseMap<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts>>::copyFrom(v6 + 296, (v5 + 296));
      }

      *(v6 + 592) = *(v5 + 592);
      llvm::SmallVectorImpl<llvm::PointerAlignElem>::operator=(v6 + 600, v5 + 600);
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    v18 = 0;
    std::vector<llvm::BasicBlock *>::vector[abi:nn200100](__p, &v18, 1uLL);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v7;
    v18 = v20;
    v19 = 0x100000000;
    v10 = *(*(a1 + 56) + 80);
    if (v10)
    {
      v11 = v10 - 24;
    }

    else
    {
      v11 = 0;
    }

    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v18, v11);
    llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=(a1, &v18);
    if (v18 != v20)
    {
      free(v18);
    }

    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::runDFS<false,BOOL (*)(llvm::BasicBlock*,llvm::BasicBlock*)>(__p, **a1);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::runSemiNCA(__p, a1, 0);
    *a2 = 1;
  }

  else
  {
    v18 = 0;
    std::vector<llvm::BasicBlock *>::vector[abi:nn200100](__p, &v18, 1uLL);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v20;
    v19 = 0x100000000;
    v8 = *(*(a1 + 56) + 80);
    if (v8)
    {
      v9 = v8 - 24;
    }

    else
    {
      v9 = 0;
    }

    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v18, v9);
    llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=(a1, &v18);
    if (v18 != v20)
    {
      free(v18);
    }

    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::runDFS<false,BOOL (*)(llvm::BasicBlock*,llvm::BasicBlock*)>(__p, **a1);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::runSemiNCA(__p, a1, 0);
  }

  if (*(a1 + 8))
  {
    llvm::DominatorTreeBase<llvm::BasicBlock,false>::createNode(a1, **a1);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::destroyAll(&v14);
  MEMORY[0x277C69E30](v14, 8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DominatorTree::dominates(llvm::DominatorTree *this, const llvm::Value *a2, const llvm::Instruction *a3)
{
  result = 1;
  if (a2 && *(a2 + 16) >= 0x1Cu)
  {
    v7 = *(a3 + 5);
    v8 = *(a2 + 5);
    v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(this + 24, v7);
    if (*(this + 3) + 16 * *(this + 10) == v9 || !*(v9 + 8))
    {
      return 1;
    }

    else
    {
      v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(this + 24, v8);
      if (*(this + 3) + 16 * *(this + 10) == v10)
      {
        return 0;
      }

      else
      {
        v11 = v10;
        result = 0;
        if (a2 != a3 && *(v11 + 8))
        {
          v12 = *(a2 + 16);
          if (v12 == 33 || v12 == 39 || *(a3 + 16) == 83)
          {

            return llvm::DominatorTree::dominates(this, a2, v7);
          }

          else if (v8 == v7)
          {

            return llvm::Instruction::comesBefore(a2, a3);
          }

          else
          {

            return llvm::DominatorTreeBase<llvm::BasicBlock,false>::dominates(this, v8, v7);
          }
        }
      }
    }
  }

  return result;
}

uint64_t llvm::DominatorTree::dominates(llvm::DominatorTree *this, const llvm::Instruction *a2, const llvm::BasicBlock *a3)
{
  v6 = *(a2 + 5);
  v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(this + 24, a3);
  if (*(this + 3) + 16 * *(this + 10) == v7 || !*(v7 + 8))
  {
    return 1;
  }

  v8 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(this + 24, v6);
  if (*(this + 3) + 16 * *(this + 10) == v8)
  {
    return 0;
  }

  if (!*(v8 + 8) || v6 == a3)
  {
    return 0;
  }

  if (*(a2 + 16) == 33)
  {
    v11 = *(a2 - 12);
    v12[0] = v6;
    v12[1] = v11;
    return llvm::DominatorTree::dominates(this, v12, a3);
  }

  else
  {

    return llvm::DominatorTreeBase<llvm::BasicBlock,false>::dominates(this, v6, a3);
  }
}

uint64_t llvm::DominatorTree::dominates(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  result = llvm::DominatorTreeBase<llvm::BasicBlock,false>::dominates(a1, v4, a3);
  if (!result)
  {
    return result;
  }

  if (llvm::BasicBlock::getSinglePredecessor(v4))
  {
    return 1;
  }

  v7 = *(v4 + 1);
  if (!v7)
  {
    return 1;
  }

  while (1)
  {
    v8 = *(v7 + 24);
    v9 = *(v8 + 16);
    v10 = v8 && v9 >= 0x1C;
    if (v10 && v9 - 29 <= 0xA)
    {
      break;
    }

    v7 = *(v7 + 8);
    if (!v7)
    {
      return 1;
    }
  }

  v12 = 0;
LABEL_16:
  v13 = *(v8 + 40);
  if (v13 == v5)
  {
    if (v12)
    {
      return 0;
    }

    v12 = 1;
LABEL_21:
    while (1)
    {
      v7 = *(v7 + 8);
      if (!v7)
      {
        return 1;
      }

      v8 = *(v7 + 24);
      v14 = *(v8 + 16);
      if (v8)
      {
        v15 = v14 >= 0x1C;
      }

      else
      {
        v15 = 0;
      }

      if (v15 && v14 - 29 < 0xB)
      {
        goto LABEL_16;
      }
    }
  }

  result = llvm::DominatorTreeBase<llvm::BasicBlock,false>::dominates(a1, v4, v13);
  if (result)
  {
    goto LABEL_21;
  }

  return result;
}

{
  v3 = *(a3 + 24);
  v4 = (v3 + 40);
  if (!v3 || *(v3 + 16) != 83)
  {
    return llvm::DominatorTree::dominates(a1, a2, *v4);
  }

  v5 = *(v3 + 20);
  if (*(v3 + 40) != a2[1] || ((v5 & 0x40000000) != 0 ? (v6 = *(v3 - 8)) : (v6 = v3 - 32 * (v5 & 0x7FFFFFF)), *(v6 + 32 * *(v3 + 60) + 8 * ((a3 - v6) >> 5)) != *a2))
  {
    if ((v5 & 0x40000000) != 0)
    {
      v7 = *(v3 - 8);
    }

    else
    {
      v7 = v3 - 32 * (v5 & 0x7FFFFFF);
    }

    v4 = (v7 + 32 * *(v3 + 60) + 8 * ((a3 - v7) >> 5));
    return llvm::DominatorTree::dominates(a1, a2, *v4);
  }

  return 1;
}

uint64_t llvm::DominatorTree::dominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (!a2 || *(a2 + 16) < 0x1Cu)
  {
    return result;
  }

  v7 = *(a3 + 24);
  if (v7 && *(v7 + 16) == 83)
  {
    v8 = *(v7 + 20);
    if ((v8 & 0x40000000) != 0)
    {
      v9 = *(v7 - 8);
    }

    else
    {
      v9 = v7 - 32 * (v8 & 0x7FFFFFF);
    }

    v10 = (v9 + 32 * *(v7 + 60) + 8 * ((a3 - v9) >> 5));
  }

  else
  {
    v10 = (v7 + 40);
  }

  v11 = *(a2 + 40);
  v12 = *v10;
  v13 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(a1 + 24, *v10);
  if (*(a1 + 24) + 16 * *(a1 + 40) == v13 || !*(v13 + 8))
  {
    return 1;
  }

  v14 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(a1 + 24, v11);
  if (*(a1 + 24) + 16 * *(a1 + 40) == v14 || !*(v14 + 8))
  {
    return 0;
  }

  if (*(a2 + 16) == 33)
  {
    v15 = *(a2 - 96);
    v16[0] = v11;
    v16[1] = v15;
    return llvm::DominatorTree::dominates(a1, v16, a3);
  }

  if (v11 != v12)
  {

    return llvm::DominatorTreeBase<llvm::BasicBlock,false>::dominates(a1, v11, v12);
  }

  if (*(v7 + 16) == 83)
  {
    return 1;
  }

  return llvm::Instruction::comesBefore(a2, v7);
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 72 * v1;
    v3 = *a1 + 56;
    do
    {
      if ((*(v3 - 56) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 72;
      v2 -= 72;
    }

    while (v2);
  }
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::runSemiNCA(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v45[32] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1] - *a1;
  if ((v6 >> 3) >= 2)
  {
    v7 = 1;
    do
    {
      v43 = *(v5 + 8 * v7);
      v8 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct((a1 + 3), &v43);
      v5 = *a1;
      v8[4] = *(*a1 + 8 * *(v8 + 3));
      ++v7;
    }

    while ((v6 >> 3) != v7);
  }

  v43 = v45;
  v44 = 0x2000000000;
  v9 = (v6 >> 3) - 1;
  if (v9 >= 2)
  {
    v36 = v6 >> 3;
    v37 = v6;
    v10 = v6 >> 3;
    do
    {
      v38 = v9;
      v41 = *(*a1 + 8 * v9);
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct((a1 + 3), &v41);
      *(v11 + 4) = *(v11 + 3);
      v12 = *(v11 + 12);
      if (v12)
      {
        v13 = v11;
        v14 = v11[5];
        v15 = &v14[v12];
        do
        {
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(a1[3], *(a1 + 10), *v14, &v42))
          {
            v16 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(a2 + 24, *v14);
            if (*(a2 + 24) + 16 * *(a2 + 40) == v16 || (v17 = *(v16 + 8)) == 0 || *(v17 + 16) >= a3)
            {
              v42 = *v14;
              v18 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct((a1 + 3), &v42);
              if (*(v18 + 3) >= v10)
              {
                v20 = v18 + 1;
                do
                {
                  v21 = v44;
                  if (v44 >= HIDWORD(v44))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v44 + 1, 8);
                    v21 = v44;
                  }

                  *(v43 + v21) = v20;
                  LODWORD(v44) = v44 + 1;
                  v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct((a1 + 3), (*a1 + 8 * *(v20 + 1)));
                  v20 = v22 + 1;
                }

                while (*(v22 + 3) >= v10);
                v23 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct((a1 + 3), v22 + 3) + 1;
                v24 = v44;
                do
                {
                  v25 = *(v43 + v24 - 1);
                  LODWORD(v44) = v24 - 1;
                  *(v25 + 4) = *(v20 + 1);
                  v19 = (v25 + 16);
                  v26 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct((a1 + 3), (v25 + 16));
                  if (*(v23 + 2) >= *(v26 + 4))
                  {
                    v23 = v26 + 1;
                  }

                  else
                  {
                    *v19 = v20[2];
                  }

                  v24 = v44;
                  v20 = v25;
                }

                while (v44);
              }

              else
              {
                v19 = v18 + 3;
              }

              v27 = *v19;
              v40 = v27;
              v42 = 0;
              v28 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(a1[3], *(a1 + 10), v27, &v42);
              v29 = v42;
              if ((v28 & 1) == 0)
              {
                v29 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::InsertIntoBucketImpl<llvm::BasicBlock *>((a1 + 3), &v40, v42);
                *v29 = v27;
                *(v29 + 5) = 0u;
                *(v29 + 1) = 0u;
                *(v29 + 3) = 0u;
                *(v29 + 7) = 0u;
                v29[5] = v29 + 7;
                *(v29 + 13) = 2;
              }

              v30 = *(v29 + 4);
              if (v30 < *(v13 + 4))
              {
                *(v13 + 4) = v30;
              }
            }
          }

          ++v14;
        }

        while (v14 != v15);
      }

      LODWORD(v10) = v38;
      v9 = v38 - 1;
    }

    while (((v38 - 1) & 0xFFFFFFFELL) != 0);
    if (v36 >= 3)
    {
      v31 = 2;
      do
      {
        v42 = *(*a1 + 8 * v31);
        v32 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct((a1 + 3), &v42);
        v33 = *(llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct((a1 + 3), (*a1 + 8 * *(v32 + 4))) + 2);
        for (i = v32[4]; ; i = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct((a1 + 3), &v41)[4])
        {
          v41 = i;
          if (*(llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct((a1 + 3), &v41) + 2) <= v33)
          {
            break;
          }
        }

        v32[4] = i;
        ++v31;
      }

      while (v31 != (v37 >> 3));
    }
  }

  if (v43 != v45)
  {
    free(v43);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::attachNewSubtree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct(a1 + 24, (*a1 + 8));
  result[4] = a3;
  v7 = *(a1 + 8) - *a1;
  if (v7 != 8)
  {
    v8 = v7 >> 3;
    v9 = 1;
    do
    {
      v12 = *(*a1 + 8 * v9);
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::FindAndConstruct((a2 + 24), &v12);
      if (!result[1])
      {
        v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::find(a1 + 24, v12);
        if (*(a1 + 24) + 72 * *(a1 + 40) == v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(v10 + 32);
        }

        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::getNodeForBlock(a1, v11, a2);
        llvm::DominatorTreeBase<llvm::BasicBlock,false>::createChild(a2, v12);
      }

      ++v9;
    }

    while (v8 != v9);
  }

  return result;
}

void llvm::SmallDenseMap<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts>>::copyFrom(uint64_t a1, int *a2)
{
  llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts>>,llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts>>::destroyAll(a1);
  v4 = *a1;
  if ((*a1 & 1) == 0)
  {
    MEMORY[0x277C69E30](*(a1 + 8), 8);
    v4 = *a1;
  }

  *a1 = v4 | 1;
  v5 = *a2;
  v6 = 1;
  if ((*a2 & 1) == 0 && a2[4] >= 5)
  {
    *a1 = v4 & 0xFFFFFFFE;
    if (*a2)
    {
      v7 = 4;
    }

    else
    {
      v7 = a2[4];
    }

    *(a1 + 8) = operator new(8 * (v7 + 8 * v7), 8uLL);
    *(a1 + 16) = v7;
    v5 = *a2;
    v6 = *a1 & 1;
  }

  v8 = 0;
  v9 = v6 | v5 & 0xFFFFFFFE;
  *a1 = v9;
  *(a1 + 4) = a2[1];
  v10 = (a1 + 8);
  if (v9)
  {
    goto LABEL_12;
  }

  while (v8 < *(a1 + 16))
  {
    v11 = *v10;
    while (1)
    {
      if (*a2)
      {
        v12 = a2 + 2;
      }

      else
      {
        v12 = *(a2 + 1);
      }

      *(v11 + 72 * v8) = *&v12[18 * v8];
      v13 = *a1;
      if (*a1)
      {
        v15 = v10[9 * v8] | 0x1000;
        v14 = a1 + 8;
      }

      else
      {
        v14 = *v10;
        v15 = *(*v10 + 72 * v8) | 0x1000;
      }

      if (v15 != -4096)
      {
        v16 = 0;
        v17 = 0;
        v18 = v14 + 72 * v8 + 8;
        v19 = *(a2 + 1);
        if (*a2)
        {
          v19 = a2 + 2;
        }

        v20 = &v19[18 * v8 + 2];
        do
        {
          v21 = v16;
          v22 = (v18 + 32 * v17);
          v23 = v20 + 32 * v17;
          *v22 = v22 + 2;
          v22[1] = 0x200000000;
          if (*(v23 + 8))
          {
            llvm::SmallVectorImpl<llvm::BasicBlock *>::operator=(v22, v23);
          }

          v16 = 1;
          v17 = 1;
        }

        while ((v21 & 1) == 0);
        v13 = *a1;
      }

      ++v8;
      if ((v13 & 1) == 0)
      {
        break;
      }

LABEL_12:
      v11 = a1 + 8;
      if (v8 >= 4)
      {
        return;
      }
    }
  }
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::runDFS<false,BOOL (*)(llvm::BasicBlock*,llvm::BasicBlock*)>(uint64_t a1, void *a2)
{
  v25[64] = *MEMORY[0x277D85DE8];
  v18 = a2;
  __src = a2;
  v23 = v25;
  v24 = 0x4000000000;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v23, &__src, &v21);
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*(a1 + 24), *(a1 + 40), a2, &__src))
  {
    *(llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct(a1 + 24, &v18) + 3) = 0;
  }

  v4 = v24;
  if (v24)
  {
    v5 = 0;
    do
    {
      v6 = *(v23 + v4 - 1);
      LODWORD(v24) = v4 - 1;
      v17 = v6;
      v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct(a1 + 24, &v17);
      if (!*(v7 + 2))
      {
        *(v7 + 4) = ++v5;
        *(v7 + 2) = v5;
        v7[3] = v17;
        std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](a1, &v17);
        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::getChildren<false>(&__src, v17, *(a1 + 48));
        v8 = __src;
        if (v21)
        {
          v9 = 8 * v21;
          while (1)
          {
            v10 = *v8;
            v16 = v10;
            v19 = 0;
            v11 = !llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*(a1 + 24), *(a1 + 40), v10, &v19) || v19 == *(a1 + 24) + 72 * *(a1 + 40);
            if (v11 || !*(v19 + 8))
            {
              break;
            }

            v12 = v17;
            if (v10 != v17)
            {
              v13 = (v19 + 40);
LABEL_16:
              llvm::SmallVectorTemplateBase<void *,true>::push_back(v13, v12);
            }

            ++v8;
            v9 -= 8;
            if (!v9)
            {
              v8 = __src;
              goto LABEL_19;
            }
          }

          v14 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct(a1 + 24, &v16);
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v23, v10);
          *(v14 + 3) = v5;
          v12 = v17;
          v13 = (v14 + 5);
          goto LABEL_16;
        }

LABEL_19:
        if (v8 != &v22)
        {
          free(v8);
        }
      }

      v4 = v24;
    }

    while (v24);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  v15 = *MEMORY[0x277D85DE8];
}

char *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::getChildren<false>(void **a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a3 + 8);

    return llvm::GraphDiff<llvm::BasicBlock *,false>::getChildren<false>(v4, a2, a1);
  }

  else
  {
    v6 = *(a2 + 40);
    if (v6 == a2 + 40)
    {
      v9 = 0;
    }

    else
    {
      v7 = v6 - 24;
      if (v6)
      {
        v8 = v6 - 24;
      }

      else
      {
        v8 = 0;
      }

      if (*(v8 + 16) - 29 >= 0xB)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7;
      }
    }

    v10 = llvm::GraphTraits<llvm::BasicBlock *>::child_end(a2);
    *a1 = a1 + 2;
    a1[1] = 0x800000000;
    v13[0] = v10;
    v13[1] = v11;
    v13[2] = v10;
    v13[3] = v11;
    v12[0] = v9;
    v12[1] = 0;
    v12[2] = v9;
    v12[3] = 0;
    llvm::SmallVectorImpl<llvm::BasicBlock *>::append<std::reverse_iterator<llvm::SuccIterator<llvm::Instruction,llvm::BasicBlock>>,void>(a1, v13, v12);
    v13[0] = 0;
    result = std::remove[abi:nn200100]<llvm::BasicBlock **,decltype(nullptr)>(*a1, &(*a1)[*(a1 + 2)]);
    *(a1 + 2) = (result - *a1) >> 3;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::InsertIntoBucketImpl<llvm::BasicBlock *>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 5) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 7) = 0u;
    v5[5] = v5 + 7;
    *(v5 + 13) = 2;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::InsertIntoBucketImpl<llvm::BasicBlock *>(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

void *llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 72 * v10 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[9] = -4096;
        }

        v11 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = v4 + 40;
      v16 = 72 * v3;
      do
      {
        v17 = *(v15 - 40);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), v17, &v28);
          v18 = v28;
          v19 = v28;
          *v28 = *(v15 - 40);
          v20 = *(v15 - 32);
          v21 = *(v15 - 16);
          v18[5] = v19 + 7;
          v22 = (v18 + 5);
          *(v22 - 32) = v20;
          *(v22 - 16) = v21;
          *(v22 + 8) = 0x200000000;
          if (*(v15 + 8))
          {
            llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=(v22, v15);
          }

          ++*(a1 + 8);
          if (v15 + 16 != *v15)
          {
            free(*v15);
          }
        }

        v15 += 72;
        v16 -= 72;
      }

      while (v16);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = 72 * v23 - 72;
    v26 = vdupq_n_s64(v25 / 0x48);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v24), xmmword_2750C1210)));
      if (v27.i8[0])
      {
        *result = -4096;
      }

      if (v27.i8[4])
      {
        result[9] = -4096;
      }

      v24 += 2;
      result += 18;
    }

    while (((v25 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v24);
  }

  return result;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::getNodeForBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(a3 + 24, a2);
  if (*(a3 + 24) + 16 * *(a3 + 40) == v6 || (result = *(v6 + 8)) == 0)
  {
    v8 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::find(a1 + 24, a2);
    if (*(a1 + 24) + 72 * *(a1 + 40) == v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 32);
    }

    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::getNodeForBlock(a1, v9, a3);

    llvm::DominatorTreeBase<llvm::BasicBlock,false>::createChild(a3, a2);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>,llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::InfoRec>>::find(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), a2, &v4))
  {
    return v4;
  }

  else
  {
    return *a1 + 72 * *(a1 + 16);
  }
}

void *std::vector<llvm::BasicBlock *>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<llvm::jitlink::Block *>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_Dominators_cpp()
{
  v0 = llvm::cl::Option::Option(&qword_2815AAC40, 0, 0);
  qword_2815AACC0 = 0;
  byte_2815AACD1 = 0;
  qword_2815AACC8 = &unk_2883EAB68;
  qword_2815AAC40 = &unk_2883EB2E8;
  qword_2815AACD8 = &unk_2883EA848;
  qword_2815AACE0 = &unk_2883EB350;
  qword_2815AACF8 = &qword_2815AACE0;
  llvm::cl::Option::setArgStr(v0, "verify-dom-info", 0xFuLL);
  llvm::cl::opt_storage<BOOL,true,false>::setLocation(&qword_2815AACC0, &qword_2815AAC40, _MergedGlobals_45);
  word_2815AAC4A = word_2815AAC4A & 0xFF9F | 0x20;
  qword_2815AAC60 = "Verify dominator info (time consuming)";
  unk_2815AAC68 = 38;
  llvm::cl::Option::addArgument(&qword_2815AAC40);

  return __cxa_atexit(llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt, &qword_2815AAC40, &dword_274E5C000);
}

uint64_t llvm::classifyEHPersonality(uint64_t this, const llvm::Value *a2)
{
  if (this)
  {
    v2 = llvm::Value::stripPointerCasts(this);
    if (*(v2 + 16) > 3u)
    {
      return 0;
    }

    v3 = *(v2 + 3);
    if (!v3 || *(v3 + 8) != 14 || (*(v2 + 23) & 0x10) == 0)
    {
      return 0;
    }

    ValueName = llvm::Value::getValueName(v2);
    v5 = *ValueName;
    if (*ValueName <= 19)
    {
      switch(v5)
      {
        case 16:
          if (*(ValueName + 16) == 0x5F7470656378655FLL && *(ValueName + 24) == 0x3372656C646E6168)
          {
            return 7;
          }

          if (*(ValueName + 16) == 0x5F7470656378655FLL && *(ValueName + 24) == 0x3472656C646E6168)
          {
            return 7;
          }

          break;
        case 18:
          if (*(ValueName + 16) == 0x6172467878435F5FLL && *(ValueName + 24) == 0x656C646E6148656DLL && *(ValueName + 32) == 13170)
          {
            return 9;
          }

          break;
        case 19:
          if (*(ValueName + 16) == 0x43737365636F7250 && *(ValueName + 24) == 0x747065637845524CLL && *(ValueName + 27) == 0x6E6F697470656378)
          {
            return 10;
          }

          if (*(ValueName + 16) == 0x5F68655F74737572 && *(ValueName + 24) == 0x6C616E6F73726570 && *(ValueName + 27) == 0x7974696C616E6F73)
          {
            return 11;
          }

          break;
      }

      return 0;
    }

    if (v5 > 21)
    {
      if (v5 != 22)
      {
        if (v5 == 25)
        {
          v18 = *(ValueName + 16) == 0x61775F7878675F5FLL && *(ValueName + 24) == 0x6F737265705F6D73;
          v19 = v18 && *(ValueName + 32) == 0x765F7974696C616ELL;
          if (v19 && *(ValueName + 40) == 48)
          {
            return 12;
          }
        }

        return 0;
      }

      if (*(ValueName + 16) != 0x65705F7878675F5FLL || *(ValueName + 24) != 0x74696C616E6F7372 || *(ValueName + 30) != 0x306865735F797469)
      {
        if (*(ValueName + 16) != 0x65705F6363675F5FLL || *(ValueName + 24) != 0x74696C616E6F7372 || *(ValueName + 30) != 0x306865735F797469)
        {
          if (*(ValueName + 16) == 0x5F7878636C785F5FLL && *(ValueName + 24) == 0x6C616E6F73726570 && *(ValueName + 30) == 0x31765F7974696C61)
          {
            return 13;
          }

          return 0;
        }

        return 2;
      }
    }

    else
    {
      if (v5 != 20)
      {
        if (v5 == 21)
        {
          if (*(ValueName + 16) == 0x655F74616E675F5FLL && *(ValueName + 24) == 0x6E6F737265705F68 && *(ValueName + 29) == 0x7974696C616E6F73)
          {
            return 1;
          }

          if (*(ValueName + 16) == 0x65705F7878675F5FLL && *(ValueName + 24) == 0x74696C616E6F7372 && *(ValueName + 29) == 0x306A735F7974696CLL)
          {
            return 5;
          }

          if (*(ValueName + 16) == 0x65705F6363675F5FLL && *(ValueName + 24) == 0x74696C616E6F7372 && *(ValueName + 29) == 0x306A735F7974696CLL)
          {
            return 3;
          }

          if (*(ValueName + 16) == 0x705F636A626F5F5FLL && *(ValueName + 24) == 0x696C616E6F737265 && *(ValueName + 29) == 0x30765F7974696C61)
          {
            return 6;
          }
        }

        return 0;
      }

      if (*(ValueName + 16) != 0x65705F7878675F5FLL || *(ValueName + 24) != 0x74696C616E6F7372 || *(ValueName + 32) != 813064057)
      {
        if (*(ValueName + 16) != 0x65705F6363675F5FLL || *(ValueName + 24) != 0x74696C616E6F7372 || *(ValueName + 32) != 813064057)
        {
          if (*(ValueName + 16) == 0x636570735F435F5FLL && *(ValueName + 24) == 0x6E61685F63696669 && *(ValueName + 32) == 1919249508)
          {
            return 8;
          }

          return 0;
        }

        return 2;
      }
    }

    return 4;
  }

  return this;
}

void llvm::colorEHFunclets(llvm *this@<X0>, uint64_t a2@<X8>)
{
  v47[32] = *MEMORY[0x277D85DE8];
  v45 = v47;
  v46 = 0x1000000000;
  v4 = *(this + 10);
  if (v4)
  {
    v5 = v4 - 24;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v45, v5, v5);
  v6 = v46;
  if (v46)
  {
    while (1)
    {
      v7 = v45 + 16 * v6;
      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      LODWORD(v46) = v6 - 1;
      for (i = *(v9 + 48); ; i = *(i + 8))
      {
        v11 = i - 24;
        if (!i)
        {
          v11 = 0;
        }

        if (*(v11 + 16) != 83)
        {
          break;
        }
      }

      v12 = *(i - 8) - 38;
      v13 = v12 > 0x38;
      v14 = (1 << v12) & 0x100060000000001;
      v15 = v13 || v14 == 0;
      v16 = v15 ? v8 : v9;
      v44 = 0;
      v17 = *(a2 + 16);
      v18 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a2, v17, v9, &v44);
      v19 = v44;
      if ((v18 & 1) == 0)
      {
        break;
      }

      v21 = v44 + 1;
      v20 = v44[1];
      if ((v20 & 4) != 0)
      {
        v22 = 0;
        v23 = *(v20 & 0xFFFFFFFFFFFFFFF8);
        v24 = &v23[*((v20 & 0xFFFFFFFFFFFFFFF8) + 8)];
        goto LABEL_25;
      }

LABEL_24:
      v24 = &v21[v20 > 7];
      v22 = 1;
      v23 = v21;
LABEL_25:
      if (v23 != v24)
      {
        while (*v23 != v16)
        {
          if (++v23 == v24)
          {
            v23 = v24;
            break;
          }
        }
      }

      if (v22)
      {
        v26 = &v21[v20 > 7];
      }

      else
      {
        v26 = *(v20 & 0xFFFFFFFFFFFFFFF8) + 8 * *((v20 & 0xFFFFFFFFFFFFFFF8) + 8);
      }

      if (v23 != v26)
      {
        goto LABEL_58;
      }

      if (v20 > 7)
      {
        if (v22)
        {
          operator new();
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back((v20 & 0xFFFFFFFFFFFFFFF8), v16);
      }

      else
      {
        *v21 = v16 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v27 = *(v9 + 40);
      v28 = (v27 - 24);
      if (v27)
      {
        v29 = v27 - 24;
      }

      else
      {
        v29 = 0;
      }

      v30 = *(v29 + 16);
      if ((v30 - 40) >= 0xFFFFFFF5)
      {
        v31 = v27 - 24;
      }

      else
      {
        v31 = 0;
      }

      if (*(v31 + 16) == 37 && (v30 - 40) >= 0xFFFFFFF5)
      {
        v33 = *(*(v27 - 88) - 32);
        v34 = *(v33 + 20);
        if ((v34 & 0x40000000) != 0)
        {
          v35 = *(v33 - 8);
        }

        else
        {
          v35 = (v33 - 32 * (v34 & 0x7FFFFFF));
        }

        v36 = *v35;
        v16 = v5;
        if (*(v36 + 16) != 20)
        {
          v16 = *(v36 + 40);
        }

LABEL_55:
        NumSuccessors = llvm::Instruction::getNumSuccessors(v28);
        if (NumSuccessors)
        {
          v38 = NumSuccessors;
          for (j = 0; j != v38; ++j)
          {
            Successor = llvm::Instruction::getSuccessor(v28, j);
            llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v45, Successor, v16);
          }
        }

        goto LABEL_58;
      }

      if ((v30 - 29) <= 0xA)
      {
        goto LABEL_55;
      }

LABEL_58:
      v6 = v46;
      if (!v46)
      {
        goto LABEL_63;
      }
    }

    v25 = *(a2 + 8);
    if (4 * v25 + 4 >= 3 * v17)
    {
      v41 = 2 * v17;
      v42 = a2;
    }

    else
    {
      if (v17 + ~v25 - *(a2 + 12) > v17 >> 3)
      {
LABEL_21:
        ++*(a2 + 8);
        if (*v19 != -4096)
        {
          --*(a2 + 12);
        }

        v20 = 0;
        *v19 = v9;
        v19[1] = 0;
        v21 = (v19 + 1);
        goto LABEL_24;
      }

      v42 = a2;
      v41 = v17;
    }

    llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::grow(v42, v41);
    v44 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a2, *(a2 + 16), v9, &v44);
    v19 = v44;
    goto LABEL_21;
  }

LABEL_63:
  if (v45 != v47)
  {
    free(v45);
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::TinyPtrVector<llvm::BasicBlock *>::~TinyPtrVector(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 4) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((v2 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      if (*v3 != v3 + 2)
      {
        free(*v3);
      }

      MEMORY[0x277C69E40](v3, 0x1080C40ED926357);
    }
  }

  return a1;
}

char *llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = (v4 + 8);
      v19 = 16 * v3;
      do
      {
        v20 = *(v18 - 1);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *(v18 - 1);
          v21[1] = *v18;
          *v18 = 0;
          ++*(a1 + 8);
          llvm::TinyPtrVector<llvm::BasicBlock *>::~TinyPtrVector(v18);
        }

        v18 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::convertStrToRoundingMode(void *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 14)
  {
    switch(a2)
    {
      case 15:
        v15 = *a1;
        v16 = *(a1 + 7);
        if (v15 == 0x6F742E646E756F72 && v16 == 0x7473657261656E6FLL)
        {
          return 257;
        }

        return 0;
      case 16:
        v22 = *a1;
        v21 = a1[1];
        v24 = v22 == 0x6F742E646E756F72 && v21 == 0x6F72657A64726177;
        return (v24 << 8);
      case 19:
        v7 = *a1;
        v8 = a1[1];
        v9 = *(a1 + 11);
        if (v7 == 0x6F742E646E756F72 && v8 == 0x617473657261656ELL && v9 == 0x7961776174736572)
        {
          return 260;
        }

        return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 12:
        v12 = *a1;
        v13 = *(a1 + 2);
        if (v12 == 0x70752E646E756F72 && v13 == 1685217655)
        {
          return 258;
        }

        return 0;
      case 13:
        v18 = *a1;
        v19 = *(a1 + 5);
        if (v18 != 0x79642E646E756F72 || v19 != 0x63696D616E79642ELL)
        {
          return 0;
        }

        return 263;
      case 14:
        v4 = *a1;
        v5 = *(a1 + 6);
        if (v4 == 0x6F642E646E756F72 && v5 == 0x647261776E776F64)
        {
          return 259;
        }

        return 0;
    }
  }

  return result;
}

uint64_t llvm::convertRoundingModeToStr@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  a2[16] = 0;
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        return std::optional<llvm::StringRef>::operator=[abi:nn200100]<char const(&)[14],void>(a2, "round.downward");
      case 4:
        return std::optional<llvm::StringRef>::operator=[abi:nn200100]<char const(&)[14],void>(a2, "round.tonearestaway");
      case 7:
        return std::optional<llvm::StringRef>::operator=[abi:nn200100]<char const(&)[14],void>(a2, "round.dynamic");
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      return std::optional<llvm::StringRef>::operator=[abi:nn200100]<char const(&)[14],void>(a2, "round.tonearest");
    }

    else if (result == 2)
    {
      return std::optional<llvm::StringRef>::operator=[abi:nn200100]<char const(&)[14],void>(a2, "round.upward");
    }
  }

  else
  {
    return std::optional<llvm::StringRef>::operator=[abi:nn200100]<char const(&)[14],void>(a2, "round.towardzero");
  }

  return result;
}

uint64_t std::optional<llvm::StringRef>::operator=[abi:nn200100]<char const(&)[14],void>(uint64_t a1, char *__s)
{
  if (*(a1 + 16) == 1)
  {
    v4 = strlen(__s);
    *a1 = __s;
  }

  else
  {
    *a1 = __s;
    v4 = strlen(__s);
    *(a1 + 16) = 1;
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t llvm::convertStrToExceptionBehavior(void *a1, uint64_t a2)
{
  if (a2 == 16)
  {
    if (*a1 == 0x7470656378657066 && a1[1] == 0x7061727479616D2ELL)
    {
      return 257;
    }

    return 0;
  }

  if (a2 != 15)
  {
    return 0;
  }

  if (*a1 == 0x7470656378657066 && *(a1 + 7) == 0x65726F6E67692E74)
  {
    return 256;
  }

  if (*a1 ^ 0x7470656378657066 | *(a1 + 7) ^ 0x7463697274732E74)
  {
    return 0;
  }

  return 258;
}

uint64_t llvm::convertExceptionBehaviorToStr@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  a2[16] = 0;
  if (!result)
  {
    v2 = "fpexcept.ignore";
LABEL_8:
    v3 = a2;
    return std::optional<llvm::StringRef>::operator=[abi:nn200100]<char const(&)[14],void>(v3, v2);
  }

  if (result != 1)
  {
    if (result != 2)
    {
      return result;
    }

    v2 = "fpexcept.strict";
    goto LABEL_8;
  }

  v2 = "fpexcept.maytrap";
  v3 = a2;
  return std::optional<llvm::StringRef>::operator=[abi:nn200100]<char const(&)[14],void>(v3, v2);
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a1 - 72;
    v7 = *(a1 + 32);
    v8 = *(a2 + 32);
    if (v7 == v8)
    {
      while (a3 != a4)
      {
        v12 = a3 - 24;
        if (!a3)
        {
          v12 = 0;
        }

        llvm::SymbolTableListTraits<llvm::Instruction>::setSymTabObject<llvm::Function *>((v12 + 40), (v12 + 56), v6);
        a3 = *(a3 + 8);
      }
    }

    else
    {
      while (a3 != a4)
      {
        if (a3)
        {
          v9 = a3 - 24;
        }

        else
        {
          v9 = 0;
        }

        v10 = *(v9 + 20) & 0x10000000;
        if (v8 && v10)
        {
          ValueName = llvm::Value::getValueName(v9);
          llvm::StringMapImpl::RemoveKey(v8, (ValueName + *(v8 + 20)), *ValueName);
        }

        llvm::SymbolTableListTraits<llvm::Instruction>::setSymTabObject<llvm::Function *>((v9 + 40), (v9 + 56), v6);
        if (v7 && v10)
        {
          llvm::ValueSymbolTable::reinsertValue(v7, v9);
        }

        a3 = *(a3 + 8);
      }
    }
  }
}

uint64_t llvm::Argument::hasPassPointeeByValueCopyAttr(llvm::Argument *this)
{
  if (*(*this + 8) != 15)
  {
    return 0;
  }

  v1 = *(*(this + 3) + 112);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 8) + 2;
  if (v2 >= *(v1 + 8))
  {
    return 0;
  }

  v3 = v1 + 40;
  v4 = *(v3 + 8 * v2);
  if (!v4 || (*(v4 + 20) & 0x40) == 0)
  {
    v5 = *(v3 + 8 * v2);
    if (!v5 || (*(v5 + 21) & 1) == 0)
    {
      v6 = *(v3 + 8 * v2);
      if (v6)
      {
        return (*(v6 + 21) >> 1) & 1;
      }

      return 0;
    }
  }

  return 1;
}

unint64_t llvm::Argument::getPassPointeeByValueCopySize(llvm::Argument *this, const llvm::DataLayout *a2)
{
  v3 = *(*(this + 3) + 112);
  if (v3 && (v4 = *(this + 8) + 2, v4 < *(v3 + 8)))
  {
    v5 = *(v3 + 8 * v4 + 40);
  }

  else
  {
    v5 = 0;
  }

  MemoryParamAllocType = getMemoryParamAllocType(v5);
  if (!MemoryParamAllocType)
  {
    return 0;
  }

  TypeAllocSize = llvm::DataLayout::getTypeAllocSize(a2, MemoryParamAllocType);
  if (v7)
  {
  }

  return TypeAllocSize;
}

uint64_t getMemoryParamAllocType(uint64_t result)
{
  if (result)
  {
    v1 = result;
    EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(result, 70);
    if ((v3 & 1) == 0 || !EnumAttribute || (result = *(EnumAttribute + 16)) == 0)
    {
      v4 = llvm::AttributeSetNode::findEnumAttribute(v1, 69);
      if ((v5 & 1) == 0 || !v4 || (result = *(v4 + 16)) == 0)
      {
        v6 = llvm::AttributeSetNode::findEnumAttribute(v1, 73);
        if ((v7 & 1) == 0 || !v6 || (result = *(v6 + 16)) == 0)
        {
          v8 = llvm::AttributeSetNode::findEnumAttribute(v1, 72);
          if ((v9 & 1) == 0 || !v8 || (result = *(v8 + 16)) == 0)
          {
            v10 = llvm::AttributeSetNode::findEnumAttribute(v1, 74);
            result = 0;
            if (v11)
            {
              if (v10)
              {
                return *(v10 + 16);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t llvm::Argument::hasStructRetAttr(llvm::Argument *this)
{
  if (*(*this + 8) == 15 && (v1 = *(*(this + 3) + 112)) != 0 && (v2 = *(this + 8) + 2, v2 < *(v1 + 8)) && (v3 = *(v1 + 8 * v2 + 40)) != 0)
  {
    return (*(v3 + 21) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<llvm::Function>,llvm::SymbolTableListTraits<llvm::Function>>::erase(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a2 - 56);
  if (a2)
  {
    v4 = (a2 - 56);
  }

  else
  {
    v4 = 0;
  }

  llvm::SymbolTableListTraits<llvm::Function>::removeNodeFromList(a1, v4);
  v5 = *(v4 + 7);
  v6 = *(v4 + 8);
  *v6 = v5;
  *(v5 + 8) = v6;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  llvm::Function::~Function(v3);
  llvm::User::operator delete(v7);
  return v2;
}

uint64_t llvm::Function::Function(uint64_t a1, uint64_t a2, int a3, llvm::Type *a4, const llvm::Twine *a5, uint64_t a6)
{
  v10 = *(a1 + 20);
  if ((v10 & 0x40000000) != 0)
  {
    v11 = *(a1 - 8);
  }

  else
  {
    v11 = a1 - 32 * (v10 & 0x7FFFFFF);
  }

  if (a4 == -1)
  {
    if (a6)
    {
      a4 = *(a6 + 268);
    }

    else
    {
      a4 = 0;
    }
  }

  llvm::GlobalValue::GlobalValue(a1, a2, 0, v11, 0, a3, a5, a4);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v12 = *(a1 + 32) & 0x1FFFF;
  *(a1 + 32) = v12;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 72;
  *(a1 + 80) = a1 + 72;
  *(a1 + 88) = 0;
  *(a1 + 96) = (*(a2 + 12) - 1);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 32) = v12;
  if ((*(***a1 + 2720) & 1) == 0)
  {
    operator new();
  }

  if (*(a2 + 12) != 1)
  {
    *(a1 + 18) = 1;
  }

  if (a6)
  {
    llvm::iplist_impl<llvm::simple_ilist<llvm::Function>,llvm::SymbolTableListTraits<llvm::Function>>::insert(a6 + 24, (a6 + 24), a1);
  }

  if ((*(a1 + 23) & 0x10) != 0 && (ValueName = llvm::Value::getValueName(a1), *ValueName >= 5uLL))
  {
    v15 = bswap64(*(ValueName + 16) | (*(ValueName + 20) << 32));
    v16 = v15 >= 0x6C6C766D2E000000;
    v17 = v15 > 0x6C6C766D2E000000;
    v18 = !v16;
    v14 = (v17 == v18) << 13;
  }

  else
  {
    v14 = 0;
  }

  v19 = *(a1 + 36);
  *(a1 + 32) = *(a1 + 32) & 0xFFFFDFFF | v14;
  if (v19)
  {
    *(a1 + 112) = llvm::Intrinsic::getAttributes(**a1, v19);
  }

  return a1;
}

uint64_t *llvm::Intrinsic::getAttributes(uint64_t *a1, int a2)
{
  v3 = 0;
  v471[25] = *MEMORY[0x277D85DE8];
  v4 = &v457;
  do
  {
    v5 = &v456[v3];
    *v5 = 0;
    *(v5 + 1) = 0;
    v3 += 4;
  }

  while (v3 != 80);
  if (a2)
  {
    result = 0;
    switch(a2)
    {
      case 2:
      case 18:
      case 19:
      case 61:
      case 65:
      case 78:
      case 124:
      case 131:
      case 132:
      case 133:
      case 134:
      case 153:
      case 175:
      case 251:
      case 254:
      case 282:
      case 297:
      case 301:
      case 335:
      case 336:
      case 337:
      case 338:
      case 339:
      case 340:
      case 341:
      case 342:
      case 344:
      case 346:
      case 347:
      case 348:
      case 349:
      case 350:
      case 351:
      case 352:
      case 353:
      case 354:
      case 355:
      case 356:
      case 357:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 364:
      case 365:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 373:
      case 374:
      case 375:
      case 376:
      case 377:
      case 378:
      case 379:
      case 380:
      case 381:
      case 382:
      case 383:
      case 384:
      case 385:
      case 386:
      case 387:
      case 388:
      case 389:
      case 390:
      case 391:
      case 393:
      case 394:
      case 395:
      case 396:
      case 397:
      case 398:
      case 399:
      case 400:
      case 401:
      case 403:
      case 404:
      case 405:
      case 406:
      case 407:
      case 408:
      case 409:
      case 410:
      case 411:
      case 412:
      case 416:
      case 419:
      case 420:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 470:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 500:
      case 501:
      case 502:
      case 503:
      case 504:
      case 505:
      case 506:
      case 507:
      case 508:
      case 509:
      case 510:
      case 511:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
      case 530:
      case 531:
      case 532:
      case 533:
      case 534:
      case 547:
      case 548:
      case 549:
      case 550:
      case 551:
      case 552:
      case 553:
      case 554:
      case 555:
      case 556:
      case 557:
      case 558:
      case 559:
      case 560:
      case 561:
      case 562:
      case 563:
      case 564:
      case 565:
      case 566:
      case 567:
      case 568:
      case 569:
      case 570:
      case 571:
      case 572:
      case 573:
      case 574:
      case 575:
      case 576:
      case 577:
      case 578:
      case 579:
      case 580:
      case 581:
      case 582:
      case 583:
      case 584:
      case 585:
      case 586:
      case 587:
      case 588:
      case 589:
      case 590:
      case 591:
      case 592:
      case 593:
      case 594:
      case 595:
      case 596:
      case 597:
      case 598:
      case 608:
      case 609:
      case 610:
      case 611:
      case 612:
      case 613:
      case 614:
      case 615:
      case 616:
      case 617:
      case 618:
      case 619:
      case 620:
      case 621:
      case 622:
      case 623:
      case 624:
      case 625:
      case 626:
      case 627:
      case 628:
      case 629:
      case 630:
      case 631:
      case 632:
      case 633:
      case 634:
      case 635:
      case 636:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
      case 642:
      case 643:
      case 644:
      case 645:
      case 646:
      case 647:
      case 648:
      case 649:
      case 650:
      case 651:
      case 652:
      case 653:
      case 654:
      case 655:
      case 656:
      case 657:
      case 658:
      case 659:
      case 660:
      case 661:
      case 662:
      case 663:
      case 667:
      case 671:
      case 672:
      case 685:
      case 686:
      case 687:
      case 688:
      case 956:
      case 957:
      case 958:
      case 959:
      case 960:
      case 961:
      case 962:
      case 963:
      case 964:
      case 965:
      case 966:
      case 967:
      case 968:
      case 969:
      case 970:
      case 971:
      case 972:
      case 973:
      case 974:
      case 975:
      case 976:
      case 977:
      case 978:
      case 979:
      case 980:
      case 981:
      case 983:
      case 984:
      case 985:
      case 986:
      case 987:
      case 988:
      case 990:
      case 992:
      case 994:
      case 995:
      case 996:
      case 997:
      case 998:
      case 999:
      case 1000:
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1020:
      case 1021:
      case 1022:
      case 1023:
      case 1024:
      case 1025:
      case 1026:
      case 1027:
      case 1028:
      case 1029:
      case 1030:
      case 1031:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1041:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
      case 1049:
      case 1050:
      case 1051:
      case 1052:
      case 1053:
      case 1054:
      case 1055:
      case 1057:
      case 1058:
      case 1059:
      case 1060:
      case 1061:
      case 1062:
      case 1063:
      case 1064:
      case 1065:
      case 1066:
      case 1068:
      case 1069:
      case 1070:
      case 1073:
      case 1074:
      case 1075:
      case 1076:
      case 1077:
      case 1078:
      case 1079:
      case 1080:
      case 1081:
      case 1082:
      case 1083:
      case 1084:
      case 1085:
      case 1086:
      case 1087:
      case 1088:
      case 1089:
      case 1090:
      case 1091:
      case 1092:
      case 1093:
      case 1094:
      case 1095:
      case 1096:
      case 1097:
      case 1098:
      case 1099:
      case 1100:
      case 1101:
      case 1102:
      case 1103:
      case 1104:
      case 1105:
      case 1106:
      case 1107:
      case 1108:
      case 1109:
      case 1110:
      case 1111:
      case 1113:
      case 1114:
      case 1115:
      case 1116:
      case 1117:
      case 1118:
      case 1119:
      case 1120:
      case 1121:
      case 1122:
      case 1123:
      case 1124:
      case 1125:
      case 1126:
      case 1127:
      case 1128:
      case 1129:
      case 1130:
      case 1131:
      case 1132:
      case 1133:
      case 1134:
      case 1135:
      case 1136:
      case 1137:
      case 1138:
      case 1139:
      case 1140:
      case 1141:
      case 1142:
      case 1143:
      case 1144:
      case 1145:
      case 1146:
      case 1147:
      case 1148:
      case 1149:
      case 1151:
      case 1152:
      case 1154:
      case 1156:
      case 1158:
      case 1159:
      case 1161:
      case 1163:
      case 1164:
      case 1165:
      case 1167:
      case 1168:
      case 1169:
      case 1170:
      case 1171:
      case 1172:
      case 1173:
      case 1174:
      case 1175:
      case 1176:
      case 1177:
      case 1178:
      case 1179:
      case 1180:
      case 1181:
      case 1182:
      case 1183:
      case 1184:
      case 1185:
      case 1186:
      case 1187:
      case 1188:
      case 1189:
      case 1190:
      case 1191:
      case 1192:
      case 1193:
      case 1194:
      case 1195:
      case 1196:
      case 1197:
      case 1198:
      case 1199:
      case 1200:
      case 1201:
      case 1203:
      case 1204:
      case 1205:
      case 1206:
      case 1207:
      case 1208:
      case 1209:
      case 1210:
      case 1238:
      case 1239:
      case 1240:
      case 1241:
      case 1242:
      case 1243:
      case 1244:
      case 1245:
      case 1246:
      case 1248:
      case 1250:
      case 1251:
      case 1253:
      case 1254:
      case 1255:
      case 1256:
      case 1257:
      case 1258:
      case 1259:
      case 1260:
      case 1261:
      case 1262:
      case 1263:
      case 1264:
      case 1265:
      case 1266:
      case 1267:
      case 1268:
      case 1269:
      case 1287:
      case 1288:
      case 1289:
      case 1290:
      case 1292:
      case 1293:
      case 1294:
      case 1295:
      case 1296:
      case 1297:
      case 1300:
      case 1301:
      case 1302:
      case 1303:
      case 1304:
      case 1305:
      case 1306:
      case 1307:
      case 1310:
      case 1311:
      case 1312:
      case 1313:
      case 1314:
      case 1315:
      case 1316:
      case 1317:
      case 1318:
      case 1319:
      case 1320:
      case 1321:
      case 1322:
      case 1323:
      case 1324:
      case 1325:
      case 1326:
      case 1327:
      case 1328:
      case 1329:
      case 1330:
      case 1331:
      case 1332:
      case 1333:
      case 1334:
      case 1335:
      case 1336:
      case 1337:
      case 1338:
      case 1339:
      case 1340:
      case 1341:
      case 1344:
      case 1345:
      case 1347:
      case 1350:
      case 1351:
      case 1353:
      case 1354:
      case 1355:
      case 1356:
      case 1357:
      case 1358:
      case 1359:
      case 1360:
      case 1361:
      case 1362:
      case 1363:
      case 1364:
      case 1365:
      case 1366:
      case 1367:
      case 1368:
      case 1369:
      case 1370:
      case 1371:
      case 1373:
      case 1375:
      case 1377:
      case 1379:
      case 1380:
      case 1381:
      case 1382:
      case 1384:
      case 1386:
      case 1387:
      case 1388:
      case 1389:
      case 1391:
      case 1392:
      case 1393:
      case 1394:
      case 1395:
      case 1396:
      case 1397:
      case 1398:
      case 1407:
      case 1408:
      case 1409:
      case 1413:
      case 1415:
      case 1416:
      case 1418:
      case 1420:
      case 1421:
      case 1423:
      case 1425:
      case 1426:
      case 1427:
      case 1428:
      case 1429:
      case 1431:
      case 1441:
      case 1442:
      case 1443:
      case 1447:
      case 1450:
      case 1452:
      case 1454:
      case 1456:
      case 1469:
      case 1475:
      case 1476:
      case 1477:
      case 1478:
      case 1479:
      case 1480:
      case 1481:
      case 1482:
      case 1483:
      case 1485:
      case 1486:
      case 1487:
      case 1488:
      case 1489:
      case 1495:
      case 1496:
      case 1497:
      case 1498:
      case 1499:
      case 1500:
      case 1517:
      case 1518:
      case 1519:
      case 1520:
      case 1521:
      case 1523:
      case 1524:
      case 1525:
      case 1526:
      case 1527:
      case 1528:
      case 1529:
      case 1530:
      case 1531:
      case 1532:
      case 1533:
      case 1534:
      case 1535:
      case 1536:
      case 1537:
      case 1538:
      case 1539:
      case 1540:
      case 1541:
      case 1542:
      case 1543:
      case 1544:
      case 1545:
      case 1546:
      case 1547:
      case 1548:
      case 1549:
      case 1550:
      case 1551:
      case 1552:
      case 1553:
      case 1554:
      case 1555:
      case 1556:
      case 1557:
      case 1558:
      case 1559:
      case 1560:
      case 1561:
      case 1562:
      case 1563:
      case 1564:
      case 1565:
      case 1566:
      case 1567:
      case 1568:
      case 1569:
      case 1570:
      case 1573:
      case 1574:
      case 1575:
      case 1576:
      case 1577:
      case 1578:
      case 1579:
      case 1580:
      case 1581:
      case 1582:
      case 1583:
      case 1584:
      case 1585:
      case 1586:
      case 1587:
      case 1588:
      case 1589:
      case 1590:
      case 1591:
      case 1592:
      case 1593:
      case 1595:
      case 1597:
      case 1599:
      case 1601:
      case 1602:
      case 1603:
      case 1604:
      case 1606:
      case 1608:
      case 1609:
      case 1610:
      case 1611:
      case 1612:
      case 1613:
      case 1622:
      case 1623:
      case 1624:
      case 1636:
      case 1637:
      case 1638:
      case 1642:
      case 1649:
      case 1652:
      case 1653:
      case 1654:
      case 1655:
      case 1656:
      case 1657:
      case 1658:
      case 1659:
      case 1660:
      case 1661:
      case 1662:
      case 1663:
      case 1664:
      case 1666:
      case 1668:
      case 1672:
      case 1673:
      case 1675:
      case 1676:
      case 1677:
      case 1678:
      case 1679:
      case 1680:
      case 1681:
      case 1682:
      case 1683:
      case 1684:
      case 1685:
      case 1686:
      case 1687:
      case 1688:
      case 1689:
      case 1690:
      case 1691:
      case 1692:
      case 1693:
      case 1694:
      case 1695:
      case 1696:
      case 1697:
      case 1698:
      case 1699:
      case 1700:
      case 1701:
      case 1702:
      case 1703:
      case 1704:
      case 1705:
      case 1706:
      case 1707:
      case 1708:
      case 1709:
      case 1710:
      case 1711:
      case 1712:
      case 1713:
      case 1714:
      case 1715:
      case 1716:
      case 1717:
      case 1718:
      case 1719:
      case 1720:
      case 1721:
      case 1722:
      case 1723:
      case 1726:
      case 1727:
      case 1728:
      case 1729:
      case 1730:
      case 1731:
      case 1732:
      case 1733:
      case 1734:
      case 1735:
      case 1736:
      case 1737:
      case 1738:
      case 1739:
      case 1745:
      case 2408:
      case 2580:
      case 2581:
      case 2586:
      case 2587:
      case 2588:
      case 2589:
      case 2590:
      case 2591:
      case 2615:
      case 2616:
      case 2617:
      case 2618:
      case 2619:
      case 2620:
      case 2621:
      case 2622:
      case 2623:
      case 2624:
      case 2625:
      case 2626:
      case 2627:
      case 2628:
      case 2629:
      case 2630:
      case 2631:
      case 2632:
      case 2633:
      case 2634:
      case 2635:
      case 2636:
      case 2637:
      case 2638:
      case 2639:
      case 2640:
      case 2641:
      case 2642:
      case 2643:
      case 2644:
      case 2645:
      case 2646:
      case 2647:
      case 2648:
      case 2649:
      case 2650:
      case 2651:
      case 2652:
      case 2653:
      case 2654:
      case 2655:
      case 2656:
      case 2657:
      case 2658:
      case 2659:
      case 2660:
      case 2661:
      case 2662:
      case 2663:
      case 2664:
      case 2665:
      case 2666:
      case 2667:
      case 2668:
      case 2669:
      case 2670:
      case 2671:
      case 2672:
      case 2673:
      case 2674:
      case 2675:
      case 2676:
      case 2677:
      case 2678:
      case 2679:
      case 2680:
      case 2681:
      case 2682:
      case 2683:
      case 2684:
      case 2685:
      case 2686:
      case 2687:
      case 2688:
      case 2689:
      case 2690:
      case 2691:
      case 2692:
      case 2693:
      case 2694:
      case 2695:
      case 2696:
      case 2697:
      case 2698:
      case 2699:
      case 2700:
      case 2701:
      case 2702:
      case 2703:
      case 2704:
      case 2705:
      case 2706:
      case 2707:
      case 2708:
      case 2709:
      case 2710:
      case 2711:
      case 2712:
      case 2713:
      case 2714:
      case 2715:
      case 2716:
      case 2717:
      case 2718:
      case 2719:
      case 2720:
      case 2721:
      case 2722:
      case 2723:
      case 2724:
      case 2725:
      case 2734:
      case 2735:
      case 2736:
      case 2737:
      case 2738:
      case 2739:
      case 2740:
      case 2741:
      case 2742:
      case 2743:
      case 2744:
      case 2745:
      case 2746:
      case 2747:
      case 2748:
      case 2749:
      case 2750:
      case 2751:
      case 2752:
      case 2753:
      case 2754:
      case 2755:
      case 2756:
      case 2757:
      case 2758:
      case 2759:
      case 2760:
      case 2761:
      case 2762:
      case 2763:
      case 2764:
      case 2765:
      case 2766:
      case 2767:
      case 2768:
      case 2769:
      case 2770:
      case 2771:
      case 2772:
      case 2773:
      case 2774:
      case 2775:
      case 2776:
      case 2777:
      case 2778:
      case 2779:
      case 2780:
      case 2781:
      case 2782:
      case 2783:
      case 2784:
      case 2785:
      case 2786:
      case 2787:
      case 2788:
      case 2789:
      case 2790:
      case 2791:
      case 2792:
      case 2793:
      case 2794:
      case 2795:
      case 2796:
      case 2797:
      case 2798:
      case 2799:
      case 2808:
      case 2809:
      case 2810:
      case 2811:
      case 2812:
      case 2813:
      case 2814:
      case 2815:
      case 2816:
      case 2817:
      case 2818:
      case 2819:
      case 2820:
      case 2821:
      case 2822:
      case 2823:
      case 2824:
      case 2825:
      case 2826:
      case 2827:
      case 2828:
      case 2829:
      case 2830:
      case 2831:
      case 2832:
      case 2833:
      case 2834:
      case 2835:
      case 2836:
      case 2837:
      case 2838:
      case 2839:
      case 2840:
      case 2841:
      case 2842:
      case 2843:
      case 2844:
      case 2845:
      case 2846:
      case 2847:
      case 2848:
      case 2849:
      case 2850:
      case 2851:
      case 2852:
      case 2853:
      case 2854:
      case 2855:
      case 2856:
      case 2857:
      case 2858:
      case 2859:
      case 2860:
      case 2874:
      case 2875:
      case 2876:
      case 2877:
      case 2878:
      case 2879:
      case 2880:
      case 2881:
      case 2882:
      case 2883:
      case 2884:
      case 2885:
      case 2886:
      case 2887:
      case 2888:
      case 2889:
      case 2890:
      case 2891:
      case 2892:
      case 2893:
      case 2894:
      case 2895:
      case 2896:
      case 2897:
      case 2898:
      case 2899:
      case 2900:
      case 2901:
      case 2902:
      case 2903:
      case 2904:
      case 2905:
      case 2906:
      case 2907:
      case 2908:
      case 2909:
      case 2910:
      case 2911:
      case 2912:
      case 2913:
      case 2914:
      case 2915:
      case 2916:
      case 2917:
      case 2918:
      case 2919:
      case 2920:
      case 2921:
      case 2922:
      case 2923:
      case 2924:
      case 2925:
      case 2926:
      case 2927:
      case 2928:
      case 2929:
      case 2930:
      case 2931:
      case 2932:
      case 2933:
      case 2944:
      case 2945:
      case 2946:
      case 2947:
      case 2948:
      case 2949:
      case 2950:
      case 2951:
      case 2952:
      case 2953:
      case 2954:
      case 2955:
      case 2956:
      case 2957:
      case 2958:
      case 2959:
      case 2965:
      case 2966:
      case 2967:
      case 2968:
      case 2969:
      case 2970:
      case 2971:
      case 2972:
      case 2973:
      case 2974:
      case 2975:
      case 2976:
      case 2977:
      case 2978:
      case 2979:
      case 2980:
      case 2981:
      case 2982:
      case 2983:
      case 2984:
      case 2985:
      case 2986:
      case 2987:
      case 2988:
      case 2989:
      case 2990:
      case 2991:
      case 2992:
      case 2993:
      case 2994:
      case 2996:
      case 2997:
      case 3009:
      case 3010:
      case 3014:
      case 3015:
      case 3016:
      case 3017:
      case 3018:
      case 3019:
      case 3021:
      case 3022:
      case 3023:
      case 3024:
      case 3025:
      case 3026:
      case 3027:
      case 3028:
      case 3029:
      case 3030:
      case 3034:
      case 3035:
      case 3036:
      case 3037:
      case 3053:
      case 3054:
      case 3055:
      case 3056:
      case 3057:
      case 3058:
      case 3059:
      case 3060:
      case 3061:
      case 3062:
      case 3063:
      case 3064:
      case 3065:
      case 3066:
      case 3067:
      case 3068:
      case 3070:
      case 3071:
      case 3072:
      case 3073:
      case 3074:
      case 3076:
      case 3077:
      case 3078:
      case 3079:
      case 3080:
      case 3081:
      case 3082:
      case 3084:
      case 3085:
      case 3086:
      case 3087:
      case 3088:
      case 3089:
      case 3090:
      case 3091:
      case 3092:
      case 3093:
      case 3094:
      case 3095:
      case 3096:
      case 3097:
      case 3098:
      case 3100:
      case 3101:
      case 3102:
      case 3103:
      case 3104:
      case 3105:
      case 3106:
      case 3107:
      case 3108:
      case 3109:
      case 3110:
      case 3111:
      case 3112:
      case 3113:
      case 3114:
      case 3115:
      case 3116:
      case 3117:
      case 3118:
      case 3119:
      case 3120:
      case 3122:
      case 3123:
      case 3124:
      case 3125:
      case 3126:
      case 3127:
      case 3128:
      case 3129:
      case 3130:
      case 3131:
      case 3132:
      case 3133:
      case 3134:
      case 3135:
      case 3136:
      case 3139:
      case 3142:
      case 3143:
      case 3144:
      case 3145:
      case 3146:
      case 3147:
      case 3148:
      case 3149:
      case 3150:
      case 3151:
      case 3152:
      case 3153:
      case 3154:
      case 3155:
      case 3156:
      case 3157:
      case 3158:
      case 3159:
      case 3160:
      case 3161:
      case 3162:
      case 3163:
      case 3164:
      case 3165:
      case 3166:
      case 3167:
      case 3168:
      case 3169:
      case 3170:
      case 3171:
      case 3172:
      case 3173:
      case 3174:
      case 3175:
      case 3176:
      case 3177:
      case 3178:
      case 3179:
      case 3180:
      case 3181:
      case 3182:
      case 3183:
      case 3184:
      case 3185:
      case 3186:
      case 3187:
      case 3188:
      case 3189:
      case 3190:
      case 3191:
      case 3192:
      case 3193:
      case 3194:
      case 3195:
      case 3196:
      case 3197:
      case 3198:
      case 3199:
      case 3200:
      case 3201:
      case 3202:
      case 3203:
      case 3204:
      case 3205:
      case 3206:
      case 3207:
      case 3208:
      case 3209:
      case 3210:
      case 3211:
      case 3213:
      case 3214:
      case 3216:
      case 3218:
      case 3220:
      case 3222:
      case 3224:
      case 3229:
      case 3230:
      case 3231:
      case 3232:
      case 3233:
      case 3235:
      case 3239:
      case 3240:
      case 3241:
      case 3242:
      case 3244:
      case 3253:
      case 3254:
      case 3255:
      case 3256:
      case 3257:
      case 3258:
      case 3259:
      case 3260:
      case 3261:
      case 3262:
      case 3265:
      case 3267:
      case 3268:
      case 3269:
      case 3270:
      case 3271:
      case 3273:
      case 3274:
      case 3276:
      case 3279:
      case 3281:
      case 3282:
      case 3284:
      case 3285:
      case 3286:
      case 3287:
      case 3288:
      case 3292:
      case 3293:
      case 3294:
      case 3295:
      case 3296:
      case 3297:
      case 3298:
      case 3299:
      case 3300:
      case 3301:
      case 3302:
      case 3303:
      case 3304:
      case 3305:
      case 3307:
      case 3309:
      case 3311:
      case 3312:
      case 3313:
      case 3315:
      case 3316:
      case 3317:
      case 3318:
      case 3319:
      case 3320:
      case 3321:
      case 3322:
      case 3323:
      case 3324:
      case 3325:
      case 3326:
      case 3327:
      case 3328:
      case 3329:
      case 3330:
      case 3331:
      case 3332:
      case 3333:
      case 3334:
      case 3335:
      case 3336:
      case 3337:
      case 3338:
      case 3339:
      case 3340:
      case 3341:
      case 3342:
      case 3343:
      case 3344:
      case 3345:
      case 3401:
      case 3403:
      case 3404:
      case 3405:
      case 3406:
      case 3407:
      case 3408:
      case 3409:
      case 3410:
      case 3411:
      case 3412:
      case 3413:
      case 3414:
      case 3415:
      case 3416:
      case 3417:
      case 3418:
      case 3419:
      case 3420:
      case 3421:
      case 3422:
      case 3423:
      case 3424:
      case 3425:
      case 3426:
      case 3427:
      case 3428:
      case 3429:
      case 3430:
      case 3431:
      case 3432:
      case 3433:
      case 3434:
      case 3437:
      case 3438:
      case 3439:
      case 3440:
      case 3441:
      case 3442:
      case 3443:
      case 3444:
      case 3445:
      case 3446:
      case 3447:
      case 3448:
      case 3449:
      case 3450:
      case 3451:
      case 3452:
      case 3453:
      case 3454:
      case 3455:
      case 3456:
      case 3457:
      case 3458:
      case 3459:
      case 3460:
      case 3461:
      case 3462:
      case 3463:
      case 3464:
      case 3465:
      case 3466:
      case 3467:
      case 3468:
      case 3469:
      case 3470:
      case 3471:
      case 3472:
      case 3473:
      case 3474:
      case 3475:
      case 3476:
      case 3477:
      case 3478:
      case 3479:
      case 3480:
      case 3481:
      case 3482:
      case 3483:
      case 3484:
      case 3485:
      case 3486:
      case 3487:
      case 3488:
      case 3489:
      case 3490:
      case 3491:
      case 3492:
      case 3493:
      case 3494:
      case 3495:
      case 3496:
      case 3497:
      case 3498:
      case 3499:
      case 3500:
      case 3501:
      case 3502:
      case 3503:
      case 3504:
      case 3505:
      case 3506:
      case 3507:
      case 3508:
      case 3509:
      case 3510:
      case 3511:
      case 3512:
      case 3513:
      case 3514:
      case 3515:
      case 3516:
      case 3517:
      case 3518:
      case 3519:
      case 3520:
      case 3521:
      case 3522:
      case 3523:
      case 3524:
      case 3525:
      case 3526:
      case 3527:
      case 3528:
      case 3529:
      case 3530:
      case 3531:
      case 3532:
      case 3533:
      case 3534:
      case 3535:
      case 3536:
      case 3537:
      case 3538:
      case 3539:
      case 3540:
      case 3541:
      case 3542:
      case 3543:
      case 3544:
      case 3545:
      case 3546:
      case 3547:
      case 3548:
      case 3549:
      case 3550:
      case 3551:
      case 3552:
      case 3553:
      case 3554:
      case 3555:
      case 3556:
      case 3557:
      case 3558:
      case 3559:
      case 3560:
      case 3561:
      case 3562:
      case 3563:
      case 3564:
      case 3565:
      case 3566:
      case 3567:
      case 3568:
      case 3569:
      case 3571:
      case 3572:
      case 3573:
      case 3574:
      case 3575:
      case 3576:
      case 3577:
      case 3578:
      case 3579:
      case 3580:
      case 3581:
      case 3582:
      case 3583:
      case 3584:
      case 3585:
      case 3586:
      case 3587:
      case 3588:
      case 3589:
      case 3590:
      case 3591:
      case 3592:
      case 3593:
      case 3594:
      case 3595:
      case 3596:
      case 3597:
      case 3598:
      case 3599:
      case 3600:
      case 3601:
      case 3602:
      case 3603:
      case 3604:
      case 3605:
      case 3606:
      case 3607:
      case 3608:
      case 3609:
      case 3610:
      case 3611:
      case 3612:
      case 3613:
      case 3614:
      case 3615:
      case 3616:
      case 3617:
      case 3618:
      case 3619:
      case 3620:
      case 3621:
      case 3622:
      case 3624:
      case 3625:
      case 3626:
      case 3627:
      case 3628:
      case 3629:
      case 3630:
      case 3631:
      case 3632:
      case 3633:
      case 3634:
      case 3635:
      case 3636:
      case 3637:
      case 3638:
      case 3639:
      case 3640:
      case 3641:
      case 3642:
      case 3643:
      case 3644:
      case 3645:
      case 3646:
      case 3647:
      case 3648:
      case 3649:
      case 3650:
      case 3651:
      case 3652:
      case 3653:
      case 3654:
      case 3655:
      case 3656:
      case 3657:
      case 3658:
      case 3659:
      case 3660:
      case 3661:
      case 3662:
      case 3663:
      case 3664:
      case 3665:
      case 3666:
      case 3667:
      case 3668:
      case 3669:
      case 3670:
      case 3671:
      case 3672:
      case 3673:
      case 3674:
      case 3675:
      case 3676:
      case 3677:
      case 3678:
      case 3679:
      case 3684:
      case 3685:
      case 3686:
      case 3687:
      case 3688:
      case 3689:
      case 3690:
      case 3691:
      case 3692:
      case 3693:
      case 3694:
      case 3695:
      case 3696:
      case 3697:
      case 3698:
      case 3699:
      case 3700:
      case 3701:
      case 3702:
      case 3703:
      case 3704:
      case 3705:
      case 3706:
      case 3707:
      case 3708:
      case 3709:
      case 3710:
      case 3711:
      case 3712:
      case 3713:
      case 3714:
      case 3715:
      case 3716:
      case 3717:
      case 3718:
      case 3719:
      case 3720:
      case 3721:
      case 3722:
      case 3723:
      case 3724:
      case 3725:
      case 3726:
      case 3727:
      case 3728:
      case 3729:
      case 3730:
      case 3731:
      case 3732:
      case 3733:
      case 3734:
      case 3735:
      case 3752:
      case 3753:
      case 3754:
      case 3755:
      case 3756:
      case 3757:
      case 3758:
      case 3759:
      case 3760:
      case 3761:
      case 3762:
      case 3763:
      case 3764:
      case 3765:
      case 3783:
      case 3784:
      case 3785:
      case 3786:
      case 3787:
      case 3788:
      case 3789:
      case 3790:
      case 3791:
      case 3792:
      case 3793:
      case 3794:
      case 3795:
      case 3796:
      case 3797:
      case 3798:
      case 3799:
      case 3800:
      case 3801:
      case 3802:
      case 3803:
      case 3804:
      case 3805:
      case 3806:
      case 3808:
      case 3809:
      case 3810:
      case 3811:
      case 3812:
      case 3813:
      case 3815:
      case 3817:
      case 3819:
      case 3821:
      case 3822:
      case 3823:
      case 3824:
      case 3825:
      case 3826:
      case 3827:
      case 3828:
      case 3829:
      case 3830:
      case 3831:
      case 3832:
      case 3833:
      case 3834:
      case 3835:
      case 3836:
      case 3851:
      case 3852:
      case 3853:
      case 3854:
      case 3855:
      case 3856:
      case 3857:
      case 3858:
      case 3859:
      case 3860:
      case 3861:
      case 3862:
      case 3863:
      case 3865:
      case 3866:
      case 3868:
      case 3869:
      case 3870:
      case 3871:
      case 3872:
      case 3889:
      case 3890:
      case 3896:
      case 3898:
      case 3900:
      case 3901:
      case 3902:
      case 3903:
      case 3904:
      case 3905:
      case 3906:
      case 3907:
      case 3908:
      case 3909:
      case 3910:
      case 3911:
      case 3912:
      case 3913:
      case 3914:
      case 3915:
      case 3917:
      case 3918:
      case 3919:
      case 3920:
      case 3921:
      case 3922:
      case 3923:
      case 3924:
      case 3925:
      case 3933:
      case 3935:
      case 3937:
      case 3940:
      case 3946:
      case 3953:
      case 3954:
      case 3955:
      case 3956:
      case 3957:
      case 3958:
      case 3961:
      case 3975:
      case 3976:
      case 3977:
      case 3978:
      case 3979:
      case 3980:
      case 3981:
      case 3982:
      case 3983:
      case 3984:
      case 3985:
      case 3986:
      case 3987:
      case 3988:
      case 3989:
      case 3990:
      case 3991:
      case 3992:
      case 3993:
      case 3994:
      case 3995:
      case 3996:
      case 3997:
      case 3998:
      case 3999:
      case 4000:
      case 4001:
      case 4002:
      case 4003:
      case 4004:
      case 4005:
      case 4006:
      case 4007:
      case 4008:
      case 4009:
      case 4010:
      case 4011:
      case 4088:
      case 4089:
      case 4090:
      case 4091:
      case 4092:
      case 4093:
      case 4094:
      case 4095:
      case 4096:
      case 4097:
      case 4098:
      case 4099:
      case 4100:
      case 4101:
      case 4102:
      case 4103:
      case 4104:
      case 4105:
      case 4106:
      case 4107:
      case 4108:
      case 4109:
      case 4110:
      case 4111:
      case 4112:
      case 4113:
      case 4114:
      case 4115:
      case 4116:
      case 4117:
      case 4118:
      case 4119:
      case 4120:
      case 4121:
      case 4122:
      case 4123:
      case 4124:
      case 4125:
      case 4126:
      case 4127:
      case 4128:
      case 4129:
      case 4130:
      case 4131:
      case 4132:
      case 4133:
      case 4134:
      case 4135:
      case 4136:
      case 4137:
      case 4138:
      case 4139:
      case 4140:
      case 4141:
      case 4142:
      case 4143:
      case 4144:
      case 4145:
      case 4146:
      case 4147:
      case 4148:
      case 4149:
      case 4150:
      case 4151:
      case 4152:
      case 4153:
      case 4154:
      case 4155:
      case 4156:
      case 4157:
      case 4158:
      case 4159:
      case 4160:
      case 4161:
      case 4162:
      case 4163:
      case 4164:
      case 4165:
      case 4166:
      case 4167:
      case 4168:
      case 4169:
      case 4170:
      case 4171:
      case 4172:
      case 4173:
      case 4174:
      case 4175:
      case 4176:
      case 4177:
      case 4178:
      case 4179:
      case 4180:
      case 4181:
      case 4182:
      case 4183:
      case 4184:
      case 4185:
      case 4186:
      case 4187:
      case 4188:
      case 4189:
      case 4190:
      case 4191:
      case 4192:
      case 4193:
      case 4194:
      case 4195:
      case 4196:
      case 4197:
      case 4198:
      case 4199:
      case 4200:
      case 4201:
      case 4202:
      case 4203:
      case 4204:
      case 4205:
      case 4208:
      case 4209:
      case 4210:
      case 4211:
      case 4212:
      case 4213:
      case 4214:
      case 4215:
      case 4216:
      case 4217:
      case 4218:
      case 4219:
      case 4220:
      case 4221:
      case 4222:
      case 4223:
      case 4224:
      case 4225:
      case 4226:
      case 4227:
      case 4228:
      case 4229:
      case 4230:
      case 4231:
      case 4232:
      case 4233:
      case 4234:
      case 4235:
      case 4236:
      case 4237:
      case 4238:
      case 4239:
      case 4240:
      case 4241:
      case 4242:
      case 4243:
      case 4244:
      case 4245:
      case 4246:
      case 4247:
      case 4248:
      case 4249:
      case 4250:
      case 4251:
      case 4252:
      case 4253:
      case 4254:
      case 4255:
      case 4256:
      case 4257:
      case 4258:
      case 4259:
      case 4260:
      case 4261:
      case 4262:
      case 4263:
      case 4264:
      case 4265:
      case 4266:
      case 4267:
      case 4268:
      case 4269:
      case 4270:
      case 4271:
      case 4272:
      case 4273:
      case 4274:
      case 4275:
      case 4276:
      case 4277:
      case 4278:
      case 4279:
      case 4280:
      case 4281:
      case 4282:
      case 4283:
      case 4284:
      case 4285:
      case 4286:
      case 4287:
      case 4288:
      case 4289:
      case 4290:
      case 4291:
      case 4292:
      case 4293:
      case 4294:
      case 4295:
      case 4296:
      case 4297:
      case 4298:
      case 4299:
      case 4300:
      case 4301:
      case 4302:
      case 4303:
      case 4304:
      case 4305:
      case 4306:
      case 4307:
      case 4308:
      case 4309:
      case 4310:
      case 4311:
      case 4312:
      case 4313:
      case 4314:
      case 4315:
      case 4316:
      case 4317:
      case 4318:
      case 4319:
      case 4320:
      case 4321:
      case 4322:
      case 4323:
      case 4324:
      case 4325:
      case 4326:
      case 4327:
      case 4328:
      case 4329:
      case 4330:
      case 4331:
      case 4332:
      case 4333:
      case 4334:
      case 4335:
      case 4336:
      case 4337:
      case 4338:
      case 4339:
      case 4340:
      case 4341:
      case 4342:
      case 4343:
      case 4344:
      case 4345:
      case 4346:
      case 4347:
      case 4348:
      case 4349:
      case 4350:
      case 4351:
      case 4352:
      case 4353:
      case 4354:
      case 4355:
      case 4356:
      case 4357:
      case 4358:
      case 4359:
      case 4360:
      case 4361:
      case 4362:
      case 4363:
      case 4364:
      case 4365:
      case 4366:
      case 4367:
      case 4368:
      case 4369:
      case 4370:
      case 4371:
      case 4372:
      case 4373:
      case 4374:
      case 4375:
      case 4376:
      case 4377:
      case 4378:
      case 4379:
      case 4380:
      case 4381:
      case 4382:
      case 4383:
      case 4384:
      case 4385:
      case 4386:
      case 4387:
      case 4388:
      case 4389:
      case 4390:
      case 4391:
      case 4392:
      case 4393:
      case 4394:
      case 4395:
      case 4396:
      case 4397:
      case 4398:
      case 4399:
      case 4400:
      case 4401:
      case 4402:
      case 4403:
      case 4404:
      case 4405:
      case 4406:
      case 4407:
      case 4408:
      case 4409:
      case 4410:
      case 4411:
      case 4412:
      case 4413:
      case 4414:
      case 4415:
      case 4416:
      case 4417:
      case 4418:
      case 4419:
      case 4420:
      case 4421:
      case 4422:
      case 4423:
      case 4424:
      case 4425:
      case 4426:
      case 4427:
      case 4428:
      case 4429:
      case 4430:
      case 4431:
      case 4432:
      case 4433:
      case 4434:
      case 4435:
      case 4436:
      case 4437:
      case 4438:
      case 4439:
      case 4440:
      case 4441:
      case 4442:
      case 4443:
      case 4444:
      case 4445:
      case 4446:
      case 4447:
      case 4448:
      case 4449:
      case 4450:
      case 4451:
      case 4464:
      case 4465:
      case 4466:
      case 4467:
      case 4468:
      case 4469:
      case 4470:
      case 4471:
      case 4472:
      case 4473:
      case 4474:
      case 4475:
      case 4476:
      case 4477:
      case 4478:
      case 4479:
      case 4480:
      case 4481:
      case 4482:
      case 4483:
      case 4484:
      case 4485:
      case 4486:
      case 4487:
      case 4488:
      case 4489:
      case 4490:
      case 4491:
      case 4492:
      case 4493:
      case 4494:
      case 4495:
      case 4496:
      case 4497:
      case 4498:
      case 4499:
      case 4500:
      case 4501:
      case 4502:
      case 4503:
      case 4504:
      case 4505:
      case 4506:
      case 4507:
      case 4508:
      case 4509:
      case 4510:
      case 4511:
      case 4512:
      case 4513:
      case 4514:
      case 4515:
      case 4516:
      case 4517:
      case 4518:
      case 4519:
      case 4520:
      case 4521:
      case 4522:
      case 4523:
      case 4524:
      case 4525:
      case 4526:
      case 4527:
      case 4528:
      case 4529:
      case 4530:
      case 4531:
      case 4532:
      case 4533:
      case 4534:
      case 4535:
      case 4536:
      case 4537:
      case 4538:
      case 4539:
      case 4542:
      case 4543:
      case 4544:
      case 4545:
      case 4546:
      case 4547:
      case 4548:
      case 4549:
      case 4550:
      case 4551:
      case 4552:
      case 4553:
      case 4554:
      case 4555:
      case 4556:
      case 4557:
      case 4558:
      case 4559:
      case 4564:
      case 4565:
      case 4566:
      case 4567:
      case 4568:
      case 4569:
      case 4582:
      case 4583:
      case 4584:
      case 4585:
      case 4586:
      case 4587:
      case 4588:
      case 4589:
      case 4590:
      case 4591:
      case 4592:
      case 4593:
      case 4594:
      case 4595:
      case 4596:
      case 4597:
      case 4598:
      case 4599:
      case 4600:
      case 4601:
      case 4602:
      case 4603:
      case 4604:
      case 4605:
      case 4606:
      case 4607:
      case 4608:
      case 4609:
      case 4610:
      case 4611:
      case 4612:
      case 4613:
      case 4614:
      case 4615:
      case 4616:
      case 4617:
      case 4618:
      case 4619:
      case 4620:
      case 4621:
      case 4622:
      case 4623:
      case 4624:
      case 4625:
      case 4626:
      case 4627:
      case 4628:
      case 4629:
      case 4630:
      case 4631:
      case 4632:
      case 4633:
      case 4634:
      case 4635:
      case 4636:
      case 4637:
      case 4638:
      case 4639:
      case 4640:
      case 4641:
      case 4642:
      case 4643:
      case 4644:
      case 4645:
      case 4646:
      case 4647:
      case 4648:
      case 4649:
      case 4650:
      case 4651:
      case 4652:
      case 4653:
      case 4654:
      case 4655:
      case 4656:
      case 4657:
      case 4658:
      case 4659:
      case 4660:
      case 4661:
      case 4662:
      case 4663:
      case 4664:
      case 4665:
      case 4666:
      case 4667:
      case 4668:
      case 4669:
      case 4670:
      case 4671:
      case 4672:
      case 4673:
      case 4674:
      case 4675:
      case 4676:
      case 4677:
      case 4678:
      case 4679:
      case 4680:
      case 4681:
      case 4682:
      case 4683:
      case 4684:
      case 4685:
      case 4686:
      case 4687:
      case 4688:
      case 4689:
      case 4690:
      case 4691:
      case 4692:
      case 4693:
      case 4694:
      case 4695:
      case 4696:
      case 4697:
      case 4698:
      case 4699:
      case 4700:
      case 4701:
      case 4702:
      case 4703:
      case 4704:
      case 4705:
      case 4706:
      case 4707:
      case 4708:
      case 4709:
      case 4710:
      case 4711:
      case 4712:
      case 4713:
      case 4714:
      case 4715:
      case 4716:
      case 4717:
      case 4718:
      case 4719:
      case 4720:
      case 4721:
      case 4722:
      case 4723:
      case 4724:
      case 4725:
      case 4726:
      case 4727:
      case 4728:
      case 4729:
      case 4730:
      case 4731:
      case 4732:
      case 4733:
      case 4734:
      case 4735:
      case 4736:
      case 4737:
      case 4738:
      case 4739:
      case 4740:
      case 4741:
      case 4742:
      case 4743:
      case 4744:
      case 4745:
      case 4746:
      case 4747:
      case 4748:
      case 4749:
      case 4750:
      case 4751:
      case 4752:
      case 4753:
      case 4754:
      case 4755:
      case 4756:
      case 4757:
      case 4758:
      case 4759:
      case 4760:
      case 4761:
      case 4762:
      case 4763:
      case 4764:
      case 4765:
      case 4766:
      case 4767:
      case 4768:
      case 4769:
      case 4770:
      case 4771:
      case 4772:
      case 4773:
      case 4774:
      case 4775:
      case 4776:
      case 4777:
      case 4778:
      case 4779:
      case 4780:
      case 4781:
      case 4782:
      case 4783:
      case 4784:
      case 4785:
      case 4786:
      case 4787:
      case 4788:
      case 4789:
      case 4790:
      case 4791:
      case 4792:
      case 4793:
      case 4794:
      case 4795:
      case 4796:
      case 4797:
      case 4798:
      case 4799:
      case 4800:
      case 4801:
      case 4802:
      case 4803:
      case 4804:
      case 4805:
      case 4806:
      case 4807:
      case 4808:
      case 4809:
      case 4810:
      case 4811:
      case 4812:
      case 4813:
      case 4814:
      case 4815:
      case 4816:
      case 4817:
      case 4818:
      case 4819:
      case 4820:
      case 4821:
      case 4822:
      case 4823:
      case 4824:
      case 4825:
      case 4830:
      case 4831:
      case 4832:
      case 4833:
      case 4834:
      case 4835:
      case 4836:
      case 4837:
      case 4838:
      case 4839:
      case 4840:
      case 4841:
      case 4842:
      case 4843:
      case 4844:
      case 4845:
      case 4850:
      case 4851:
      case 4852:
      case 4853:
      case 4854:
      case 4855:
      case 4856:
      case 4857:
      case 4858:
      case 4859:
      case 4860:
      case 4861:
      case 4862:
      case 4863:
      case 4864:
      case 4865:
      case 4866:
      case 4867:
      case 4868:
      case 4869:
      case 4874:
      case 4875:
      case 4876:
      case 4877:
      case 4878:
      case 4879:
      case 4880:
      case 4881:
      case 4882:
      case 4883:
      case 4902:
      case 4903:
      case 4904:
      case 4905:
      case 4906:
      case 4907:
      case 4908:
      case 4909:
      case 4910:
      case 4911:
      case 4912:
      case 4913:
      case 4914:
      case 4915:
      case 4916:
      case 4917:
      case 4918:
      case 4919:
      case 4920:
      case 4921:
      case 4922:
      case 4923:
      case 4924:
      case 4925:
      case 4926:
      case 4927:
      case 4928:
      case 4929:
      case 4930:
      case 4931:
      case 4932:
      case 4933:
      case 4934:
      case 4935:
      case 4936:
      case 4937:
      case 4938:
      case 4939:
      case 4940:
      case 4941:
      case 4942:
      case 4943:
      case 4944:
      case 4945:
      case 4946:
      case 4947:
      case 4948:
      case 4949:
      case 4950:
      case 4951:
      case 4952:
      case 4953:
      case 4954:
      case 4955:
      case 4956:
      case 4957:
      case 4958:
      case 4959:
      case 4960:
      case 4961:
      case 4962:
      case 4963:
      case 4964:
      case 4965:
      case 4966:
      case 4967:
      case 4968:
      case 4969:
      case 4970:
      case 4971:
      case 4972:
      case 4973:
      case 4974:
      case 4975:
      case 4976:
      case 4977:
      case 4978:
      case 4979:
      case 4980:
      case 4981:
      case 4982:
      case 4983:
      case 4984:
      case 4985:
      case 4986:
      case 4987:
      case 4988:
      case 4989:
      case 4990:
      case 4991:
      case 4992:
      case 4993:
      case 4994:
      case 4995:
      case 4996:
      case 4997:
      case 4998:
      case 4999:
      case 5000:
      case 5001:
      case 5002:
      case 5003:
      case 5004:
      case 5005:
      case 5006:
      case 5007:
      case 5008:
      case 5009:
      case 5010:
      case 5011:
      case 5012:
      case 5013:
      case 5014:
      case 5015:
      case 5016:
      case 5017:
      case 5018:
      case 5019:
      case 5020:
      case 5021:
      case 5022:
      case 5023:
      case 5024:
      case 5025:
      case 5026:
      case 5027:
      case 5028:
      case 5029:
      case 5030:
      case 5031:
      case 5032:
      case 5033:
      case 5783:
      case 5784:
      case 5840:
      case 5841:
      case 5879:
      case 5880:
      case 5881:
      case 5882:
      case 5883:
      case 5884:
      case 5885:
      case 5886:
      case 5887:
      case 5888:
      case 5889:
      case 5890:
      case 5891:
      case 5892:
      case 5893:
      case 5894:
      case 5895:
      case 5896:
      case 5897:
      case 6045:
      case 6073:
      case 6074:
      case 6075:
      case 6208:
      case 6209:
      case 6220:
      case 6221:
      case 6222:
      case 6223:
      case 6224:
      case 6225:
      case 6226:
      case 6227:
      case 6228:
      case 6229:
      case 6230:
      case 6231:
      case 6232:
      case 6233:
      case 6315:
      case 6316:
      case 6317:
      case 6318:
      case 6319:
      case 6355:
      case 6356:
      case 6357:
      case 6358:
      case 6359:
      case 6360:
      case 6361:
      case 6362:
      case 6363:
      case 6364:
      case 6365:
      case 6366:
      case 6367:
      case 6368:
      case 6369:
      case 6370:
      case 6371:
      case 7374:
      case 7375:
      case 7376:
      case 7377:
      case 7378:
      case 7379:
      case 7380:
      case 7381:
      case 7382:
      case 7383:
      case 7384:
      case 7385:
      case 7397:
      case 7398:
      case 7403:
      case 7404:
      case 7405:
      case 7406:
      case 7407:
      case 7413:
      case 7414:
      case 7415:
      case 7416:
      case 7417:
      case 7418:
      case 7419:
      case 7420:
      case 7421:
      case 7422:
      case 7423:
      case 7424:
      case 7425:
      case 7426:
      case 7427:
      case 7428:
      case 7429:
      case 7430:
      case 7431:
      case 7432:
      case 7433:
      case 7435:
      case 7437:
      case 7438:
      case 7439:
      case 7440:
      case 7441:
      case 7442:
      case 7443:
      case 7444:
      case 7445:
      case 7446:
      case 7447:
      case 7448:
      case 7449:
      case 7450:
      case 7451:
      case 7452:
      case 7453:
      case 7454:
      case 7455:
      case 7456:
      case 7457:
      case 7458:
      case 7459:
      case 7460:
      case 7461:
      case 7462:
      case 7463:
      case 7464:
      case 7465:
      case 7466:
      case 7467:
      case 7468:
      case 7469:
      case 7470:
      case 7471:
      case 7472:
      case 7473:
      case 7474:
      case 7475:
      case 7476:
      case 7477:
      case 7478:
      case 7479:
      case 7480:
      case 7481:
      case 7482:
      case 7483:
      case 7484:
      case 7485:
      case 7486:
      case 7487:
      case 7488:
      case 7489:
      case 7490:
      case 7497:
      case 7498:
      case 7499:
      case 7500:
      case 7501:
      case 7502:
      case 7503:
      case 7504:
      case 7505:
      case 7506:
      case 7507:
      case 7508:
      case 7509:
      case 7510:
      case 7511:
      case 7512:
      case 7513:
      case 7514:
      case 7515:
      case 7516:
      case 7517:
      case 7518:
      case 7519:
      case 7520:
      case 7521:
      case 7522:
      case 7523:
      case 7524:
      case 7525:
      case 7526:
      case 7527:
      case 7528:
      case 7529:
      case 7530:
      case 7532:
      case 7533:
      case 7534:
      case 7535:
      case 7537:
      case 7538:
      case 7539:
      case 7540:
      case 7541:
      case 7542:
      case 7544:
      case 7545:
      case 7546:
      case 7547:
      case 7548:
      case 7549:
      case 7550:
      case 7551:
      case 7552:
      case 7553:
      case 7554:
      case 7555:
      case 7556:
      case 7557:
      case 7558:
      case 7561:
      case 7562:
      case 7563:
      case 7564:
      case 7565:
      case 7566:
      case 7567:
      case 7568:
      case 7569:
      case 7570:
      case 7571:
      case 7572:
      case 7573:
      case 7575:
      case 7576:
      case 7577:
      case 7579:
      case 7580:
      case 7581:
      case 7582:
      case 7583:
      case 7584:
      case 7585:
      case 7586:
      case 7587:
      case 7588:
      case 7589:
      case 7590:
      case 7591:
      case 7592:
      case 7593:
      case 7594:
      case 7595:
      case 7596:
      case 7597:
      case 7598:
      case 7599:
      case 7600:
      case 7601:
      case 7602:
      case 7603:
      case 7613:
      case 7614:
      case 7615:
      case 7616:
      case 7617:
      case 7618:
      case 7619:
      case 7620:
      case 7621:
      case 7622:
      case 7623:
      case 7624:
      case 7625:
      case 7626:
      case 7627:
      case 7628:
      case 7629:
      case 7630:
      case 7631:
      case 7632:
      case 7633:
      case 7634:
      case 7636:
      case 7637:
      case 7638:
      case 7639:
      case 7640:
      case 7641:
      case 7642:
      case 7643:
      case 7644:
      case 7646:
      case 7647:
      case 7648:
      case 7649:
      case 7650:
      case 7651:
      case 7652:
      case 7653:
      case 7654:
      case 7655:
      case 7656:
      case 7657:
      case 7658:
      case 7659:
      case 7660:
      case 7661:
      case 7662:
      case 7663:
      case 7664:
      case 7665:
      case 7666:
      case 7667:
      case 7673:
      case 7674:
      case 7675:
      case 7676:
      case 7677:
      case 7678:
      case 7679:
      case 7680:
      case 7694:
      case 7696:
      case 7697:
      case 7698:
      case 7701:
      case 7702:
      case 7703:
      case 7704:
      case 7705:
      case 7706:
      case 7707:
      case 7708:
      case 7728:
      case 7729:
      case 7730:
      case 7731:
      case 7732:
      case 7734:
      case 7735:
      case 7736:
      case 7737:
      case 7738:
      case 7739:
      case 7740:
      case 7741:
      case 7742:
      case 7743:
      case 7744:
      case 7745:
      case 7746:
      case 7747:
      case 7748:
      case 7749:
      case 7750:
      case 7751:
      case 7752:
      case 7753:
      case 7754:
      case 7755:
      case 7756:
      case 7757:
      case 7763:
      case 7772:
      case 7773:
      case 7774:
      case 7775:
      case 7776:
      case 7777:
      case 7778:
      case 7780:
      case 7781:
      case 7782:
      case 7783:
      case 7784:
      case 7785:
      case 7786:
      case 7787:
      case 7788:
      case 7789:
      case 7790:
      case 7791:
      case 7792:
      case 7793:
      case 7794:
      case 7795:
      case 7796:
      case 7797:
      case 7798:
      case 7799:
      case 7800:
      case 7801:
      case 7802:
      case 7803:
      case 7804:
      case 7805:
      case 7806:
      case 7807:
      case 7808:
      case 7809:
      case 7810:
      case 7811:
      case 7812:
      case 7813:
      case 7814:
      case 7815:
      case 7816:
      case 7817:
      case 7818:
      case 7819:
      case 7820:
      case 7821:
      case 7822:
      case 7823:
      case 7824:
      case 7825:
      case 7826:
      case 7827:
      case 7828:
      case 7829:
      case 7830:
      case 7831:
      case 7832:
      case 7833:
      case 7834:
      case 7835:
      case 7836:
      case 7837:
      case 7838:
      case 7839:
      case 7840:
      case 7841:
      case 7842:
      case 7843:
      case 7844:
      case 7845:
      case 7846:
      case 7853:
      case 7854:
      case 7855:
      case 7856:
      case 7857:
      case 7858:
      case 7859:
      case 7860:
      case 7861:
      case 7863:
      case 7864:
      case 7869:
      case 7872:
      case 7881:
      case 7899:
      case 7904:
      case 7905:
      case 7906:
      case 7921:
      case 7922:
      case 7923:
      case 7924:
      case 7925:
      case 7926:
      case 7927:
      case 7928:
      case 7929:
      case 7930:
      case 7931:
      case 7932:
      case 7933:
      case 7934:
      case 7935:
      case 7936:
      case 7937:
      case 7938:
      case 7939:
      case 7940:
      case 7941:
      case 7942:
      case 7943:
      case 7944:
      case 7945:
      case 7946:
      case 7947:
      case 7948:
      case 7949:
      case 7950:
      case 7951:
      case 7952:
      case 7953:
      case 7954:
      case 7955:
      case 7956:
      case 7957:
      case 7958:
      case 7959:
      case 7960:
      case 7961:
      case 7962:
      case 7963:
      case 7964:
      case 7965:
      case 7966:
      case 7967:
      case 7970:
      case 7971:
      case 7972:
      case 7973:
      case 7974:
      case 7975:
      case 7976:
      case 7977:
      case 7979:
      case 7980:
      case 7981:
      case 7982:
      case 7983:
      case 7984:
      case 7985:
      case 7988:
      case 7989:
      case 8014:
      case 8015:
      case 8016:
      case 8017:
      case 8018:
      case 8019:
      case 8020:
      case 8021:
      case 8103:
      case 8104:
      case 8106:
      case 8112:
      case 8113:
      case 8114:
      case 8115:
      case 8117:
      case 8119:
      case 8121:
      case 8123:
      case 8125:
      case 8127:
      case 8129:
      case 8131:
      case 8133:
      case 8135:
      case 8137:
      case 8138:
      case 8143:
      case 8145:
      case 8146:
      case 8152:
      case 8154:
      case 8155:
      case 8156:
      case 8157:
      case 8159:
      case 8161:
      case 8163:
      case 8165:
      case 8167:
      case 8169:
      case 8171:
      case 8181:
      case 8183:
      case 8185:
      case 8186:
      case 8187:
      case 8188:
      case 8189:
      case 8190:
      case 8191:
      case 8192:
      case 8193:
      case 8195:
      case 8197:
      case 8199:
      case 8201:
      case 8203:
      case 8205:
      case 8207:
      case 8209:
      case 8211:
      case 8213:
      case 8215:
      case 8217:
      case 8219:
      case 8221:
      case 8223:
      case 8225:
      case 8227:
      case 8233:
      case 8239:
      case 8240:
      case 8241:
      case 8242:
      case 8243:
      case 8245:
      case 8247:
      case 8249:
      case 8334:
      case 8335:
      case 8338:
      case 8339:
      case 8340:
      case 8342:
      case 8344:
      case 8345:
      case 8346:
      case 8347:
      case 8348:
      case 8349:
      case 8350:
      case 8351:
      case 8352:
      case 8353:
      case 8354:
      case 8355:
      case 8356:
      case 8357:
      case 8358:
      case 8360:
      case 8362:
      case 8363:
      case 8364:
      case 8365:
      case 8366:
      case 8367:
      case 8368:
      case 8369:
      case 8370:
      case 8371:
      case 8372:
      case 8373:
      case 8374:
      case 8375:
      case 8376:
      case 8377:
      case 8378:
      case 8379:
      case 8380:
      case 8381:
      case 8382:
      case 8383:
      case 8384:
      case 8385:
      case 8386:
      case 8387:
      case 8388:
      case 8389:
      case 8390:
      case 8391:
      case 8392:
      case 8393:
      case 8394:
      case 8395:
      case 8397:
      case 8399:
      case 8401:
      case 8403:
      case 8404:
      case 8405:
      case 8406:
      case 8407:
      case 8408:
      case 8417:
      case 8419:
      case 8421:
      case 8423:
      case 8424:
      case 8425:
      case 8426:
      case 8427:
      case 8428:
      case 8429:
      case 8430:
      case 8431:
      case 8432:
      case 8433:
      case 8434:
      case 8435:
      case 8436:
      case 8437:
      case 8438:
      case 8439:
      case 8441:
      case 8443:
      case 8445:
      case 8447:
      case 8449:
      case 8455:
      case 8460:
      case 8462:
      case 8464:
      case 8470:
      case 8491:
      case 8493:
      case 8533:
      case 8551:
      case 8553:
      case 8555:
      case 8557:
      case 8567:
      case 8569:
      case 8571:
      case 8573:
      case 8574:
      case 8575:
      case 8576:
      case 8577:
      case 8579:
      case 8581:
      case 8583:
      case 8585:
      case 8587:
      case 10119:
      case 10130:
      case 10131:
      case 10132:
      case 10133:
      case 10171:
      case 10172:
      case 10173:
      case 10174:
      case 10175:
      case 10176:
      case 10177:
      case 10178:
      case 10179:
      case 10180:
      case 10181:
      case 10182:
      case 10183:
      case 10184:
      case 10185:
      case 10186:
      case 10187:
      case 10188:
      case 10189:
      case 10190:
      case 10191:
      case 10192:
      case 10193:
      case 10194:
      case 10199:
      case 10200:
      case 10209:
      case 10210:
      case 10211:
      case 10212:
      case 10213:
      case 10214:
      case 10215:
      case 10216:
      case 10217:
      case 10218:
      case 10219:
      case 10220:
      case 10221:
      case 10236:
      case 10237:
      case 10238:
      case 10239:
      case 10242:
      case 10243:
      case 10244:
      case 10245:
      case 10246:
      case 10248:
      case 10249:
      case 10250:
      case 10251:
      case 10261:
      case 10262:
      case 10263:
      case 10264:
      case 10265:
      case 10266:
      case 10267:
      case 10268:
      case 10269:
      case 10270:
      case 10273:
      case 10274:
      case 10275:
      case 10276:
      case 10277:
      case 10278:
      case 10279:
      case 10280:
      case 10281:
      case 10282:
      case 10283:
      case 10284:
      case 10285:
      case 10286:
      case 10287:
      case 10288:
      case 10289:
      case 10317:
      case 10318:
      case 10319:
      case 10320:
      case 10321:
      case 10322:
      case 10323:
      case 10324:
      case 10325:
      case 10326:
      case 10327:
      case 10328:
      case 10329:
      case 10330:
      case 10331:
      case 10332:
      case 10333:
      case 10334:
      case 10335:
      case 10336:
      case 10337:
      case 10338:
      case 10339:
      case 10340:
      case 10341:
      case 10342:
      case 10343:
      case 10344:
      case 10345:
      case 10346:
      case 10347:
      case 10348:
      case 10349:
      case 10350:
      case 10351:
      case 10352:
      case 10353:
      case 10354:
      case 10355:
      case 10356:
      case 10357:
      case 10358:
      case 10359:
      case 10360:
      case 10361:
      case 10362:
      case 10363:
      case 10364:
      case 10365:
      case 10366:
      case 10367:
      case 10368:
      case 10369:
      case 10370:
      case 10371:
      case 10372:
      case 10373:
      case 10374:
      case 10375:
      case 10376:
      case 10377:
      case 10378:
      case 10379:
      case 10380:
      case 10383:
      case 10384:
      case 10385:
      case 10386:
      case 10387:
      case 10388:
      case 10389:
      case 10390:
      case 10391:
      case 10392:
      case 10393:
      case 10394:
      case 10450:
      case 10451:
      case 10452:
      case 10453:
      case 10454:
      case 10455:
      case 10456:
      case 10457:
      case 10458:
      case 10459:
      case 10460:
      case 10461:
      case 10472:
      case 10473:
      case 10475:
      case 10477:
      case 10478:
      case 10480:
      case 10481:
      case 10483:
      case 10484:
      case 10486:
      case 10487:
      case 10490:
      case 10491:
      case 10493:
      case 10494:
      case 10496:
      case 10497:
      case 10499:
      case 10502:
      case 10504:
      case 10505:
      case 10507:
      case 10508:
      case 10510:
      case 10511:
      case 10514:
      case 10515:
      case 10517:
      case 10518:
      case 10520:
      case 10521:
      case 10523:
      case 10526:
      case 10561:
      case 10562:
      case 10564:
      case 10565:
      case 10583:
      case 10584:
      case 10585:
      case 10589:
      case 10590:
      case 10591:
      case 10595:
      case 10596:
      case 10597:
      case 10601:
      case 10605:
      case 10606:
      case 10607:
      case 10611:
      case 10615:
      case 10616:
      case 10617:
      case 10621:
      case 10622:
      case 10623:
      case 10627:
      case 10628:
      case 10629:
      case 10633:
      case 10634:
      case 10635:
      case 10639:
      case 10640:
      case 10641:
      case 10645:
      case 10646:
      case 10647:
      case 10651:
      case 10652:
      case 10653:
      case 10657:
      case 10658:
      case 10659:
      case 10663:
      case 10664:
      case 10665:
      case 10669:
      case 10670:
      case 10671:
      case 10675:
      case 10676:
      case 10677:
      case 10681:
      case 10682:
      case 10683:
      case 10711:
      case 10712:
      case 10714:
      case 10715:
      case 10765:
      case 10766:
      case 10767:
      case 10768:
      case 10769:
      case 10770:
      case 10771:
      case 10772:
      case 10773:
      case 10774:
      case 10775:
      case 10776:
      case 10777:
      case 10778:
      case 10779:
      case 10780:
      case 10781:
      case 10782:
      case 10783:
      case 10784:
      case 10785:
      case 10786:
      case 10787:
      case 10788:
      case 10789:
      case 10790:
      case 10791:
      case 10792:
      case 10793:
      case 10794:
      case 10795:
      case 10796:
      case 10797:
      case 10798:
      case 10799:
      case 10800:
      case 10801:
      case 10802:
      case 10803:
      case 10804:
      case 10805:
      case 10806:
      case 10807:
      case 10808:
      case 10809:
      case 10810:
      case 10811:
      case 10812:
      case 10813:
      case 10814:
      case 10815:
      case 10816:
      case 10817:
      case 10818:
      case 10819:
      case 10820:
      case 10821:
      case 10822:
      case 10823:
      case 10824:
      case 10825:
      case 10826:
      case 10827:
      case 10828:
      case 10829:
      case 10830:
      case 10831:
      case 10838:
      case 10839:
      case 10840:
      case 10841:
      case 10842:
      case 10843:
      case 10844:
      case 10845:
      case 10850:
      case 10851:
      case 10852:
      case 10853:
      case 10854:
      case 10855:
      case 10856:
      case 10857:
      case 10912:
      case 10913:
      case 10914:
      case 10915:
      case 10916:
      case 10917:
      case 10918:
      case 10919:
      case 10920:
      case 10921:
      case 10922:
      case 10923:
      case 10924:
      case 10925:
      case 10926:
      case 10927:
      case 10928:
      case 10929:
      case 10930:
      case 10931:
      case 10932:
      case 10933:
      case 10934:
      case 10935:
      case 10936:
      case 10937:
      case 10938:
      case 10939:
      case 10940:
      case 10941:
      case 10942:
      case 10943:
      case 10944:
      case 10945:
      case 10946:
      case 10947:
      case 10948:
      case 10949:
      case 10950:
      case 10951:
      case 10952:
      case 10953:
      case 10954:
      case 10955:
      case 10956:
      case 10957:
      case 10958:
      case 10959:
      case 10960:
      case 10961:
      case 10962:
      case 10963:
      case 10964:
      case 10965:
      case 10966:
      case 10967:
      case 10980:
      case 10981:
      case 10991:
      case 10992:
      case 10993:
      case 10994:
      case 11003:
      case 11004:
      case 11005:
      case 11006:
      case 11007:
      case 11008:
      case 11013:
      case 11014:
      case 11015:
      case 11017:
      case 11018:
      case 11020:
      case 11021:
      case 11023:
      case 11024:
      case 11026:
      case 11027:
      case 11029:
      case 11030:
      case 11032:
      case 11033:
      case 11035:
      case 11036:
      case 11038:
      case 11039:
      case 11041:
      case 11042:
      case 11044:
      case 11045:
      case 11050:
      case 11051:
      case 11053:
      case 11054:
      case 11056:
      case 11057:
      case 11059:
      case 11060:
      case 11062:
      case 11063:
      case 11065:
      case 11066:
      case 11068:
      case 11069:
      case 11070:
      case 11071:
      case 11072:
      case 11075:
      case 11076:
      case 11079:
      case 11080:
      case 11083:
      case 11084:
      case 11087:
      case 11088:
      case 11091:
      case 11092:
      case 11095:
      case 11096:
      case 11098:
      case 11099:
      case 11119:
      case 11120:
      case 11124:
      case 11125:
      case 11126:
      case 11127:
      case 11128:
      case 11129:
      case 11130:
      case 11131:
      case 11132:
      case 11133:
      case 11152:
      case 11153:
      case 11154:
      case 11155:
      case 11176:
      case 11177:
      case 11178:
      case 11179:
      case 11180:
      case 11181:
      case 11182:
      case 11183:
      case 11184:
      case 11185:
      case 11186:
      case 11188:
      case 11189:
      case 11190:
      case 11191:
      case 11192:
      case 11193:
      case 11194:
      case 11195:
      case 11196:
      case 11197:
      case 11200:
      case 11201:
      case 11202:
      case 11203:
      case 11204:
      case 11205:
      case 11206:
      case 11207:
      case 11208:
      case 11209:
      case 11210:
      case 11211:
      case 11212:
      case 11213:
      case 11214:
      case 11215:
      case 11216:
      case 11217:
      case 11218:
      case 11219:
      case 11220:
      case 11221:
      case 11222:
      case 11223:
      case 11224:
      case 11225:
      case 11226:
      case 11227:
      case 11228:
      case 11229:
      case 11230:
      case 11231:
      case 11232:
      case 11233:
      case 11234:
      case 11235:
      case 11236:
      case 11237:
      case 11238:
      case 11239:
      case 11240:
      case 11241:
      case 11242:
      case 11277:
      case 11278:
      case 11279:
      case 11281:
      case 11282:
      case 11283:
      case 11287:
      case 11288:
      case 11289:
      case 11290:
      case 11291:
      case 11292:
      case 11293:
      case 11294:
      case 11295:
      case 11296:
      case 11297:
      case 11298:
      case 11299:
      case 11300:
      case 11301:
      case 11302:
      case 11304:
      case 11305:
      case 11306:
      case 11307:
      case 11308:
      case 11310:
      case 11311:
      case 11312:
      case 11313:
      case 11316:
      case 11317:
      case 11318:
      case 11319:
      case 11320:
      case 11321:
      case 11325:
      case 11326:
      case 11327:
      case 11328:
      case 11329:
      case 11330:
      case 11331:
      case 11332:
      case 11333:
      case 11334:
      case 11335:
      case 11336:
      case 11337:
      case 11338:
      case 11339:
      case 11340:
      case 11343:
      case 11344:
      case 11346:
      case 11347:
      case 11348:
      case 11349:
      case 11350:
      case 11351:
      case 11353:
      case 11354:
      case 11355:
      case 11356:
      case 11357:
      case 11358:
      case 11359:
      case 11360:
      case 11361:
      case 11362:
      case 11363:
      case 11364:
      case 11365:
      case 11366:
      case 11367:
      case 11368:
      case 11369:
      case 11370:
      case 11371:
      case 11372:
      case 11373:
      case 11374:
      case 11375:
      case 11376:
      case 11377:
      case 11378:
      case 11379:
      case 11380:
      case 11381:
      case 11382:
      case 11383:
      case 11384:
      case 11385:
      case 11386:
      case 11387:
      case 11391:
      case 11392:
      case 11397:
      case 11398:
      case 11399:
      case 11400:
      case 11401:
      case 11402:
      case 11407:
      case 11408:
      case 11409:
      case 11410:
      case 11425:
      case 11427:
      case 11429:
      case 11430:
      case 11431:
      case 11432:
      case 11433:
      case 11434:
      case 11435:
      case 11436:
      case 11437:
      case 11438:
      case 11439:
      case 11440:
      case 11441:
      case 11442:
      case 11443:
      case 11444:
      case 11445:
      case 11446:
      case 11447:
      case 11448:
      case 11449:
      case 11450:
      case 11451:
      case 11452:
      case 11453:
      case 11454:
      case 11455:
      case 11458:
      case 11459:
      case 11503:
      case 11504:
      case 11513:
      case 11514:
      case 11515:
      case 11531:
      case 11532:
      case 11533:
      case 11534:
      case 11535:
      case 11536:
      case 11541:
      case 11542:
      case 11543:
      case 11544:
      case 11545:
      case 11546:
      case 11547:
      case 11548:
      case 11549:
      case 11550:
      case 11551:
      case 11552:
      case 11553:
      case 11554:
      case 11555:
      case 11556:
      case 11557:
      case 11558:
      case 11559:
      case 11560:
      case 11561:
      case 11562:
      case 11563:
      case 11564:
      case 11565:
      case 11566:
      case 11567:
      case 11568:
      case 11569:
      case 11570:
      case 11571:
      case 11572:
      case 11573:
      case 11574:
      case 11575:
      case 11576:
        v8 = 1;
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(a1, 1);
        v456[0] = -1;
        break;
      case 3:
      case 174:
      case 535:
      case 536:
      case 537:
      case 538:
      case 539:
      case 540:
      case 541:
      case 542:
      case 543:
      case 544:
      case 545:
      case 546:
      case 1211:
      case 1212:
      case 1213:
      case 1215:
      case 1216:
      case 1217:
      case 1218:
      case 1219:
      case 1220:
      case 1221:
      case 1222:
      case 1223:
      case 1233:
      case 1234:
      case 1235:
      case 1237:
      case 2726:
      case 2727:
      case 2861:
      case 2862:
      case 2863:
      case 2864:
      case 2865:
      case 2866:
      case 2867:
      case 2868:
      case 2869:
      case 2870:
      case 2871:
      case 2872:
      case 2873:
      case 7394:
      case 7395:
      case 7396:
      case 7399:
      case 7400:
      case 7768:
      case 7769:
      case 7770:
      case 7907:
      case 7908:
      case 7909:
      case 7910:
      case 7911:
      case 7912:
      case 7913:
      case 10253:
      case 10254:
      case 10255:
      case 10256:
      case 10308:
      case 10309:
      case 10310:
      case 10311:
      case 11491:
      case 11492:
      case 11493:
      case 11494:
      case 11495:
      case 11496:
      case 11497:
      case 11498:
      case 11499:
      case 11500:
      case 11501:
      case 11502:
        v16 = a1;
        v17 = 2;
        goto LABEL_432;
      case 4:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 127:
      case 155:
      case 217:
      case 248:
      case 249:
      case 274:
      case 275:
      case 319:
      case 5058:
        v16 = a1;
        v17 = 3;
        goto LABEL_432;
      case 5:
      case 8:
      case 9:
      case 14:
      case 15:
      case 20:
      case 52:
      case 54:
      case 56:
      case 57:
      case 58:
      case 59:
      case 76:
      case 77:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 148:
      case 149:
      case 172:
      case 173:
      case 178:
      case 179:
      case 180:
      case 183:
      case 184:
      case 195:
      case 196:
      case 205:
      case 206:
      case 207:
      case 242:
      case 243:
      case 256:
      case 257:
      case 262:
      case 263:
      case 264:
      case 265:
      case 266:
      case 276:
      case 277:
      case 278:
      case 281:
      case 283:
      case 285:
      case 286:
      case 287:
      case 293:
      case 300:
      case 302:
      case 303:
      case 304:
      case 308:
      case 309:
      case 312:
      case 313:
      case 314:
      case 315:
      case 322:
      case 323:
      case 324:
      case 325:
      case 326:
      case 327:
      case 328:
      case 329:
      case 330:
      case 331:
      case 332:
      case 333:
      case 334:
      case 1746:
      case 1770:
      case 1771:
      case 1772:
      case 1773:
      case 1774:
      case 1775:
      case 1782:
      case 1783:
      case 1784:
      case 1785:
      case 1786:
      case 1787:
      case 1790:
      case 1792:
      case 1793:
      case 1822:
      case 1824:
      case 1825:
      case 1831:
      case 1832:
      case 1833:
      case 1834:
      case 1835:
      case 1836:
      case 1837:
      case 1844:
      case 2332:
      case 2334:
      case 2346:
      case 2348:
      case 2350:
      case 2352:
      case 2397:
      case 2398:
      case 2399:
      case 2400:
      case 2401:
      case 2402:
      case 2403:
      case 2409:
      case 2434:
      case 2435:
      case 2438:
      case 2439:
      case 2440:
      case 2441:
      case 2450:
      case 2464:
      case 2465:
      case 2466:
      case 2467:
      case 2474:
      case 2475:
      case 2491:
      case 2521:
      case 2522:
      case 2529:
      case 2536:
      case 2537:
      case 2538:
      case 2539:
      case 2540:
      case 2541:
      case 5785:
      case 5786:
      case 5787:
      case 5788:
      case 5789:
      case 5790:
      case 5791:
      case 5792:
      case 5793:
      case 5794:
      case 5795:
      case 5796:
      case 5831:
      case 5832:
      case 5833:
      case 5834:
      case 5835:
      case 5836:
      case 5837:
      case 5853:
      case 5854:
      case 5855:
      case 5856:
      case 5857:
      case 5858:
      case 5859:
      case 5860:
      case 5861:
      case 5862:
      case 5863:
      case 5864:
      case 5865:
      case 5866:
      case 5867:
      case 5868:
      case 5869:
      case 5870:
      case 5871:
      case 5872:
      case 5873:
      case 5874:
      case 5875:
      case 5876:
      case 5877:
      case 5878:
      case 5902:
      case 5903:
      case 5904:
      case 5905:
      case 5906:
      case 5907:
      case 5908:
      case 5909:
      case 5910:
      case 5911:
      case 5912:
      case 5913:
      case 5914:
      case 5915:
      case 5916:
      case 5917:
      case 5918:
      case 5919:
      case 5921:
      case 5922:
      case 5923:
      case 5924:
      case 5925:
      case 5926:
      case 5927:
      case 5928:
      case 5929:
      case 5930:
      case 5931:
      case 5932:
      case 5933:
      case 5934:
      case 5935:
      case 5936:
      case 5937:
      case 5938:
      case 5939:
      case 5948:
      case 5949:
      case 5950:
      case 5951:
      case 5952:
      case 5953:
      case 5954:
      case 5955:
      case 5956:
      case 5957:
      case 5958:
      case 5959:
      case 5960:
      case 5961:
      case 5962:
      case 5963:
      case 5964:
      case 5965:
      case 5966:
      case 5967:
      case 5968:
      case 5969:
      case 5970:
      case 5971:
      case 5972:
      case 5973:
      case 5974:
      case 5975:
      case 5976:
      case 5977:
      case 5978:
      case 5979:
      case 5980:
      case 5981:
      case 5982:
      case 5983:
      case 5984:
      case 5985:
      case 5986:
      case 5987:
      case 5988:
      case 5989:
      case 5990:
      case 5991:
      case 5992:
      case 5993:
      case 5994:
      case 5995:
      case 5996:
      case 5997:
      case 5998:
      case 5999:
      case 6000:
      case 6001:
      case 6002:
      case 6003:
      case 6004:
      case 6005:
      case 6006:
      case 6007:
      case 6008:
      case 6009:
      case 6010:
      case 6011:
      case 6012:
      case 6013:
      case 6014:
      case 6015:
      case 6016:
      case 6017:
      case 6018:
      case 6019:
      case 6020:
      case 6021:
      case 6022:
      case 6023:
      case 6024:
      case 6025:
      case 6026:
      case 6027:
      case 6028:
      case 6029:
      case 6030:
      case 6031:
      case 6032:
      case 6033:
      case 6034:
      case 6035:
      case 6036:
      case 6037:
      case 6038:
      case 6039:
      case 6040:
      case 6041:
      case 6042:
      case 6043:
      case 6044:
      case 6046:
      case 6047:
      case 6048:
      case 6049:
      case 6050:
      case 6051:
      case 6052:
      case 6053:
      case 6076:
      case 6077:
      case 6078:
      case 6079:
      case 6080:
      case 6081:
      case 6082:
      case 6083:
      case 6084:
      case 6190:
      case 6191:
      case 6192:
      case 6193:
      case 6194:
      case 6195:
      case 6196:
      case 6197:
      case 6198:
      case 6199:
      case 6200:
      case 6201:
      case 6202:
      case 6203:
      case 6204:
      case 6205:
      case 6206:
      case 6207:
      case 6210:
      case 6211:
      case 6212:
      case 6213:
      case 6214:
      case 6216:
      case 6217:
      case 6218:
      case 6219:
      case 6309:
      case 6310:
      case 6311:
      case 6312:
      case 6313:
      case 6314:
      case 6320:
      case 6321:
      case 6322:
      case 6753:
      case 6924:
      case 6925:
      case 6926:
      case 6935:
      case 6936:
      case 6937:
      case 6938:
      case 6939:
      case 6940:
      case 6941:
      case 6942:
      case 6943:
      case 6944:
      case 6945:
      case 6946:
      case 6947:
      case 6948:
      case 6949:
      case 6950:
      case 7987:
      case 7990:
      case 7992:
      case 7995:
      case 7996:
      case 7997:
      case 7998:
      case 7999:
      case 8000:
      case 8001:
      case 8002:
      case 8003:
      case 8004:
      case 8005:
      case 8006:
      case 8007:
      case 8008:
      case 8009:
      case 8010:
      case 8011:
      case 8026:
      case 8027:
      case 8028:
      case 8029:
      case 8030:
      case 8032:
      case 8033:
      case 8034:
      case 8035:
      case 8036:
      case 8057:
      case 8072:
      case 8073:
      case 8074:
      case 8075:
      case 8076:
      case 8077:
      case 8078:
      case 8079:
      case 8080:
      case 8081:
      case 8082:
      case 8083:
      case 8084:
      case 8085:
      case 8086:
      case 8087:
      case 8098:
      case 8589:
      case 8590:
      case 8591:
      case 10107:
      case 10108:
      case 10109:
      case 10110:
      case 10111:
      case 10113:
      case 10114:
      case 10115:
      case 10125:
      case 10126:
      case 10127:
      case 10128:
      case 10129:
      case 10134:
      case 10135:
      case 10136:
      case 10137:
      case 10138:
      case 10139:
      case 10140:
      case 10141:
      case 10142:
      case 10143:
      case 10144:
      case 10145:
      case 10146:
      case 10147:
      case 10149:
      case 10150:
      case 10151:
      case 10152:
      case 10164:
      case 10166:
      case 10167:
      case 10168:
        v16 = a1;
        v17 = 0;
        goto LABEL_432;
      case 6:
      case 5078:
      case 5079:
      case 5092:
      case 5093:
      case 5780:
      case 10227:
      case 10229:
      case 10231:
        IntrinsicArgAttributeSet = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 2;
        goto LABEL_370;
      case 7:
      case 11647:
      case 11655:
        v439 = getIntrinsicArgAttributeSet(a1, 1);
        v456[0] = 1;
        v457 = v439;
        v148 = a1;
        v149 = 3;
        goto LABEL_427;
      case 10:
      case 11:
      case 12:
      case 154:
      case 158:
      case 176:
      case 241:
      case 260:
      case 288:
      case 289:
      case 290:
      case 291:
      case 316:
      case 317:
      case 318:
      case 392:
      case 471:
      case 673:
      case 674:
      case 675:
      case 676:
      case 677:
      case 678:
      case 679:
      case 680:
      case 691:
      case 692:
      case 693:
      case 694:
      case 697:
      case 698:
      case 699:
      case 700:
      case 704:
      case 705:
      case 706:
      case 707:
      case 708:
      case 711:
      case 712:
      case 713:
      case 714:
      case 718:
      case 719:
      case 720:
      case 721:
      case 722:
      case 735:
      case 740:
      case 741:
      case 743:
      case 744:
      case 746:
      case 747:
      case 754:
      case 755:
      case 756:
      case 757:
      case 758:
      case 759:
      case 760:
      case 761:
      case 766:
      case 767:
      case 768:
      case 769:
      case 770:
      case 774:
      case 775:
      case 776:
      case 777:
      case 778:
      case 782:
      case 783:
      case 784:
      case 785:
      case 786:
      case 790:
      case 791:
      case 792:
      case 793:
      case 794:
      case 798:
      case 799:
      case 800:
      case 801:
      case 802:
      case 806:
      case 807:
      case 808:
      case 809:
      case 810:
      case 825:
      case 826:
      case 827:
      case 828:
      case 829:
      case 830:
      case 831:
      case 832:
      case 833:
      case 836:
      case 837:
      case 841:
      case 842:
      case 853:
      case 854:
      case 855:
      case 856:
      case 857:
      case 858:
      case 859:
      case 860:
      case 864:
      case 865:
      case 866:
      case 867:
      case 868:
      case 872:
      case 873:
      case 874:
      case 875:
      case 876:
      case 880:
      case 881:
      case 882:
      case 883:
      case 884:
      case 888:
      case 889:
      case 890:
      case 891:
      case 892:
      case 896:
      case 897:
      case 898:
      case 899:
      case 900:
      case 904:
      case 905:
      case 906:
      case 907:
      case 908:
      case 915:
      case 916:
      case 917:
      case 918:
      case 922:
      case 923:
      case 924:
      case 925:
      case 926:
      case 939:
      case 940:
      case 946:
      case 2595:
      case 2960:
      case 2961:
      case 2962:
      case 2964:
      case 2998:
      case 2999:
      case 3000:
      case 3011:
      case 3012:
      case 3013:
      case 3031:
      case 3032:
      case 3033:
      case 5034:
      case 5035:
      case 5036:
      case 5037:
      case 5038:
      case 5039:
      case 5040:
      case 5059:
      case 7993:
      case 7994:
      case 8012:
      case 10123:
      case 10153:
      case 10154:
      case 10155:
      case 10158:
      case 10159:
      case 11649:
      case 11657:
        v16 = a1;
        v17 = 5;
        goto LABEL_432;
      case 13:
      case 28:
      case 46:
      case 50:
        v16 = a1;
        v17 = 6;
        goto LABEL_432;
      case 16:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 29:
      case 33:
      case 34:
      case 38:
      case 39:
      case 40:
      case 49:
      case 51:
      case 60:
      case 62:
      case 66:
      case 67:
      case 69:
      case 72:
      case 73:
      case 75:
      case 151:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
      case 294:
      case 418:
      case 475:
      case 947:
      case 948:
      case 949:
      case 2579:
      case 2592:
      case 2593:
      case 2594:
      case 2596:
      case 2597:
      case 2598:
      case 2599:
      case 2600:
      case 2605:
      case 2606:
      case 3005:
      case 3006:
      case 3007:
      case 3008:
      case 3020:
      case 3047:
      case 5062:
      case 5063:
      case 5067:
      case 5068:
      case 5069:
      case 5070:
      case 5071:
      case 5072:
      case 5073:
      case 5074:
      case 5075:
      case 5084:
      case 5085:
      case 5086:
      case 5087:
      case 5088:
      case 5089:
      case 5090:
      case 5091:
      case 5112:
      case 5113:
      case 5114:
      case 5121:
      case 5138:
      case 5139:
      case 5141:
      case 5153:
      case 5281:
      case 5282:
      case 5283:
      case 5284:
      case 5285:
      case 5286:
      case 5287:
      case 5288:
      case 5289:
      case 5290:
      case 5291:
      case 5292:
      case 5324:
      case 5325:
      case 5326:
      case 5327:
      case 5332:
      case 5333:
      case 5334:
      case 5335:
      case 5345:
      case 5346:
      case 5347:
      case 5348:
      case 5349:
      case 5350:
      case 5518:
      case 5519:
      case 5520:
      case 5521:
      case 5582:
      case 5583:
      case 5586:
      case 5587:
      case 5588:
      case 5589:
      case 5590:
      case 5591:
      case 5592:
      case 5593:
      case 5594:
      case 5598:
      case 5642:
      case 5647:
      case 5648:
      case 5666:
      case 5667:
      case 5668:
      case 5669:
      case 5741:
      case 5762:
      case 5764:
      case 5838:
      case 5839:
      case 5846:
      case 5851:
      case 6372:
      case 6373:
      case 6374:
      case 6375:
      case 6376:
      case 6377:
      case 6378:
      case 6379:
      case 6380:
      case 6381:
      case 6382:
      case 6383:
      case 6384:
      case 6385:
      case 6386:
      case 6387:
      case 6388:
      case 6389:
      case 6390:
      case 6391:
      case 6392:
      case 6393:
      case 6394:
      case 6395:
      case 6396:
      case 6397:
      case 6398:
      case 6399:
      case 6400:
      case 6401:
      case 6402:
      case 6403:
      case 6404:
      case 6405:
      case 6406:
      case 6407:
      case 6408:
      case 6409:
      case 6410:
      case 6411:
      case 6412:
      case 6413:
      case 6414:
      case 6415:
      case 6416:
      case 6417:
      case 6418:
      case 6419:
      case 6420:
      case 6421:
      case 6422:
      case 6423:
      case 6424:
      case 6425:
      case 6426:
      case 6427:
      case 6428:
      case 6429:
      case 6430:
      case 6431:
      case 6432:
      case 6433:
      case 6434:
      case 6435:
      case 6436:
      case 6437:
      case 6438:
      case 6439:
      case 6440:
      case 6441:
      case 6442:
      case 6443:
      case 6444:
      case 6445:
      case 6446:
      case 6447:
      case 6448:
      case 6449:
      case 6450:
      case 6451:
      case 6452:
      case 6453:
      case 6454:
      case 6455:
      case 6456:
      case 6457:
      case 6458:
      case 6459:
      case 6460:
      case 6461:
      case 6462:
      case 6463:
      case 6464:
      case 6465:
      case 6466:
      case 6467:
      case 6468:
      case 6469:
      case 6470:
      case 6471:
      case 6472:
      case 6473:
      case 6474:
      case 6475:
      case 6476:
      case 6477:
      case 6478:
      case 6479:
      case 6480:
      case 6481:
      case 6482:
      case 6483:
      case 6484:
      case 6485:
      case 6486:
      case 6487:
      case 6488:
      case 6489:
      case 6490:
      case 6491:
      case 6492:
      case 6493:
      case 6494:
      case 6495:
      case 6496:
      case 6497:
      case 6498:
      case 6499:
      case 6500:
      case 6501:
      case 6502:
      case 6503:
      case 6504:
      case 6505:
      case 6506:
      case 6507:
      case 6508:
      case 6509:
      case 6510:
      case 6511:
      case 6512:
      case 6513:
      case 6514:
      case 6515:
      case 6516:
      case 6517:
      case 6518:
      case 6519:
      case 6520:
      case 6521:
      case 6522:
      case 6523:
      case 6524:
      case 6525:
      case 6526:
      case 6527:
      case 6528:
      case 6529:
      case 6530:
      case 6531:
      case 6532:
      case 6533:
      case 6534:
      case 6535:
      case 6536:
      case 6543:
      case 6544:
      case 6545:
      case 6546:
      case 6547:
      case 6548:
      case 6549:
      case 6550:
      case 6551:
      case 6552:
      case 6553:
      case 6554:
      case 6555:
      case 6556:
      case 6557:
      case 6558:
      case 6559:
      case 6560:
      case 6561:
      case 6562:
      case 6563:
      case 6564:
      case 6565:
      case 6566:
      case 6567:
      case 6568:
      case 6569:
      case 6570:
      case 6571:
      case 6572:
      case 6573:
      case 6574:
      case 6575:
      case 6576:
      case 6577:
      case 6578:
      case 6579:
      case 6580:
      case 6581:
      case 6582:
      case 6583:
      case 6584:
      case 6585:
      case 6586:
      case 6587:
      case 6588:
      case 6589:
      case 6590:
      case 6591:
      case 6592:
      case 6593:
      case 6594:
      case 6595:
      case 6596:
      case 6597:
      case 6598:
      case 6599:
      case 6600:
      case 6601:
      case 6602:
      case 6603:
      case 6604:
      case 6605:
      case 6606:
      case 6607:
      case 6608:
      case 6609:
      case 6610:
      case 6611:
      case 6612:
      case 6613:
      case 6614:
      case 6615:
      case 6616:
      case 6617:
      case 6618:
      case 6619:
      case 6620:
      case 6621:
      case 6622:
      case 6623:
      case 6624:
      case 6625:
      case 6626:
      case 6627:
      case 6628:
      case 6629:
      case 6630:
      case 6631:
      case 6632:
      case 6633:
      case 6634:
      case 6635:
      case 6636:
      case 6637:
      case 6638:
      case 6639:
      case 6640:
      case 6641:
      case 6642:
      case 6643:
      case 6644:
      case 6645:
      case 6646:
      case 6647:
      case 6648:
      case 6649:
      case 6650:
      case 6651:
      case 6652:
      case 6653:
      case 6654:
      case 6655:
      case 6656:
      case 6657:
      case 6658:
      case 6659:
      case 6660:
      case 6661:
      case 6662:
      case 6663:
      case 6664:
      case 6665:
      case 6666:
      case 6667:
      case 6668:
      case 6669:
      case 6670:
      case 6671:
      case 6672:
      case 6673:
      case 6674:
      case 6675:
      case 6676:
      case 6677:
      case 6678:
      case 6679:
      case 6680:
      case 6681:
      case 6682:
      case 6683:
      case 6684:
      case 6685:
      case 6686:
      case 6687:
      case 6688:
      case 6689:
      case 6690:
      case 6691:
      case 6692:
      case 6693:
      case 6694:
      case 6695:
      case 6696:
      case 6697:
      case 6698:
      case 6699:
      case 6700:
      case 6701:
      case 6702:
      case 6703:
      case 6704:
      case 6705:
      case 6706:
      case 6707:
      case 6708:
      case 6709:
      case 6710:
      case 6711:
      case 6712:
      case 6713:
      case 6714:
      case 6715:
      case 6716:
      case 6717:
      case 6718:
      case 6719:
      case 6720:
      case 6721:
      case 6722:
      case 6723:
      case 6724:
      case 6725:
      case 6726:
      case 6727:
      case 6728:
      case 6729:
      case 6730:
      case 6731:
      case 6732:
      case 6733:
      case 6734:
      case 6735:
      case 6736:
      case 6737:
      case 6738:
      case 6739:
      case 6740:
      case 6741:
      case 6742:
      case 6743:
      case 6744:
      case 6745:
      case 6746:
      case 6747:
      case 6748:
      case 6749:
      case 6750:
      case 6751:
      case 6752:
      case 6754:
      case 6755:
      case 6756:
      case 6757:
      case 6758:
      case 6759:
      case 6760:
      case 6761:
      case 6762:
      case 6763:
      case 6764:
      case 6765:
      case 6766:
      case 6767:
      case 6768:
      case 6769:
      case 6770:
      case 6771:
      case 6772:
      case 6773:
      case 6774:
      case 6775:
      case 6776:
      case 6777:
      case 6778:
      case 6779:
      case 6780:
      case 6781:
      case 6782:
      case 6783:
      case 6784:
      case 6785:
      case 6786:
      case 6787:
      case 6788:
      case 6789:
      case 6790:
      case 6791:
      case 6792:
      case 6793:
      case 6794:
      case 6795:
      case 6796:
      case 6797:
      case 6798:
      case 6799:
      case 6800:
      case 6801:
      case 6802:
      case 6803:
      case 6804:
      case 6805:
      case 6806:
      case 6807:
      case 6808:
      case 6809:
      case 6810:
      case 6811:
      case 6812:
      case 6813:
      case 6814:
      case 6815:
      case 6816:
      case 6817:
      case 6818:
      case 6819:
      case 6820:
      case 6821:
      case 6822:
      case 6823:
      case 6824:
      case 6825:
      case 6826:
      case 6827:
      case 6828:
      case 6829:
      case 6830:
      case 6831:
      case 6832:
      case 6833:
      case 6834:
      case 6835:
      case 6836:
      case 6837:
      case 6838:
      case 6839:
      case 6840:
      case 6841:
      case 6842:
      case 6843:
      case 6844:
      case 6845:
      case 6846:
      case 6847:
      case 6848:
      case 6849:
      case 6850:
      case 6851:
      case 6852:
      case 6853:
      case 6854:
      case 6855:
      case 6856:
      case 6857:
      case 6858:
      case 6859:
      case 6860:
      case 6861:
      case 6862:
      case 6863:
      case 6864:
      case 6865:
      case 6866:
      case 6867:
      case 6868:
      case 6869:
      case 6870:
      case 6871:
      case 6872:
      case 6873:
      case 6874:
      case 6875:
      case 6876:
      case 6877:
      case 6878:
      case 6879:
      case 6880:
      case 6881:
      case 6882:
      case 6883:
      case 6884:
      case 6885:
      case 6886:
      case 6887:
      case 6888:
      case 6889:
      case 6890:
      case 6891:
      case 6892:
      case 6893:
      case 6894:
      case 6895:
      case 6896:
      case 6897:
      case 6900:
      case 6901:
      case 6902:
      case 6903:
      case 6904:
      case 6905:
      case 6906:
      case 6907:
      case 6908:
      case 6909:
      case 6910:
      case 6911:
      case 6912:
      case 6913:
      case 6914:
      case 6915:
      case 6916:
      case 6917:
      case 6918:
      case 6919:
      case 6920:
      case 6921:
      case 6922:
      case 6923:
      case 7388:
      case 7389:
      case 7390:
      case 7391:
      case 7392:
      case 7393:
      case 7695:
      case 7712:
      case 7717:
      case 7718:
      case 7726:
      case 7727:
      case 7733:
      case 7758:
      case 7759:
      case 7760:
      case 7761:
      case 7762:
      case 7764:
      case 7765:
      case 7766:
      case 7767:
      case 7771:
      case 7851:
      case 7865:
      case 7866:
      case 7867:
      case 7868:
      case 7882:
      case 7883:
      case 7884:
      case 7885:
      case 7886:
      case 7887:
      case 7889:
      case 7892:
      case 7894:
      case 7895:
      case 7896:
      case 7897:
      case 7898:
      case 7900:
      case 7901:
      case 7902:
      case 8592:
      case 8596:
      case 8597:
      case 8603:
      case 8825:
      case 8826:
      case 8827:
      case 8828:
      case 8829:
      case 8830:
      case 8831:
      case 8832:
      case 8834:
      case 8835:
      case 8836:
      case 8839:
      case 8840:
      case 8841:
      case 8842:
      case 8843:
      case 10201:
      case 10202:
      case 10203:
      case 10204:
      case 10205:
      case 10206:
      case 10207:
      case 10208:
      case 10228:
      case 10230:
      case 10232:
      case 11134:
      case 11135:
      case 11136:
      case 11137:
      case 11138:
      case 11139:
      case 11142:
      case 11143:
      case 11144:
      case 11145:
      case 11146:
      case 11147:
      case 11148:
      case 11149:
      case 11150:
      case 11151:
      case 11156:
      case 11157:
      case 11158:
      case 11159:
      case 11160:
      case 11161:
      case 11163:
      case 11164:
      case 11165:
      case 11166:
      case 11167:
      case 11172:
      case 11173:
      case 11174:
      case 11175:
      case 11243:
      case 11244:
      case 11245:
      case 11249:
      case 11250:
      case 11251:
      case 11252:
      case 11253:
      case 11254:
      case 11255:
      case 11256:
      case 11257:
      case 11258:
      case 11259:
      case 11260:
      case 11261:
      case 11262:
      case 11263:
      case 11264:
      case 11265:
      case 11266:
      case 11267:
      case 11268:
      case 11269:
      case 11270:
      case 11271:
      case 11272:
      case 11274:
      case 11275:
      case 11276:
      case 11284:
      case 11314:
      case 11322:
      case 11341:
      case 11342:
      case 11345:
      case 11352:
      case 11389:
      case 11390:
      case 11456:
      case 11457:
      case 11463:
      case 11465:
      case 11467:
      case 11469:
      case 11471:
      case 11473:
      case 11475:
      case 11477:
      case 11478:
      case 11480:
      case 11482:
      case 11483:
      case 11485:
      case 11487:
      case 11488:
      case 11489:
      case 11490:
      case 11516:
      case 11517:
      case 11518:
      case 11519:
      case 11520:
      case 11521:
      case 11522:
      case 11523:
      case 11524:
      case 11525:
      case 11526:
      case 11528:
      case 11529:
      case 11530:
      case 11577:
      case 11578:
      case 11579:
      case 11580:
      case 11581:
      case 11582:
      case 11583:
      case 11584:
      case 11585:
      case 11586:
      case 11587:
      case 11588:
      case 11589:
      case 11590:
      case 11591:
      case 11592:
      case 11594:
      case 11596:
      case 11598:
      case 11605:
      case 11606:
      case 11608:
      case 11609:
      case 11632:
      case 11636:
      case 11640:
        v16 = a1;
        v17 = 4;
        goto LABEL_432;
      case 17:
        v16 = a1;
        v17 = 7;
        goto LABEL_432;
      case 21:
      case 35:
      case 41:
      case 42:
      case 43:
      case 47:
      case 63:
      case 64:
      case 71:
      case 74:
      case 269:
      case 270:
      case 452:
      case 453:
      case 454:
      case 459:
      case 460:
      case 2582:
      case 2583:
      case 2584:
      case 2585:
      case 3038:
      case 3039:
      case 3043:
      case 3044:
      case 3046:
      case 5115:
      case 5116:
      case 5117:
      case 5118:
      case 5119:
      case 5120:
      case 5122:
      case 5123:
      case 5124:
      case 5125:
      case 5126:
      case 5127:
      case 5128:
      case 5129:
      case 5130:
      case 5131:
      case 5132:
      case 5133:
      case 5134:
      case 5135:
      case 5136:
      case 5137:
      case 5140:
      case 5142:
      case 5143:
      case 5144:
      case 5145:
      case 5146:
      case 5147:
      case 5148:
      case 5154:
      case 5157:
      case 5158:
      case 5159:
      case 5160:
      case 5161:
      case 5162:
      case 5163:
      case 5164:
      case 5165:
      case 5166:
      case 5167:
      case 5168:
      case 5169:
      case 5170:
      case 5171:
      case 5172:
      case 5173:
      case 5174:
      case 5175:
      case 5176:
      case 5177:
      case 5178:
      case 5179:
      case 5180:
      case 5182:
      case 5183:
      case 5184:
      case 5185:
      case 5190:
      case 5191:
      case 5192:
      case 5193:
      case 5198:
      case 5199:
      case 5200:
      case 5201:
      case 5206:
      case 5207:
      case 5209:
      case 5211:
      case 5212:
      case 5213:
      case 5214:
      case 5219:
      case 5220:
      case 5221:
      case 5222:
      case 5223:
      case 5225:
      case 5227:
      case 5228:
      case 5229:
      case 5230:
      case 5235:
      case 5236:
      case 5237:
      case 5238:
      case 5239:
      case 5240:
      case 5241:
      case 5242:
      case 5243:
      case 5249:
      case 5250:
      case 5251:
      case 5252:
      case 5253:
      case 5254:
      case 5255:
      case 5256:
      case 5265:
      case 5266:
      case 5267:
      case 5268:
      case 5269:
      case 5270:
      case 5271:
      case 5272:
      case 5293:
      case 5294:
      case 5295:
      case 5296:
      case 5297:
      case 5298:
      case 5299:
      case 5300:
      case 5302:
      case 5303:
      case 5304:
      case 5305:
      case 5306:
      case 5307:
      case 5308:
      case 5309:
      case 5310:
      case 5311:
      case 5312:
      case 5313:
      case 5314:
      case 5315:
      case 5316:
      case 5317:
      case 5318:
      case 5319:
      case 5320:
      case 5321:
      case 5322:
      case 5323:
      case 5328:
      case 5329:
      case 5330:
      case 5331:
      case 5336:
      case 5337:
      case 5338:
      case 5339:
      case 5340:
      case 5341:
      case 5342:
      case 5343:
      case 5344:
      case 5351:
      case 5352:
      case 5353:
      case 5354:
      case 5355:
      case 5356:
      case 5357:
      case 5358:
      case 5359:
      case 5360:
      case 5361:
      case 5362:
      case 5363:
      case 5364:
      case 5365:
      case 5366:
      case 5367:
      case 5368:
      case 5369:
      case 5370:
      case 5371:
      case 5372:
      case 5373:
      case 5374:
      case 5375:
      case 5376:
      case 5377:
      case 5378:
      case 5379:
      case 5380:
      case 5381:
      case 5382:
      case 5383:
      case 5384:
      case 5385:
      case 5386:
      case 5387:
      case 5388:
      case 5389:
      case 5390:
      case 5391:
      case 5392:
      case 5393:
      case 5394:
      case 5395:
      case 5396:
      case 5397:
      case 5398:
      case 5399:
      case 5400:
      case 5401:
      case 5402:
      case 5403:
      case 5404:
      case 5405:
      case 5406:
      case 5407:
      case 5408:
      case 5409:
      case 5410:
      case 5411:
      case 5412:
      case 5413:
      case 5414:
      case 5415:
      case 5416:
      case 5417:
      case 5418:
      case 5419:
      case 5420:
      case 5421:
      case 5422:
      case 5423:
      case 5424:
      case 5425:
      case 5426:
      case 5427:
      case 5428:
      case 5429:
      case 5430:
      case 5431:
      case 5432:
      case 5433:
      case 5434:
      case 5435:
      case 5436:
      case 5437:
      case 5438:
      case 5439:
      case 5440:
      case 5441:
      case 5442:
      case 5443:
      case 5444:
      case 5445:
      case 5446:
      case 5447:
      case 5448:
      case 5449:
      case 5450:
      case 5451:
      case 5452:
      case 5453:
      case 5454:
      case 5455:
      case 5456:
      case 5457:
      case 5458:
      case 5459:
      case 5460:
      case 5461:
      case 5462:
      case 5463:
      case 5464:
      case 5465:
      case 5466:
      case 5467:
      case 5468:
      case 5469:
      case 5470:
      case 5471:
      case 5472:
      case 5473:
      case 5474:
      case 5475:
      case 5476:
      case 5477:
      case 5478:
      case 5479:
      case 5480:
      case 5481:
      case 5482:
      case 5483:
      case 5484:
      case 5485:
      case 5486:
      case 5487:
      case 5488:
      case 5506:
      case 5508:
      case 5509:
      case 5510:
      case 5511:
      case 5512:
      case 5513:
      case 5514:
      case 5515:
      case 5516:
      case 5517:
      case 5522:
      case 5523:
      case 5524:
      case 5525:
      case 5526:
      case 5527:
      case 5528:
      case 5529:
      case 5530:
      case 5531:
      case 5532:
      case 5533:
      case 5542:
      case 5543:
      case 5544:
      case 5545:
      case 5546:
      case 5547:
      case 5548:
      case 5549:
      case 5550:
      case 5551:
      case 5552:
      case 5553:
      case 5562:
      case 5563:
      case 5564:
      case 5565:
      case 5566:
      case 5567:
      case 5568:
      case 5569:
      case 5570:
      case 5571:
      case 5572:
      case 5573:
      case 5574:
      case 5575:
      case 5576:
      case 5577:
      case 5578:
      case 5579:
      case 5580:
      case 5581:
      case 5584:
      case 5585:
      case 5595:
      case 5596:
      case 5597:
      case 5599:
      case 5600:
      case 5601:
      case 5602:
      case 5603:
      case 5604:
      case 5605:
      case 5606:
      case 5607:
      case 5608:
      case 5609:
      case 5610:
      case 5611:
      case 5612:
      case 5613:
      case 5615:
      case 5617:
      case 5618:
      case 5619:
      case 5620:
      case 5621:
      case 5622:
      case 5623:
      case 5624:
      case 5625:
      case 5626:
      case 5627:
      case 5628:
      case 5629:
      case 5632:
      case 5633:
      case 5634:
      case 5635:
      case 5636:
      case 5637:
      case 5638:
      case 5639:
      case 5640:
      case 5641:
      case 5645:
      case 5646:
      case 5650:
      case 5652:
      case 5653:
      case 5665:
      case 5670:
      case 5671:
      case 5672:
      case 5673:
      case 5674:
      case 5675:
      case 5676:
      case 5677:
      case 5678:
      case 5679:
      case 5680:
      case 5685:
      case 5686:
      case 5687:
      case 5688:
      case 5693:
      case 5694:
      case 5695:
      case 5696:
      case 5701:
      case 5702:
      case 5703:
      case 5704:
      case 5709:
      case 5710:
      case 5711:
      case 5712:
      case 5717:
      case 5718:
      case 5719:
      case 5720:
      case 5725:
      case 5726:
      case 5727:
      case 5728:
      case 5739:
      case 5740:
      case 5742:
      case 5743:
      case 5744:
      case 5745:
      case 5746:
      case 5747:
      case 5748:
      case 5749:
      case 5750:
      case 5751:
      case 5752:
      case 5753:
      case 5754:
      case 5755:
      case 5756:
      case 5757:
      case 5758:
      case 5759:
      case 5760:
      case 5761:
      case 5763:
      case 5765:
      case 5766:
      case 5767:
      case 5768:
      case 5769:
      case 5770:
      case 5771:
      case 5776:
      case 5777:
      case 5778:
      case 5779:
      case 5781:
      case 5943:
      case 6058:
      case 6059:
      case 6060:
      case 6184:
      case 6185:
      case 6186:
      case 6187:
      case 6188:
      case 6308:
      case 6537:
      case 6538:
      case 6539:
      case 6540:
      case 6541:
      case 6542:
      case 6898:
      case 6899:
      case 6927:
      case 6928:
      case 6929:
      case 6930:
      case 6931:
      case 6932:
      case 6933:
      case 6934:
      case 8593:
      case 8602:
      case 8604:
      case 8605:
      case 8606:
      case 8607:
      case 8608:
      case 8609:
      case 8610:
      case 8611:
      case 8612:
      case 8613:
      case 8614:
      case 8615:
      case 8616:
      case 8617:
      case 8618:
      case 8619:
      case 8620:
      case 8621:
      case 8622:
      case 8623:
      case 8624:
      case 8626:
      case 8627:
      case 8628:
      case 8629:
      case 8630:
      case 8631:
      case 8632:
      case 8633:
      case 8634:
      case 8643:
      case 8644:
      case 8645:
      case 8646:
      case 8647:
      case 8648:
      case 8649:
      case 8650:
      case 8663:
      case 8664:
      case 8665:
      case 8666:
      case 8667:
      case 8668:
      case 8669:
      case 8670:
      case 8671:
      case 8672:
      case 8673:
      case 8674:
      case 8675:
      case 8676:
      case 8677:
      case 8678:
      case 8679:
      case 8680:
      case 8681:
      case 8682:
      case 8683:
      case 8684:
      case 8685:
      case 8686:
      case 8687:
      case 8688:
      case 8689:
      case 8690:
      case 8691:
      case 8692:
      case 8701:
      case 8702:
      case 8703:
      case 8704:
      case 8705:
      case 8706:
      case 8707:
      case 8708:
      case 8709:
      case 8710:
      case 8711:
      case 8712:
      case 8713:
      case 8714:
      case 8718:
      case 8719:
      case 8720:
      case 8721:
      case 8722:
      case 8723:
      case 8724:
      case 8725:
      case 8726:
      case 8727:
      case 8728:
      case 8729:
      case 8730:
      case 8731:
      case 8732:
      case 8733:
      case 8734:
      case 8735:
      case 8736:
      case 8737:
      case 8738:
      case 8739:
      case 8740:
      case 8741:
      case 8742:
      case 8743:
      case 8744:
      case 8745:
      case 8746:
      case 8747:
      case 8748:
      case 8749:
      case 8750:
      case 8751:
      case 8752:
      case 8753:
      case 8756:
      case 8757:
      case 8758:
      case 8759:
      case 8760:
      case 8761:
      case 8762:
      case 8763:
      case 8764:
      case 8765:
      case 8766:
      case 8767:
      case 8768:
      case 8769:
      case 8770:
      case 8771:
      case 8772:
      case 8773:
      case 8774:
      case 8775:
      case 8776:
      case 8777:
      case 8780:
      case 8781:
      case 8782:
      case 8784:
      case 8785:
      case 8800:
      case 8801:
      case 8802:
      case 8803:
      case 8804:
      case 8805:
      case 8806:
      case 8807:
      case 8808:
      case 8809:
      case 8810:
      case 8811:
      case 8812:
      case 8813:
      case 8814:
      case 8815:
      case 8816:
      case 8817:
      case 8818:
      case 8819:
      case 8820:
      case 8821:
      case 8822:
      case 8823:
      case 8824:
      case 8844:
      case 8845:
      case 8846:
      case 8847:
      case 8848:
      case 8849:
      case 8854:
      case 8855:
      case 8856:
      case 8857:
      case 8858:
      case 8859:
      case 8860:
      case 8861:
      case 8862:
      case 8863:
      case 8864:
      case 8865:
      case 8866:
      case 8867:
      case 8868:
      case 8869:
      case 8872:
      case 8875:
      case 8876:
      case 8877:
      case 8878:
      case 8879:
      case 8880:
      case 8881:
      case 8882:
      case 8883:
      case 8884:
      case 8885:
      case 8886:
      case 8887:
      case 8888:
      case 8889:
      case 8890:
      case 8891:
      case 8892:
      case 8893:
      case 8894:
      case 8895:
      case 8896:
      case 8897:
      case 8898:
      case 8899:
      case 8900:
      case 8901:
      case 8902:
      case 8903:
      case 8904:
      case 8905:
      case 8906:
      case 8907:
      case 8908:
      case 8909:
      case 8910:
      case 8911:
      case 8912:
      case 8913:
      case 8914:
      case 8915:
      case 8916:
      case 8917:
      case 8918:
      case 8919:
      case 8920:
      case 8921:
      case 8922:
      case 8923:
      case 8924:
      case 8925:
      case 8926:
      case 8927:
      case 8928:
      case 8929:
      case 8930:
      case 8931:
      case 8932:
      case 8933:
      case 8934:
      case 8935:
      case 8936:
      case 8937:
      case 8938:
      case 8939:
      case 8940:
      case 8941:
      case 8942:
      case 8943:
      case 8944:
      case 8945:
      case 8946:
      case 8947:
      case 8948:
      case 8949:
      case 8950:
      case 8951:
      case 8952:
      case 8953:
      case 8954:
      case 8955:
      case 8956:
      case 8957:
      case 8958:
      case 8959:
      case 8960:
      case 8961:
      case 8962:
      case 8963:
      case 8964:
      case 8965:
      case 8966:
      case 8967:
      case 8968:
      case 8969:
      case 8970:
      case 8971:
      case 8972:
      case 8973:
      case 8974:
      case 8975:
      case 8976:
      case 8977:
      case 8978:
      case 8979:
      case 8980:
      case 8981:
      case 8982:
      case 8983:
      case 8984:
      case 8985:
      case 8986:
      case 8987:
      case 8988:
      case 8989:
      case 8990:
      case 8991:
      case 8992:
      case 8993:
      case 8994:
      case 8995:
      case 8996:
      case 8997:
      case 8998:
      case 8999:
      case 9000:
      case 9001:
      case 9002:
      case 9003:
      case 9004:
      case 9005:
      case 9006:
      case 9007:
      case 9008:
      case 9009:
      case 9010:
      case 9011:
      case 9012:
      case 9013:
      case 9014:
      case 9015:
      case 9016:
      case 9017:
      case 9018:
      case 9019:
      case 9020:
      case 9021:
      case 9022:
      case 9023:
      case 9024:
      case 9025:
      case 9026:
      case 9027:
      case 9028:
      case 9029:
      case 9030:
      case 9031:
      case 9032:
      case 9033:
      case 9034:
      case 9035:
      case 9036:
      case 9037:
      case 9038:
      case 9039:
      case 9040:
      case 9041:
      case 9042:
      case 9043:
      case 9044:
      case 9045:
      case 9046:
      case 9047:
      case 9048:
      case 9049:
      case 9050:
      case 9051:
      case 9052:
      case 9053:
      case 9054:
      case 9055:
      case 9056:
      case 9057:
      case 9058:
      case 9059:
      case 9060:
      case 9061:
      case 9062:
      case 9063:
      case 9064:
      case 9065:
      case 9066:
      case 9067:
      case 9068:
      case 9069:
      case 9070:
      case 9071:
      case 9072:
      case 9073:
      case 9074:
      case 9075:
      case 9076:
      case 9077:
      case 9078:
      case 9079:
      case 9080:
      case 9081:
      case 9082:
      case 9083:
      case 9084:
      case 9085:
      case 9086:
      case 9087:
      case 9088:
      case 9089:
      case 9090:
      case 9091:
      case 9092:
      case 9093:
      case 9094:
      case 9095:
      case 9096:
      case 9097:
      case 9098:
      case 9099:
      case 9100:
      case 9101:
      case 9102:
      case 9103:
      case 9104:
      case 9105:
      case 9106:
      case 9107:
      case 9108:
      case 9109:
      case 9110:
      case 9111:
      case 9112:
      case 9113:
      case 9114:
      case 9115:
      case 9116:
      case 9117:
      case 9118:
      case 9119:
      case 9120:
      case 9121:
      case 9122:
      case 9123:
      case 9124:
      case 9125:
      case 9126:
      case 9127:
      case 9128:
      case 9129:
      case 9130:
      case 9131:
      case 9132:
      case 9133:
      case 9134:
      case 9135:
      case 9136:
      case 9137:
      case 9138:
      case 9139:
      case 9140:
      case 9141:
      case 9142:
      case 9143:
      case 9144:
      case 9145:
      case 9146:
      case 9147:
      case 9148:
      case 9149:
      case 9150:
      case 9151:
      case 9152:
      case 9153:
      case 9154:
      case 9155:
      case 9156:
      case 9157:
      case 9158:
      case 9159:
      case 9160:
      case 9161:
      case 9162:
      case 9163:
      case 9164:
      case 9165:
      case 9166:
      case 9167:
      case 9168:
      case 9169:
      case 9170:
      case 9171:
      case 9172:
      case 9173:
      case 9174:
      case 9175:
      case 9176:
      case 9177:
      case 9178:
      case 9179:
      case 9180:
      case 9181:
      case 9182:
      case 9183:
      case 9184:
      case 9185:
      case 9186:
      case 9187:
      case 9188:
      case 9189:
      case 9190:
      case 9191:
      case 9192:
      case 9193:
      case 9194:
      case 9195:
      case 9196:
      case 9197:
      case 9198:
      case 9199:
      case 9200:
      case 9201:
      case 9202:
      case 9203:
      case 9204:
      case 9205:
      case 9206:
      case 9207:
      case 9208:
      case 9209:
      case 9210:
      case 9211:
      case 9212:
      case 9213:
      case 9214:
      case 9215:
      case 9216:
      case 9217:
      case 9218:
      case 9219:
      case 9220:
      case 9221:
      case 9222:
      case 9223:
      case 9224:
      case 9225:
      case 9226:
      case 9227:
      case 9228:
      case 9229:
      case 9230:
      case 9231:
      case 9232:
      case 9233:
      case 9234:
      case 9235:
      case 9236:
      case 9237:
      case 9238:
      case 9239:
      case 9240:
      case 9241:
      case 9242:
      case 9243:
      case 9244:
      case 9245:
      case 9246:
      case 9247:
      case 9248:
      case 9249:
      case 9250:
      case 9251:
      case 9252:
      case 9253:
      case 9254:
      case 9255:
      case 9256:
      case 9257:
      case 9258:
      case 9259:
      case 9260:
      case 9261:
      case 9262:
      case 9264:
      case 9265:
      case 9267:
      case 9269:
      case 9270:
      case 9271:
      case 9272:
      case 9273:
      case 9274:
      case 9275:
      case 9276:
      case 9277:
      case 9278:
      case 9279:
      case 9280:
      case 9281:
      case 9282:
      case 9283:
      case 9284:
      case 9285:
      case 9286:
      case 9287:
      case 9288:
      case 9289:
      case 9290:
      case 9291:
      case 9292:
      case 9293:
      case 9294:
      case 9295:
      case 9296:
      case 9297:
      case 9298:
      case 9299:
      case 9300:
      case 9301:
      case 9302:
      case 9303:
      case 9304:
      case 9305:
      case 9306:
      case 9307:
      case 9308:
      case 9309:
      case 9310:
      case 9311:
      case 9312:
      case 9313:
      case 9314:
      case 9315:
      case 9316:
      case 9317:
      case 9318:
      case 9319:
      case 9320:
      case 9321:
      case 9322:
      case 9323:
      case 9324:
      case 9325:
      case 9326:
      case 9327:
      case 9328:
      case 9329:
      case 9330:
      case 9331:
      case 9332:
      case 9333:
      case 9334:
      case 9335:
      case 9336:
      case 9337:
      case 9338:
      case 9339:
      case 9340:
      case 9341:
      case 9342:
      case 9343:
      case 9344:
      case 9345:
      case 9346:
      case 9347:
      case 9348:
      case 9349:
      case 9350:
      case 9351:
      case 9352:
      case 9353:
      case 9354:
      case 9355:
      case 9356:
      case 9357:
      case 9358:
      case 9359:
      case 9360:
      case 9361:
      case 9362:
      case 9363:
      case 9364:
      case 9365:
      case 9366:
      case 9367:
      case 9368:
      case 9369:
      case 9370:
      case 9371:
      case 9372:
      case 9373:
      case 9374:
      case 9375:
      case 9376:
      case 9377:
      case 9378:
      case 9379:
      case 9380:
      case 9381:
      case 9382:
      case 9383:
      case 9384:
      case 9385:
      case 9386:
      case 9387:
      case 9388:
      case 9389:
      case 9390:
      case 9391:
      case 9392:
      case 9393:
      case 9394:
      case 9395:
      case 9396:
      case 9397:
      case 9398:
      case 9399:
      case 9400:
      case 9401:
      case 9402:
      case 9403:
      case 9404:
      case 9405:
      case 9406:
      case 9407:
      case 9408:
      case 9409:
      case 9410:
      case 9411:
      case 9412:
      case 9413:
      case 9414:
      case 9415:
      case 9416:
      case 9417:
      case 9418:
      case 9419:
      case 9420:
      case 9421:
      case 9422:
      case 9423:
      case 9424:
      case 9425:
      case 9426:
      case 9427:
      case 9428:
      case 9429:
      case 9430:
      case 9431:
      case 9432:
      case 9433:
      case 9434:
      case 9435:
      case 9436:
      case 9437:
      case 9438:
      case 9439:
      case 9440:
      case 9441:
      case 9442:
      case 9443:
      case 9444:
      case 9445:
      case 9446:
      case 9447:
      case 9448:
      case 9449:
      case 9450:
      case 9451:
      case 9452:
      case 9453:
      case 9454:
      case 9455:
      case 9456:
      case 9457:
      case 9458:
      case 9459:
      case 9460:
      case 9461:
      case 9462:
      case 9463:
      case 9464:
      case 9465:
      case 9466:
      case 9467:
      case 9468:
      case 9469:
      case 9470:
      case 9471:
      case 9472:
      case 9473:
      case 9474:
      case 9475:
      case 9476:
      case 9477:
      case 9478:
      case 9479:
      case 9480:
      case 9481:
      case 9482:
      case 9483:
      case 9484:
      case 9485:
      case 9486:
      case 9487:
      case 9488:
      case 9489:
      case 9490:
      case 9491:
      case 9492:
      case 9493:
      case 9494:
      case 9495:
      case 9496:
      case 9497:
      case 9498:
      case 9499:
      case 9500:
      case 9501:
      case 9502:
      case 9503:
      case 9504:
      case 9505:
      case 9506:
      case 9507:
      case 9508:
      case 9509:
      case 9510:
      case 9511:
      case 9512:
      case 9513:
      case 9514:
      case 9515:
      case 9516:
      case 9517:
      case 9518:
      case 9519:
      case 9520:
      case 9521:
      case 9522:
      case 9523:
      case 9524:
      case 9525:
      case 9526:
      case 9527:
      case 9528:
      case 9529:
      case 9530:
      case 9531:
      case 9532:
      case 9533:
      case 9534:
      case 9535:
      case 9536:
      case 9537:
      case 9538:
      case 9539:
      case 9540:
      case 9541:
      case 9542:
      case 9543:
      case 9544:
      case 9545:
      case 9546:
      case 9547:
      case 9548:
      case 9549:
      case 9550:
      case 9551:
      case 9552:
      case 9553:
      case 9554:
      case 9555:
      case 9556:
      case 9557:
      case 9558:
      case 9559:
      case 9560:
      case 9561:
      case 9562:
      case 9563:
      case 9564:
      case 9565:
      case 9566:
      case 9567:
      case 9568:
      case 9569:
      case 9570:
      case 9571:
      case 9572:
      case 9573:
      case 9574:
      case 9575:
      case 9576:
      case 9577:
      case 9578:
      case 9579:
      case 9580:
      case 9581:
      case 9582:
      case 9583:
      case 9584:
      case 9585:
      case 9586:
      case 9587:
      case 9588:
      case 9589:
      case 9590:
      case 9591:
      case 9592:
      case 9593:
      case 9594:
      case 9595:
      case 9596:
      case 9597:
      case 9598:
      case 9599:
      case 9600:
      case 9601:
      case 9602:
      case 9603:
      case 9604:
      case 9605:
      case 9606:
      case 9607:
      case 9608:
      case 9609:
      case 9610:
      case 9611:
      case 9612:
      case 9613:
      case 9614:
      case 9615:
      case 9616:
      case 9617:
      case 9618:
      case 9619:
      case 9620:
      case 9621:
      case 9622:
      case 9623:
      case 9624:
      case 9625:
      case 9626:
      case 9627:
      case 9628:
      case 9629:
      case 9630:
      case 9631:
      case 9632:
      case 9633:
      case 9634:
      case 9635:
      case 9636:
      case 9637:
      case 9638:
      case 9639:
      case 9640:
      case 9641:
      case 9642:
      case 9643:
      case 9644:
      case 9645:
      case 9646:
      case 9647:
      case 9648:
      case 9649:
      case 9650:
      case 9651:
      case 9652:
      case 9653:
      case 9654:
      case 9655:
      case 9656:
      case 9657:
      case 9658:
      case 9659:
      case 9660:
      case 9661:
      case 9662:
      case 9663:
      case 9664:
      case 9665:
      case 9666:
      case 9667:
      case 9668:
      case 9669:
      case 9670:
      case 9671:
      case 9672:
      case 9673:
      case 9674:
      case 9675:
      case 9676:
      case 9677:
      case 9678:
      case 9679:
      case 9680:
      case 9681:
      case 9682:
      case 9683:
      case 9684:
      case 9685:
      case 9686:
      case 9687:
      case 9688:
      case 9689:
      case 9690:
      case 9691:
      case 9692:
      case 9693:
      case 9694:
      case 9695:
      case 9696:
      case 9697:
      case 9698:
      case 9699:
      case 9700:
      case 9701:
      case 9702:
      case 9703:
      case 9704:
      case 9705:
      case 9706:
      case 9707:
      case 9708:
      case 9709:
      case 9710:
      case 9711:
      case 9712:
      case 9713:
      case 9714:
      case 9715:
      case 9716:
      case 9717:
      case 9718:
      case 9719:
      case 9720:
      case 9721:
      case 9722:
      case 9723:
      case 9724:
      case 9725:
      case 9726:
      case 9727:
      case 9728:
      case 9729:
      case 9730:
      case 9731:
      case 9732:
      case 9733:
      case 9734:
      case 9735:
      case 9736:
      case 9801:
      case 9802:
      case 9803:
      case 9804:
      case 9805:
      case 9806:
      case 9807:
      case 9808:
      case 9809:
      case 9810:
      case 9811:
      case 9812:
      case 9813:
      case 9814:
      case 9815:
      case 9816:
      case 9817:
      case 9818:
      case 9819:
      case 9820:
      case 9821:
      case 9822:
      case 9823:
      case 9824:
      case 9825:
      case 9826:
      case 9827:
      case 9828:
      case 9829:
      case 9830:
      case 9831:
      case 9832:
      case 9833:
      case 9834:
      case 9835:
      case 9836:
      case 9837:
      case 9838:
      case 9839:
      case 9840:
      case 9841:
      case 9842:
      case 9843:
      case 9844:
      case 9845:
      case 9846:
      case 9847:
      case 9848:
      case 9849:
      case 9850:
      case 9851:
      case 9852:
      case 9853:
      case 9854:
      case 9855:
      case 9856:
      case 9857:
      case 9858:
      case 9859:
      case 9860:
      case 9861:
      case 9862:
      case 9863:
      case 9864:
      case 9865:
      case 9866:
      case 9867:
      case 9868:
      case 9869:
      case 9870:
      case 9871:
      case 9872:
      case 9873:
      case 9874:
      case 9875:
      case 9876:
      case 9877:
      case 9878:
      case 9879:
      case 9880:
      case 9881:
      case 9882:
      case 9883:
      case 9884:
      case 9885:
      case 9886:
      case 9887:
      case 9888:
      case 9889:
      case 9890:
      case 9891:
      case 9892:
      case 9893:
      case 9894:
      case 9895:
      case 9896:
      case 9897:
      case 9898:
      case 9899:
      case 9900:
      case 9901:
      case 9902:
      case 9903:
      case 9904:
      case 9905:
      case 9906:
      case 9907:
      case 9908:
      case 9909:
      case 9910:
      case 9911:
      case 9912:
      case 9913:
      case 9914:
      case 9915:
      case 9916:
      case 9917:
      case 9918:
      case 9919:
      case 9920:
      case 9921:
      case 9922:
      case 9923:
      case 9924:
      case 9925:
      case 9926:
      case 9927:
      case 9928:
      case 9929:
      case 9930:
      case 9931:
      case 9932:
      case 9933:
      case 9934:
      case 9935:
      case 9960:
      case 9961:
      case 9962:
      case 9963:
      case 9964:
      case 9965:
      case 9966:
      case 9967:
      case 9968:
      case 9969:
      case 9970:
      case 9971:
      case 9972:
      case 9973:
      case 9974:
      case 9975:
      case 9976:
      case 9977:
      case 9978:
      case 9979:
      case 9980:
      case 9981:
      case 9982:
      case 9983:
      case 9984:
      case 9985:
      case 9986:
      case 9987:
      case 9988:
      case 9989:
      case 9990:
      case 9991:
      case 9992:
      case 9993:
      case 9994:
      case 9995:
      case 9996:
      case 9997:
      case 9998:
      case 9999:
      case 10000:
      case 10001:
      case 10002:
      case 10003:
      case 10004:
      case 10005:
      case 10006:
      case 10007:
      case 10008:
      case 10009:
      case 10010:
      case 10011:
      case 10012:
      case 10013:
      case 10014:
      case 10063:
      case 10064:
      case 10065:
      case 10066:
      case 10067:
      case 10068:
      case 10069:
      case 10070:
      case 10071:
      case 10072:
      case 10073:
      case 10074:
      case 10075:
      case 10076:
      case 10077:
      case 10078:
      case 10079:
      case 10080:
      case 10081:
      case 10082:
      case 10083:
      case 10084:
      case 10085:
      case 10086:
      case 10087:
      case 10088:
      case 10089:
      case 10090:
      case 10091:
      case 10092:
      case 10093:
      case 10094:
      case 10095:
      case 10096:
      case 10097:
      case 10098:
      case 10099:
      case 10100:
      case 10101:
      case 10102:
      case 10103:
      case 10104:
      case 10105:
      case 10106:
      case 10169:
      case 10170:
      case 11273:
      case 11593:
      case 11599:
      case 11600:
      case 11607:
      case 11639:
      case 11645:
        v16 = a1;
        v17 = 8;
        goto LABEL_432;
      case 30:
        v8 = 2;
        IntrinsicArgAttributeSet = getIntrinsicArgAttributeSet(a1, 2);
LABEL_370:
        v456[0] = 2;
        v457 = IntrinsicArgAttributeSet;
        v62 = a1;
        v63 = 4;
        goto LABEL_410;
      case 31:
      case 45:
      case 120:
      case 128:
      case 129:
        goto LABEL_435;
      case 32:
        v220 = a1;
        v221 = 3;
        goto LABEL_380;
      case 36:
        v9 = a1;
        v10 = 3;
        goto LABEL_247;
      case 37:
        v77 = getIntrinsicArgAttributeSet(a1, 4);
        v456[0] = 2;
        v457 = v77;
        v8 = 3;
        v78 = getIntrinsicArgAttributeSet(a1, 3);
        goto LABEL_243;
      case 44:
      case 6189:
        v211 = a1;
        v212 = 5;
        goto LABEL_425;
      case 48:
        v50 = a1;
        v51 = 3;
        goto LABEL_150;
      case 68:
      case 5499:
      case 5500:
      case 5501:
      case 5502:
        v211 = a1;
        v212 = 0;
LABEL_425:
        v94 = getIntrinsicArgAttributeSet(v211, v212);
        v95 = 1;
        goto LABEL_426;
      case 70:
        v16 = a1;
        v17 = 12;
        goto LABEL_432;
      case 79:
      case 135:
      case 136:
      case 177:
      case 267:
      case 268:
      case 306:
      case 307:
      case 461:
      case 982:
      case 1009:
      case 1056:
      case 1166:
      case 1202:
      case 1252:
      case 1309:
      case 1349:
      case 1352:
      case 1383:
      case 1385:
      case 1390:
      case 1424:
      case 1430:
      case 1432:
      case 1455:
      case 1457:
      case 1459:
      case 1462:
      case 1463:
      case 1465:
      case 1468:
      case 1470:
      case 1472:
      case 1474:
      case 1484:
      case 1490:
      case 1491:
      case 1494:
      case 1605:
      case 1607:
      case 1643:
      case 1645:
      case 1648:
      case 1651:
      case 1665:
      case 1667:
      case 1674:
      case 1725:
      case 1740:
      case 2443:
      case 3290:
      case 3402:
      case 3435:
      case 3436:
      case 3623:
      case 3681:
      case 3736:
      case 3738:
      case 3739:
      case 3740:
      case 3741:
      case 3742:
      case 3744:
      case 3745:
      case 3746:
      case 3747:
      case 3749:
      case 3767:
      case 3768:
      case 3769:
      case 3770:
      case 3774:
      case 3775:
      case 3776:
      case 3777:
      case 3838:
      case 3839:
      case 3840:
      case 3841:
      case 3842:
      case 3844:
      case 3845:
      case 3846:
      case 3847:
      case 3848:
      case 3899:
      case 3916:
      case 3926:
      case 3941:
      case 3942:
      case 3943:
      case 3951:
      case 3964:
      case 3965:
      case 3966:
      case 3967:
      case 3968:
      case 3970:
      case 3971:
      case 3972:
      case 3973:
      case 3974:
      case 4012:
      case 4013:
      case 4016:
      case 4017:
      case 4206:
      case 4207:
      case 4540:
      case 4541:
      case 4562:
      case 4563:
      case 4572:
      case 4573:
      case 4826:
      case 4827:
      case 4846:
      case 4847:
      case 4870:
      case 4871:
      case 7536:
      case 7543:
      case 7635:
      case 7645:
      case 7690:
      case 7692:
      case 10240:
      case 10241:
      case 10247:
      case 10316:
      case 10381:
      case 10382:
      case 10395:
      case 10396:
      case 10397:
      case 10406:
      case 10407:
      case 10408:
      case 10409:
      case 10410:
      case 10411:
      case 10412:
      case 10413:
      case 10464:
      case 10465:
      case 10467:
      case 10468:
      case 10687:
      case 10688:
      case 10690:
      case 10691:
      case 10759:
      case 10760:
      case 10761:
      case 10762:
      case 10763:
      case 10764:
      case 10893:
      case 10894:
      case 10968:
      case 10969:
      case 10974:
      case 10975:
      case 11097:
      case 11100:
      case 11101:
      case 11103:
      case 11109:
      case 11110:
      case 11115:
      case 11116:
      case 11187:
      case 11199:
      case 11246:
      case 11247:
      case 11248:
      case 11280:
      case 11285:
      case 11286:
      case 11323:
      case 11324:
      case 11393:
      case 11394:
      case 11395:
      case 11396:
      case 11405:
      case 11406:
      case 11418:
      case 11419:
      case 11420:
      case 11421:
      case 11422:
      case 11423:
      case 11424:
      case 11507:
      case 11508:
      case 11509:
      case 11510:
      case 11511:
      case 11512:
        v108 = getIntrinsicArgAttributeSet(a1, 0);
        v289 = 3;
        goto LABEL_330;
      case 121:
      case 122:
        v59 = a1;
        v60 = 6;
        goto LABEL_329;
      case 123:
      case 245:
      case 246:
      case 1399:
      case 1400:
      case 1401:
      case 1402:
      case 1403:
      case 1404:
      case 1405:
      case 1406:
      case 1410:
      case 1411:
      case 1412:
      case 1433:
      case 1434:
      case 1435:
      case 1436:
      case 1437:
      case 1438:
      case 1439:
      case 1440:
      case 1444:
      case 1445:
      case 1446:
      case 1614:
      case 1615:
      case 1616:
      case 1617:
      case 1618:
      case 1619:
      case 1620:
      case 1621:
      case 1625:
      case 1626:
      case 1627:
      case 1628:
      case 1629:
      case 1630:
      case 1631:
      case 1632:
      case 1633:
      case 1634:
      case 1635:
      case 1639:
      case 1640:
      case 1641:
      case 3289:
      case 3814:
      case 3816:
      case 3934:
      case 3936:
      case 7386:
      case 7387:
      case 11426:
        v99 = getIntrinsicArgAttributeSet(a1, 0);
        v100 = 2;
        goto LABEL_55;
      case 125:
        v11 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v11;
        v12 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v12;
        v13 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 4;
        v461 = v13;
        IntrinsicFnAttributeSet = getIntrinsicArgAttributeSet(a1, 0);
        v15 = 5;
        goto LABEL_363;
      case 126:
      case 130:
        v16 = a1;
        v17 = 13;
        goto LABEL_432;
      case 137:
      case 366:
        v50 = a1;
        v51 = 5;
LABEL_150:
        v257 = getIntrinsicArgAttributeSet(v50, v51);
        v456[0] = 1;
        v457 = v257;
        v8 = 2;
        goto LABEL_266;
      case 138:
      case 185:
      case 402:
      case 4048:
      case 4049:
      case 4054:
      case 4055:
      case 4060:
      case 4061:
      case 4068:
      case 4069:
      case 4076:
      case 4077:
      case 4084:
      case 4085:
        v437 = getIntrinsicArgAttributeSet(a1, 5);
        v8 = 2;
        v456[0] = 2;
        v457 = v437;
        v62 = a1;
        v63 = 14;
        goto LABEL_410;
      case 139:
        v32 = getIntrinsicArgAttributeSet(a1, 1);
        v456[0] = 0;
        v457 = v32;
        v25 = a1;
        v26 = 15;
        goto LABEL_419;
      case 147:
      case 261:
      case 1038:
      case 1039:
      case 1040:
      case 1042:
      case 1291:
      case 3121:
      case 3140:
      case 3141:
      case 3226:
      case 3683:
      case 3938:
      case 7691:
      case 7693:
      case 7699:
        v59 = a1;
        v60 = 0;
        goto LABEL_329;
      case 150:
      case 5494:
      case 5495:
      case 5496:
      case 5497:
      case 5498:
      case 5503:
      case 5504:
      case 5505:
      case 5507:
      case 8716:
      case 8717:
        v16 = a1;
        v17 = 11;
        goto LABEL_432;
      case 152:
        v357 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 2;
        v457 = v357;
        v358 = getIntrinsicArgAttributeSet(a1, 5);
        v8 = 3;
        v458 = 3;
        v459 = v358;
        v316 = a1;
        v317 = 10;
        goto LABEL_421;
      case 156:
      case 157:
      case 5080:
      case 5081:
      case 7890:
      case 7903:
      case 10225:
      case 10226:
      case 10233:
      case 10234:
      case 10235:
      case 11168:
      case 11169:
      case 11170:
      case 11171:
        v174 = getIntrinsicArgAttributeSet(a1, 0);
        v175 = 3;
        goto LABEL_192;
      case 159:
        v332 = getIntrinsicArgAttributeSet(a1, 7);
        v456[0] = 1;
        v457 = v332;
        v8 = 4;
        v333 = getIntrinsicArgAttributeSet(a1, 4);
        v458 = 2;
        v459 = v333;
        v334 = getIntrinsicArgAttributeSet(a1, 4);
        v460 = 3;
        v461 = v334;
        v30 = a1;
        v31 = 16;
        goto LABEL_413;
      case 165:
        v429 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        v457 = v429;
        v231 = getIntrinsicArgAttributeSet(a1, 5);
        v8 = 3;
        v458 = 3;
        goto LABEL_372;
      case 166:
      case 170:
      case 171:
        v453 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v453;
        v454 = getIntrinsicArgAttributeSet(a1, 5);
        v458 = 2;
        v459 = v454;
        v182 = a1;
        v183 = 16;
        goto LABEL_392;
      case 167:
      case 2354:
      case 2355:
        v16 = a1;
        v17 = 17;
        goto LABEL_432;
      case 169:
        v16 = a1;
        v17 = 15;
        goto LABEL_432;
      case 181:
      case 182:
      case 273:
      case 292:
      case 295:
      case 296:
        v16 = a1;
        v17 = 18;
        goto LABEL_432;
      case 186:
      case 8058:
      case 8060:
      case 8062:
      case 8064:
      case 8066:
      case 8068:
      case 8070:
      case 8255:
        v197 = getIntrinsicArgAttributeSet(a1, 5);
        v198 = 1;
        goto LABEL_309;
      case 187:
        v370 = a1;
        v371 = 0;
        goto LABEL_409;
      case 188:
        v420 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v420;
        v421 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v421;
        v182 = a1;
        v183 = 2;
        goto LABEL_392;
      case 189:
        v22 = a1;
        v23 = 0;
        goto LABEL_121;
      case 190:
      case 4044:
      case 4045:
      case 4046:
      case 4047:
      case 4050:
      case 4051:
      case 4052:
      case 4053:
      case 4056:
      case 4057:
      case 4058:
      case 4059:
      case 4064:
      case 4065:
      case 4066:
      case 4067:
      case 4072:
      case 4073:
      case 4074:
      case 4075:
      case 4080:
      case 4081:
      case 4082:
      case 4083:
        v451 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 2;
        v457 = v451;
        v452 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 3;
        v458 = 3;
        v459 = v452;
        v316 = a1;
        v317 = 14;
        goto LABEL_421;
      case 191:
        v8 = 5;
        v266 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v266;
        v267 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        v459 = v267;
        v268 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 4;
        v461 = v268;
        v269 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 5;
        v463 = v269;
        v46 = a1;
        v47 = 2;
        goto LABEL_384;
      case 192:
        v431 = getIntrinsicArgAttributeSet(a1, 7);
        v456[0] = 2;
        v457 = v431;
        v432 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 4;
        v459 = v432;
        v433 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 5;
        v460 = 5;
        v461 = v433;
        v434 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 6;
        v463 = v434;
        v46 = a1;
        v47 = 14;
        goto LABEL_384;
      case 193:
      case 2340:
        v18 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 3;
        v457 = v18;
        v19 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 4;
        v459 = v19;
        v20 = getIntrinsicArgAttributeSet(a1, 0);
        v21 = 5;
        goto LABEL_360;
      case 194:
      case 2337:
        v142 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        v457 = v142;
        v80 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        goto LABEL_326;
      case 197:
        v440 = getIntrinsicArgAttributeSet(a1, 8);
        v456[0] = 1;
        v457 = v440;
        v441 = a1;
        v442 = 9;
        goto LABEL_412;
      case 198:
      case 201:
        v27 = getIntrinsicArgAttributeSet(a1, 7);
        v456[0] = 1;
        v457 = v27;
        v28 = getIntrinsicArgAttributeSet(a1, 3);
        v458 = 2;
        v459 = v28;
        v29 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 4;
        v460 = 4;
        v461 = v29;
        v30 = a1;
        v31 = 22;
        goto LABEL_413;
      case 199:
        v447 = getIntrinsicArgAttributeSet(a1, 8);
        v456[0] = 1;
        v457 = v447;
        v448 = getIntrinsicArgAttributeSet(a1, 9);
        v458 = 2;
        v459 = v448;
        v449 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 3;
        v461 = v449;
        v450 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 4;
        v463 = v450;
        v195 = a1;
        v196 = 21;
        goto LABEL_357;
      case 200:
        v444 = getIntrinsicArgAttributeSet(a1, 7);
        v456[0] = 1;
        v457 = v444;
        v441 = a1;
        v442 = 3;
LABEL_412:
        v445 = getIntrinsicArgAttributeSet(v441, v442);
        v458 = 2;
        v459 = v445;
        v446 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 4;
        v460 = 4;
        v461 = v446;
        v30 = a1;
        v31 = 21;
        goto LABEL_413;
      case 202:
        v180 = getIntrinsicArgAttributeSet(a1, 7);
        v456[0] = 1;
        v457 = v180;
        v181 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 4;
        v459 = v181;
        v182 = a1;
        v183 = 23;
        goto LABEL_392;
      case 203:
        v379 = getIntrinsicArgAttributeSet(a1, 7);
        v456[0] = 1;
        v457 = v379;
        v380 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 4;
        v459 = v380;
        v182 = a1;
        v183 = 24;
        goto LABEL_392;
      case 204:
        v35 = getIntrinsicArgAttributeSet(a1, 7);
        v456[0] = 1;
        v457 = v35;
        v36 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        v459 = v36;
        v37 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 4;
        v460 = 4;
        v461 = v37;
        v30 = a1;
        v31 = 23;
        goto LABEL_413;
      case 240:
      case 2338:
        v64 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        v457 = v64;
        v65 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        v459 = v65;
        v20 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 4;
        goto LABEL_361;
      case 244:
        v191 = getIntrinsicArgAttributeSet(a1, 3);
        v456[0] = 1;
        v457 = v191;
        v192 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v192;
        v193 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 3;
        v461 = v193;
        v194 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 4;
        v463 = v194;
        v195 = a1;
        v196 = 25;
        goto LABEL_357;
      case 247:
      case 253:
      case 255:
      case 343:
      case 345:
      case 1308:
      case 1348:
      case 1461:
      case 1467:
      case 1471:
      case 1473:
      case 1492:
      case 1493:
      case 1647:
      case 1650:
      case 1670:
      case 1671:
      case 1776:
      case 1777:
      case 1779:
      case 1780:
      case 3069:
      case 3075:
      case 3099:
      case 3137:
      case 3138:
      case 3212:
      case 3215:
      case 3217:
      case 3219:
      case 3221:
      case 3223:
      case 3225:
      case 3227:
      case 3228:
      case 3234:
      case 3236:
      case 3237:
      case 3238:
      case 3243:
      case 3245:
      case 3246:
      case 3247:
      case 3248:
      case 3249:
      case 3250:
      case 3251:
      case 3252:
      case 3263:
      case 3264:
      case 3266:
      case 3272:
      case 3275:
      case 3277:
      case 3278:
      case 3280:
      case 3283:
      case 3291:
      case 3306:
      case 3308:
      case 3310:
      case 3314:
      case 3570:
      case 3682:
      case 3737:
      case 3743:
      case 3748:
      case 3750:
      case 3751:
      case 3766:
      case 3771:
      case 3772:
      case 3773:
      case 3778:
      case 3779:
      case 3780:
      case 3781:
      case 3782:
      case 3807:
      case 3837:
      case 3843:
      case 3849:
      case 3850:
      case 3867:
      case 3895:
      case 3897:
      case 3931:
      case 3932:
      case 3939:
      case 3948:
      case 3959:
      case 3960:
      case 3962:
      case 3963:
      case 3969:
      case 7434:
      case 7436:
      case 7491:
      case 7492:
      case 7493:
      case 7494:
      case 7495:
      case 7496:
      case 7531:
      case 7893:
      case 7968:
      case 7969:
      case 10118:
      case 10222:
      case 10271:
      case 10272:
      case 10398:
      case 10399:
      case 10400:
      case 10401:
      case 10402:
      case 10403:
      case 10404:
      case 10405:
      case 10416:
      case 10417:
      case 10418:
      case 10419:
      case 10420:
      case 10421:
      case 10535:
      case 10536:
      case 10569:
      case 10570:
      case 10572:
      case 10573:
      case 10695:
      case 10696:
      case 10698:
      case 10699:
      case 10703:
      case 10704:
      case 10706:
      case 10707:
      case 10748:
      case 10749:
      case 10750:
      case 10890:
      case 10891:
      case 10892:
      case 10895:
      case 10898:
      case 10899:
      case 10900:
      case 10901:
      case 10902:
      case 10903:
      case 10904:
      case 10905:
      case 10970:
      case 10971:
      case 10972:
      case 10979:
      case 10984:
      case 10985:
      case 10995:
      case 10996:
      case 10999:
      case 11000:
      case 11102:
      case 11105:
      case 11106:
      case 11107:
      case 11108:
      case 11111:
      case 11112:
      case 11113:
      case 11114:
      case 11198:
      case 11309:
      case 11403:
      case 11404:
      case 11460:
      case 11461:
      case 11505:
      case 11506:
        v108 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        goto LABEL_331;
      case 250:
      case 3045:
      case 5149:
      case 5150:
      case 5151:
      case 5152:
      case 5155:
      case 5186:
      case 5187:
      case 5188:
      case 5189:
      case 5215:
      case 5216:
      case 5217:
      case 5218:
      case 5231:
      case 5232:
      case 5233:
      case 5234:
      case 5244:
      case 5245:
      case 5246:
      case 5247:
      case 5257:
      case 5258:
      case 5259:
      case 5260:
      case 5261:
      case 5262:
      case 5263:
      case 5264:
      case 5273:
      case 5274:
      case 5275:
      case 5276:
      case 5277:
      case 5278:
      case 5279:
      case 5280:
      case 5490:
      case 5491:
      case 5492:
      case 5493:
      case 5534:
      case 5535:
      case 5536:
      case 5537:
      case 5538:
      case 5539:
      case 5540:
      case 5541:
      case 5554:
      case 5555:
      case 5556:
      case 5557:
      case 5558:
      case 5559:
      case 5560:
      case 5561:
      case 5614:
      case 5616:
      case 5654:
      case 5655:
      case 5656:
      case 5657:
      case 5658:
      case 5659:
      case 5660:
      case 5661:
      case 5662:
      case 5663:
      case 5664:
      case 5689:
      case 5690:
      case 5691:
      case 5692:
      case 5697:
      case 5698:
      case 5699:
      case 5700:
      case 5705:
      case 5706:
      case 5707:
      case 5708:
      case 5713:
      case 5714:
      case 5715:
      case 5716:
      case 5721:
      case 5722:
      case 5723:
      case 5724:
      case 5729:
      case 5730:
      case 5731:
      case 5732:
      case 5772:
      case 5773:
      case 5774:
      case 5775:
      case 5782:
      case 8594:
      case 8625:
      case 8635:
      case 8636:
      case 8637:
      case 8699:
      case 8700:
        v166 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 2;
        v456[0] = 2;
        v457 = v166;
        v62 = a1;
        v63 = 8;
        goto LABEL_410;
      case 252:
        v88 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        v457 = v88;
        v89 = getIntrinsicArgAttributeSet(a1, 0);
        v90 = 4;
        goto LABEL_237;
      case 258:
      case 363:
      case 478:
      case 1214:
      case 1236:
      case 1969:
      case 2728:
      case 2729:
      case 2730:
      case 2731:
      case 2732:
      case 2733:
      case 2963:
      case 3381:
      case 3384:
      case 3387:
      case 3390:
      case 3393:
      case 3396:
      case 10124:
      case 10156:
      case 10157:
      case 10162:
      case 10165:
      case 10252:
      case 11388:
        v16 = a1;
        v17 = 19;
        goto LABEL_432;
      case 259:
      case 11303:
        v16 = a1;
        v17 = 26;
        goto LABEL_432;
      case 271:
      case 272:
        v16 = a1;
        v17 = 27;
        goto LABEL_432;
      case 279:
      case 280:
      case 310:
      case 311:
      case 321:
      case 1794:
      case 8022:
      case 8023:
      case 8024:
      case 8025:
      case 8088:
      case 8089:
        v7 = getIntrinsicArgAttributeSet(a1, 0);
        v377 = 3;
        goto LABEL_417;
      case 284:
        v59 = a1;
        v60 = 10;
LABEL_329:
        v108 = getIntrinsicArgAttributeSet(v59, v60);
        v289 = 1;
LABEL_330:
        v456[0] = v289;
LABEL_331:
        v457 = v108;
        v25 = a1;
        v26 = 1;
        goto LABEL_419;
      case 298:
        v325 = getIntrinsicArgAttributeSet(a1, 11);
        v456[0] = 0;
        v457 = v325;
        v80 = getIntrinsicArgAttributeSet(a1, 11);
        v81 = 1;
        goto LABEL_325;
      case 299:
        v16 = a1;
        v17 = 28;
        goto LABEL_432;
      case 305:
        v262 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v262;
        v25 = a1;
        v26 = 28;
        goto LABEL_419;
      case 413:
      case 6104:
      case 6105:
      case 6106:
        v16 = a1;
        v17 = 29;
        goto LABEL_432;
      case 414:
        v327 = getIntrinsicArgAttributeSet(a1, 3);
        v456[0] = 1;
        v457 = v327;
        v148 = a1;
        v149 = 30;
        goto LABEL_427;
      case 415:
        v61 = getIntrinsicArgAttributeSet(a1, 3);
        v8 = 2;
        v456[0] = 2;
        v457 = v61;
        v62 = a1;
        v63 = 30;
        goto LABEL_410;
      case 417:
        v24 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v24;
        v25 = a1;
        v26 = 31;
        goto LABEL_419;
      case 455:
      case 456:
      case 457:
      case 458:
      case 8639:
      case 8640:
      case 8641:
      case 8642:
      case 8754:
      case 8787:
      case 8788:
      case 8789:
      case 8790:
      case 8791:
      case 8792:
      case 8793:
      case 8794:
      case 8795:
      case 8796:
      case 8797:
      case 8798:
        v94 = getIntrinsicArgAttributeSet(a1, 0);
        v95 = 4;
        goto LABEL_426;
      case 462:
      case 463:
      case 474:
      case 476:
      case 477:
      case 479:
      case 480:
      case 952:
      case 953:
      case 954:
      case 955:
        v16 = a1;
        v17 = 32;
        goto LABEL_432;
      case 469:
      case 472:
      case 473:
      case 665:
      case 666:
      case 668:
      case 724:
      case 762:
      case 943:
      case 944:
      case 1767:
      case 1768:
      case 1769:
      case 2444:
      case 2445:
      case 2454:
      case 7559:
      case 7560:
      case 7574:
      case 7578:
      case 7604:
      case 7605:
      case 7606:
      case 7607:
      case 7608:
      case 7609:
      case 7610:
      case 7611:
      case 7612:
      case 7668:
      case 7669:
      case 7670:
      case 7671:
      case 7672:
      case 8099:
      case 8101:
      case 8108:
      case 8110:
      case 8409:
      case 8411:
      case 8451:
      case 8453:
      case 8473:
      case 8511:
      case 8513:
      case 8529:
      case 8531:
        v16 = a1;
        v17 = 33;
        goto LABEL_432;
      case 481:
      case 669:
      case 670:
      case 951:
        v416 = getIntrinsicArgAttributeSet(a1, 7);
        v456[0] = 1;
        v457 = v416;
        v148 = a1;
        v149 = 14;
        goto LABEL_427;
      case 599:
      case 602:
      case 1501:
      case 1512:
      case 3383:
      case 3386:
      case 3389:
      case 3392:
      case 3395:
      case 3398:
        v116 = a1;
        v117 = 5;
        goto LABEL_221;
      case 600:
      case 603:
      case 604:
      case 1509:
      case 3382:
      case 3385:
      case 3388:
      case 3391:
      case 3394:
      case 3397:
      case 3875:
      case 3878:
      case 3881:
      case 3884:
      case 3887:
        v159 = a1;
        v160 = 5;
        goto LABEL_375;
      case 601:
      case 605:
      case 606:
      case 1510:
      case 3874:
      case 3877:
      case 3880:
      case 3883:
      case 3886:
        v167 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 5;
        goto LABEL_404;
      case 607:
      case 1511:
        v167 = getIntrinsicArgAttributeSet(a1, 5);
        v168 = 6;
        goto LABEL_403;
      case 664:
        v411 = getIntrinsicArgAttributeSet(a1, 12);
        v456[0] = 1;
        v457 = v411;
        v412 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v412;
        v413 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 3;
        v461 = v413;
        v414 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 4;
        v463 = v414;
        v415 = getIntrinsicArgAttributeSet(a1, 0);
        v464 = 5;
        v465 = v415;
        v106 = a1;
        v107 = 34;
        goto LABEL_340;
      case 681:
      case 682:
      case 683:
      case 684:
      case 736:
      case 737:
      case 738:
      case 739:
      case 811:
      case 812:
      case 813:
      case 814:
      case 843:
      case 844:
      case 909:
      case 910:
      case 911:
      case 912:
      case 927:
      case 928:
      case 933:
      case 934:
      case 935:
      case 936:
      case 937:
      case 938:
      case 941:
      case 942:
      case 945:
      case 7779:
      case 7852:
        v33 = getIntrinsicArgAttributeSet(a1, 0);
        v34 = 1;
        goto LABEL_387;
      case 689:
      case 695:
      case 702:
      case 709:
      case 716:
      case 723:
      case 750:
      case 752:
      case 764:
      case 772:
      case 780:
      case 788:
      case 796:
      case 804:
      case 834:
      case 839:
      case 846:
      case 849:
      case 851:
      case 862:
      case 870:
      case 878:
      case 886:
      case 894:
      case 902:
      case 913:
      case 920:
      case 930:
        v33 = getIntrinsicArgAttributeSet(a1, 0);
        v34 = 5;
        goto LABEL_387;
      case 690:
      case 696:
      case 703:
      case 710:
      case 717:
      case 751:
      case 753:
      case 765:
      case 773:
      case 781:
      case 789:
      case 797:
      case 805:
      case 835:
      case 840:
      case 845:
      case 847:
      case 848:
      case 850:
      case 852:
      case 863:
      case 871:
      case 879:
      case 887:
      case 895:
      case 903:
      case 914:
      case 921:
      case 929:
      case 931:
      case 932:
        v38 = a1;
        v39 = 0;
        goto LABEL_197;
      case 701:
      case 715:
      case 763:
      case 771:
      case 779:
      case 787:
      case 795:
      case 803:
      case 838:
      case 861:
      case 869:
      case 877:
      case 885:
      case 893:
      case 901:
      case 919:
        v275 = a1;
        v276 = 0;
        goto LABEL_336;
      case 725:
      case 726:
      case 727:
      case 728:
      case 729:
      case 730:
      case 731:
      case 732:
      case 733:
      case 734:
      case 742:
      case 745:
      case 748:
      case 749:
      case 815:
      case 816:
      case 817:
      case 818:
      case 819:
      case 820:
      case 821:
      case 822:
      case 823:
      case 824:
        v40 = a1;
        v41 = 0;
        goto LABEL_105;
      case 950:
      case 1504:
      case 1515:
      case 2802:
      case 2803:
      case 2804:
      case 2805:
      case 2806:
      case 2807:
      case 3873:
      case 3876:
      case 3879:
      case 3882:
      case 3885:
      case 4062:
      case 4063:
      case 4070:
      case 4071:
      case 4078:
      case 4079:
      case 4086:
      case 4087:
      case 4574:
      case 4575:
      case 4576:
      case 4577:
      case 4578:
      case 4579:
      case 4580:
      case 4581:
      case 4884:
      case 4885:
      case 4886:
      case 4887:
      case 4888:
      case 4889:
      case 4890:
      case 4891:
      case 4892:
      case 4893:
      case 4894:
      case 4895:
      case 4896:
      case 4897:
      case 4898:
      case 4899:
      case 4900:
      case 4901:
      case 7875:
      case 10160:
      case 10161:
        v16 = a1;
        v17 = 20;
        goto LABEL_432;
      case 989:
      case 991:
      case 993:
      case 1010:
      case 1019:
      case 1067:
      case 1112:
      case 1150:
      case 1153:
      case 1155:
      case 1157:
      case 1160:
      case 1162:
      case 1247:
      case 1249:
      case 1342:
      case 1343:
      case 1372:
      case 1374:
      case 1376:
      case 1378:
      case 1414:
      case 1417:
      case 1419:
      case 1422:
      case 1449:
      case 1451:
      case 1453:
      case 1522:
      case 1571:
      case 1572:
      case 1594:
      case 1596:
      case 1598:
      case 1600:
      case 1669:
      case 1778:
      case 1781:
      case 1788:
      case 1789:
      case 3952:
      case 4014:
      case 4015:
      case 4018:
      case 4019:
      case 4560:
      case 4561:
      case 4570:
      case 4571:
      case 4828:
      case 4829:
      case 4848:
      case 4849:
      case 4872:
      case 4873:
      case 7978:
      case 7986:
      case 8248:
      case 10414:
      case 10415:
      case 10474:
      case 10476:
      case 10479:
      case 10482:
      case 10485:
      case 10488:
      case 10489:
      case 10492:
      case 10495:
      case 10498:
      case 10503:
      case 10506:
      case 10509:
      case 10512:
      case 10513:
      case 10516:
      case 10519:
      case 10522:
      case 10527:
      case 10528:
      case 10530:
      case 10531:
      case 10563:
      case 10566:
      case 10747:
      case 10751:
      case 10752:
      case 10754:
      case 10755:
      case 10832:
      case 10833:
      case 10834:
      case 10835:
      case 10836:
      case 10837:
      case 10846:
      case 10847:
      case 10858:
      case 10859:
      case 10906:
      case 10907:
      case 10908:
      case 10909:
      case 10910:
      case 10911:
      case 10982:
      case 11016:
      case 11019:
      case 11022:
      case 11025:
      case 11028:
      case 11031:
      case 11034:
      case 11037:
      case 11040:
      case 11043:
      case 11052:
      case 11055:
      case 11058:
      case 11061:
      case 11064:
      case 11067:
      case 11117:
      case 11118:
      case 11121:
      case 11537:
      case 11538:
      case 11539:
      case 11540:
        v48 = getIntrinsicArgAttributeSet(a1, 0);
        v49 = 4;
        goto LABEL_168;
      case 1011:
      case 1018:
      case 1072:
      case 1448:
        v263 = getIntrinsicArgAttributeSet(a1, 0);
        v264 = 4;
        goto LABEL_350;
      case 1071:
      case 1458:
      case 1460:
      case 1464:
      case 1466:
      case 1644:
      case 1646:
      case 8090:
      case 8092:
      case 8094:
      case 8096:
      case 8122:
      case 8124:
      case 8126:
      case 8128:
      case 8130:
      case 8132:
      case 8134:
      case 8139:
      case 8141:
      case 8148:
      case 8150:
      case 8158:
      case 8160:
      case 8162:
      case 8164:
      case 8166:
      case 8168:
      case 8170:
      case 8172:
      case 8173:
      case 8175:
      case 8177:
      case 8179:
      case 8184:
      case 8194:
      case 8208:
      case 8216:
      case 8218:
      case 8220:
      case 8222:
      case 8224:
      case 8226:
      case 8228:
      case 8229:
      case 8231:
      case 8235:
      case 8237:
      case 8250:
      case 8332:
      case 8336:
      case 8413:
      case 8415:
      case 8461:
      case 8466:
      case 8468:
      case 8559:
      case 8561:
      case 8563:
      case 8565:
      case 8588:
      case 10462:
      case 10463:
      case 10500:
      case 10501:
      case 10524:
      case 10525:
      case 10567:
      case 10568:
      case 10577:
      case 10578:
      case 10579:
      case 10580:
      case 10581:
      case 10582:
      case 10713:
      case 10716:
      case 10717:
      case 10718:
      case 10743:
      case 10744:
      case 10745:
      case 10746:
      case 10848:
      case 10849:
      case 10860:
      case 10861:
      case 10973:
      case 10978:
      case 10983:
      case 10988:
      case 10989:
      case 10990:
      case 11009:
      case 11010:
      case 11011:
      case 11012:
      case 11046:
      case 11047:
      case 11048:
      case 11049:
      case 11073:
      case 11074:
      case 11077:
      case 11078:
      case 11081:
      case 11082:
      case 11085:
      case 11086:
      case 11089:
      case 11090:
      case 11093:
      case 11094:
      case 11411:
      case 11412:
      case 11413:
      case 11414:
      case 11415:
      case 11416:
      case 11417:
        v48 = getIntrinsicArgAttributeSet(a1, 0);
        v49 = 5;
        goto LABEL_168;
      case 1224:
      case 1225:
      case 1226:
      case 1227:
      case 1228:
      case 1229:
      case 1230:
      case 1231:
      case 1232:
        v16 = a1;
        v17 = 25;
        goto LABEL_432;
      case 1270:
        v116 = a1;
        v117 = 0;
LABEL_221:
        v167 = getIntrinsicArgAttributeSet(v116, v117);
        v168 = 3;
        goto LABEL_403;
      case 1271:
      case 1273:
      case 1274:
      case 1275:
      case 1277:
      case 1278:
      case 1279:
      case 1281:
      case 1282:
      case 1283:
      case 1285:
      case 1286:
        v287 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 2;
        v457 = v287;
        v288 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 4;
        v459 = v288;
        v182 = a1;
        v183 = 25;
        goto LABEL_392;
      case 1272:
      case 1276:
      case 1280:
      case 1284:
        v438 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 4;
        v457 = v438;
        v148 = a1;
        v149 = 25;
        goto LABEL_427;
      case 1298:
      case 1299:
      case 2351:
        v16 = a1;
        v17 = 35;
        goto LABEL_432;
      case 1346:
      case 1724:
        v16 = a1;
        v17 = 36;
        goto LABEL_432;
      case 1502:
      case 1503:
      case 1505:
      case 1506:
      case 1507:
      case 1508:
      case 1513:
      case 1514:
      case 1516:
      case 2800:
      case 2801:
      case 7408:
      case 7409:
      case 7410:
      case 7411:
      case 7412:
        v16 = a1;
        v17 = 14;
        goto LABEL_432;
      case 1741:
        v326 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v326;
        v148 = a1;
        v149 = 37;
        goto LABEL_427;
      case 1742:
      case 1743:
      case 3048:
        v16 = a1;
        v17 = 37;
        goto LABEL_432;
      case 1744:
      case 2462:
        v16 = a1;
        v17 = 38;
        goto LABEL_432;
      case 1747:
      case 1748:
      case 1800:
      case 1802:
      case 1803:
        v8 = 5;
        v42 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v42;
        v43 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        v459 = v43;
        v44 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 4;
        v461 = v44;
        v45 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 5;
        v463 = v45;
        v46 = a1;
        v47 = 21;
        goto LABEL_384;
      case 1749:
      case 1797:
      case 1812:
      case 1847:
      case 2341:
      case 2406:
      case 2436:
      case 2437:
      case 2473:
      case 2532:
      case 2533:
      case 2544:
      case 2545:
        v16 = a1;
        v17 = 39;
        goto LABEL_432;
      case 1750:
      case 1751:
      case 1753:
      case 1754:
      case 1755:
      case 1756:
      case 1757:
      case 1758:
      case 1759:
      case 1760:
      case 1761:
      case 1762:
      case 2411:
      case 2412:
      case 2414:
      case 2415:
      case 2416:
      case 2417:
      case 2418:
      case 2419:
      case 2420:
      case 2421:
      case 2422:
      case 2423:
      case 2424:
      case 2425:
      case 2426:
        v52 = getIntrinsicArgAttributeSet(a1, 0);
        v53 = 5;
        goto LABEL_365;
      case 1752:
      case 2413:
      case 2494:
      case 2495:
      case 2497:
      case 2498:
      case 2499:
      case 2500:
      case 2501:
      case 2502:
      case 2503:
      case 2504:
      case 2505:
      case 2506:
      case 2507:
      case 2508:
      case 2509:
        v52 = getIntrinsicArgAttributeSet(a1, 0);
        v53 = 6;
        goto LABEL_365;
      case 1763:
      case 1764:
      case 2432:
        v435 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 4;
        v457 = v435;
        v234 = getIntrinsicArgAttributeSet(a1, 0);
        v235 = 5;
        goto LABEL_390;
      case 1765:
      case 1766:
      case 2433:
        v436 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 5;
        v457 = v436;
        v386 = getIntrinsicArgAttributeSet(a1, 0);
        v387 = 6;
        goto LABEL_394;
      case 1791:
      case 2328:
      case 2329:
      case 2344:
      case 2410:
        v205 = a1;
        v206 = 13;
        goto LABEL_176;
      case 1795:
      case 1813:
        v213 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 2;
        v456[0] = 2;
        v457 = v213;
        v62 = a1;
        v63 = 41;
        goto LABEL_410;
      case 1796:
      case 1799:
        v328 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v328;
        v329 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v329;
        v182 = a1;
        v183 = 42;
        goto LABEL_392;
      case 1798:
        v52 = getIntrinsicArgAttributeSet(a1, 0);
        v53 = 4;
        goto LABEL_365;
      case 1801:
      case 2935:
      case 2936:
      case 2937:
        v164 = a1;
        v165 = 5;
        goto LABEL_84;
      case 1804:
      case 1806:
      case 1807:
      case 1808:
      case 1809:
        v16 = a1;
        v17 = 43;
        goto LABEL_432;
      case 1805:
        v16 = a1;
        v17 = 44;
        goto LABEL_432;
      case 1810:
      case 1811:
        v70 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v70;
        v71 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        v459 = v71;
        v72 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 4;
        v461 = v72;
        v73 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 5;
        v463 = v73;
        v74 = getIntrinsicArgAttributeSet(a1, 0);
        v464 = 6;
        v465 = v74;
        v75 = getIntrinsicArgAttributeSet(a1, 0);
        v466 = 7;
        v467 = v75;
        v76 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 8;
        v468 = 8;
        v469 = v76;
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(a1, 40);
        v470 = -1;
        v4 = v471;
        break;
      case 1814:
      case 2396:
        v430 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 2;
        v456[0] = 2;
        v457 = v430;
        v62 = a1;
        v63 = 39;
        goto LABEL_410;
      case 1815:
      case 1816:
      case 1846:
      case 2353:
        v16 = a1;
        v17 = 45;
        goto LABEL_432;
      case 1817:
        v16 = a1;
        v17 = 46;
        goto LABEL_432;
      case 1818:
        v207 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v207;
        v208 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v208;
        v209 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 7;
        v461 = v209;
        v210 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 8;
        v463 = v210;
        v195 = a1;
        v196 = 36;
        goto LABEL_357;
      case 1819:
        v258 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v258;
        v259 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v259;
        v260 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 5;
        v460 = 5;
        v461 = v260;
        v261 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 6;
        v463 = v261;
        v46 = a1;
        v47 = 36;
        goto LABEL_384;
      case 1820:
        v82 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v82;
        v83 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v83;
        v84 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 7;
        v461 = v84;
        v85 = a1;
        v86 = 36;
        goto LABEL_323;
      case 1821:
      case 1845:
        v246 = getIntrinsicArgAttributeSet(a1, 0);
        v247 = 3;
        goto LABEL_306;
      case 1823:
      case 1826:
      case 2333:
      case 2335:
      case 2470:
      case 2471:
      case 2472:
      case 2523:
      case 2524:
      case 2525:
        v7 = getIntrinsicArgAttributeSet(a1, 0);
        v377 = 4;
        goto LABEL_417;
      case 1827:
      case 1828:
      case 1829:
      case 1830:
      case 1838:
      case 1839:
      case 1840:
      case 1841:
      case 1842:
        v399 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v399;
        v148 = a1;
        v149 = 21;
        goto LABEL_427;
      case 1843:
        v391 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v391;
        v392 = getIntrinsicArgAttributeSet(a1, 5);
        v458 = 2;
        v459 = v392;
        v393 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 3;
        v461 = v393;
        v394 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 4;
        v463 = v394;
        v395 = getIntrinsicArgAttributeSet(a1, 0);
        v464 = 5;
        v465 = v395;
        v106 = a1;
        v107 = 40;
        goto LABEL_340;
      case 1848:
      case 2330:
      case 2468:
        v364 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v364;
        v148 = a1;
        v149 = 47;
        goto LABEL_427;
      case 1849:
      case 1857:
      case 1873:
      case 1881:
      case 1889:
      case 1897:
      case 1905:
      case 1913:
      case 1921:
      case 1929:
      case 1937:
      case 1945:
      case 1953:
      case 1961:
        v290 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 4;
        v457 = v290;
        v236 = getIntrinsicArgAttributeSet(a1, 0);
        v237 = 5;
        goto LABEL_346;
      case 1850:
      case 1851:
      case 1858:
      case 1859:
      case 1865:
      case 1874:
      case 1875:
      case 1882:
      case 1883:
      case 1890:
      case 1891:
      case 1898:
      case 1899:
      case 1906:
      case 1907:
      case 1914:
      case 1915:
      case 1922:
      case 1923:
      case 1930:
      case 1931:
      case 1938:
      case 1939:
      case 1946:
      case 1947:
      case 1954:
      case 1955:
      case 1962:
      case 1963:
        v388 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 5;
        v457 = v388;
        v236 = getIntrinsicArgAttributeSet(a1, 0);
        v237 = 6;
        goto LABEL_346;
      case 1852:
      case 1854:
      case 1855:
      case 1856:
      case 1860:
      case 1862:
      case 1863:
      case 1864:
      case 1866:
      case 1867:
      case 1876:
      case 1878:
      case 1879:
      case 1880:
      case 1884:
      case 1886:
      case 1887:
      case 1888:
      case 1892:
      case 1894:
      case 1895:
      case 1896:
      case 1900:
      case 1902:
      case 1903:
      case 1904:
      case 1908:
      case 1910:
      case 1911:
      case 1912:
      case 1916:
      case 1918:
      case 1919:
      case 1920:
      case 1924:
      case 1926:
      case 1927:
      case 1928:
      case 1932:
      case 1934:
      case 1935:
      case 1936:
      case 1940:
      case 1942:
      case 1943:
      case 1944:
      case 1948:
      case 1950:
      case 1951:
      case 1952:
      case 1956:
      case 1958:
      case 1959:
      case 1960:
      case 1964:
      case 1966:
      case 1967:
      case 1968:
        v346 = getIntrinsicArgAttributeSet(a1, 0);
        v347 = 6;
        goto LABEL_315;
      case 1853:
      case 1861:
      case 1868:
      case 1870:
      case 1871:
      case 1872:
      case 1877:
      case 1885:
      case 1893:
      case 1901:
      case 1909:
      case 1917:
      case 1925:
      case 1933:
      case 1941:
      case 1949:
      case 1957:
      case 1965:
        v87 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 7;
        goto LABEL_132;
      case 1869:
        v252 = getIntrinsicArgAttributeSet(a1, 0);
        v253 = 8;
        goto LABEL_345;
      case 1970:
      case 2033:
      case 2075:
      case 2076:
      case 2079:
      case 2103:
      case 2205:
      case 2247:
      case 2284:
      case 2297:
      case 2298:
      case 2302:
      case 2308:
        v401 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v401;
        v402 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 6;
        v459 = v402;
        v403 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 7;
        v461 = v403;
        v57 = getIntrinsicArgAttributeSet(a1, 0);
        v58 = 8;
        goto LABEL_356;
      case 1971:
      case 1972:
      case 1984:
      case 2011:
      case 2020:
      case 2026:
      case 2027:
      case 2034:
      case 2035:
      case 2036:
      case 2039:
      case 2077:
      case 2078:
      case 2080:
      case 2081:
      case 2084:
      case 2097:
      case 2104:
      case 2105:
      case 2108:
      case 2156:
      case 2193:
      case 2206:
      case 2207:
      case 2211:
      case 2217:
      case 2223:
      case 2248:
      case 2249:
      case 2253:
      case 2259:
      case 2260:
      case 2285:
      case 2286:
      case 2290:
      case 2299:
      case 2300:
      case 2301:
      case 2303:
      case 2304:
      case 2309:
      case 2310:
        v91 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v91;
        v92 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 7;
        v459 = v92;
        v93 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 8;
        v461 = v93;
        v57 = getIntrinsicArgAttributeSet(a1, 0);
        v58 = 9;
        goto LABEL_356;
      case 1973:
      case 1974:
      case 1980:
      case 1981:
      case 1985:
      case 1986:
      case 1998:
      case 2004:
      case 2005:
      case 2012:
      case 2013:
      case 2014:
      case 2017:
      case 2021:
      case 2022:
      case 2023:
      case 2028:
      case 2029:
      case 2030:
      case 2037:
      case 2038:
      case 2040:
      case 2041:
      case 2082:
      case 2083:
      case 2085:
      case 2086:
      case 2090:
      case 2096:
      case 2098:
      case 2099:
      case 2106:
      case 2107:
      case 2109:
      case 2110:
      case 2113:
      case 2126:
      case 2132:
      case 2157:
      case 2158:
      case 2162:
      case 2168:
      case 2169:
      case 2194:
      case 2195:
      case 2199:
      case 2208:
      case 2209:
      case 2210:
      case 2212:
      case 2213:
      case 2218:
      case 2219:
      case 2224:
      case 2228:
      case 2241:
      case 2250:
      case 2251:
      case 2252:
      case 2254:
      case 2255:
      case 2261:
      case 2265:
      case 2278:
      case 2287:
      case 2288:
      case 2289:
      case 2291:
      case 2292:
      case 2305:
      case 2306:
      case 2307:
      case 2311:
      case 2312:
      case 2313:
        v199 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v199;
        v200 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 8;
        v459 = v200;
        v201 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 9;
        v461 = v201;
        v57 = getIntrinsicArgAttributeSet(a1, 0);
        v58 = 10;
        goto LABEL_356;
      case 1975:
      case 1976:
      case 1977:
      case 1982:
      case 1983:
      case 1987:
      case 1988:
      case 1994:
      case 1995:
      case 1999:
      case 2000:
      case 2001:
      case 2006:
      case 2007:
      case 2008:
      case 2015:
      case 2016:
      case 2018:
      case 2019:
      case 2024:
      case 2025:
      case 2031:
      case 2032:
      case 2087:
      case 2088:
      case 2089:
      case 2091:
      case 2092:
      case 2100:
      case 2101:
      case 2102:
      case 2111:
      case 2112:
      case 2114:
      case 2115:
      case 2119:
      case 2125:
      case 2127:
      case 2128:
      case 2133:
      case 2137:
      case 2150:
      case 2159:
      case 2160:
      case 2161:
      case 2163:
      case 2164:
      case 2170:
      case 2174:
      case 2187:
      case 2196:
      case 2197:
      case 2198:
      case 2200:
      case 2201:
      case 2214:
      case 2215:
      case 2216:
      case 2220:
      case 2221:
      case 2222:
      case 2229:
      case 2234:
      case 2242:
      case 2256:
      case 2257:
      case 2258:
      case 2266:
      case 2271:
      case 2279:
      case 2293:
      case 2294:
      case 2295:
        v54 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v54;
        v55 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 9;
        v459 = v55;
        v56 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 10;
        v461 = v56;
        v57 = getIntrinsicArgAttributeSet(a1, 0);
        v58 = 11;
        goto LABEL_356;
      case 1978:
      case 1979:
      case 1989:
      case 1990:
      case 1991:
      case 1996:
      case 1997:
      case 2002:
      case 2003:
      case 2009:
      case 2010:
      case 2093:
      case 2094:
      case 2095:
      case 2116:
      case 2117:
      case 2118:
      case 2120:
      case 2121:
      case 2129:
      case 2130:
      case 2131:
      case 2138:
      case 2143:
      case 2151:
      case 2165:
      case 2166:
      case 2167:
      case 2175:
      case 2180:
      case 2188:
      case 2202:
      case 2203:
      case 2204:
      case 2225:
      case 2235:
      case 2262:
      case 2272:
        v417 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v417;
        v418 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 10;
        v459 = v418;
        v419 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 11;
        v461 = v419;
        v57 = getIntrinsicArgAttributeSet(a1, 0);
        v58 = 12;
        goto LABEL_356;
      case 1992:
      case 1993:
      case 2122:
      case 2123:
      case 2124:
      case 2134:
      case 2144:
      case 2171:
      case 2181:
      case 2226:
      case 2230:
      case 2240:
      case 2243:
      case 2263:
      case 2267:
      case 2277:
      case 2280:
        v422 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v422;
        v423 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 11;
        v459 = v423;
        v424 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 12;
        v461 = v424;
        v57 = getIntrinsicArgAttributeSet(a1, 0);
        v58 = 13;
        goto LABEL_356;
      case 2042:
        v135 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v135;
        v136 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 5;
        v459 = v136;
        v137 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 6;
        v461 = v137;
        v121 = getIntrinsicArgAttributeSet(a1, 0);
        v122 = 7;
        goto LABEL_171;
      case 2043:
      case 2044:
        v284 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v284;
        v285 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 6;
        v459 = v285;
        v286 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 7;
        v461 = v286;
        v121 = getIntrinsicArgAttributeSet(a1, 0);
        v122 = 8;
        goto LABEL_171;
      case 2045:
      case 2046:
      case 2047:
        v118 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v118;
        v119 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 7;
        v459 = v119;
        v120 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 8;
        v461 = v120;
        v121 = getIntrinsicArgAttributeSet(a1, 0);
        v122 = 9;
LABEL_171:
        v462 = v122;
        v463 = v121;
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(a1, 1);
        v464 = -1;
        v4 = &v465;
        v8 = 5;
        break;
      case 2048:
      case 2049:
      case 2050:
      case 2051:
      case 2052:
      case 2053:
      case 2054:
      case 2055:
        v150 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v150;
        v151 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 4;
        v459 = v151;
        v152 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 5;
        v461 = v152;
        v153 = a1;
        v154 = 1;
        goto LABEL_362;
      case 2056:
        v404 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v404;
        v405 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 4;
        v458 = 4;
        v459 = v405;
        v406 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 5;
        v461 = v406;
        v30 = a1;
        v31 = 19;
        goto LABEL_413;
      case 2057:
      case 2058:
      case 2064:
        v109 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v109;
        v110 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 5;
        v459 = v110;
        v68 = getIntrinsicArgAttributeSet(a1, 0);
        v69 = 6;
        goto LABEL_59;
      case 2059:
      case 2061:
      case 2062:
      case 2063:
      case 2065:
      case 2066:
      case 2071:
      case 2073:
        v66 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v66;
        v67 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 6;
        v459 = v67;
        v68 = getIntrinsicArgAttributeSet(a1, 0);
        v69 = 7;
        goto LABEL_59;
      case 2060:
      case 2067:
      case 2068:
      case 2069:
      case 2070:
      case 2072:
        v123 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v123;
        v124 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 7;
        v459 = v124;
        v68 = getIntrinsicArgAttributeSet(a1, 0);
        v69 = 8;
LABEL_59:
        v460 = v69;
        v461 = v68;
        v85 = a1;
        v86 = 19;
        goto LABEL_323;
      case 2074:
      case 2296:
        v407 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v407;
        v408 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 5;
        v458 = 5;
        v459 = v408;
        v409 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 6;
        v461 = v409;
        v410 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 7;
        v463 = v410;
        v46 = a1;
        v47 = 19;
        goto LABEL_384;
      case 2135:
      case 2139:
      case 2149:
      case 2152:
      case 2172:
      case 2176:
      case 2186:
      case 2189:
      case 2231:
      case 2233:
      case 2236:
      case 2244:
      case 2246:
      case 2268:
      case 2270:
      case 2273:
      case 2281:
      case 2283:
        v202 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v202;
        v203 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 12;
        v459 = v203;
        v204 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 13;
        v461 = v204;
        v57 = getIntrinsicArgAttributeSet(a1, 0);
        v58 = 14;
        goto LABEL_356;
      case 2136:
      case 2146:
      case 2148:
      case 2173:
      case 2183:
      case 2185:
      case 2232:
      case 2245:
      case 2269:
      case 2282:
        v254 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v254;
        v255 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 14;
        v459 = v255;
        v256 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 15;
        v461 = v256;
        v57 = getIntrinsicArgAttributeSet(a1, 0);
        v58 = 16;
        goto LABEL_356;
      case 2140:
      case 2142:
      case 2145:
      case 2153:
      case 2155:
      case 2177:
      case 2179:
      case 2182:
      case 2190:
      case 2192:
      case 2227:
      case 2237:
      case 2239:
      case 2264:
      case 2274:
      case 2276:
        v96 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v96;
        v97 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 13;
        v459 = v97;
        v98 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 14;
        v461 = v98;
        v57 = getIntrinsicArgAttributeSet(a1, 0);
        v58 = 15;
        goto LABEL_356;
      case 2141:
      case 2154:
      case 2178:
      case 2191:
      case 2238:
      case 2275:
        v365 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v365;
        v366 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 15;
        v459 = v366;
        v367 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 16;
        v461 = v367;
        v57 = getIntrinsicArgAttributeSet(a1, 0);
        v58 = 17;
        goto LABEL_356;
      case 2147:
      case 2184:
        v336 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v336;
        v337 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 16;
        v459 = v337;
        v338 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 17;
        v461 = v338;
        v57 = getIntrinsicArgAttributeSet(a1, 0);
        v58 = 18;
LABEL_356:
        v462 = v58;
        v463 = v57;
        v195 = a1;
        v196 = 19;
LABEL_357:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v195, v196);
        v464 = -1;
        v8 = 5;
        goto LABEL_385;
      case 2314:
        v396 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        v457 = v396;
        v397 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 5;
        v459 = v397;
        v145 = getIntrinsicArgAttributeSet(a1, 0);
        v146 = 6;
        goto LABEL_322;
      case 2315:
      case 2316:
      case 2322:
        v330 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        v457 = v330;
        v331 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 6;
        v459 = v331;
        v145 = getIntrinsicArgAttributeSet(a1, 0);
        v146 = 7;
        goto LABEL_322;
      case 2317:
      case 2319:
      case 2320:
      case 2321:
      case 2323:
      case 2324:
        v217 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        v457 = v217;
        v218 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 7;
        v459 = v218;
        v145 = getIntrinsicArgAttributeSet(a1, 0);
        v146 = 8;
        goto LABEL_322;
      case 2318:
      case 2325:
      case 2326:
      case 2327:
        v143 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        v457 = v143;
        v144 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 8;
        v459 = v144;
        v145 = getIntrinsicArgAttributeSet(a1, 0);
        v146 = 9;
LABEL_322:
        v460 = v146;
        v461 = v145;
        v85 = a1;
        v86 = 20;
        goto LABEL_323;
      case 2331:
        v188 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 2;
        v456[0] = 2;
        v457 = v188;
        v62 = a1;
        v63 = 47;
        goto LABEL_410;
      case 2336:
        v161 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v161;
        v162 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v162;
        v20 = getIntrinsicArgAttributeSet(a1, 0);
        v21 = 3;
        goto LABEL_360;
      case 2339:
        v79 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 3;
        v457 = v79;
        v80 = getIntrinsicArgAttributeSet(a1, 0);
        v81 = 4;
        goto LABEL_325;
      case 2342:
      case 2343:
      case 6054:
      case 6055:
      case 6056:
      case 6057:
        v7 = getIntrinsicArgAttributeSet(a1, 5);
        v377 = 1;
LABEL_417:
        v456[0] = v377;
        goto LABEL_418;
      case 2345:
        v16 = a1;
        v17 = 48;
        goto LABEL_432;
      case 2347:
        v16 = a1;
        v17 = 49;
        goto LABEL_432;
      case 2349:
        v398 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v398;
        v80 = getIntrinsicArgAttributeSet(a1, 0);
        v81 = 2;
LABEL_325:
        v458 = v81;
LABEL_326:
        v459 = v80;
        v227 = a1;
        v228 = 0;
        goto LABEL_354;
      case 2356:
      case 2357:
      case 2358:
      case 2359:
      case 2360:
      case 2361:
      case 2362:
      case 2363:
      case 2364:
      case 2365:
      case 2366:
      case 2367:
      case 2368:
      case 2369:
      case 2370:
      case 2371:
      case 2372:
      case 2373:
      case 2374:
      case 2375:
      case 2376:
      case 2377:
      case 2378:
      case 2379:
      case 2380:
      case 2381:
      case 2382:
      case 2383:
      case 2384:
      case 2385:
      case 2386:
      case 2387:
      case 2388:
      case 2389:
      case 2390:
      case 2391:
      case 2392:
      case 2393:
      case 2394:
        v214 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 4;
        v457 = v214;
        v215 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 5;
        v459 = v215;
        v216 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 6;
        v461 = v216;
        v153 = a1;
        v154 = 17;
        goto LABEL_362;
      case 2395:
        v155 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        v457 = v155;
        v156 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        v459 = v156;
        v157 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 4;
        v461 = v157;
        v158 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 5;
        v462 = 5;
        goto LABEL_268;
      case 2404:
      case 2490:
      case 2542:
        v16 = a1;
        v17 = 50;
        goto LABEL_432;
      case 2405:
      case 2407:
        v427 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 5;
        v457 = v427;
        v428 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 6;
        v459 = v428;
        v182 = a1;
        v183 = 39;
        goto LABEL_392;
      case 2427:
      case 2428:
        v111 = a1;
        v112 = 0;
        goto LABEL_127;
      case 2429:
        v8 = 5;
        v169 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 2;
        v457 = v169;
        v170 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        v459 = v170;
        v171 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 6;
        v461 = v171;
        v172 = getIntrinsicArgAttributeSet(a1, 0);
        v173 = 7;
        goto LABEL_228;
      case 2430:
      case 2431:
        v186 = getIntrinsicArgAttributeSet(a1, 0);
        v187 = 5;
        goto LABEL_295;
      case 2442:
      case 2528:
        v16 = a1;
        v17 = 47;
        goto LABEL_432;
      case 2446:
      case 2447:
      case 2449:
      case 2453:
        v16 = a1;
        v17 = 51;
        goto LABEL_432;
      case 2448:
      case 2451:
      case 2452:
      case 2458:
      case 2459:
      case 2460:
      case 2461:
      case 7847:
      case 7848:
      case 7849:
        v189 = getIntrinsicArgAttributeSet(a1, 0);
        v190 = 1;
        goto LABEL_239;
      case 2455:
      case 2456:
      case 2457:
        v219 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v219;
        v148 = a1;
        v149 = 52;
        goto LABEL_427;
      case 2463:
        v292 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v292;
        v148 = a1;
        v149 = 51;
        goto LABEL_427;
      case 2469:
        v125 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v125;
        v126 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v126;
        v127 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 3;
        v461 = v127;
        v85 = a1;
        v86 = 47;
        goto LABEL_323;
      case 2476:
      case 2477:
      case 2478:
      case 2479:
      case 2480:
      case 2481:
      case 2482:
      case 2483:
      case 2484:
      case 2485:
      case 2486:
      case 2487:
      case 2488:
      case 2489:
        v243 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 5;
        v457 = v243;
        v244 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 6;
        v459 = v244;
        v227 = a1;
        v228 = 17;
        goto LABEL_354;
      case 2492:
      case 2493:
      case 2546:
        v16 = a1;
        v17 = 53;
        goto LABEL_432;
      case 2496:
        v52 = getIntrinsicArgAttributeSet(a1, 0);
        v53 = 7;
LABEL_365:
        v456[0] = v53;
        v457 = v52;
        v148 = a1;
        v149 = 40;
        goto LABEL_427;
      case 2510:
      case 2511:
      case 10292:
      case 10293:
      case 10294:
      case 10295:
      case 10296:
      case 10297:
      case 10298:
      case 10299:
      case 10300:
      case 10301:
      case 10302:
      case 10303:
      case 10304:
      case 10305:
      case 10306:
      case 10307:
      case 10422:
      case 10423:
      case 10424:
      case 10425:
      case 10426:
      case 10427:
      case 10428:
      case 10429:
      case 10430:
      case 10431:
      case 10432:
      case 10433:
      case 10434:
      case 10435:
      case 10436:
      case 10437:
      case 10438:
      case 10439:
      case 10440:
      case 10441:
      case 10442:
      case 10443:
      case 10444:
      case 10445:
      case 10537:
      case 10538:
      case 10539:
      case 10540:
      case 10541:
      case 10542:
      case 10543:
      case 10544:
      case 10545:
      case 10546:
      case 10547:
      case 10548:
      case 10549:
      case 10550:
      case 10551:
      case 10552:
      case 10553:
      case 10554:
      case 10555:
      case 10556:
      case 10557:
      case 10558:
      case 10559:
      case 10560:
        v197 = getIntrinsicArgAttributeSet(a1, 0);
        v198 = 5;
        goto LABEL_309;
      case 2512:
        v8 = 5;
        v339 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 2;
        v457 = v339;
        v340 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        v459 = v340;
        v341 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 7;
        v461 = v341;
        v172 = getIntrinsicArgAttributeSet(a1, 0);
        v173 = 8;
LABEL_228:
        v462 = v173;
        v463 = v172;
        v46 = a1;
        v47 = 40;
        goto LABEL_384;
      case 2513:
      case 2514:
        v222 = a1;
        v223 = 0;
        goto LABEL_294;
      case 2515:
        v352 = getIntrinsicArgAttributeSet(a1, 0);
        v353 = 5;
        goto LABEL_281;
      case 2516:
        v385 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 6;
        v457 = v385;
        v386 = getIntrinsicArgAttributeSet(a1, 0);
        v387 = 7;
LABEL_394:
        v458 = v387;
        v459 = v386;
        v182 = a1;
        v183 = 20;
        goto LABEL_392;
      case 2517:
      case 2518:
        v425 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v425;
        v426 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        v459 = v426;
        v20 = getIntrinsicArgAttributeSet(a1, 0);
        v21 = 6;
LABEL_360:
        v460 = v21;
LABEL_361:
        v461 = v20;
        v153 = a1;
        v154 = 0;
LABEL_362:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v153, v154);
        v15 = -1;
LABEL_363:
        v462 = v15;
        v4 = &v463;
        v8 = 4;
        break;
      case 2519:
        v238 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 5;
        v457 = v238;
        v239 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 6;
        v458 = 6;
        v459 = v239;
        v240 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 7;
        v461 = v240;
        v241 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 8;
        v463 = v241;
        v242 = getIntrinsicArgAttributeSet(a1, 0);
        v464 = 9;
        v465 = v242;
        v133 = a1;
        v134 = 19;
        goto LABEL_185;
      case 2520:
        v128 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 6;
        v456[0] = 6;
        v457 = v128;
        v129 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 7;
        v459 = v129;
        v130 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 8;
        v461 = v130;
        v131 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 9;
        v463 = v131;
        v132 = getIntrinsicArgAttributeSet(a1, 0);
        v464 = 10;
        v465 = v132;
        v133 = a1;
        v134 = 20;
        goto LABEL_185;
      case 2526:
        v16 = a1;
        v17 = 54;
        goto LABEL_432;
      case 2527:
        v360 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 3;
        v457 = v360;
        v361 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 4;
        v459 = v361;
        v362 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 5;
        v460 = 5;
        v461 = v362;
        v158 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 6;
LABEL_268:
        v463 = v158;
        v46 = a1;
        v47 = 39;
LABEL_384:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v46, v47);
        v464 = -1;
LABEL_385:
        v4 = &v465;
        break;
      case 2530:
      case 2531:
        v246 = getIntrinsicArgAttributeSet(a1, 0);
        v247 = 4;
LABEL_306:
        v456[0] = v247;
        v457 = v246;
        v148 = a1;
        v149 = 39;
        goto LABEL_427;
      case 2534:
      case 2535:
        v381 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v381;
        v382 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        v459 = v382;
        v383 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 6;
        v461 = v383;
        v85 = a1;
        v86 = 39;
LABEL_323:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v85, v86);
        v462 = -1;
        v8 = 4;
        goto LABEL_414;
      case 2543:
        v16 = a1;
        v17 = 55;
        goto LABEL_432;
      case 2547:
      case 2549:
      case 2559:
      case 2561:
      case 3083:
      case 3864:
        v113 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v113;
        v114 = getIntrinsicArgAttributeSet(a1, 0);
        v115 = 2;
        goto LABEL_352;
      case 2548:
      case 2551:
      case 2553:
      case 2560:
      case 2562:
      case 2563:
      case 2564:
      case 2565:
      case 2567:
      case 3680:
      case 3927:
      case 3928:
      case 3929:
      case 3930:
      case 3944:
      case 3945:
      case 3949:
      case 3950:
        v99 = getIntrinsicArgAttributeSet(a1, 0);
        v100 = 1;
LABEL_55:
        v456[0] = v100;
        v457 = v99;
        v114 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 3;
        goto LABEL_353;
      case 2550:
      case 2552:
      case 2555:
      case 2557:
      case 2566:
      case 2568:
      case 2569:
      case 2570:
      case 2571:
      case 2573:
        v224 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        goto LABEL_141;
      case 2554:
      case 2556:
      case 2572:
      case 2574:
      case 2575:
      case 2576:
        v263 = getIntrinsicArgAttributeSet(a1, 0);
        v264 = 1;
        goto LABEL_350;
      case 2558:
        v315 = getIntrinsicArgAttributeSet(a1, 0);
        v321 = 1;
        goto LABEL_233;
      case 2577:
      case 2578:
        v277 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v277;
        v278 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v278;
        v279 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 3;
        v461 = v279;
        v280 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 4;
        v463 = v280;
        v281 = getIntrinsicArgAttributeSet(a1, 0);
        v464 = 5;
        v465 = v281;
        v282 = getIntrinsicArgAttributeSet(a1, 0);
        v466 = 6;
        v467 = v282;
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(a1, 4);
        v468 = -1;
        v8 = 7;
        v4 = &v469;
        break;
      case 2601:
      case 2602:
      case 2603:
      case 2604:
      case 3001:
      case 3002:
      case 3003:
      case 3004:
        v342 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v342;
        v302 = a1;
        v303 = 0;
        goto LABEL_230;
      case 2607:
      case 2608:
        v294 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v294;
        v295 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v295;
        v296 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 4;
        v461 = v296;
        v297 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 5;
        v463 = v297;
        v298 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 6;
        v464 = 6;
        v465 = v298;
        v133 = a1;
        v134 = 4;
LABEL_185:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v133, v134);
        v466 = -1;
        goto LABEL_341;
      case 2609:
      case 2610:
        v368 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v368;
        v369 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v369;
        v140 = getIntrinsicArgAttributeSet(a1, 0);
        v141 = 5;
        goto LABEL_276;
      case 2611:
      case 2612:
        v101 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v101;
        v102 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v102;
        v103 = getIntrinsicArgAttributeSet(a1, 0);
        v460 = 3;
        v461 = v103;
        v104 = getIntrinsicArgAttributeSet(a1, 0);
        v462 = 4;
        v463 = v104;
        v105 = getIntrinsicArgAttributeSet(a1, 0);
        v464 = 5;
        v465 = v105;
        v106 = a1;
        v107 = 4;
LABEL_340:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v106, v107);
        v466 = -1;
        v8 = 6;
LABEL_341:
        v4 = &v467;
        break;
      case 2613:
      case 2614:
      case 11462:
      case 11464:
      case 11466:
      case 11468:
      case 11470:
      case 11472:
      case 11474:
      case 11476:
        v138 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v138;
        v139 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v139;
        v140 = getIntrinsicArgAttributeSet(a1, 0);
        v141 = 3;
LABEL_276:
        v460 = v141;
        v461 = v140;
        v8 = 4;
        v30 = a1;
        v31 = 4;
LABEL_413:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v30, v31);
        v462 = -1;
LABEL_414:
        v4 = &v463;
        break;
      case 2934:
      case 2938:
      case 2939:
      case 2940:
      case 2941:
      case 2942:
      case 2943:
      case 4452:
      case 4453:
      case 4454:
      case 4455:
      case 4456:
      case 4457:
      case 4458:
      case 4459:
      case 4460:
      case 4461:
      case 4462:
      case 4463:
      case 10586:
      case 10587:
      case 10588:
      case 10592:
      case 10593:
      case 10594:
      case 10598:
      case 10599:
      case 10600:
      case 10602:
      case 10603:
      case 10604:
      case 10608:
      case 10609:
      case 10610:
      case 10612:
      case 10613:
      case 10614:
      case 10618:
      case 10619:
      case 10620:
      case 10624:
      case 10625:
      case 10626:
      case 10630:
      case 10631:
      case 10632:
      case 10636:
      case 10637:
      case 10638:
      case 10642:
      case 10643:
      case 10644:
      case 10648:
      case 10649:
      case 10650:
      case 10654:
      case 10655:
      case 10656:
      case 10660:
      case 10661:
      case 10662:
      case 10666:
      case 10667:
      case 10668:
      case 10672:
      case 10673:
      case 10674:
      case 10678:
      case 10679:
      case 10680:
      case 10684:
      case 10685:
      case 10686:
        v16 = a1;
        v17 = 16;
        goto LABEL_432;
      case 2995:
      case 5064:
      case 5076:
      case 5077:
      case 5082:
      case 5083:
      case 5109:
      case 5110:
      case 5111:
      case 5248:
      case 5301:
      case 5852:
      case 7888:
      case 7891:
      case 8833:
      case 11162:
      case 11479:
      case 11481:
      case 11484:
      case 11486:
      case 11527:
        v176 = a1;
        v177 = 0;
        goto LABEL_191;
      case 3040:
      case 3041:
      case 3042:
      case 5224:
      case 5489:
      case 5630:
      case 5631:
      case 8870:
      case 8871:
      case 9737:
      case 9738:
      case 9739:
      case 9740:
      case 9741:
      case 9742:
      case 9743:
      case 9744:
      case 9745:
      case 9746:
      case 9747:
      case 9748:
      case 9749:
      case 9750:
      case 9751:
      case 9752:
      case 9753:
      case 9754:
      case 9755:
      case 9756:
      case 9757:
      case 9758:
      case 9759:
      case 9760:
      case 9761:
      case 9762:
      case 9763:
      case 9764:
      case 9765:
      case 9766:
      case 9767:
      case 9768:
      case 9769:
      case 9770:
      case 9771:
      case 9772:
      case 9773:
      case 9774:
      case 9775:
      case 9776:
      case 9777:
      case 9778:
      case 9779:
      case 9780:
      case 9781:
      case 9782:
      case 9783:
      case 9784:
      case 9785:
      case 9786:
      case 9787:
      case 9788:
      case 9789:
      case 9790:
      case 9791:
      case 9792:
      case 9793:
      case 9794:
      case 9795:
      case 9796:
      case 9797:
      case 9798:
      case 9799:
      case 9800:
      case 11644:
        v16 = a1;
        v17 = 56;
        goto LABEL_432;
      case 3049:
      case 3050:
      case 3051:
      case 3052:
        v16 = a1;
        v17 = 57;
        goto LABEL_432;
      case 3346:
      case 3348:
      case 3349:
      case 3350:
      case 3351:
      case 3354:
      case 3355:
      case 3356:
      case 3357:
      case 3358:
      case 3359:
      case 3360:
      case 3361:
      case 3363:
      case 3364:
      case 3365:
      case 3366:
      case 3367:
      case 3368:
      case 3369:
      case 3370:
      case 3371:
      case 3372:
      case 3373:
      case 3374:
      case 3377:
      case 3378:
      case 3379:
      case 3380:
        v16 = a1;
        v17 = 58;
        goto LABEL_432;
      case 3347:
      case 3362:
        v344 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        goto LABEL_257;
      case 3352:
      case 3353:
      case 3375:
      case 3376:
        v344 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
LABEL_257:
        v457 = v344;
        v25 = a1;
        v26 = 58;
        goto LABEL_419;
      case 3399:
      case 3400:
      case 3888:
      case 3947:
      case 7683:
      case 7684:
      case 7685:
      case 7686:
      case 7687:
      case 7688:
      case 7689:
      case 7700:
      case 7720:
      case 7722:
      case 7724:
      case 7725:
        v220 = a1;
        v221 = 5;
LABEL_380:
        v299 = getIntrinsicArgAttributeSet(v220, v221);
        v300 = 1;
        goto LABEL_381;
      case 3818:
      case 3820:
      case 3891:
      case 3892:
      case 3893:
      case 3894:
      case 10896:
      case 10897:
      case 11104:
      case 11428:
        v224 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 3;
LABEL_141:
        v457 = v224;
        v114 = getIntrinsicArgAttributeSet(a1, 0);
        v115 = 4;
        goto LABEL_352;
      case 4020:
      case 4021:
      case 4022:
      case 4023:
      case 4026:
      case 4027:
      case 4028:
      case 4029:
      case 4032:
      case 4033:
      case 4034:
      case 4035:
      case 4038:
      case 4039:
      case 4040:
      case 4041:
        v345 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 2;
        v457 = v345;
        v78 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 3;
LABEL_243:
        v458 = 3;
        v459 = v78;
        v316 = a1;
        v317 = 2;
        goto LABEL_421;
      case 4024:
      case 4025:
      case 4030:
      case 4031:
      case 4036:
      case 4037:
      case 4042:
      case 4043:
        v359 = getIntrinsicArgAttributeSet(a1, 5);
        v8 = 2;
        v456[0] = 2;
        v457 = v359;
LABEL_266:
        v62 = a1;
        v63 = 2;
        goto LABEL_410;
      case 5041:
      case 5042:
      case 5043:
      case 5044:
      case 5045:
      case 5046:
        v16 = a1;
        v17 = 59;
        goto LABEL_432;
      case 5047:
      case 5048:
      case 5049:
      case 5050:
      case 5051:
      case 5052:
        v159 = a1;
        v160 = 0;
LABEL_375:
        v167 = getIntrinsicArgAttributeSet(v159, v160);
        v168 = 4;
        goto LABEL_403;
      case 5053:
      case 5054:
      case 5055:
      case 5056:
      case 5057:
        v184 = a1;
        v185 = 0;
        goto LABEL_116;
      case 5060:
        v230 = getIntrinsicArgAttributeSet(a1, 7);
        v456[0] = 1;
        v457 = v230;
        v8 = 3;
        v231 = getIntrinsicArgAttributeSet(a1, 3);
        v458 = 2;
LABEL_372:
        v459 = v231;
        v316 = a1;
        v317 = 16;
        goto LABEL_421;
      case 5061:
        v164 = a1;
        v165 = 7;
LABEL_84:
        v167 = getIntrinsicArgAttributeSet(v164, v165);
        v168 = 1;
LABEL_403:
        v456[0] = v168;
LABEL_404:
        v457 = v167;
        v148 = a1;
        v149 = 16;
        goto LABEL_427;
      case 5065:
      case 5066:
        v178 = getIntrinsicArgAttributeSet(a1, 0);
        v179 = 1;
        goto LABEL_211;
      case 5094:
      case 5095:
      case 5098:
      case 5099:
      case 5100:
      case 5101:
      case 5102:
      case 5103:
      case 5104:
      case 5105:
      case 5106:
      case 5107:
      case 8037:
      case 8038:
      case 8043:
      case 8044:
      case 8045:
      case 8046:
      case 8047:
      case 8048:
      case 8049:
      case 8050:
      case 8051:
      case 8052:
        v373 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v373;
        v271 = getIntrinsicArgAttributeSet(a1, 0);
        v272 = 4;
        goto LABEL_285;
      case 5096:
      case 5097:
      case 5108:
      case 8039:
      case 8040:
      case 8041:
      case 8042:
      case 8053:
      case 8054:
        v374 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v374;
        v271 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 5;
        goto LABEL_289;
      case 5156:
      case 5181:
      case 5194:
      case 5195:
      case 5196:
      case 5197:
      case 5202:
      case 5203:
      case 5204:
      case 5205:
      case 5208:
      case 5210:
      case 5226:
      case 5643:
      case 5644:
      case 5649:
      case 5681:
      case 5682:
      case 5683:
      case 5684:
      case 8638:
      case 8651:
      case 8652:
      case 8653:
      case 8654:
      case 8655:
      case 8656:
      case 8657:
      case 8658:
      case 8659:
      case 8660:
      case 8661:
      case 8662:
      case 8695:
      case 8696:
      case 8697:
      case 8698:
      case 8755:
      case 8778:
      case 8779:
      case 8783:
        v94 = getIntrinsicArgAttributeSet(a1, 0);
        v95 = 3;
LABEL_426:
        v456[0] = v95;
        v457 = v94;
        v148 = a1;
        v149 = 8;
        goto LABEL_427;
      case 5651:
        v375 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v375;
        v148 = a1;
        v149 = 56;
        goto LABEL_427;
      case 5733:
      case 5734:
      case 5735:
      case 5736:
      case 5737:
      case 5738:
      case 7713:
      case 7714:
      case 7715:
      case 7716:
      case 7719:
      case 10195:
      case 10196:
      case 10197:
      case 10198:
      case 10223:
      case 10224:
      case 10257:
      case 10258:
      case 10259:
      case 10260:
      case 10312:
      case 10313:
      case 10314:
      case 10315:
      case 11122:
      case 11123:
        v16 = a1;
        v17 = 10;
        goto LABEL_432;
      case 5797:
      case 5798:
      case 5799:
      case 5800:
      case 5801:
      case 5802:
      case 5803:
      case 5804:
      case 5805:
      case 5806:
      case 5807:
      case 5808:
      case 5809:
      case 5810:
      case 5811:
      case 5812:
      case 5813:
      case 5814:
      case 5815:
      case 5816:
      case 5817:
      case 5818:
      case 5819:
      case 5820:
        v400 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v400;
        v148 = a1;
        v149 = 60;
        goto LABEL_427;
      case 5821:
      case 5822:
      case 5823:
      case 5824:
      case 5825:
      case 5826:
      case 5827:
      case 5828:
      case 5829:
      case 5830:
      case 5847:
      case 5848:
      case 5849:
      case 5850:
      case 6089:
      case 6090:
      case 6091:
      case 6092:
      case 6093:
      case 6094:
      case 6095:
      case 6096:
      case 6097:
      case 6098:
      case 6102:
      case 6103:
        v16 = a1;
        v17 = 61;
        goto LABEL_432;
      case 5842:
      case 5843:
      case 5844:
      case 5845:
        v389 = getIntrinsicArgAttributeSet(a1, 14);
        v456[0] = 1;
        v457 = v389;
        v390 = getIntrinsicArgAttributeSet(a1, 15);
        v458 = 2;
        v459 = v390;
        v182 = a1;
        v183 = 60;
        goto LABEL_392;
      case 5898:
      case 5899:
      case 5900:
      case 5901:
      case 5920:
      case 5940:
      case 5941:
      case 5942:
      case 5944:
      case 5945:
      case 5946:
      case 5947:
      case 6107:
      case 6108:
      case 6109:
      case 6110:
      case 6111:
      case 6112:
      case 6113:
      case 6114:
      case 6115:
      case 6116:
      case 6117:
      case 6118:
      case 6119:
      case 6120:
      case 6121:
      case 6122:
      case 6123:
      case 6124:
      case 6125:
      case 6126:
      case 6127:
      case 6128:
      case 6129:
      case 6130:
      case 6131:
      case 6132:
      case 6133:
      case 6134:
      case 6135:
      case 6136:
      case 6137:
      case 6138:
      case 6139:
      case 6140:
      case 6141:
      case 6142:
      case 6143:
      case 6144:
      case 6145:
      case 6146:
      case 6147:
      case 6148:
      case 6149:
      case 6150:
      case 6151:
      case 6152:
      case 6153:
      case 6154:
      case 6155:
      case 6156:
      case 6157:
      case 6158:
      case 6159:
      case 6160:
      case 6161:
      case 6162:
      case 6163:
      case 6164:
      case 6165:
      case 6166:
      case 6167:
      case 6168:
      case 6169:
      case 6170:
      case 6171:
      case 6172:
      case 6173:
      case 6174:
      case 6175:
      case 6176:
      case 6177:
      case 6178:
      case 6179:
      case 6180:
      case 6181:
      case 6182:
      case 6183:
      case 7003:
      case 7004:
      case 7005:
      case 7006:
      case 7007:
      case 7008:
      case 7009:
      case 7010:
      case 7011:
      case 7012:
      case 7013:
      case 7014:
      case 7015:
      case 7016:
      case 7017:
      case 7018:
      case 7019:
      case 7020:
      case 7021:
      case 7022:
      case 7023:
      case 7024:
      case 7025:
      case 7026:
      case 7027:
      case 7028:
      case 7029:
      case 7030:
      case 7031:
      case 7032:
      case 7033:
      case 7034:
      case 7035:
      case 7036:
      case 7037:
      case 7038:
      case 7039:
      case 7040:
      case 7041:
      case 7042:
      case 7043:
      case 7044:
      case 7045:
      case 7046:
      case 7047:
      case 7048:
      case 7049:
      case 7050:
      case 7051:
      case 7052:
      case 7053:
      case 7054:
      case 7079:
      case 7080:
      case 7081:
      case 7082:
      case 7131:
      case 7132:
      case 7133:
      case 7134:
      case 7135:
      case 7136:
      case 7137:
      case 7138:
      case 7139:
      case 7140:
      case 7141:
      case 7142:
      case 7143:
      case 7144:
      case 7145:
      case 7146:
      case 7147:
      case 7148:
      case 7149:
      case 7150:
      case 7151:
      case 7152:
      case 7153:
      case 7154:
      case 7155:
      case 7156:
      case 7157:
      case 7158:
      case 7159:
      case 7160:
      case 7161:
      case 7162:
      case 7163:
      case 7164:
      case 7165:
      case 7166:
      case 7167:
      case 7168:
      case 7169:
      case 7170:
      case 7171:
      case 7172:
      case 7173:
      case 7174:
      case 7175:
      case 7176:
      case 7177:
      case 7178:
      case 7179:
      case 7180:
      case 7181:
      case 7182:
      case 7239:
      case 7240:
      case 7241:
      case 7242:
      case 7243:
      case 7244:
      case 7245:
      case 7246:
      case 7247:
      case 7248:
      case 7249:
      case 7250:
      case 7251:
      case 7252:
      case 7253:
      case 7254:
      case 7255:
      case 7256:
      case 7257:
      case 7258:
      case 7259:
      case 7260:
      case 7261:
      case 7262:
      case 7263:
      case 7264:
      case 7265:
      case 7266:
      case 7267:
      case 7268:
      case 7269:
      case 7270:
      case 7271:
      case 7272:
      case 7273:
      case 7274:
      case 7275:
      case 7276:
      case 7277:
      case 7278:
      case 7279:
      case 7280:
      case 7281:
      case 7282:
      case 7283:
      case 7284:
      case 7285:
      case 7286:
      case 7287:
      case 7288:
      case 7289:
      case 7290:
      case 7311:
      case 7312:
      case 7329:
      case 7330:
      case 7331:
      case 7332:
      case 7349:
      case 7350:
      case 7351:
      case 7352:
      case 7353:
      case 7354:
      case 7355:
      case 7356:
      case 7357:
      case 7358:
      case 7359:
      case 7360:
      case 7361:
      case 7362:
      case 7363:
      case 7364:
      case 7365:
      case 7366:
      case 7367:
      case 7368:
        v16 = a1;
        v17 = 62;
        goto LABEL_432;
      case 6061:
      case 6062:
      case 6063:
      case 6070:
      case 6071:
      case 6072:
        v307 = a1;
        v308 = 5;
        goto LABEL_299;
      case 6064:
      case 6065:
      case 6066:
      case 6067:
      case 6068:
      case 6069:
      case 6959:
      case 6960:
      case 6961:
      case 6962:
      case 6963:
      case 6964:
      case 6965:
      case 6966:
      case 6967:
      case 6968:
      case 6969:
      case 6970:
      case 6971:
      case 6972:
      case 6973:
      case 6974:
      case 6975:
      case 6976:
      case 6977:
      case 6978:
      case 6979:
      case 6980:
      case 6981:
      case 6982:
      case 6983:
      case 6984:
      case 6985:
      case 6986:
      case 6987:
      case 6988:
      case 6989:
      case 6990:
      case 6991:
      case 6992:
      case 6993:
      case 6994:
      case 6995:
      case 6996:
      case 6997:
      case 6998:
      case 6999:
      case 7000:
      case 7001:
      case 7002:
      case 7067:
      case 7068:
      case 7069:
      case 7070:
      case 7071:
      case 7072:
      case 7073:
      case 7074:
      case 7075:
      case 7076:
      case 7077:
      case 7078:
      case 7087:
      case 7088:
      case 7089:
      case 7090:
      case 7091:
      case 7092:
      case 7093:
      case 7094:
      case 7095:
      case 7096:
      case 7097:
      case 7098:
      case 7099:
      case 7100:
      case 7101:
      case 7102:
      case 7103:
      case 7104:
      case 7105:
      case 7106:
      case 7107:
      case 7108:
      case 7109:
      case 7110:
      case 7111:
      case 7112:
      case 7113:
      case 7114:
      case 7115:
      case 7116:
      case 7117:
      case 7118:
      case 7119:
      case 7120:
      case 7121:
      case 7122:
      case 7123:
      case 7124:
      case 7125:
      case 7126:
      case 7127:
      case 7128:
      case 7129:
      case 7130:
      case 7195:
      case 7196:
      case 7197:
      case 7198:
      case 7199:
      case 7200:
      case 7201:
      case 7202:
      case 7203:
      case 7204:
      case 7205:
      case 7206:
      case 7207:
      case 7208:
      case 7209:
      case 7210:
      case 7211:
      case 7212:
      case 7213:
      case 7214:
      case 7215:
      case 7216:
      case 7217:
      case 7218:
      case 7219:
      case 7220:
      case 7221:
      case 7222:
      case 7223:
      case 7224:
      case 7225:
      case 7226:
      case 7227:
      case 7228:
      case 7229:
      case 7230:
      case 7231:
      case 7232:
      case 7233:
      case 7234:
      case 7235:
      case 7236:
      case 7237:
      case 7238:
      case 7303:
      case 7304:
      case 7305:
      case 7306:
      case 7307:
      case 7308:
      case 7309:
      case 7310:
      case 7317:
      case 7318:
      case 7319:
      case 7320:
      case 7321:
      case 7322:
      case 7323:
      case 7324:
      case 7325:
      case 7326:
      case 7327:
      case 7328:
      case 7337:
      case 7338:
      case 7339:
      case 7340:
      case 7341:
      case 7342:
      case 7343:
      case 7344:
      case 7345:
      case 7346:
      case 7347:
      case 7348:
        v307 = a1;
        v308 = 3;
LABEL_299:
        v376 = getIntrinsicArgAttributeSet(v307, v308);
        v456[0] = 1;
        v457 = v376;
        v148 = a1;
        v149 = 63;
        goto LABEL_427;
      case 6085:
      case 6086:
      case 6087:
      case 6088:
      case 6300:
      case 6301:
      case 6302:
      case 6303:
      case 6304:
      case 6305:
      case 6306:
      case 6307:
      case 6323:
      case 6324:
      case 6325:
      case 6326:
      case 6327:
      case 6328:
      case 6329:
      case 6330:
      case 6331:
      case 6332:
      case 6333:
      case 6334:
      case 6335:
      case 6336:
      case 6337:
      case 6338:
      case 6339:
      case 6340:
      case 6341:
      case 6342:
      case 6343:
      case 6344:
      case 6345:
      case 6346:
      case 6347:
      case 6348:
      case 6349:
      case 6350:
      case 6351:
      case 6352:
      case 6353:
      case 6354:
      case 6951:
      case 6952:
      case 6953:
      case 6954:
      case 6955:
      case 6956:
      case 6957:
      case 6958:
        v16 = a1;
        v17 = 64;
        goto LABEL_432;
      case 6099:
      case 6100:
        v304 = getIntrinsicArgAttributeSet(a1, 7);
        v456[0] = 1;
        v457 = v304;
        v148 = a1;
        v149 = 65;
        goto LABEL_427;
      case 6101:
        v16 = a1;
        v17 = 66;
        goto LABEL_432;
      case 6215:
        v16 = a1;
        v17 = 67;
        goto LABEL_432;
      case 6234:
      case 6235:
      case 6289:
      case 6290:
      case 6291:
      case 6292:
        v384 = getIntrinsicArgAttributeSet(a1, 1);
        v456[0] = 0;
        v457 = v384;
        v148 = a1;
        v149 = 68;
        goto LABEL_427;
      case 6236:
      case 6237:
      case 6238:
      case 6239:
      case 6240:
      case 6241:
      case 6242:
      case 6243:
      case 6244:
      case 6245:
      case 6246:
      case 6247:
      case 6248:
      case 6249:
      case 6250:
      case 6251:
      case 6252:
      case 6253:
      case 6254:
      case 6255:
      case 6256:
      case 6257:
      case 6258:
      case 6259:
      case 6260:
      case 6261:
      case 6262:
      case 6263:
      case 6264:
      case 6265:
      case 6266:
      case 6267:
      case 6268:
      case 6269:
      case 6270:
      case 6271:
      case 6272:
      case 6273:
      case 6274:
      case 6275:
      case 6276:
      case 6277:
      case 6278:
      case 6279:
      case 6280:
      case 6281:
      case 6282:
      case 6283:
      case 6284:
      case 6285:
      case 6286:
      case 6287:
      case 6288:
      case 6293:
      case 6294:
      case 6295:
      case 6296:
      case 6297:
      case 6298:
      case 6299:
        v205 = a1;
        v206 = 1;
LABEL_176:
        v7 = getIntrinsicArgAttributeSet(v205, v206);
        v456[0] = 0;
        goto LABEL_418;
      case 7055:
      case 7056:
      case 7057:
      case 7058:
      case 7059:
      case 7060:
      case 7061:
      case 7062:
      case 7063:
      case 7064:
      case 7065:
      case 7066:
      case 7083:
      case 7084:
      case 7085:
      case 7086:
      case 7183:
      case 7184:
      case 7185:
      case 7186:
      case 7187:
      case 7188:
      case 7189:
      case 7190:
      case 7191:
      case 7192:
      case 7193:
      case 7194:
      case 7291:
      case 7292:
      case 7293:
      case 7294:
      case 7295:
      case 7296:
      case 7297:
      case 7298:
      case 7299:
      case 7300:
      case 7301:
      case 7302:
      case 7313:
      case 7314:
      case 7315:
      case 7316:
      case 7333:
      case 7334:
      case 7335:
      case 7336:
      case 7369:
      case 7370:
      case 7371:
      case 7372:
        v372 = getIntrinsicArgAttributeSet(a1, 7);
        v456[0] = 1;
        v457 = v372;
        v148 = a1;
        v149 = 69;
        goto LABEL_427;
      case 7373:
        v189 = getIntrinsicArgAttributeSet(a1, 0);
        v190 = 3;
        goto LABEL_239;
      case 7401:
      case 7402:
      case 8850:
      case 8851:
      case 8852:
      case 8853:
      case 9263:
      case 9266:
      case 9268:
      case 10290:
      case 10291:
        v16 = a1;
        v17 = 52;
        goto LABEL_432;
      case 7681:
        v147 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v147;
        v148 = a1;
        v149 = 11;
        goto LABEL_427;
      case 7682:
        v163 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 3;
        v457 = v163;
        v148 = a1;
        v149 = 70;
        goto LABEL_427;
      case 7709:
      case 7710:
      case 7711:
      case 7862:
        v16 = a1;
        v17 = 71;
        goto LABEL_432;
      case 7721:
      case 7723:
        v270 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v270;
        v271 = getIntrinsicArgAttributeSet(a1, 0);
        v272 = 2;
LABEL_285:
        v458 = v272;
LABEL_289:
        v459 = v271;
        v182 = a1;
        v183 = 10;
        goto LABEL_392;
      case 7850:
        v225 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v225;
        v226 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 2;
        v459 = v226;
        v227 = a1;
        v228 = 33;
        goto LABEL_354;
      case 7870:
      case 7871:
      case 10116:
      case 10117:
        v16 = a1;
        v17 = 72;
        goto LABEL_432;
      case 7873:
      case 7874:
      case 7876:
        v16 = a1;
        v17 = 73;
        goto LABEL_432;
      case 7877:
      case 7878:
      case 7879:
      case 9936:
      case 9937:
      case 9938:
      case 9939:
      case 9940:
      case 9941:
      case 9942:
      case 9943:
      case 9944:
      case 9945:
      case 9946:
      case 9947:
      case 9948:
      case 9949:
      case 9950:
      case 9951:
      case 9952:
      case 9953:
      case 9954:
      case 9955:
      case 9956:
      case 9957:
      case 9958:
      case 9959:
      case 10015:
      case 10016:
      case 10017:
      case 10018:
      case 10019:
      case 10020:
      case 10021:
      case 10022:
      case 10023:
      case 10024:
      case 10025:
      case 10026:
      case 10027:
      case 10028:
      case 10029:
      case 10030:
      case 10031:
      case 10032:
      case 10033:
      case 10034:
      case 10035:
      case 10036:
      case 10037:
      case 10038:
      case 10039:
      case 10040:
      case 10041:
      case 10042:
      case 10043:
      case 10044:
      case 10045:
      case 10046:
      case 10047:
      case 10048:
      case 10049:
      case 10050:
      case 10051:
      case 10052:
      case 10053:
      case 10054:
      case 10055:
      case 10056:
      case 10057:
      case 10058:
      case 10059:
      case 10060:
      case 10061:
      case 10062:
        v16 = a1;
        v17 = 30;
        goto LABEL_432;
      case 7880:
      case 7914:
      case 7915:
      case 7916:
      case 7917:
      case 7918:
      case 7919:
      case 7920:
      case 8595:
      case 8786:
      case 8799:
        v16 = a1;
        v17 = 70;
        goto LABEL_432;
      case 7991:
        v16 = a1;
        v17 = 74;
        goto LABEL_432;
      case 8013:
        v16 = a1;
        v17 = 40;
        goto LABEL_432;
      case 8055:
      case 8251:
      case 8256:
      case 8272:
      case 8316:
        v370 = a1;
        v371 = 5;
LABEL_409:
        v443 = getIntrinsicArgAttributeSet(v370, v371);
        v8 = 2;
        v456[0] = 2;
        v457 = v443;
        v62 = a1;
        v63 = 19;
        goto LABEL_410;
      case 8056:
      case 8456:
      case 8457:
      case 8472:
      case 8475:
      case 8476:
      case 8495:
      case 8496:
      case 8535:
      case 8536:
        v363 = getIntrinsicArgAttributeSet(a1, 5);
        v8 = 2;
        v456[0] = 2;
        v457 = v363;
        v62 = a1;
        v63 = 20;
        goto LABEL_410;
      case 8059:
      case 8477:
      case 8478:
      case 8497:
      case 8498:
      case 8515:
      case 8516:
      case 8537:
      case 8538:
        v22 = a1;
        v23 = 5;
LABEL_121:
        v186 = getIntrinsicArgAttributeSet(v22, v23);
        v187 = 3;
        goto LABEL_295;
      case 8061:
      case 8479:
      case 8480:
      case 8499:
      case 8500:
      case 8517:
      case 8518:
      case 8539:
      case 8540:
        v184 = a1;
        v185 = 5;
LABEL_116:
        v186 = getIntrinsicArgAttributeSet(v184, v185);
        v187 = 4;
        goto LABEL_295;
      case 8063:
      case 8481:
      case 8482:
      case 8501:
      case 8502:
      case 8519:
      case 8520:
      case 8541:
      case 8542:
        v186 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 5;
        goto LABEL_296;
      case 8065:
      case 8483:
      case 8484:
      case 8503:
      case 8504:
      case 8521:
      case 8522:
      case 8543:
      case 8544:
        v222 = a1;
        v223 = 5;
LABEL_294:
        v186 = getIntrinsicArgAttributeSet(v222, v223);
        v187 = 6;
        goto LABEL_295;
      case 8067:
      case 8485:
      case 8486:
      case 8505:
      case 8506:
      case 8523:
      case 8524:
      case 8545:
      case 8546:
        v186 = getIntrinsicArgAttributeSet(a1, 5);
        v187 = 7;
        goto LABEL_295;
      case 8069:
      case 8487:
      case 8488:
      case 8507:
      case 8508:
      case 8525:
      case 8526:
      case 8547:
      case 8548:
        v186 = getIntrinsicArgAttributeSet(a1, 5);
        v187 = 8;
        goto LABEL_295;
      case 8071:
      case 8489:
      case 8490:
      case 8509:
      case 8510:
      case 8527:
      case 8528:
      case 8549:
      case 8550:
        v186 = getIntrinsicArgAttributeSet(a1, 5);
        v187 = 9;
LABEL_295:
        v456[0] = v187;
LABEL_296:
        v457 = v186;
        v148 = a1;
        v149 = 20;
        goto LABEL_427;
      case 8091:
      case 8093:
      case 8095:
      case 8097:
      case 8105:
      case 8107:
      case 8116:
      case 8118:
      case 8120:
      case 8136:
      case 8140:
      case 8142:
      case 8144:
      case 8147:
      case 8149:
      case 8151:
      case 8153:
      case 8174:
      case 8176:
      case 8178:
      case 8180:
      case 8182:
      case 8196:
      case 8198:
      case 8200:
      case 8202:
      case 8204:
      case 8206:
      case 8210:
      case 8212:
      case 8214:
      case 8230:
      case 8232:
      case 8234:
      case 8236:
      case 8238:
      case 8244:
      case 8246:
      case 8333:
      case 8337:
      case 8341:
      case 8343:
      case 8359:
      case 8361:
      case 8396:
      case 8398:
      case 8400:
      case 8402:
      case 8414:
      case 8416:
      case 8418:
      case 8420:
      case 8422:
      case 8440:
      case 8442:
      case 8444:
      case 8446:
      case 8448:
      case 8450:
      case 8463:
      case 8465:
      case 8467:
      case 8469:
      case 8471:
      case 8492:
      case 8494:
      case 8534:
      case 8552:
      case 8554:
      case 8556:
      case 8558:
      case 8560:
      case 8562:
      case 8564:
      case 8566:
      case 8568:
      case 8570:
      case 8572:
      case 8578:
      case 8580:
      case 8582:
      case 8584:
      case 8586:
        v48 = getIntrinsicArgAttributeSet(a1, 0);
        v49 = 6;
LABEL_168:
        v456[0] = v49;
        v457 = v48;
        v148 = a1;
        v149 = 1;
        goto LABEL_427;
      case 8100:
      case 8102:
      case 8109:
      case 8111:
      case 8410:
      case 8412:
      case 8452:
      case 8454:
      case 8474:
      case 8512:
      case 8514:
      case 8530:
      case 8532:
        v189 = getIntrinsicArgAttributeSet(a1, 0);
        v190 = 6;
LABEL_239:
        v456[0] = v190;
        v457 = v189;
        v25 = a1;
        v26 = 33;
        goto LABEL_419;
      case 8252:
        v313 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 2;
        v457 = v313;
        v234 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 5;
        goto LABEL_391;
      case 8253:
        v310 = getIntrinsicArgAttributeSet(a1, 5);
        v8 = 2;
        v456[0] = 2;
        v457 = v310;
        v62 = a1;
        v63 = 5;
        goto LABEL_410;
      case 8254:
        v283 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 2;
        v457 = v283;
        v236 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 5;
        goto LABEL_347;
      case 8257:
      case 8273:
      case 8317:
        v352 = getIntrinsicArgAttributeSet(a1, 5);
        v353 = 2;
LABEL_281:
        v456[0] = v353;
        v457 = v352;
        v234 = getIntrinsicArgAttributeSet(a1, 0);
        v235 = 6;
        goto LABEL_390;
      case 8258:
      case 8274:
      case 8302:
      case 8318:
        v197 = getIntrinsicArgAttributeSet(a1, 5);
        v198 = 3;
        goto LABEL_309;
      case 8259:
      case 8303:
      case 8319:
        v349 = getIntrinsicArgAttributeSet(a1, 5);
        v8 = 3;
        v456[0] = 3;
        v457 = v349;
        v249 = getIntrinsicArgAttributeSet(a1, 0);
        v250 = 7;
        goto LABEL_249;
      case 8260:
      case 8278:
      case 8304:
      case 8320:
        v111 = a1;
        v112 = 5;
LABEL_127:
        v197 = getIntrinsicArgAttributeSet(v111, v112);
        v198 = 4;
        goto LABEL_309;
      case 8261:
      case 8305:
      case 8321:
        v356 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 4;
        goto LABEL_271;
      case 8262:
      case 8282:
      case 8306:
      case 8322:
        v197 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 5;
        goto LABEL_310;
      case 8263:
      case 8307:
      case 8323:
        v229 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 5;
        goto LABEL_130;
      case 8264:
      case 8286:
      case 8308:
      case 8324:
        v197 = getIntrinsicArgAttributeSet(a1, 5);
        v198 = 6;
        goto LABEL_309;
      case 8265:
      case 8309:
      case 8325:
        v323 = getIntrinsicArgAttributeSet(a1, 5);
        v324 = 6;
        goto LABEL_287;
      case 8266:
      case 8290:
      case 8310:
      case 8326:
        v197 = getIntrinsicArgAttributeSet(a1, 5);
        v198 = 7;
        goto LABEL_309;
      case 8267:
      case 8311:
      case 8327:
        v273 = getIntrinsicArgAttributeSet(a1, 5);
        v274 = 7;
        goto LABEL_255;
      case 8268:
      case 8294:
      case 8312:
      case 8328:
        v197 = getIntrinsicArgAttributeSet(a1, 5);
        v198 = 8;
        goto LABEL_309;
      case 8269:
      case 8313:
      case 8329:
        v232 = getIntrinsicArgAttributeSet(a1, 5);
        v233 = 8;
        goto LABEL_260;
      case 8270:
      case 8298:
      case 8314:
      case 8330:
        v197 = getIntrinsicArgAttributeSet(a1, 5);
        v198 = 9;
LABEL_309:
        v456[0] = v198;
LABEL_310:
        v457 = v197;
        v148 = a1;
        v149 = 19;
        goto LABEL_427;
      case 8271:
      case 8315:
      case 8331:
        v335 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 9;
        v457 = v335;
        v234 = getIntrinsicArgAttributeSet(a1, 0);
        v235 = 13;
        goto LABEL_390;
      case 8275:
        v248 = getIntrinsicArgAttributeSet(a1, 5);
        v8 = 3;
        v456[0] = 3;
        v457 = v248;
        v249 = getIntrinsicArgAttributeSet(a1, 0);
        v250 = 6;
LABEL_249:
        v458 = v250;
        v459 = v249;
        v316 = a1;
        v317 = 19;
        goto LABEL_421;
      case 8276:
        v40 = a1;
        v41 = 5;
LABEL_105:
        v33 = getIntrinsicArgAttributeSet(v40, v41);
        v34 = 3;
        goto LABEL_387;
      case 8277:
        v350 = getIntrinsicArgAttributeSet(a1, 5);
        v8 = 3;
        v456[0] = 3;
        v457 = v350;
        v351 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 6;
        v459 = v351;
        v316 = a1;
        v317 = 5;
        goto LABEL_421;
      case 8279:
        v309 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 4;
        v457 = v309;
        v234 = getIntrinsicArgAttributeSet(a1, 0);
        v235 = 7;
        goto LABEL_390;
      case 8280:
        v275 = a1;
        v276 = 5;
LABEL_336:
        v33 = getIntrinsicArgAttributeSet(v275, v276);
        v34 = 4;
        goto LABEL_387;
      case 8281:
        v346 = getIntrinsicArgAttributeSet(a1, 5);
        v347 = 4;
LABEL_315:
        v456[0] = v347;
        v457 = v346;
        v236 = getIntrinsicArgAttributeSet(a1, 0);
        v237 = 7;
        goto LABEL_346;
      case 8283:
        v356 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 5;
LABEL_271:
        v457 = v356;
        v234 = getIntrinsicArgAttributeSet(a1, 0);
        v235 = 8;
        goto LABEL_390;
      case 8284:
        v33 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 5;
        goto LABEL_388;
      case 8285:
        v87 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 5;
LABEL_132:
        v457 = v87;
        v236 = getIntrinsicArgAttributeSet(a1, 0);
        v237 = 8;
        goto LABEL_346;
      case 8287:
        v229 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 6;
LABEL_130:
        v457 = v229;
        v234 = getIntrinsicArgAttributeSet(a1, 0);
        v235 = 9;
        goto LABEL_390;
      case 8288:
        v33 = getIntrinsicArgAttributeSet(a1, 5);
        v34 = 6;
        goto LABEL_387;
      case 8289:
        v252 = getIntrinsicArgAttributeSet(a1, 5);
        v253 = 6;
LABEL_345:
        v456[0] = v253;
        v457 = v252;
        v236 = getIntrinsicArgAttributeSet(a1, 0);
        v237 = 9;
        goto LABEL_346;
      case 8291:
        v323 = getIntrinsicArgAttributeSet(a1, 5);
        v324 = 7;
LABEL_287:
        v456[0] = v324;
        v457 = v323;
        v234 = getIntrinsicArgAttributeSet(a1, 0);
        v235 = 10;
        goto LABEL_390;
      case 8292:
        v38 = a1;
        v39 = 5;
LABEL_197:
        v33 = getIntrinsicArgAttributeSet(v38, v39);
        v34 = 7;
        goto LABEL_387;
      case 8293:
        v322 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 7;
        v457 = v322;
        v236 = getIntrinsicArgAttributeSet(a1, 0);
        v237 = 10;
        goto LABEL_346;
      case 8295:
        v273 = getIntrinsicArgAttributeSet(a1, 5);
        v274 = 8;
LABEL_255:
        v456[0] = v274;
        v457 = v273;
        v234 = getIntrinsicArgAttributeSet(a1, 0);
        v235 = 11;
        goto LABEL_390;
      case 8296:
        v33 = getIntrinsicArgAttributeSet(a1, 5);
        v34 = 8;
        goto LABEL_387;
      case 8297:
        v245 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 8;
        v457 = v245;
        v236 = getIntrinsicArgAttributeSet(a1, 0);
        v237 = 11;
        goto LABEL_346;
      case 8299:
        v232 = getIntrinsicArgAttributeSet(a1, 5);
        v233 = 9;
LABEL_260:
        v456[0] = v233;
        v457 = v232;
        v234 = getIntrinsicArgAttributeSet(a1, 0);
        v235 = 12;
LABEL_390:
        v458 = v235;
LABEL_391:
        v459 = v234;
        v182 = a1;
        v183 = 19;
        goto LABEL_392;
      case 8300:
        v33 = getIntrinsicArgAttributeSet(a1, 5);
        v34 = 9;
LABEL_387:
        v456[0] = v34;
LABEL_388:
        v457 = v33;
        v148 = a1;
        v149 = 5;
        goto LABEL_427;
      case 8301:
        v291 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 9;
        v457 = v291;
        v236 = getIntrinsicArgAttributeSet(a1, 0);
        v237 = 12;
LABEL_346:
        v458 = v237;
LABEL_347:
        v459 = v236;
        v182 = a1;
        v183 = 5;
        goto LABEL_392;
      case 8458:
      case 8693:
      case 8694:
        v354 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
        v457 = v354;
        v355 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 3;
        v458 = 3;
        v459 = v355;
        v316 = a1;
        v317 = 8;
        goto LABEL_421;
      case 8459:
        v343 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v343;
        v89 = getIntrinsicArgAttributeSet(a1, 0);
        v90 = 2;
LABEL_237:
        v458 = v90;
        v459 = v89;
        v182 = a1;
        v183 = 8;
        goto LABEL_392;
      case 8598:
        v16 = a1;
        v17 = 75;
        goto LABEL_432;
      case 8599:
      case 8600:
      case 8601:
        v16 = a1;
        v17 = 76;
        goto LABEL_432;
      case 8715:
        v9 = a1;
        v10 = 0;
LABEL_247:
        v348 = getIntrinsicArgAttributeSet(v9, v10);
        v8 = 2;
        v456[0] = 2;
        v457 = v348;
        v62 = a1;
        v63 = 11;
LABEL_410:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v62, v63);
        v458 = -1;
        goto LABEL_428;
      case 8837:
        v178 = getIntrinsicArgAttributeSet(a1, 0);
        v179 = 2;
LABEL_211:
        v456[0] = v179;
        v457 = v178;
        v306 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 3;
        v458 = 3;
        goto LABEL_212;
      case 8838:
        v305 = getIntrinsicArgAttributeSet(a1, 0);
        v8 = 3;
        v456[0] = 3;
        v457 = v305;
        v306 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 4;
LABEL_212:
        v459 = v306;
        v316 = a1;
        v317 = 4;
LABEL_421:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v316, v317);
        v460 = -1;
        goto LABEL_422;
      case 8873:
      case 8874:
        v16 = a1;
        v17 = 77;
        goto LABEL_432;
      case 10112:
        v293 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v293;
        v25 = a1;
        v26 = 72;
        goto LABEL_419;
      case 10120:
        v251 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v251;
        v148 = a1;
        v149 = 78;
        goto LABEL_427;
      case 10121:
      case 10122:
        v314 = getIntrinsicArgAttributeSet(a1, 3);
        v456[0] = 1;
        v457 = v314;
        v148 = a1;
        v149 = 79;
        goto LABEL_427;
      case 10148:
        v16 = a1;
        v17 = 80;
        goto LABEL_432;
      case 10163:
        v265 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 1;
        v457 = v265;
        v25 = a1;
        v26 = 80;
        goto LABEL_419;
      case 10446:
      case 10447:
      case 10448:
      case 10449:
      case 10878:
      case 10879:
      case 10880:
      case 10881:
        v318 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 4;
        v457 = v318;
        v319 = getIntrinsicArgAttributeSet(a1, 0);
        v320 = 5;
        goto LABEL_231;
      case 10466:
      case 10469:
      case 10470:
      case 10471:
      case 10976:
      case 10977:
        v263 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 3;
        goto LABEL_351;
      case 10529:
      case 10532:
      case 10533:
      case 10534:
      case 10753:
      case 10756:
      case 10757:
      case 10758:
        v315 = getIntrinsicArgAttributeSet(a1, 0);
        v321 = 4;
LABEL_233:
        v456[0] = v321;
        goto LABEL_234;
      case 10571:
      case 10574:
      case 10697:
      case 10700:
      case 10705:
      case 10708:
      case 10986:
      case 10997:
      case 11001:
        v263 = getIntrinsicArgAttributeSet(a1, 0);
        v264 = 2;
LABEL_350:
        v456[0] = v264;
LABEL_351:
        v457 = v263;
        v114 = getIntrinsicArgAttributeSet(a1, 0);
        v115 = 5;
        goto LABEL_352;
      case 10575:
      case 10576:
      case 10689:
      case 10692:
      case 10987:
        v315 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 3;
LABEL_234:
        v457 = v315;
        v114 = getIntrinsicArgAttributeSet(a1, 0);
        v115 = 6;
LABEL_352:
        v458 = v115;
LABEL_353:
        v459 = v114;
        v227 = a1;
        v228 = 1;
LABEL_354:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v227, v228);
        v460 = -1;
        v4 = &v461;
        v8 = 3;
        break;
      case 10693:
      case 10694:
      case 10701:
      case 10702:
      case 10709:
      case 10710:
      case 10998:
      case 11002:
        v311 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 5;
        v457 = v311;
        v312 = getIntrinsicArgAttributeSet(a1, 0);
        v458 = 6;
        v459 = v312;
        v182 = a1;
        v183 = 1;
        goto LABEL_392;
      case 10719:
      case 10720:
      case 10721:
      case 10722:
      case 10723:
      case 10724:
      case 10725:
      case 10726:
      case 10727:
      case 10728:
      case 10729:
      case 10730:
      case 10731:
      case 10732:
      case 10733:
      case 10734:
      case 10735:
      case 10736:
      case 10737:
      case 10738:
      case 10739:
      case 10740:
      case 10741:
      case 10742:
      case 10862:
      case 10863:
      case 10864:
      case 10865:
      case 10866:
      case 10867:
      case 10868:
      case 10869:
      case 10870:
      case 10871:
      case 10872:
      case 10873:
      case 10874:
      case 10875:
      case 10876:
      case 10877:
      case 10882:
      case 10883:
      case 10884:
      case 10885:
      case 10886:
      case 10887:
      case 10888:
      case 10889:
        v174 = getIntrinsicArgAttributeSet(a1, 0);
        v175 = 5;
        goto LABEL_192;
      case 11140:
      case 11141:
        v299 = getIntrinsicArgAttributeSet(a1, 0);
        v300 = 4;
LABEL_381:
        v456[0] = v300;
        v457 = v299;
        v148 = a1;
        v149 = 10;
        goto LABEL_427;
      case 11315:
        v16 = a1;
        v17 = 81;
LABEL_432:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v16, v17);
        v456[0] = -1;
        v8 = 1;
        break;
      case 11595:
      case 11597:
      case 11601:
      case 11602:
      case 11603:
      case 11604:
      case 11610:
      case 11611:
      case 11612:
      case 11613:
      case 11614:
      case 11615:
      case 11616:
      case 11617:
      case 11618:
      case 11619:
      case 11620:
      case 11621:
      case 11622:
      case 11623:
      case 11624:
      case 11625:
      case 11626:
      case 11627:
      case 11628:
      case 11630:
      case 11631:
      case 11633:
      case 11634:
      case 11637:
      case 11638:
      case 11641:
      case 11642:
      case 11643:
        v176 = a1;
        v177 = 5;
LABEL_191:
        v174 = getIntrinsicArgAttributeSet(v176, v177);
        v175 = 1;
LABEL_192:
        v456[0] = v175;
        v457 = v174;
        v148 = a1;
        v149 = 4;
LABEL_427:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v148, v149);
        v458 = -1;
        v8 = 2;
LABEL_428:
        v4 = &v459;
        break;
      case 11629:
      case 11635:
        v301 = getIntrinsicArgAttributeSet(a1, 5);
        v456[0] = 1;
        v457 = v301;
        v302 = a1;
        v303 = 5;
LABEL_230:
        v319 = getIntrinsicArgAttributeSet(v302, v303);
        v320 = 2;
LABEL_231:
        v458 = v320;
        v459 = v319;
        v182 = a1;
        v183 = 4;
LABEL_392:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v182, v183);
        v460 = -1;
        v8 = 3;
LABEL_422:
        v4 = &v461;
        break;
      default:
        v7 = getIntrinsicArgAttributeSet(a1, 0);
        v456[0] = 2;
LABEL_418:
        v457 = v7;
        v25 = a1;
        v26 = 0;
LABEL_419:
        IntrinsicFnAttributeSet = getIntrinsicFnAttributeSet(v25, v26);
        v458 = -1;
        v4 = &v459;
        v8 = 2;
        break;
    }

    *v4 = IntrinsicFnAttributeSet;
  }

  else
  {
    v8 = 0;
  }

  result = llvm::AttributeList::get(a1, v456, v8);
LABEL_435:
  v455 = *MEMORY[0x277D85DE8];
  return result;
}