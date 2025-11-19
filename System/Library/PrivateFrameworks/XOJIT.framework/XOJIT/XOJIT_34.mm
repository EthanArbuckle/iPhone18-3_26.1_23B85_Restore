uint64_t llvm::MDNodeKeyImpl<llvm::GenericDINode>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  v2 = a2 - 16;
  v3 = *(a2 - 16);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 32);
    v5 = *(a2 - 24);
  }

  else
  {
    v4 = v2 - 8 * ((v3 >> 2) & 0xF);
    v5 = (v3 >> 6) & 0xF;
  }

  *(result + 16) = v4 + 8;
  *(result + 24) = (8 * v5 - 8) >> 3;
  v6 = *(a2 + 2);
  *(result + 32) = *(a2 + 4);
  *(result + 36) = v6;
  v7 = *(a2 - 16);
  if ((v7 & 2) != 0)
  {
    v8 = *(a2 - 32);
  }

  else
  {
    v8 = (v2 - 8 * ((v7 >> 2) & 0xF));
  }

  *(result + 40) = *v8;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::InsertIntoBucketImpl<llvm::GenericDINode *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::LookupBucketFor<llvm::GenericDINode *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::LookupBucketFor<llvm::GenericDINode *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DISubrange>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DISubrange>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DISubrange>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DISubrange>::getHashValue(uint64_t *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*a1 && *v2 == 1)
  {
    v3 = *(v2 + 128);
    v4 = *(v3 + 32);
    if (v4 > 0x40)
    {
      v5 = **(v3 + 24);
    }

    else
    {
      v5 = (*(v3 + 24) << -v4) >> -v4;
    }

    v8 = v5;
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v9);
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<long long,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *>(v9, 0, v9, v10, &v8, a1 + 1, a1 + 2, a1 + 3);
  }

  else
  {
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v9);
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<long long,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *>(v9, 0, v9, v10, a1, a1 + 1, a1 + 2, a1 + 3);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<long long,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(a1, v17, v14, a4, a7, a8);
}

uint64_t llvm::MDNodeKeyImpl<llvm::DISubrange>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 - 16;
  v4 = *(a2 - 16);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = (v3 - 8 * ((v4 >> 2) & 0xF));
  }

  v6 = *v5;
  if (v2 != v6)
  {
    if (v2)
    {
      if (*v2 == 1)
      {
        v7 = *a1;
      }

      else
      {
        v7 = 0;
      }

      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      v7 = 0;
      if (!v6)
      {
        return 0;
      }
    }

    v8 = 0;
    if (!v7 || *v6 != 1)
    {
      return v8;
    }

    v9 = *(v7 + 16);
    v10 = *(v6 + 128);
    v11 = *(v9 + 32);
    if (v11 > 0x40)
    {
      v12 = **(v9 + 24);
    }

    else
    {
      v12 = (*(v9 + 24) << -v11) >> -v11;
    }

    v13 = *(v10 + 32);
    if (v13 > 0x40)
    {
      v14 = **(v10 + 24);
    }

    else
    {
      v14 = (*(v10 + 24) << -v13) >> -v13;
    }

    if (v12 != v14)
    {
      return 0;
    }
  }

  v15 = *(a1 + 8);
  if ((v4 & 2) != 0)
  {
    v16 = *(a2 - 32);
  }

  else
  {
    v16 = v3 - 8 * ((v4 >> 2) & 0xF);
  }

  v17 = *(v16 + 8);
  if (v15 != v17)
  {
    if (v15)
    {
      if (*v15 == 1)
      {
        v18 = *(a1 + 8);
      }

      else
      {
        v18 = 0;
      }

      if (!v17)
      {
        return 0;
      }
    }

    else
    {
      v18 = 0;
      if (!v17)
      {
        return 0;
      }
    }

    v8 = 0;
    if (!v18 || *v17 != 1)
    {
      return v8;
    }

    v19 = *(v18 + 128);
    v20 = *(v17 + 128);
    v21 = *(v19 + 32);
    if (v21 > 0x40)
    {
      v22 = **(v19 + 24);
    }

    else
    {
      v22 = (*(v19 + 24) << -v21) >> -v21;
    }

    v23 = *(v20 + 32);
    if (v23 > 0x40)
    {
      v24 = **(v20 + 24);
    }

    else
    {
      v24 = (*(v20 + 24) << -v23) >> -v23;
    }

    if (v22 != v24)
    {
      return 0;
    }
  }

  v25 = *(a1 + 16);
  if ((v4 & 2) != 0)
  {
    v26 = *(a2 - 32);
  }

  else
  {
    v26 = v3 - 8 * ((v4 >> 2) & 0xF);
  }

  v27 = *(v26 + 16);
  if (v25 == v27)
  {
LABEL_61:
    v35 = *(a1 + 24);
    if ((v4 & 2) != 0)
    {
      v36 = *(a2 - 32);
    }

    else
    {
      v36 = v3 - 8 * ((v4 >> 2) & 0xF);
    }

    v37 = *(v36 + 24);
    if (v35 == v37)
    {
      return 1;
    }

    if (v35)
    {
      if (*v35 == 1)
      {
        v38 = *(a1 + 24);
      }

      else
      {
        v38 = 0;
      }

      if (!v37)
      {
        return 0;
      }
    }

    else
    {
      v38 = 0;
      if (!v37)
      {
        return 0;
      }
    }

    if (v38 && *v37 == 1)
    {
      v39 = *(v38 + 128);
      v40 = *(v37 + 128);
      v41 = *(v39 + 32);
      v42 = v41 > 0x40 ? **(v39 + 24) : (*(v39 + 24) << -v41) >> -v41;
      v43 = *(v40 + 32);
      v44 = v43 > 0x40 ? **(v40 + 24) : (*(v40 + 24) << -v43) >> -v43;
      if (v42 == v44)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v25)
  {
    if (*v25 == 1)
    {
      v28 = *(a1 + 16);
    }

    else
    {
      v28 = 0;
    }

    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    v28 = 0;
    if (!v27)
    {
      return 0;
    }
  }

  v8 = 0;
  if (v28 && *v27 == 1)
  {
    v29 = *(v28 + 128);
    v30 = *(v27 + 128);
    v31 = *(v29 + 32);
    if (v31 > 0x40)
    {
      v32 = **(v29 + 24);
    }

    else
    {
      v32 = (*(v29 + 24) << -v31) >> -v31;
    }

    v33 = *(v30 + 32);
    if (v33 > 0x40)
    {
      v34 = **(v30 + 24);
    }

    else
    {
      v34 = (*(v30 + 24) << -v33) >> -v33;
    }

    if (v32 != v34)
    {
      return 0;
    }

    goto LABEL_61;
  }

  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::LookupBucketFor<llvm::DISubrange *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::InsertIntoBucketImpl<llvm::DISubrange *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::LookupBucketFor<llvm::DISubrange *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DISubrange>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DISubrange>::getHashValue(v17);
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

void *llvm::MDNodeKeyImpl<llvm::DISubrange>::MDNodeKeyImpl(void *result, uint64_t a2)
{
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

  *result = *v4;
  if ((*v2 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  result[1] = v5[1];
  if ((*v2 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  result[2] = v6[2];
  if ((*v2 & 2) != 0)
  {
    v7 = *(a2 - 32);
  }

  else
  {
    v7 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  result[3] = v7[3];
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::InsertIntoBucketImpl<llvm::DISubrange *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::LookupBucketFor<llvm::DISubrange *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::LookupBucketFor<llvm::DISubrange *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIGenericSubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGenericSubrange>,llvm::detail::DenseSetPair<llvm::DIGenericSubrange *>>,llvm::DIGenericSubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGenericSubrange>,llvm::detail::DenseSetPair<llvm::DIGenericSubrange *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIGenericSubrange>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DISubrange>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIGenericSubrange>::isKeyOf(a2, v13))
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

BOOL llvm::MDNodeKeyImpl<llvm::DIGenericSubrange>::isKeyOf(void *a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a2 - 32);
  }

  else
  {
    v3 = (a2 - 16 - 8 * ((v2 >> 2) & 0xF));
  }

  return *a1 == *v3 && a1[1] == v3[1] && a1[2] == v3[2] && a1[3] == v3[3];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIEnumerator>>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v17);
    v7 = 0;
    v8 = v4 - 1;
    v9 = v8 & llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt,llvm::MDString *>(v17, 0, v17, v18, a2, (a2 + 16));
    for (i = 1; ; ++i)
    {
      v11 = (v6 + 8 * v9);
      v12 = *v11;
      if ((*v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIEnumerator>::isKeyOf(a2, v12))
        {
          result = 1;
          goto LABEL_18;
        }

        v12 = *v11;
      }

      if (v12 == -4096)
      {
        break;
      }

      if (v7)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12 == -8192;
      }

      if (v13)
      {
        v7 = (v6 + 8 * v9);
      }

      v14 = v9 + i;
      v9 = v14 & v8;
    }

    result = 0;
    if (v7)
    {
      v11 = v7;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
  }

LABEL_18:
  *a3 = v11;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt,llvm::MDString *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, const llvm::APInt *a2, void *a3, unint64_t *a4, llvm::hashing::detail::hash_state **this, uint64_t *a6)
{
  v14 = a2;
  v10 = llvm::hash_value(this, a2, a3, a4);
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v14, a3, a4, v10);
  v15 = v14;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v15, v11, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v15, v12, a4);
}

BOOL llvm::MDNodeKeyImpl<llvm::DIEnumerator>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 24))
  {
    return 0;
  }

  if (v2 > 0x40)
  {
    if (memcmp(*a1, *(a2 + 16), ((v2 + 63) >> 3) & 0x3FFFFFF8))
    {
      return 0;
    }
  }

  else if (*a1 != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 24) != (*(a2 + 4) != 0))
  {
    return 0;
  }

  v6 = *(a2 - 16);
  if ((v6 & 2) != 0)
  {
    v7 = *(a2 - 32);
  }

  else
  {
    v7 = (a2 - 16 - 8 * ((v6 >> 2) & 0xF));
  }

  return *(a1 + 16) == *v7;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::LookupBucketFor<llvm::DIEnumerator *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::InsertIntoBucketImpl<llvm::DIEnumerator *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::LookupBucketFor<llvm::DIEnumerator *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeInfo<llvm::DIEnumerator>::getHashValue(*a2);
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

unint64_t llvm::MDNodeInfo<llvm::DIEnumerator>::getHashValue(uint64_t a1)
{
  v8[8] = *MEMORY[0x277D85DE8];
  llvm::MDNodeKeyImpl<llvm::DIEnumerator>::MDNodeKeyImpl(&v4, a1);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v7);
  v1 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt,llvm::MDString *>(v7, 0, v7, v8, &v4, &v6);
  if (v5 >= 0x41 && v4)
  {
    MEMORY[0x277C69E10](v4, 0x1000C8000313F17);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t llvm::MDNodeKeyImpl<llvm::DIEnumerator>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  *(result + 8) = v2;
  if (v2 > 0x40)
  {
    operator new[]();
  }

  *result = *(a2 + 16);
  v3 = *(a2 - 16);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 32);
  }

  else
  {
    v4 = (a2 - 16 - 8 * ((v3 >> 2) & 0xF));
  }

  *(result + 16) = *v4;
  *(result + 24) = *(a2 + 4) != 0;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::InsertIntoBucketImpl<llvm::DIEnumerator *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::LookupBucketFor<llvm::DIEnumerator *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::LookupBucketFor<llvm::DIEnumerator *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIBasicType>>(uint64_t *a1, int *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DIBasicType>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIBasicType>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DIBasicType>::getHashValue(int *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v4);
  v4 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,unsigned long long,unsigned int,unsigned int>(&v4, 0, v5, v6, a1 + 1, a1 + 2, a1 + 6, a1 + 7);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,unsigned long long,unsigned int,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, int *a7, int *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,unsigned int>(a1, v17, v14, a4, a7, a8);
}

BOOL llvm::MDNodeKeyImpl<llvm::DIBasicType>::isKeyOf(uint64_t a1, uint64_t a2)
{
  if (*a1 == *(a2 + 2) && ((v2 = *(a2 - 16), (v2 & 2) != 0) ? (v3 = *(a2 - 32)) : (v3 = a2 - 16 - 8 * ((v2 >> 2) & 0xF)), *(a1 + 8) == *(v3 + 16) && *(a1 + 16) == *(a2 + 24) && *(a1 + 24) == *(a2 + 40) && *(a1 + 28) == *(a2 + 44)))
  {
    return *(a1 + 32) == *(a2 + 20);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::LookupBucketFor<llvm::DIBasicType *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::InsertIntoBucketImpl<llvm::DIBasicType *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::LookupBucketFor<llvm::DIBasicType *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    v7 = *a2;
    v21 = *(*a2 + 2);
    v8 = *(v7 - 16);
    if ((v8 & 2) != 0)
    {
      v9 = *(v7 - 32);
    }

    else
    {
      v9 = v7 - 16 - 8 * ((v8 >> 2) & 0xF);
    }

    v12 = *(v7 + 24);
    v22 = *(v9 + 16);
    v23 = v12;
    v24 = *(v7 + 40);
    v25 = *(v7 + 20);
    HashValue = llvm::MDNodeKeyImpl<llvm::DIBasicType>::getHashValue(&v21);
    v14 = v4 - 1;
    v15 = HashValue & (v4 - 1);
    v10 = (v6 + 8 * v15);
    v16 = *v10;
    if (*a2 == *v10)
    {
      result = 1;
    }

    else
    {
      v17 = 0;
      v18 = 1;
      result = 1;
      while (v16 != -4096)
      {
        if (v17)
        {
          v19 = 0;
        }

        else
        {
          v19 = v16 == -8192;
        }

        if (v19)
        {
          v17 = v10;
        }

        v20 = v15 + v18++;
        v15 = v20 & v14;
        v10 = (v6 + 8 * (v20 & v14));
        v16 = *v10;
        if (*a2 == *v10)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v17)
      {
        v10 = v17;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_8:
  *a3 = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::InsertIntoBucketImpl<llvm::DIBasicType *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::LookupBucketFor<llvm::DIBasicType *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::LookupBucketFor<llvm::DIBasicType *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIStringType>>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DIStringType>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIStringType>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DIStringType>::getHashValue(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v4);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::MDString *,llvm::Metadata *,unsigned int>(v4, 0, v4, v5, a1, (a1 + 8), (a1 + 16), (a1 + 52));
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::MDString *,llvm::Metadata *,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, uint64_t *a6, uint64_t *a7, int *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayType *,unsigned int>(a1, v17, v14, a4, a7, a8);
}

BOOL llvm::MDNodeKeyImpl<llvm::DIStringType>::isKeyOf(uint64_t a1, uint64_t a2)
{
  if (*a1 == *(a2 + 2) && ((v2 = *(a2 - 16), (v2 & 2) != 0) ? (v3 = *(a2 - 32)) : (v3 = (a2 - 16 - 8 * ((v2 >> 2) & 0xF))), *(a1 + 8) == v3[2] && *(a1 + 16) == v3[3] && *(a1 + 24) == v3[4] && *(a1 + 32) == v3[5] && *(a1 + 40) == *(a2 + 24) && *(a1 + 48) == *(a2 + 40)))
  {
    return *(a1 + 52) == *(a2 + 44);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::LookupBucketFor<llvm::DIStringType *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::InsertIntoBucketImpl<llvm::DIStringType *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::LookupBucketFor<llvm::DIStringType *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DIStringType>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DIStringType>::getHashValue(v17);
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

double llvm::MDNodeKeyImpl<llvm::DIStringType>::MDNodeKeyImpl(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 2);
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

  *(a1 + 8) = v4[2];
  if ((*v2 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(a1 + 16) = v5[3];
  if ((*v2 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(a1 + 24) = v6[4];
  if ((*v2 & 2) != 0)
  {
    v7 = *(a2 - 32);
  }

  else
  {
    v7 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  v8 = *(a2 + 24);
  *(a1 + 32) = v7[5];
  *(a1 + 40) = v8;
  result = *(a2 + 40);
  *(a1 + 48) = result;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::InsertIntoBucketImpl<llvm::DIStringType *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::LookupBucketFor<llvm::DIStringType *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::LookupBucketFor<llvm::DIStringType *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIDerivedType>>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    v7 = v4 - 1;
    v8 = llvm::MDNodeKeyImpl<llvm::DIDerivedType>::getHashValue(a2) & (v4 - 1);
    v9 = (v6 + 8 * v8);
    if (llvm::MDNodeInfo<llvm::DIDerivedType>::isEqual(a2, *v9))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -4096)
      {
        v13 = v11;
        if (*v9 == -8192 && v11 == 0)
        {
          v13 = v9;
        }

        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = (v6 + 8 * v8);
        isEqual = llvm::MDNodeInfo<llvm::DIDerivedType>::isEqual(a2, *v9);
        v11 = v13;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v9;
  return result;
}

BOOL llvm::MDNodeInfo<llvm::DIDerivedType>::isEqual(uint64_t a1, uint64_t a2)
{
  if ((a2 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    return 0;
  }

  if (llvm::MDNodeSubsetEqualImpl<llvm::DIDerivedType>::isODRMember(*a1, *(a1 + 32), *(a1 + 8), a2))
  {
    return 1;
  }

  return llvm::MDNodeKeyImpl<llvm::DIDerivedType>::isKeyOf(a1, a2);
}

unint64_t llvm::MDNodeKeyImpl<llvm::DIDerivedType>::getHashValue(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*a1 == 13 && (v2 = (a1 + 8), *(a1 + 8)) && (v4 = (a1 + 32), (v3 = *(a1 + 32)) != 0) && *v3 == 13 && ((v5 = *(v3 - 2), (v5 & 2) != 0) ? (v6 = *(v3 - 4)) : (v6 = &v3[-8 * ((v5 >> 2) & 0xF) - 16]), *(v6 + 56)))
  {
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v9);
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v9, 0, v9, v10, v2, v4);
  }

  else
  {
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v9);
    LODWORD(v9[0]) = *a1;
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,llvm::Metadata *,unsigned int,llvm::Metadata *,llvm::Metadata *,unsigned int>(v9, 0, (v9 + 4), v10, (a1 + 8), (a1 + 16), (a1 + 24), (a1 + 32), (a1 + 40), (a1 + 84));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,llvm::Metadata *,unsigned int,llvm::Metadata *,llvm::Metadata *,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, int *a7, uint64_t *a8, uint64_t *a9, int *a10)
{
  v18 = a2;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, a3, a4, *a5);
  v19 = v18;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v15, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::MDString *,llvm::Metadata *,unsigned int>(a1, v19, v16, a4, a7, a8, a9, a10);
}

BOOL llvm::MDNodeKeyImpl<llvm::DIDerivedType>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 2);
  if (*a1 != v2)
  {
    return 0;
  }

  v3 = a2 - 16;
  v4 = *(a2 - 16);
  v5 = (v4 & 2) != 0 ? *(a2 - 32) : v3 - 8 * ((v4 >> 2) & 0xF);
  if (*(a1 + 8) != *(v5 + 16))
  {
    return 0;
  }

  v6 = a2;
  if (*a2 != 15)
  {
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 - 32);
    }

    else
    {
      v7 = (v3 - 8 * ((v4 >> 2) & 0xF));
    }

    v6 = *v7;
  }

  if (*(a1 + 16) != v6 || *(a1 + 24) != *(a2 + 16))
  {
    return 0;
  }

  v8 = (v4 & 2) != 0 ? *(a2 - 32) : v3 - 8 * ((v4 >> 2) & 0xF);
  if (*(a1 + 32) != *(v8 + 8) || *(a1 + 40) != *(v8 + 24) || *(a1 + 48) != *(a2 + 24) || *(a1 + 64) != *(a2 + 40) || *(a1 + 56) != *(a2 + 32))
  {
    return 0;
  }

  v9 = *(a2 + 44);
  v10 = *(a1 + 72);
  if (v10 == BYTE4(v9) && *(a1 + 72))
  {
    if (*(a1 + 68) != v9)
    {
      return 0;
    }
  }

  else if (v10 != BYTE4(v9))
  {
    return 0;
  }

  if (v2 == 17152)
  {
    v11 = *(a2 + 4) | 0x100000000;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 80);
  if (v12 != HIDWORD(v11) || !*(a1 + 80))
  {
    if (v12 == HIDWORD(v11))
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (*(a1 + 76) != v11)
  {
    return 0;
  }

LABEL_34:
  if (*(a1 + 84) != *(a2 + 20))
  {
    return 0;
  }

  v13 = (v4 & 2) != 0 ? *(a2 - 32) : v3 - 8 * ((v4 >> 2) & 0xF);
  if (*(a1 + 88) != *(v13 + 32))
  {
    return 0;
  }

  return *(a1 + 96) == *(v13 + 40);
}

BOOL llvm::MDNodeSubsetEqualImpl<llvm::DIDerivedType>::isODRMember(int a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2 && a1 == 13 && a3)
  {
    if (*a2 == 13 && ((v6 = *(a2 - 2), (v6 & 2) != 0) ? (v7 = *(a2 - 4)) : (v7 = &a2[-8 * ((v6 >> 2) & 0xF) - 16]), *(v7 + 56) && *(a4 + 2) == 13 && ((v8 = *(a4 - 16), (v8 & 2) != 0) ? (v9 = *(a4 - 32)) : (v9 = a4 - 16 - 8 * ((v8 >> 2) & 0xF)), *(v9 + 16) == a3)))
    {
      return *(v9 + 8) == a2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL llvm::MDNodeSubsetEqualImpl<llvm::DIDerivedType>::isSubsetEqual(uint64_t a1, uint64_t a2)
{
  v3 = a1 - 16;
  v4 = *(a1 - 16);
  v5 = *(a1 + 2);
  if ((v4 & 2) != 0)
  {
    v6 = *(a1 - 32);
  }

  else
  {
    v6 = v3 - 8 * ((v4 >> 2) & 0xF);
  }

  return llvm::MDNodeSubsetEqualImpl<llvm::DIDerivedType>::isODRMember(v5, *(v6 + 8), *(v6 + 16), a2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::LookupBucketFor<llvm::DIDerivedType *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::InsertIntoBucketImpl<llvm::DIDerivedType *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::LookupBucketFor<llvm::DIDerivedType *>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DIDerivedType>::MDNodeKeyImpl(v22, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DIDerivedType>::getHashValue(v22);
    v8 = v4 - 1;
    v9 = HashValue & (v4 - 1);
    v10 = (v6 + 8 * v9);
    v11 = *a2;
    v12 = *v10;
    if (*a2 == *v10)
    {
LABEL_3:
      v13 = 1;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      while (1)
      {
        if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v21 = v16;
          v20 = v15;
          v18 = v9;
          v19 = v8;
          if (llvm::MDNodeSubsetEqualImpl<llvm::DIDerivedType>::isSubsetEqual(v11, v12))
          {
            goto LABEL_3;
          }

          v12 = *v10;
          v9 = v18;
          v8 = v19;
          v15 = v20;
          v16 = v21;
        }

        if (v12 == -4096)
        {
          break;
        }

        if (v12 == -8192 && v15 == 0)
        {
          v15 = v10;
        }

        v17 = v9 + v16++;
        v9 = v17 & v8;
        v10 = (v6 + 8 * (v17 & v8));
        v11 = *a2;
        v12 = *v10;
        v13 = 1;
        if (*a2 == *v10)
        {
          goto LABEL_5;
        }
      }

      v13 = 0;
      if (v15)
      {
        v10 = v15;
      }
    }
  }

  else
  {
    v10 = 0;
    v13 = 0;
  }

LABEL_5:
  *a3 = v10;
  return v13;
}

uint64_t llvm::MDNodeKeyImpl<llvm::DIDerivedType>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
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

  *(result + 8) = v4[2];
  v5 = a2;
  if (*a2 != 15)
  {
    if ((*v2 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = &v2[-((*v2 >> 2) & 0xFLL)];
    }

    v5 = *v6;
  }

  *(result + 16) = v5;
  *(result + 24) = *(a2 + 16);
  v7 = *(a2 - 16);
  if ((v7 & 2) != 0)
  {
    v8 = *(a2 - 32);
  }

  else
  {
    v8 = &v2[-((v7 >> 2) & 0xF)];
  }

  *(result + 32) = v8[1];
  if ((*v2 & 2) != 0)
  {
    v9 = *(a2 - 32);
  }

  else
  {
    v9 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 40) = v9[3];
  *(result + 48) = *(a2 + 24);
  *(result + 64) = *(a2 + 40);
  v10 = *(a2 + 44);
  *(result + 68) = v10;
  *(result + 72) = BYTE4(v10);
  if (*(a2 + 2) == 17152)
  {
    v11 = *(a2 + 4) | 0x100000000;
  }

  else
  {
    v11 = 0;
  }

  *(result + 76) = v11;
  *(result + 80) = BYTE4(v11);
  *(result + 84) = *(a2 + 20);
  v12 = *(a2 - 16);
  if ((v12 & 2) != 0)
  {
    v13 = *(a2 - 32);
  }

  else
  {
    v13 = &v2[-((v12 >> 2) & 0xF)];
  }

  *(result + 88) = v13[4];
  if ((*v2 & 2) != 0)
  {
    v14 = *(a2 - 32);
  }

  else
  {
    v14 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 96) = v14[5];
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::InsertIntoBucketImpl<llvm::DIDerivedType *>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

  llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::LookupBucketFor<llvm::DIDerivedType *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::LookupBucketFor<llvm::DIDerivedType *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DICompositeType>>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DICompositeType>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DICompositeType>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DICompositeType>::getHashValue(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = (a1 + 72);
  v4 = (a1 + 96);
  v5 = (a1 + 152);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v8);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,llvm::Metadata *,unsigned int,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *>(v8, 0, v8, v9, (a1 + 8), (a1 + 16), (a1 + 24), (a1 + 40), v2, v3, v4, v5);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,llvm::Metadata *,unsigned int,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, int *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v20 = a2;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v20, a3, a4, *a5);
  v21 = v20;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v21, v17, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *>(a1, v21, v18, a4, a7, a8, a9, a10, a11, a12);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v18 = a2;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v18, a3, a4, *a5);
  v19 = v18;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v15, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<long long,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *>(a1, v19, v16, a4, a7, a8, a9, a10);
}

BOOL llvm::MDNodeKeyImpl<llvm::DICompositeType>::isKeyOf(uint64_t a1, uint64_t a2)
{
  if (*a1 != *(a2 + 2))
  {
    return 0;
  }

  v2 = a2 - 16;
  v3 = *(a2 - 16);
  v4 = (v3 & 2) != 0 ? *(a2 - 32) : v2 - 8 * ((v3 >> 2) & 0xF);
  if (*(a1 + 8) != *(v4 + 16))
  {
    return 0;
  }

  v5 = a2;
  if (*a2 != 15)
  {
    if ((v3 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = (v2 - 8 * ((v3 >> 2) & 0xF));
    }

    v5 = *v6;
  }

  if (*(a1 + 16) == v5 && *(a1 + 24) == *(a2 + 16) && ((v3 & 2) != 0 ? (v7 = *(a2 - 32)) : (v7 = v2 - 8 * ((v3 >> 2) & 0xF)), *(a1 + 32) == *(v7 + 8) && *(a1 + 40) == *(v7 + 24) && *(a1 + 48) == *(a2 + 24) && *(a1 + 64) == *(a2 + 40) && *(a1 + 56) == *(a2 + 32) && *(a1 + 68) == *(a2 + 20) && ((v3 & 2) != 0 ? (v8 = *(a2 - 32)) : (v8 = v2 - 8 * ((v3 >> 2) & 0xF)), *(a1 + 72) == *(v8 + 32) && *(a1 + 80) == *(a2 + 44) && ((v3 & 2) != 0 ? (v9 = *(a2 - 32)) : (v9 = (v2 - 8 * ((v3 >> 2) & 0xF))), *(a1 + 88) == v9[5] && *(a1 + 96) == v9[6] && *(a1 + 104) == v9[7] && *(a1 + 112) == v9[8] && *(a1 + 120) == v9[9] && *(a1 + 128) == v9[10] && *(a1 + 136) == v9[11] && *(a1 + 144) == v9[12]))))
  {
    return *(a1 + 152) == v9[13];
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::LookupBucketFor<llvm::DICompositeType *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::InsertIntoBucketImpl<llvm::DICompositeType *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::LookupBucketFor<llvm::DICompositeType *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DICompositeType>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DICompositeType>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DICompositeType>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
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

  *(result + 8) = v4[2];
  v5 = a2;
  if (*a2 != 15)
  {
    if ((*v2 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = &v2[-((*v2 >> 2) & 0xFLL)];
    }

    v5 = *v6;
  }

  *(result + 16) = v5;
  *(result + 24) = *(a2 + 16);
  v7 = *(a2 - 16);
  if ((v7 & 2) != 0)
  {
    v8 = *(a2 - 32);
  }

  else
  {
    v8 = &v2[-((v7 >> 2) & 0xF)];
  }

  *(result + 32) = v8[1];
  if ((*v2 & 2) != 0)
  {
    v9 = *(a2 - 32);
  }

  else
  {
    v9 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 40) = v9[3];
  *(result + 48) = *(a2 + 24);
  v10 = *(a2 + 20);
  *(result + 64) = *(a2 + 40);
  *(result + 68) = v10;
  v11 = *(a2 - 16);
  if ((v11 & 2) != 0)
  {
    v12 = *(a2 - 32);
  }

  else
  {
    v12 = &v2[-((v11 >> 2) & 0xF)];
  }

  *(result + 72) = v12[4];
  *(result + 80) = *(a2 + 44);
  v13 = *(a2 - 16);
  if ((v13 & 2) != 0)
  {
    v14 = *(a2 - 32);
  }

  else
  {
    v14 = &v2[-((v13 >> 2) & 0xF)];
  }

  *(result + 88) = v14[5];
  if ((*v2 & 2) != 0)
  {
    v15 = *(a2 - 32);
  }

  else
  {
    v15 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 96) = v15[6];
  if ((*v2 & 2) != 0)
  {
    v16 = *(a2 - 32);
  }

  else
  {
    v16 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 104) = v16[7];
  if ((*v2 & 2) != 0)
  {
    v17 = *(a2 - 32);
  }

  else
  {
    v17 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 112) = v17[8];
  if ((*v2 & 2) != 0)
  {
    v18 = *(a2 - 32);
  }

  else
  {
    v18 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 120) = v18[9];
  if ((*v2 & 2) != 0)
  {
    v19 = *(a2 - 32);
  }

  else
  {
    v19 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 128) = v19[10];
  if ((*v2 & 2) != 0)
  {
    v20 = *(a2 - 32);
  }

  else
  {
    v20 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 136) = v20[11];
  if ((*v2 & 2) != 0)
  {
    v21 = *(a2 - 32);
  }

  else
  {
    v21 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 144) = v21[12];
  if ((*v2 & 2) != 0)
  {
    v22 = *(a2 - 32);
  }

  else
  {
    v22 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 152) = v22[13];
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::InsertIntoBucketImpl<llvm::DICompositeType *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::LookupBucketFor<llvm::DICompositeType *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::LookupBucketFor<llvm::DICompositeType *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DISubroutineType>>(uint64_t *a1, int *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DISubroutineType>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DISubroutineType>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DISubroutineType>::getHashValue(int *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v4);
  v4 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,llvm::Metadata *>(&v4, 0, v5, v6, a1 + 4, a1 + 1);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _BYTE *a3, char *a4, char *a5, uint64_t *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

BOOL llvm::MDNodeKeyImpl<llvm::DISubroutineType>::isKeyOf(uint64_t a1, uint64_t a2)
{
  if (*a1 != *(a2 + 20) || *(a1 + 4) != *(a2 + 44))
  {
    return 0;
  }

  v2 = *(a2 - 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a2 - 32);
  }

  else
  {
    v3 = a2 - 16 - 8 * ((v2 >> 2) & 0xF);
  }

  return *(a1 + 8) == *(v3 + 24);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::LookupBucketFor<llvm::DISubroutineType *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::InsertIntoBucketImpl<llvm::DISubroutineType *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::LookupBucketFor<llvm::DISubroutineType *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeInfo<llvm::DISubroutineType>::getHashValue(*a2);
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

unint64_t llvm::MDNodeInfo<llvm::DISubroutineType>::getHashValue(uint64_t a1)
{
  v1 = *(a1 - 16);
  v4 = *(a1 + 20);
  v5 = *(a1 + 44);
  if ((v1 & 2) != 0)
  {
    v2 = *(a1 - 32);
  }

  else
  {
    v2 = a1 - 16 - 8 * ((v1 >> 2) & 0xF);
  }

  v6 = *(v2 + 24);
  return llvm::MDNodeKeyImpl<llvm::DISubroutineType>::getHashValue(&v4);
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::InsertIntoBucketImpl<llvm::DISubroutineType *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::LookupBucketFor<llvm::DISubroutineType *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::LookupBucketFor<llvm::DISubroutineType *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIFile>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DIFile>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIFile>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DIFile>::getHashValue(uint64_t *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = *(a1 + 4);
    v3 = a1[3];
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v7 = v2;
  v6 = v3;
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v8);
  v8 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,int,llvm::MDString *,llvm::MDString *>(&v8, 0, v9, v10, a1 + 1, &v7, &v6, a1 + 5);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,int,llvm::MDString *,llvm::MDString *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, int *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(a1, v17, v14, a4, a7, a8);
}

BOOL llvm::MDNodeKeyImpl<llvm::DIFile>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a2 - 32);
  }

  else
  {
    v3 = (a2 - 16 - 8 * ((v2 >> 2) & 0xF));
  }

  if (*a1 != *v3 || *(a1 + 8) != v3[1])
  {
    return 0;
  }

  v5 = *(a2 + 32);
  v6 = *(a1 + 32);
  if (v6 == v5 && v6 != 0)
  {
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
    {
      return *(a1 + 40) == *(a2 + 40);
    }

    return 0;
  }

  if (v6 != v5)
  {
    return 0;
  }

  return *(a1 + 40) == *(a2 + 40);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, __n128 **a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::LookupBucketFor<llvm::DIFile *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::InsertIntoBucketImpl<llvm::DIFile *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::LookupBucketFor<llvm::DIFile *>(uint64_t *a1, __n128 **a2, __n128 ***a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DIFile>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DIFile>::getHashValue(v17);
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

__n128 llvm::MDNodeKeyImpl<llvm::DIFile>::MDNodeKeyImpl(__n128 *a1, __n128 *a2)
{
  v2 = a2 - 1;
  v3 = a2[-1].n128_u64[0];
  if ((v3 & 2) != 0)
  {
    v4 = a2[-2].n128_u64[0];
  }

  else
  {
    v4 = &v2->n128_u64[-((v3 >> 2) & 0xF)];
  }

  a1->n128_u64[0] = *v4;
  if ((v2->n128_u64[0] & 2) != 0)
  {
    v5 = a2[-2].n128_u64[0];
  }

  else
  {
    v5 = &v2->n128_u64[-((v2->n128_u64[0] >> 2) & 0xF)];
  }

  a1->n128_u64[1] = v5[1];
  result = a2[1];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a1[1] = result;
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  return result;
}

__n128 **llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::InsertIntoBucketImpl<llvm::DIFile *>(uint64_t a1, uint64_t a2, __n128 **a3, __n128 **a4)
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

  llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::LookupBucketFor<llvm::DIFile *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::moveFromOldBuckets(uint64_t result, __n128 **a2, __n128 **a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::LookupBucketFor<llvm::DIFile *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DISubprogram>>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    v7 = v4 - 1;
    v8 = llvm::MDNodeKeyImpl<llvm::DISubprogram>::getHashValue(a2) & (v4 - 1);
    v9 = (v6 + 8 * v8);
    if (llvm::MDNodeInfo<llvm::DISubprogram>::isEqual(a2, *v9))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -4096)
      {
        v13 = v11;
        if (*v9 == -8192 && v11 == 0)
        {
          v13 = v9;
        }

        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = (v6 + 8 * v8);
        isEqual = llvm::MDNodeInfo<llvm::DISubprogram>::isEqual(a2, *v9);
        v11 = v13;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v9;
  return result;
}

BOOL llvm::MDNodeInfo<llvm::DISubprogram>::isEqual(uint64_t a1, uint64_t a2)
{
  if ((a2 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    return 0;
  }

  if (llvm::MDNodeSubsetEqualImpl<llvm::DISubprogram>::isDeclarationOfODRMember((*(a1 + 76) >> 3) & 1, *a1, *(a1 + 16), *(a1 + 88), a2))
  {
    return 1;
  }

  return llvm::MDNodeKeyImpl<llvm::DISubprogram>::isKeyOf(a1, a2);
}

unint64_t llvm::MDNodeKeyImpl<llvm::DISubprogram>::getHashValue(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 76) & 8) == 0 && *(a1 + 16) && (v2 = *a1) != 0 && *v2 == 13 && ((v3 = *(v2 - 2), (v3 & 2) != 0) ? (v4 = *(v2 - 4)) : (v4 = &v2[-8 * ((v3 >> 2) & 0xF) - 16]), *(v4 + 56)))
  {
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v7);
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v7, 0, &v7, v9, (a1 + 16), a1);
  }

  else
  {
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v7);
    v7 = *(a1 + 8);
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,unsigned int>(&v7, 0, v8, v9, a1, (a1 + 24), (a1 + 40), (a1 + 32));
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayType *,unsigned int>(a1, v17, v14, a4, a7, a8);
}

BOOL llvm::MDNodeKeyImpl<llvm::DISubprogram>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v3 = a2 - 16;
  v2 = *(a2 - 16);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 - 32);
  }

  else
  {
    v4 = (v3 - 8 * ((v2 >> 2) & 0xF));
  }

  if (*a1 != v4[1] || *(a1 + 8) != v4[2] || *(a1 + 16) != v4[3])
  {
    return 0;
  }

  v5 = a2;
  if (*a2 != 15)
  {
    if ((v2 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = (v3 - 8 * ((v2 >> 2) & 0xF));
    }

    v5 = *v6;
  }

  if (*(a1 + 24) != v5 || *(a1 + 32) != *(a2 + 16))
  {
    return 0;
  }

  v7 = (v2 & 2) != 0 ? *(a2 - 32) : v3 - 8 * ((v2 >> 2) & 0xF);
  if (*(a1 + 40) != *(v7 + 32) || *(a1 + 48) != *(a2 + 20))
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if (*(a2 - 24) >= 9u)
    {
      v8 = *(a2 - 32);
      goto LABEL_24;
    }

LABEL_25:
    v9 = 0;
    goto LABEL_26;
  }

  if ((*(a2 - 16) & 0x3C0uLL) <= 0x200)
  {
    goto LABEL_25;
  }

  v8 = v3 - 8 * ((v2 >> 2) & 0xF);
LABEL_24:
  v9 = *(v8 + 64);
LABEL_26:
  if (*(a1 + 56) != v9 || *(a1 + 64) != *(a2 + 24) || *(a1 + 68) != *(a2 + 28) || *(a1 + 72) != *(a2 + 32) || *(a1 + 76) != *(a2 + 36))
  {
    return 0;
  }

  v10 = *(a1 + 80);
  if ((v2 & 2) != 0)
  {
    v11 = *(a2 - 32);
    if (v10 != v11[5])
    {
      return 0;
    }

    v14 = *(a1 + 88);
    v15 = *(a2 - 24);
    if (v15 <= 9)
    {
      if (v14)
      {
        return 0;
      }
    }

    else if (v14 != v11[9])
    {
      return 0;
    }

    if (*(a1 + 96) != v11[6] || *(a1 + 104) != v11[7])
    {
      return 0;
    }

    v18 = *(a1 + 112);
    if (v15 <= 0xA)
    {
      if (v18)
      {
        return 0;
      }

      v19 = *(a1 + 120);
    }

    else
    {
      if (v18 != v11[10])
      {
        return 0;
      }

      v19 = *(a1 + 120);
      if (v15 != 11)
      {
        if (v19 == v11[11])
        {
          v20 = *(a1 + 128);
          if (v15 >= 0xD)
          {
LABEL_66:
            v21 = v11[12];
            return v20 == v21;
          }

          goto LABEL_55;
        }

        return 0;
      }
    }

    if (!v19)
    {
      v21 = 0;
      v20 = *(a1 + 128);
      return v20 == v21;
    }

    return 0;
  }

  v11 = (v3 - 8 * ((v2 >> 2) & 0xF));
  if (v10 != v11[5])
  {
    return 0;
  }

  v12 = *(a1 + 88);
  if ((*(a2 - 16) & 0x380uLL) <= 0x240)
  {
    if (v12)
    {
      return 0;
    }
  }

  else if (v12 != v11[9])
  {
    return 0;
  }

  if (*(a1 + 96) != v11[6] || *(a1 + 104) != v11[7])
  {
    return 0;
  }

  v16 = *(a1 + 112);
  v17 = *(a2 - 16) & 0x3C0;
  if (v17 <= 0x280)
  {
    if (v16)
    {
      return 0;
    }
  }

  else if (v16 != v11[10])
  {
    return 0;
  }

  v22 = *(a1 + 120);
  if ((~v2 & 0x300) != 0)
  {
    if (!v22)
    {
      goto LABEL_65;
    }

    return 0;
  }

  if (v22 != v11[11])
  {
    return 0;
  }

LABEL_65:
  v20 = *(a1 + 128);
  if (v17 > 0x300)
  {
    goto LABEL_66;
  }

LABEL_55:
  v21 = 0;
  return v20 == v21;
}

BOOL llvm::MDNodeSubsetEqualImpl<llvm::DISubprogram>::isDeclarationOfODRMember(int a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a2 && !a1 && a3)
  {
    if (*a2 != 13)
    {
      return 0;
    }

    v6 = *(a2 - 2);
    if ((v6 & 2) != 0)
    {
      v7 = *(a2 - 4);
    }

    else
    {
      v7 = &a2[-8 * ((v6 >> 2) & 0xF) - 16];
    }

    v5 = *(v7 + 56);
    if (v5)
    {
      if (!((*(a5 + 36) & 8) >> 3))
      {
        v8 = *(a5 - 16);
        if ((v8 & 2) != 0)
        {
          v9 = *(a5 - 32);
          if (v9[1] == a2 && v9[3] == a3)
          {
            if (*(a5 - 24) < 0xAu)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v9 = (a5 - 16 - 8 * ((v8 >> 2) & 0xF));
          if (v9[1] == a2 && v9[3] == a3)
          {
            if ((*(a5 - 16) & 0x380uLL) <= 0x240)
            {
LABEL_14:
              v10 = 0;
              return v10 == a4;
            }

LABEL_20:
            v10 = v9[9];
            return v10 == a4;
          }
        }
      }

      return 0;
    }
  }

  return v5;
}

BOOL llvm::MDNodeSubsetEqualImpl<llvm::DISubprogram>::isSubsetEqual(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 16);
  if ((v3 & 2) != 0)
  {
    v4 = *(a1 - 32);
    v5 = v4[1];
    v6 = v4[3];
    if (*(a1 - 24) >= 0xAu)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return llvm::MDNodeSubsetEqualImpl<llvm::DISubprogram>::isDeclarationOfODRMember((*(a1 + 36) >> 3) & 1, v5, v6, v7, a2);
  }

  v4 = (a1 - 16 - 8 * ((v3 >> 2) & 0xF));
  v5 = v4[1];
  v6 = v4[3];
  if ((*(a1 - 16) & 0x380uLL) <= 0x240)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = v4[9];
  return llvm::MDNodeSubsetEqualImpl<llvm::DISubprogram>::isDeclarationOfODRMember((*(a1 + 36) >> 3) & 1, v5, v6, v7, a2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::LookupBucketFor<llvm::DISubprogram *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::InsertIntoBucketImpl<llvm::DISubprogram *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::LookupBucketFor<llvm::DISubprogram *>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DISubprogram>::MDNodeKeyImpl(v22, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DISubprogram>::getHashValue(v22);
    v8 = v4 - 1;
    v9 = HashValue & (v4 - 1);
    v10 = (v6 + 8 * v9);
    v11 = *a2;
    v12 = *v10;
    if (*a2 == *v10)
    {
LABEL_3:
      v13 = 1;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      while (1)
      {
        if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v21 = v16;
          v20 = v15;
          v18 = v9;
          v19 = v8;
          if (llvm::MDNodeSubsetEqualImpl<llvm::DISubprogram>::isSubsetEqual(v11, v12))
          {
            goto LABEL_3;
          }

          v12 = *v10;
          v9 = v18;
          v8 = v19;
          v15 = v20;
          v16 = v21;
        }

        if (v12 == -4096)
        {
          break;
        }

        if (v12 == -8192 && v15 == 0)
        {
          v15 = v10;
        }

        v17 = v9 + v16++;
        v9 = v17 & v8;
        v10 = (v6 + 8 * (v17 & v8));
        v11 = *a2;
        v12 = *v10;
        v13 = 1;
        if (*a2 == *v10)
        {
          goto LABEL_5;
        }
      }

      v13 = 0;
      if (v15)
      {
        v10 = v15;
      }
    }
  }

  else
  {
    v10 = 0;
    v13 = 0;
  }

LABEL_5:
  *a3 = v10;
  return v13;
}

uint64_t llvm::MDNodeKeyImpl<llvm::DISubprogram>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
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

  *result = v4[1];
  if ((*v2 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v2[-((*v2 >> 2) & 0xF)];
  }

  *(result + 8) = v5[2];
  if ((*v2 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = &v2[-((*v2 >> 2) & 0xF)];
  }

  *(result + 16) = v6[3];
  v7 = a2;
  if (*a2 != 15)
  {
    if ((*v2 & 2) != 0)
    {
      v8 = *(a2 - 32);
    }

    else
    {
      v8 = &v2[-((*v2 >> 2) & 0xF)];
    }

    v7 = *v8;
  }

  *(result + 24) = v7;
  *(result + 32) = *(a2 + 16);
  v9 = *(a2 - 16);
  if ((v9 & 2) != 0)
  {
    v10 = *(a2 - 32);
  }

  else
  {
    v10 = &v2[-((v9 >> 2) & 0xF)];
  }

  *(result + 40) = v10[4];
  *(result + 48) = *(a2 + 20);
  v11 = *(a2 - 16);
  if ((v11 & 2) != 0)
  {
    if (*(a2 - 24) >= 9u)
    {
      v12 = *(a2 - 32);
      goto LABEL_23;
    }
  }

  else if ((*(a2 - 16) & 0x3C0uLL) > 0x200)
  {
    v12 = &v2[-((v11 >> 2) & 0xF)];
LABEL_23:
    v13 = v12[8];
    goto LABEL_25;
  }

  v13 = 0;
LABEL_25:
  *(result + 56) = v13;
  *(result + 64) = *(a2 + 24);
  v14 = *(a2 - 16);
  if ((v14 & 2) != 0)
  {
    v15 = *(a2 - 32);
  }

  else
  {
    v15 = &v2[-((v14 >> 2) & 0xF)];
  }

  *(result + 80) = v15[5];
  if ((*v2 & 2) != 0)
  {
    if (*(a2 - 24) >= 0xAu)
    {
      v16 = *(a2 - 32);
      goto LABEL_33;
    }
  }

  else if ((*v2 & 0x380) > 0x240)
  {
    v16 = &v2[-((*v2 >> 2) & 0xF)];
LABEL_33:
    v17 = v16[9];
    goto LABEL_35;
  }

  v17 = 0;
LABEL_35:
  *(result + 88) = v17;
  if ((*v2 & 2) != 0)
  {
    v18 = *(a2 - 32);
  }

  else
  {
    v18 = &v2[-((*v2 >> 2) & 0xF)];
  }

  *(result + 96) = v18[6];
  if ((*v2 & 2) != 0)
  {
    v19 = *(a2 - 32);
  }

  else
  {
    v19 = &v2[-((*v2 >> 2) & 0xF)];
  }

  *(result + 104) = v19[7];
  if ((*v2 & 2) != 0)
  {
    if (*(a2 - 24) >= 0xBu)
    {
      v20 = *(a2 - 32);
      goto LABEL_46;
    }
  }

  else if ((*v2 & 0x3C0) > 0x280)
  {
    v20 = &v2[-((*v2 >> 2) & 0xF)];
LABEL_46:
    v21 = v20[10];
    goto LABEL_48;
  }

  v21 = 0;
LABEL_48:
  *(result + 112) = v21;
  v22 = *v2;
  if ((*v2 & 2) != 0)
  {
    if (*(a2 - 24) >= 0xCu)
    {
      v23 = *(a2 - 32);
      goto LABEL_53;
    }
  }

  else if ((~v22 & 0x300) == 0)
  {
    v23 = &v2[-((v22 >> 2) & 0xF)];
LABEL_53:
    v24 = v23[11];
    goto LABEL_55;
  }

  v24 = 0;
LABEL_55:
  *(result + 120) = v24;
  if ((*v2 & 2) != 0)
  {
    if (*(a2 - 24) >= 0xDu)
    {
      v25 = *(a2 - 32);
      goto LABEL_60;
    }

LABEL_61:
    v26 = 0;
    goto LABEL_62;
  }

  if ((*v2 & 0x3C0) <= 0x300)
  {
    goto LABEL_61;
  }

  v25 = &v2[-((*v2 >> 2) & 0xF)];
LABEL_60:
  v26 = v25[12];
LABEL_62:
  *(result + 128) = v26;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::InsertIntoBucketImpl<llvm::DISubprogram *>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

  llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::LookupBucketFor<llvm::DISubprogram *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::LookupBucketFor<llvm::DISubprogram *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILexicalBlock>>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DILexicalBlock>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DILexicalBlock>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DILexicalBlock>::getHashValue(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v4);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,unsigned long long,unsigned int,unsigned int>(v4, 0, v4, v5, a1, (a1 + 8), (a1 + 16), (a1 + 20));
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::MDNodeKeyImpl<llvm::DILexicalBlock>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 16;
  v3 = *(a2 - 16);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 32);
  }

  else
  {
    v4 = v2 - 8 * ((v3 >> 2) & 0xF);
  }

  if (*a1 != *(v4 + 8))
  {
    return 0;
  }

  v5 = a2;
  if (*a2 != 15)
  {
    if ((v3 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = (v2 - 8 * ((v3 >> 2) & 0xF));
    }

    v5 = *v6;
  }

  return *(a1 + 8) == v5 && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::LookupBucketFor<llvm::DILexicalBlock *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::InsertIntoBucketImpl<llvm::DILexicalBlock *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::LookupBucketFor<llvm::DILexicalBlock *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DILexicalBlock>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DILexicalBlock>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DILexicalBlock>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
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

  *result = v4[1];
  v5 = a2;
  if (*a2 != 15)
  {
    if ((*v2 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = &v2[-((*v2 >> 2) & 0xFLL)];
    }

    v5 = *v6;
  }

  *(result + 8) = v5;
  v7 = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  *(result + 20) = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::InsertIntoBucketImpl<llvm::DILexicalBlock *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::LookupBucketFor<llvm::DILexicalBlock *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::LookupBucketFor<llvm::DILexicalBlock *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILexicalBlockFile>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DILexicalBlockFile>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DILexicalBlockFile>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DILexicalBlockFile>::getHashValue(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v4);
  v4 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayType *,unsigned int>(&v4, 0, v5, v6, a1 + 1, a1 + 4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::MDNodeKeyImpl<llvm::DILexicalBlockFile>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 16;
  v3 = *(a2 - 16);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 32);
  }

  else
  {
    v4 = v2 - 8 * ((v3 >> 2) & 0xF);
  }

  if (*a1 != *(v4 + 8))
  {
    return 0;
  }

  v5 = a2;
  if (*a2 != 15)
  {
    if ((v3 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = (v2 - 8 * ((v3 >> 2) & 0xF));
    }

    v5 = *v6;
  }

  return *(a1 + 8) == v5 && *(a1 + 16) == *(a2 + 16);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::LookupBucketFor<llvm::DILexicalBlockFile *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::InsertIntoBucketImpl<llvm::DILexicalBlockFile *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::LookupBucketFor<llvm::DILexicalBlockFile *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DILexicalBlockFile>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DILexicalBlockFile>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DILexicalBlockFile>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
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

  *result = v4[1];
  v5 = a2;
  if (*a2 != 15)
  {
    if ((*v2 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = &v2[-((*v2 >> 2) & 0xFLL)];
    }

    v5 = *v6;
  }

  *(result + 8) = v5;
  *(result + 16) = *(a2 + 16);
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::InsertIntoBucketImpl<llvm::DILexicalBlockFile *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::LookupBucketFor<llvm::DILexicalBlockFile *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::LookupBucketFor<llvm::DILexicalBlockFile *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DINamespace>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v17);
    v7 = 0;
    v8 = v4 - 1;
    v9 = v8 & llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v17, 0, v17, v18, a2, a2 + 1);
    for (i = 1; ; ++i)
    {
      v11 = (v6 + 8 * v9);
      v12 = *v11;
      if ((*v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DINamespace>::isKeyOf(a2, v12))
        {
          result = 1;
          goto LABEL_18;
        }

        v12 = *v11;
      }

      if (v12 == -4096)
      {
        break;
      }

      if (v7)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12 == -8192;
      }

      if (v13)
      {
        v7 = (v6 + 8 * v9);
      }

      v14 = v9 + i;
      v9 = v14 & v8;
    }

    result = 0;
    if (v7)
    {
      v11 = v7;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
  }

LABEL_18:
  *a3 = v11;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::MDNodeKeyImpl<llvm::DINamespace>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a2 - 32);
  }

  else
  {
    v3 = a2 - 16 - 8 * ((v2 >> 2) & 0xF);
  }

  return *a1 == *(v3 + 8) && *(a1 + 8) == *(v3 + 16) && *(a1 + 16) == (*(a2 + 16) & 1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::LookupBucketFor<llvm::DINamespace *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::InsertIntoBucketImpl<llvm::DINamespace *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::LookupBucketFor<llvm::DINamespace *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DINamespace>::MDNodeKeyImpl(&v18, *a2);
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v20);
    v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v20, 0, v20, v21, &v18, &v19);
    v8 = v4 - 1;
    v9 = (v4 - 1) & v7;
    v10 = (v6 + 8 * v9);
    v11 = *v10;
    if (*a2 == *v10)
    {
      result = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      result = 1;
      while (v11 != -4096)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v11 == -8192;
        }

        if (v16)
        {
          v14 = v10;
        }

        v17 = v9 + v15++;
        v9 = v17 & v8;
        v10 = (v6 + 8 * (v17 & v8));
        v11 = *v10;
        if (*a2 == *v10)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v14)
      {
        v10 = v14;
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
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::MDNodeKeyImpl<llvm::DINamespace>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
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

  *result = v4[1];
  if ((*v2 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 8) = v5[2];
  *(result + 16) = *(a2 + 16) & 1;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::InsertIntoBucketImpl<llvm::DINamespace *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::LookupBucketFor<llvm::DINamespace *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::LookupBucketFor<llvm::DINamespace *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DICommonBlock>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DICommonBlock>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DICommonBlock>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DICommonBlock>::getHashValue(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v4);
  v4 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,llvm::Metadata *,llvm::Metadata *,unsigned int>(&v4, 0, v5, v6, a1 + 1, a1 + 2, a1 + 3, a1 + 8);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::MDNodeKeyImpl<llvm::DICommonBlock>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a2 - 32);
  }

  else
  {
    v3 = (a2 - 16 - 8 * ((v2 >> 2) & 0xF));
  }

  return *a1 == *v3 && *(a1 + 8) == v3[1] && *(a1 + 16) == v3[2] && *(a1 + 24) == v3[3] && *(a1 + 32) == *(a2 + 16);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::LookupBucketFor<llvm::DICommonBlock *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::InsertIntoBucketImpl<llvm::DICommonBlock *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::LookupBucketFor<llvm::DICommonBlock *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DICommonBlock>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DICommonBlock>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DICommonBlock>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
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

  *result = *v4;
  if ((*v2 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 8) = v5[1];
  if ((*v2 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 16) = v6[2];
  if ((*v2 & 2) != 0)
  {
    v7 = *(a2 - 32);
  }

  else
  {
    v7 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 24) = v7[3];
  *(result + 32) = *(a2 + 16);
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::InsertIntoBucketImpl<llvm::DICommonBlock *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::LookupBucketFor<llvm::DICommonBlock *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::LookupBucketFor<llvm::DICommonBlock *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIModule>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DIModule>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIModule>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DIModule>::getHashValue(uint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v4);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<long long,llvm::Metadata *,llvm::Metadata *,llvm::Metadata *>(v4, 0, v4, v5, a1 + 1, a1 + 2, a1 + 3, a1 + 4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::MDNodeKeyImpl<llvm::DIModule>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 16;
  v3 = *(a2 - 16);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 32);
  }

  else
  {
    v4 = (v2 - 8 * ((v3 >> 2) & 0xF));
  }

  if (*(a1 + 8) != v4[1] || *(a1 + 16) != v4[2] || *(a1 + 24) != v4[3] || *(a1 + 32) != v4[4] || *(a1 + 40) != v4[5])
  {
    return 0;
  }

  v5 = a2;
  if (*a2 != 15)
  {
    if ((v3 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = (v2 - 8 * ((v3 >> 2) & 0xF));
    }

    v5 = *v6;
  }

  return *a1 == v5 && *(a1 + 48) == *(a2 + 16) && *(a1 + 52) == *(a2 + 20);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::LookupBucketFor<llvm::DIModule *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::InsertIntoBucketImpl<llvm::DIModule *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::LookupBucketFor<llvm::DIModule *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DIModule>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DIModule>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DIModule>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (*a2 != 15)
  {
    v3 = *(a2 - 16);
    if ((v3 & 2) != 0)
    {
      v4 = *(a2 - 32);
    }

    else
    {
      v4 = (a2 - 16 - 8 * ((v3 >> 2) & 0xF));
    }

    v2 = *v4;
  }

  *result = v2;
  v5 = (a2 - 16);
  v6 = *(a2 - 16);
  if ((v6 & 2) != 0)
  {
    v7 = *(a2 - 32);
  }

  else
  {
    v7 = &v5[-((v6 >> 2) & 0xF)];
  }

  *(result + 8) = v7[1];
  if ((*v5 & 2) != 0)
  {
    v8 = *(a2 - 32);
  }

  else
  {
    v8 = &v5[-((*v5 >> 2) & 0xFLL)];
  }

  *(result + 16) = v8[2];
  if ((*v5 & 2) != 0)
  {
    v9 = *(a2 - 32);
  }

  else
  {
    v9 = &v5[-((*v5 >> 2) & 0xFLL)];
  }

  *(result + 24) = v9[3];
  if ((*v5 & 2) != 0)
  {
    v10 = *(a2 - 32);
  }

  else
  {
    v10 = &v5[-((*v5 >> 2) & 0xFLL)];
  }

  *(result + 32) = v10[4];
  if ((*v5 & 2) != 0)
  {
    v11 = *(a2 - 32);
  }

  else
  {
    v11 = &v5[-((*v5 >> 2) & 0xFLL)];
  }

  *(result + 40) = v11[5];
  *(result + 48) = *(a2 + 16);
  *(result + 52) = *(a2 + 20);
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::InsertIntoBucketImpl<llvm::DIModule *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::LookupBucketFor<llvm::DIModule *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::LookupBucketFor<llvm::DIModule *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DITemplateTypeParameter>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DITemplateTypeParameter>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DITemplateTypeParameter>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DITemplateTypeParameter>::getHashValue(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v4);
  v4 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,BOOL>(&v4, 0, v5, v6, a1 + 1, a1 + 16);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::MDNodeKeyImpl<llvm::DITemplateTypeParameter>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a2 - 32);
  }

  else
  {
    v3 = (a2 - 16 - 8 * ((v2 >> 2) & 0xF));
  }

  return *a1 == *v3 && *(a1 + 8) == v3[1] && *(a1 + 16) == *(a2 + 16);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::LookupBucketFor<llvm::DITemplateTypeParameter *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::InsertIntoBucketImpl<llvm::DITemplateTypeParameter *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::LookupBucketFor<llvm::DITemplateTypeParameter *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DITemplateTypeParameter>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DITemplateTypeParameter>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DITemplateTypeParameter>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
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

  *result = *v4;
  if ((*v2 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 8) = v5[1];
  *(result + 16) = *(a2 + 16);
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::InsertIntoBucketImpl<llvm::DITemplateTypeParameter *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::LookupBucketFor<llvm::DITemplateTypeParameter *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::LookupBucketFor<llvm::DITemplateTypeParameter *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DITemplateValueParameter>>(uint64_t *a1, int *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DITemplateValueParameter>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DITemplateValueParameter>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DITemplateValueParameter>::getHashValue(int *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v4);
  v4 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,llvm::Metadata *,BOOL,llvm::Metadata *>(&v4, 0, v5, v6, a1 + 1, a1 + 2, a1 + 24, a1 + 4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,llvm::Metadata *,BOOL,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, char *a7, uint64_t *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,llvm::Metadata *>(a1, v17, v14, a4, a7, a8);
}

BOOL llvm::MDNodeKeyImpl<llvm::DITemplateValueParameter>::isKeyOf(uint64_t a1, uint64_t a2)
{
  if (*a1 != *(a2 + 2))
  {
    return 0;
  }

  v2 = a2 - 16;
  v3 = *(a2 - 16);
  v4 = (v3 & 2) != 0 ? *(a2 - 32) : (v2 - 8 * ((v3 >> 2) & 0xF));
  if (*(a1 + 8) != *v4 || *(a1 + 16) != v4[1] || *(a1 + 24) != *(a2 + 16))
  {
    return 0;
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = v2 - 8 * ((v3 >> 2) & 0xF);
  }

  return *(a1 + 32) == *(v5 + 16);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::LookupBucketFor<llvm::DITemplateValueParameter *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::InsertIntoBucketImpl<llvm::DITemplateValueParameter *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::LookupBucketFor<llvm::DITemplateValueParameter *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DITemplateValueParameter>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DITemplateValueParameter>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DITemplateValueParameter>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
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
  *(result + 24) = *(a2 + 16);
  v6 = *(a2 - 16);
  if ((v6 & 2) != 0)
  {
    v7 = *(a2 - 32);
  }

  else
  {
    v7 = &v2[-((v6 >> 2) & 0xF)];
  }

  *(result + 32) = v7[2];
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::InsertIntoBucketImpl<llvm::DITemplateValueParameter *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::LookupBucketFor<llvm::DITemplateValueParameter *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::LookupBucketFor<llvm::DITemplateValueParameter *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIGlobalVariable>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DIGlobalVariable>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIGlobalVariable>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DIGlobalVariable>::getHashValue(uint64_t *a1)
{
  v2 = (a1 + 4);
  v3 = a1 + 5;
  v12 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 6);
  v5 = a1 + 49;
  v6 = a1 + 7;
  v7 = a1 + 10;
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v10);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,llvm::MDString *,llvm::MDString *,llvm::Metadata *,unsigned int,llvm::Metadata *,BOOL,BOOL,llvm::Metadata *,llvm::Metadata *>(v10, 0, v10, v11, a1, a1 + 1, a1 + 2, a1 + 3, v2, v3, v4, v5, v6, v7);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,llvm::MDString *,llvm::MDString *,llvm::Metadata *,unsigned int,llvm::Metadata *,BOOL,BOOL,llvm::Metadata *,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int *a9, uint64_t *a10, char *a11, char *a12, uint64_t *a13, uint64_t *a14)
{
  v22 = a2;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v22, a3, a4, *a5);
  v23 = v22;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v23, v19, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,llvm::Metadata *,unsigned int,llvm::Metadata *,BOOL,BOOL,llvm::Metadata *,llvm::Metadata *>(a1, v23, v20, a4, a7, a8, a9, a10, a11, a12, a13, a14);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,llvm::Metadata *,unsigned int,llvm::Metadata *,BOOL,BOOL,llvm::Metadata *,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, int *a7, uint64_t *a8, char *a9, char *a10, uint64_t *a11, uint64_t *a12)
{
  v20 = a2;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v20, a3, a4, *a5);
  v21 = v20;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v21, v17, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::Metadata *,BOOL,BOOL,llvm::Metadata *,llvm::Metadata *>(a1, v21, v18, a4, a7, a8, a9, a10, a11, a12);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::Metadata *,BOOL,BOOL,llvm::Metadata *,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, uint64_t *a6, char *a7, char *a8, uint64_t *a9, uint64_t *a10)
{
  v18 = a2;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v18, a3, a4, *a5);
  v19 = v18;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v15, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<BOOL,BOOL,llvm::Metadata *,llvm::Metadata *>(a1, v19, v16, a4, a7, a8, a9, a10);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<BOOL,BOOL,llvm::Metadata *,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _BYTE *a3, char *a4, char *a5, char *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(a1, v17, v14, a4, a7, a8);
}

BOOL llvm::MDNodeKeyImpl<llvm::DIGlobalVariable>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 16;
  v3 = *(a2 - 16);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 32);
  }

  else
  {
    v4 = (v2 - 8 * ((v3 >> 2) & 0xF));
  }

  if (*a1 != *v4 || *(a1 + 8) != v4[1] || *(a1 + 16) != v4[5] || *(a1 + 24) != v4[2] || *(a1 + 32) != *(a2 + 16))
  {
    return 0;
  }

  v5 = (v3 & 2) != 0 ? *(a2 - 32) : v2 - 8 * ((v3 >> 2) & 0xF);
  if (*(a1 + 40) != *(v5 + 24) || *(a1 + 48) != *(a2 + 24) || *(a1 + 49) != *(a2 + 25))
  {
    return 0;
  }

  v6 = (v3 & 2) != 0 ? *(a2 - 32) : v2 - 8 * ((v3 >> 2) & 0xF);
  if (*(a1 + 56) != *(v6 + 48) || *(a1 + 64) != *(v6 + 56) || *(a1 + 72) != *(a2 + 20))
  {
    return 0;
  }

  if ((v3 & 2) != 0)
  {
    v7 = *(a2 - 32);
  }

  else
  {
    v7 = v2 - 8 * ((v3 >> 2) & 0xF);
  }

  return *(a1 + 80) == *(v7 + 64);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::LookupBucketFor<llvm::DIGlobalVariable *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::InsertIntoBucketImpl<llvm::DIGlobalVariable *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::LookupBucketFor<llvm::DIGlobalVariable *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DIGlobalVariable>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DIGlobalVariable>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DIGlobalVariable>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
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

  *result = *v4;
  if ((*v2 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 8) = v5[1];
  if ((*v2 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 16) = v6[5];
  if ((*v2 & 2) != 0)
  {
    v7 = *(a2 - 32);
  }

  else
  {
    v7 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 24) = v7[2];
  *(result + 32) = *(a2 + 16);
  v8 = *(a2 - 16);
  if ((v8 & 2) != 0)
  {
    v9 = *(a2 - 32);
  }

  else
  {
    v9 = &v2[-((v8 >> 2) & 0xF)];
  }

  *(result + 40) = v9[3];
  *(result + 48) = *(a2 + 24);
  v10 = *(a2 - 16);
  if ((v10 & 2) != 0)
  {
    v11 = *(a2 - 32);
  }

  else
  {
    v11 = &v2[-((v10 >> 2) & 0xF)];
  }

  *(result + 56) = v11[6];
  if ((*v2 & 2) != 0)
  {
    v12 = *(a2 - 32);
  }

  else
  {
    v12 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 64) = v12[7];
  *(result + 72) = *(a2 + 20);
  v13 = *(a2 - 16);
  if ((v13 & 2) != 0)
  {
    v14 = *(a2 - 32);
  }

  else
  {
    v14 = &v2[-((v13 >> 2) & 0xF)];
  }

  *(result + 80) = v14[8];
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::InsertIntoBucketImpl<llvm::DIGlobalVariable *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::LookupBucketFor<llvm::DIGlobalVariable *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::LookupBucketFor<llvm::DIGlobalVariable *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILocalVariable>>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DILocalVariable>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DILocalVariable>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DILocalVariable>::getHashValue(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = (a1 + 40);
  v4 = (a1 + 44);
  v5 = (a1 + 56);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v8);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,llvm::MDString *,llvm::Metadata *,unsigned int,llvm::Metadata *,unsigned int,unsigned int,llvm::Metadata *>(v8, 0, v8, v9, a1, (a1 + 8), (a1 + 16), (a1 + 24), v2, v3, v4, v5);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,llvm::MDString *,llvm::Metadata *,unsigned int,llvm::Metadata *,unsigned int,unsigned int,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int *a8, uint64_t *a9, int *a10, int *a11, uint64_t *a12)
{
  v20 = a2;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v20, a3, a4, *a5);
  v21 = v20;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v21, v17, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,unsigned int,llvm::Metadata *,unsigned int,unsigned int,llvm::Metadata *>(a1, v21, v18, a4, a7, a8, a9, a10, a11, a12);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,unsigned int,llvm::Metadata *,unsigned int,unsigned int,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, int *a6, uint64_t *a7, int *a8, int *a9, uint64_t *a10)
{
  v18 = a2;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, a3, a4, *a5);
  v19 = v18;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v19, v15, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,unsigned int,unsigned int,llvm::Metadata *>(a1, v19, v16, a4, a7, a8, a9, a10);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,unsigned int,unsigned int,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, int *a6, int *a7, uint64_t *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<int,llvm::hash_code>(a1, v17, v14, a4, a7, a8);
}

BOOL llvm::MDNodeKeyImpl<llvm::DILocalVariable>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 16;
  v3 = *(a2 - 16);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 32);
  }

  else
  {
    v4 = (v2 - 8 * ((v3 >> 2) & 0xF));
  }

  if (*a1 != *v4 || *(a1 + 8) != v4[1] || *(a1 + 16) != v4[2] || *(a1 + 24) != *(a2 + 16))
  {
    return 0;
  }

  v5 = (v3 & 2) != 0 ? *(a2 - 32) : v2 - 8 * ((v3 >> 2) & 0xF);
  if (*(a1 + 32) != *(v5 + 24) || *(a1 + 40) != *(a2 + 24) || *(a1 + 44) != *(a2 + 28) || *(a1 + 48) != *(a2 + 20))
  {
    return 0;
  }

  if ((v3 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = v2 - 8 * ((v3 >> 2) & 0xF);
  }

  return *(a1 + 56) == *(v6 + 32);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::LookupBucketFor<llvm::DILocalVariable *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::InsertIntoBucketImpl<llvm::DILocalVariable *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::LookupBucketFor<llvm::DILocalVariable *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DILocalVariable>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DILocalVariable>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DILocalVariable>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
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

  *result = *v4;
  if ((*v2 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 8) = v5[1];
  if ((*v2 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 16) = v6[2];
  *(result + 24) = *(a2 + 16);
  v7 = *(a2 - 16);
  if ((v7 & 2) != 0)
  {
    v8 = *(a2 - 32);
  }

  else
  {
    v8 = &v2[-((v7 >> 2) & 0xF)];
  }

  *(result + 32) = v8[3];
  v9 = *(a2 + 28);
  *(result + 40) = *(a2 + 24);
  *(result + 44) = v9;
  *(result + 48) = *(a2 + 20);
  v10 = *(a2 - 16);
  if ((v10 & 2) != 0)
  {
    v11 = *(a2 - 32);
  }

  else
  {
    v11 = &v2[-((v10 >> 2) & 0xF)];
  }

  *(result + 56) = v11[4];
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::InsertIntoBucketImpl<llvm::DILocalVariable *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::LookupBucketFor<llvm::DILocalVariable *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::LookupBucketFor<llvm::DILocalVariable *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILabel>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DILabel>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DILabel>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DILabel>::getHashValue(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v4);
  v4 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayType *,unsigned int>(&v4, 0, v5, v6, a1 + 1, a1 + 6);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::MDNodeKeyImpl<llvm::DILabel>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a2 - 32);
  }

  else
  {
    v3 = (a2 - 16 - 8 * ((v2 >> 2) & 0xF));
  }

  return *a1 == *v3 && *(a1 + 8) == v3[1] && *(a1 + 16) == v3[2] && *(a1 + 24) == *(a2 + 16);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::LookupBucketFor<llvm::DILabel *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::InsertIntoBucketImpl<llvm::DILabel *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::LookupBucketFor<llvm::DILabel *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DILabel>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DILabel>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DILabel>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
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

  *result = *v4;
  if ((*v2 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 8) = v5[1];
  if ((*v2 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 16) = v6[2];
  *(result + 24) = *(a2 + 16);
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::InsertIntoBucketImpl<llvm::DILabel *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::LookupBucketFor<llvm::DILabel *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::LookupBucketFor<llvm::DILabel *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIExpression>>(uint64_t *a1, uint64_t a2, uint64_t **a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = 0;
    v9 = v5 - 1;
    v10 = v9 & llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a2, *a2 + 8 * *(a2 + 8), a3, a4);
    for (i = 1; ; ++i)
    {
      v12 = (v7 + 8 * v10);
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIExpression>::isKeyOf(a2, v13))
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
        v8 = (v7 + 8 * v10);
      }

      v15 = v10 + i;
      v10 = v15 & v9;
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

BOOL llvm::MDNodeKeyImpl<llvm::DIExpression>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 16);
  return v3 == (*(a2 + 24) - v4) >> 3 && memcmp(*a1, v4, 8 * v3) == 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::LookupBucketFor<llvm::DIExpression *>(a1, a2, &v11, a3);
  v8 = v11;
  if (result)
  {
    v9 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::InsertIntoBucketImpl<llvm::DIExpression *>(a1, a2, a2, v11);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::LookupBucketFor<llvm::DIExpression *>(uint64_t *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*(*a2 + 16), *(*a2 + 24), a3, a4);
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::InsertIntoBucketImpl<llvm::DIExpression *>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

  llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::LookupBucketFor<llvm::DIExpression *>(a1, a3, &v10, v9);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::moveFromOldBuckets(a1, v4, &v4[v3], v10);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3, unint64_t *a4)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::LookupBucketFor<llvm::DIExpression *>(v6, a2, &v15, a4);
      *v15 = *a2;
      ++*(v6 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIGlobalVariableExpression>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v17);
    v7 = 0;
    v8 = v4 - 1;
    v9 = v8 & llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v17, 0, v17, v18, a2, a2 + 1);
    for (i = 1; ; ++i)
    {
      v11 = (v6 + 8 * v9);
      v12 = *v11;
      if ((*v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIGlobalVariableExpression>::isKeyOf(a2, v12))
        {
          result = 1;
          goto LABEL_18;
        }

        v12 = *v11;
      }

      if (v12 == -4096)
      {
        break;
      }

      if (v7)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12 == -8192;
      }

      if (v13)
      {
        v7 = (v6 + 8 * v9);
      }

      v14 = v9 + i;
      v9 = v14 & v8;
    }

    result = 0;
    if (v7)
    {
      v11 = v7;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
  }

LABEL_18:
  *a3 = v11;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::MDNodeKeyImpl<llvm::DIGlobalVariableExpression>::isKeyOf(void *a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a2 - 32);
  }

  else
  {
    v3 = (a2 - 16 - 8 * ((v2 >> 2) & 0xF));
  }

  return *a1 == *v3 && a1[1] == v3[1];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::LookupBucketFor<llvm::DIGlobalVariableExpression *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::InsertIntoBucketImpl<llvm::DIGlobalVariableExpression *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::LookupBucketFor<llvm::DIGlobalVariableExpression *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>::getHashValue(*a2);
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

unint64_t llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>::getHashValue(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 - 16);
  if ((v1 & 2) != 0)
  {
    v2 = *(a1 - 32);
  }

  else
  {
    v2 = (a1 - 16 - 8 * ((v1 >> 2) & 0xF));
  }

  *v5 = *v2;
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v6);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v6, 0, v6, v7, v5, &v5[1]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::InsertIntoBucketImpl<llvm::DIGlobalVariableExpression *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::LookupBucketFor<llvm::DIGlobalVariableExpression *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::LookupBucketFor<llvm::DIGlobalVariableExpression *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIObjCProperty>>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DIObjCProperty>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIObjCProperty>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DIObjCProperty>::getHashValue(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 5);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v5);
  v5 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,unsigned int,llvm::MDString *,llvm::MDString *,unsigned int,llvm::Metadata *>(&v5, 0, v6, v7, a1 + 1, a1 + 4, a1 + 3, a1 + 4, v2, a1 + 6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,unsigned int,llvm::MDString *,llvm::MDString *,unsigned int,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, int *a6, uint64_t *a7, uint64_t *a8, int *a9, uint64_t *a10)
{
  v18 = a2;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, a3, a4, *a5);
  v19 = v18;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v19, v15, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,llvm::MDString *,unsigned int,llvm::Metadata *>(a1, v19, v16, a4, a7, a8, a9, a10);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::MDString *,llvm::MDString *,unsigned int,llvm::Metadata *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, int *a7, uint64_t *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<int,llvm::hash_code>(a1, v17, v14, a4, a7, a8);
}

BOOL llvm::MDNodeKeyImpl<llvm::DIObjCProperty>::isKeyOf(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 16;
  v3 = *(a2 - 16);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 32);
  }

  else
  {
    v4 = (v2 - 8 * ((v3 >> 2) & 0xF));
  }

  if (*a1 != *v4 || *(a1 + 8) != v4[1] || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = (v3 & 2) != 0 ? *(a2 - 32) : v2 - 8 * ((v3 >> 2) & 0xF);
  if (*(a1 + 24) != *(v5 + 16) || *(a1 + 32) != *(v5 + 24) || *(a1 + 40) != *(a2 + 20))
  {
    return 0;
  }

  if ((v3 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = v2 - 8 * ((v3 >> 2) & 0xF);
  }

  return *(a1 + 48) == *(v6 + 32);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::LookupBucketFor<llvm::DIObjCProperty *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::InsertIntoBucketImpl<llvm::DIObjCProperty *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::LookupBucketFor<llvm::DIObjCProperty *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DIObjCProperty>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DIObjCProperty>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DIObjCProperty>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
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

  *result = *v4;
  if ((*v2 & 2) != 0)
  {
    v5 = *(a2 - 32);
  }

  else
  {
    v5 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 8) = v5[1];
  *(result + 16) = *(a2 + 16);
  v6 = *(a2 - 16);
  if ((v6 & 2) != 0)
  {
    v7 = *(a2 - 32);
  }

  else
  {
    v7 = &v2[-((v6 >> 2) & 0xF)];
  }

  *(result + 24) = v7[2];
  if ((*v2 & 2) != 0)
  {
    v8 = *(a2 - 32);
  }

  else
  {
    v8 = &v2[-((*v2 >> 2) & 0xFLL)];
  }

  *(result + 32) = v8[3];
  *(result + 40) = *(a2 + 20);
  v9 = *(a2 - 16);
  if ((v9 & 2) != 0)
  {
    v10 = *(a2 - 32);
  }

  else
  {
    v10 = &v2[-((v9 >> 2) & 0xF)];
  }

  *(result + 48) = v10[4];
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::InsertIntoBucketImpl<llvm::DIObjCProperty *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::LookupBucketFor<llvm::DIObjCProperty *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::LookupBucketFor<llvm::DIObjCProperty *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIImportedEntity>>(uint64_t *a1, int *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DIImportedEntity>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DIImportedEntity>::isKeyOf(a2, v13))
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