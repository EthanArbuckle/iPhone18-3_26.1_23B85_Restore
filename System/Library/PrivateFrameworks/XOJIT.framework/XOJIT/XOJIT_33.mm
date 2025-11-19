void llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::initEmpty(uint64_t *a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  llvm::detail::IEEEFloat::IEEEFloat(v7, &llvm::semBogus, 1);
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = 40 * v2;
    v5 = (v3 + 8);
    do
    {
      v5 = (llvm::APFloat::Storage::Storage(v5, v7) + 40);
      v4 -= 40;
    }

    while (v4);
  }

  llvm::APFloat::Storage::~Storage(v7);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  result = a3;
  v5 = (a4 + 8);
  do
  {
    v6 = v5 - 1;
    v7 = *a2;
    if (*(v5 - 1))
    {
      v8 = *v5;
      *v5[1] = *v5;
      if (v8)
      {
        *(v8 + 16) = v5[1];
      }
    }

    *v6 = v7;
    if (v7)
    {
      v11 = *(v7 + 8);
      v9 = (v7 + 8);
      v10 = v11;
      *v5 = v11;
      if (v11)
      {
        *(v10 + 16) = v5;
      }

      v5[1] = v9;
      *v9 = v6;
    }

    ++a2;
    v5 += 4;
  }

  while (a2 != a3);
  return result;
}

unint64_t llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*(a1 + 8), *(a1 + 8) + 8 * *(a1 + 16), a3, a4);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v8);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayType *,unsigned int>(v8, 0, v8, v9, a1, &v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::ConstantUniqueMap<llvm::ConstantArray>::create(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v10 = llvm::User::operator new(0x18, a4);
  *v10 = a2;
  v10[1] = 0;
  v11 = *(v10 + 5) & 0xC0000000 | a4 & 0x7FFFFFF;
  *(v10 + 4) = 8;
  *(v10 + 5) = v11;
  std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(v14, a3, &a3[a4], &v10[-4 * (a4 & 0x7FFFFFF)]);
  v15[0] = v10;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::insert_as<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, v15, a5, v14);
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayType *,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(uint64_t *a1, void *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    v7 = v4 - 1;
    v8 = *a2 & (v4 - 1);
    v9 = (*a1 + 8 * v8);
    if (llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::isEqual(a2, *v9))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -4096)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -8192;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = (v6 + 8 * v8);
        isEqual = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::isEqual(a2, *v9);
        v11 = v17;
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

BOOL llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::isEqual(void *a1, uint64_t a2)
{
  if ((a2 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    return 0;
  }

  if (a1[1] != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  if (v2 != (*(a2 + 20) & 0x7FFFFFF))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = a1[2];
  v4 = (a2 - 32 * v2);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4;
    v4 += 4;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::insert_as<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, a3, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::InsertIntoBucketImpl<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, a2, a3, v12);
    v9 = result;
    *result = *a2;
    v10 = 1;
  }

  v11 = *a1 + 8 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::InsertIntoBucketImpl<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

  llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::grow(uint64_t a1, int a2)
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
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = v13 + 0x1FFFFFFFFFFFFFFFLL;
      v16 = v15 & 0x1FFFFFFFFFFFFFFFLL;
      v17 = (v15 & 0x1FFFFFFFFFFFFFFFLL) - (v15 & 1) + 2;
      v18 = vdupq_n_s64(v16);
      v19 = result + 8;
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_2750C1210)));
        if (v20.i8[0])
        {
          *(v19 - 1) = -4096;
        }

        if (v20.i8[4])
        {
          *v19 = -4096;
        }

        v14 += 2;
        v19 += 2;
      }

      while (v17 != v14);
    }

    if (v3)
    {
      v21 = &v4[v3];
      v22 = v4;
      do
      {
        if ((*v22 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v23 = *a1;
          v24 = *(a1 + 16);
          HashValue = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(*v22, v10, v11, v12);
          v26 = v24 - 1;
          v27 = *v22;
          v28 = HashValue & (v24 - 1);
          v29 = &v23[v28];
          v30 = *v29;
          if (*v22 != *v29)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v29;
              }

              v34 = v28 + v32++;
              v28 = v34 & v26;
              v29 = &v23[v34 & v26];
              v30 = *v29;
              if (v27 == *v29)
              {
                goto LABEL_16;
              }
            }

            if (v31)
            {
              v29 = v31;
            }
          }

LABEL_16:
          *v29 = v27;
          ++*(a1 + 8);
        }

        ++v22;
      }

      while (v22 != v21);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v35 = *(a1 + 16);
  if (v35)
  {
    v36 = 0;
    v37 = v35 + 0x1FFFFFFFFFFFFFFFLL;
    v38 = v37 & 0x1FFFFFFFFFFFFFFFLL;
    v39 = (v37 & 0x1FFFFFFFFFFFFFFFLL) - (v37 & 1) + 2;
    v40 = vdupq_n_s64(v38);
    v41 = result + 8;
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v36), xmmword_2750C1210)));
      if (v42.i8[0])
      {
        *(v41 - 1) = -4096;
      }

      if (v42.i8[4])
      {
        *v41 = -4096;
      }

      v36 += 2;
      v41 += 2;
    }

    while (v39 != v36);
  }

  return result;
}

unint64_t llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v17[32] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x2000000000;
  v4 = *a1;
  v5 = *(a1 + 5);
  v6 = v5 & 0x7FFFFFF;
  if ((v5 & 0x7FFFFFF) != 0)
  {
    v8 = a1;
    do
    {
      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v15, v8[-4 * (*(a1 + 5) & 0x7FFFFFF)]);
      v8 += 4;
      --v6;
    }

    while (v6);
    v9 = v15;
    v10 = v16;
  }

  else
  {
    v10 = 0;
    v9 = v17;
  }

  v14[0] = v4;
  v14[1] = v9;
  v14[2] = v10;
  HashValue = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(v14, a2, a3, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  v12 = *MEMORY[0x277D85DE8];
  return HashValue;
}

uint64_t getFPSequenceIfElementsMatch<llvm::ConstantDataArray,unsigned long long>(uint64_t ****a1, uint64_t a2)
{
  v17[16] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x1000000000;
  if (a2)
  {
    v3 = 8 * a2;
    v4 = a1;
    do
    {
      if (*v4)
      {
        v5 = *(*v4 + 16) == 17;
      }

      else
      {
        v5 = 0;
      }

      if (!v5)
      {
        Impl = 0;
        goto LABEL_15;
      }

      llvm::APFloat::bitcastToAPInt(&v13, (*v4 + 3));
      LimitedValue = llvm::APInt::getLimitedValue(&v13, 0xFFFFFFFFFFFFFFFFLL);
      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v15, LimitedValue);
      if (v14 >= 0x41 && v13)
      {
        MEMORY[0x277C69E10](v13, 0x1000C8000313F17);
      }

      ++v4;
      v3 -= 8;
    }

    while (v3);
    v7 = v15;
    v8 = v16;
  }

  else
  {
    v8 = 0;
    v7 = v17;
  }

  llvm::ArrayType::get(**a1, v8);
  Impl = llvm::ConstantDataSequential::getImpl(v7, (8 * v8), v9);
LABEL_15:
  if (v15 != v17)
  {
    free(v15);
  }

  v11 = *MEMORY[0x277D85DE8];
  return Impl;
}

void *llvm::ConstantUniqueMap<llvm::ConstantStruct>::create(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v10 = llvm::User::operator new(0x18, a4);
  *v10 = a2;
  v10[1] = 0;
  v11 = *(v10 + 5) & 0xC0000000 | a4 & 0x7FFFFFF;
  *(v10 + 4) = 9;
  *(v10 + 5) = v11;
  std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(v14, a3, &a3[a4], &v10[-4 * (a4 & 0x7FFFFFF)]);
  v15[0] = v10;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::insert_as<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, v15, a5, v14);
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

void *llvm::ConstantUniqueMap<llvm::ConstantVector>::create(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v10 = llvm::User::operator new(0x18, a4);
  *v10 = a2;
  v10[1] = 0;
  v11 = *(v10 + 5) & 0xC0000000 | a4 & 0x7FFFFFF;
  *(v10 + 4) = 10;
  *(v10 + 5) = v11;
  std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(v14, a3, &a3[a4], &v10[-4 * (a4 & 0x7FFFFFF)]);
  v15[0] = v10;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::insert_as<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, v15, a5, v14);
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t getFPSequenceIfElementsMatch<llvm::ConstantDataVector,unsigned long long>(uint64_t ****a1, uint64_t a2)
{
  v17[16] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x1000000000;
  if (a2)
  {
    v3 = 8 * a2;
    v4 = a1;
    do
    {
      if (*v4)
      {
        v5 = *(*v4 + 16) == 17;
      }

      else
      {
        v5 = 0;
      }

      if (!v5)
      {
        Impl = 0;
        goto LABEL_15;
      }

      llvm::APFloat::bitcastToAPInt(&v13, (*v4 + 3));
      LimitedValue = llvm::APInt::getLimitedValue(&v13, 0xFFFFFFFFFFFFFFFFLL);
      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v15, LimitedValue);
      if (v14 >= 0x41 && v13)
      {
        MEMORY[0x277C69E10](v13, 0x1000C8000313F17);
      }

      ++v4;
      v3 -= 8;
    }

    while (v3);
    v7 = v15;
    v8 = v16;
  }

  else
  {
    v8 = 0;
    v7 = v17;
  }

  llvm::FixedVectorType::get(**a1, v8);
  Impl = llvm::ConstantDataSequential::getImpl(v7, (8 * v8), v9);
LABEL_15:
  if (v15 != v17)
  {
    free(v15);
  }

  v11 = *MEMORY[0x277D85DE8];
  return Impl;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::InsertIntoBucketImpl<llvm::Type *>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::InsertIntoBucketImpl<llvm::Type *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::grow(uint64_t a1, int a2)
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
        if ((*(v18 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, v18 - 1, &v30);
          v20 = v30;
          *v30 = *(v18 - 1);
          v21 = *v18;
          *v18 = 0;
          v20[1] = v21;
          ++*(a1 + 8);
          std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v18, 0);
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

void *llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::LookupBucketFor<std::pair<llvm::Function const*,llvm::BasicBlock const*>>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::InsertIntoBucketImpl<std::pair<llvm::Function const*,llvm::BasicBlock const*>>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = a2[1];
    v5[2] = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::LookupBucketFor<std::pair<llvm::Function const*,llvm::BasicBlock const*>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>::getHashValue(a2);
    v8 = v4 - 1;
    v9 = *(a2 + 8);
    v10 = HashValue & (v4 - 1);
    v11 = (v6 + 24 * v10);
    v12 = *v11;
    v13 = v11[1];
    if (*a2 == *v11 && v9 == v13)
    {
      result = 1;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v12 != -4096 || v13 != -4096)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13 == -8192;
        }

        if (v18 && v12 == -8192)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v8;
        v11 = (v6 + 24 * (v20 & v8));
        v12 = *v11;
        v13 = v11[1];
        if (*a2 == *v11 && v9 == v13)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }
    }
  }

  else
  {
    v11 = 0;
    result = 0;
  }

LABEL_9:
  *a3 = v11;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::InsertIntoBucketImpl<std::pair<llvm::Function const*,llvm::BasicBlock const*>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_8;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_8:
    llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::grow(a1, v7);
    v9 = 0;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::LookupBucketFor<std::pair<llvm::Function const*,llvm::BasicBlock const*>>(a1, a3, &v9);
    a4 = v9;
  }

  ++*(a1 + 8);
  if (*a4 != -4096 || a4[1] != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

_OWORD *llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::grow(uint64_t a1, int a2)
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
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      v12 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      do
      {
        *result = v12;
        result = (result + 24);
        v11 -= 24;
      }

      while (v11);
    }

    if (v3)
    {
      v13 = 24 * v3;
      v14 = v4;
      do
      {
        v15 = v14[1];
        if ((*v14 != -4096 || v15 != -4096) && (*v14 != -8192 || v15 != -8192))
        {
          v20 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::LookupBucketFor<std::pair<llvm::Function const*,llvm::BasicBlock const*>>(a1, v14, &v20);
          v16 = v20;
          *v20 = *v14;
          v16[1] = v14[1];
          v16[2] = v14[2];
          ++*(a1 + 8);
        }

        v14 += 3;
        v13 -= 24;
      }

      while (v13);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 24 * v17;
    v19 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    do
    {
      *result = v19;
      result = (result + 24);
      v18 -= 24;
    }

    while (v18);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::InsertIntoBucketImpl<llvm::GlobalValue const*>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::InsertIntoBucketImpl<llvm::GlobalValue const*>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::grow(uint64_t a1, int a2)
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
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, v19, &v29);
          v20 = v29;
          *v29 = *v19;
          v20[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0xFFFFFFFFFFFFFFFLL;
    v24 = v23 & 0xFFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0xFFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 16;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_2750C1210)));
      if (v28.i8[0])
      {
        *(v27 - 2) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 4;
    }

    while (v25 != v22);
  }

  return result;
}

unint64_t llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo::getHashValue(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  Hash = llvm::ConstantExprKeyType::getHash((a1 + 1), a2, a3, a4);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v8);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayType *,unsigned int>(v8, 0, v8, v9, a1, &Hash);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::ConstantExprKeyType::getHash(llvm::ConstantExprKeyType *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*(this + 1), *(this + 1) + 8 * *(this + 2), a3, a4);
  v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*(this + 3), *(this + 3) + 4 * *(this + 4), v5, v6);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v11);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned char,unsigned short,llvm::hash_code,llvm::hash_code,llvm::Type *>(v11, 0, v11, v12, this, this + 1, this + 1, &v10, &v9, this + 5);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned char,unsigned short,llvm::hash_code,llvm::hash_code,llvm::Type *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _BYTE *a3, char *a4, char *a5, char *a6, __int16 *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v18 = a2;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v18, a3, a4, *a5);
  v19 = v18;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v19, v15, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned short,llvm::hash_code,llvm::hash_code,llvm::Type *>(a1, v19, v16, a4, a7, a8, a9, a10);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned short,llvm::hash_code,llvm::hash_code,llvm::Type *>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _WORD *a3, char *a4, __int16 *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned short>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(a1, v17, v14, a4, a7, a8);
}

_WORD *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned short>(uint64_t a1, uint64_t *a2, _WORD *__dst, unint64_t a4, __int16 a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v9, v10, v14);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 2 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 2 - v8);
      a1 += 2 - v8;
    }
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = 0;
    v7 = *a1;
    v9 = (a2 + 16);
    v8 = *a2;
    v10 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v12 = v8 & v10;
      v13 = (v7 + 8 * (v8 & v10));
      v14 = *v13;
      if ((*v13 | 0x1000) != 0xFFFFFFFFFFFFF000 && *(a2 + 8) == *v14)
      {
        if (llvm::ConstantExprKeyType::operator==(v9, v14))
        {
          result = 1;
          goto LABEL_18;
        }

        v14 = *v13;
      }

      if (v14 == -4096)
      {
        break;
      }

      if (v6)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14 == -8192;
      }

      if (v15)
      {
        v6 = (v7 + 8 * v12);
      }

      v8 = v12 + i;
    }

    result = 0;
    if (v6)
    {
      v13 = v6;
    }
  }

  else
  {
    v13 = 0;
    result = 0;
  }

LABEL_18:
  *a3 = v13;
  return result;
}

BOOL llvm::ConstantExprKeyType::operator==(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 18);
  if (v2 != *a1)
  {
    return 0;
  }

  if (a1[1] != *(a2 + 17) >> 1)
  {
    return 0;
  }

  v5 = *(a1 + 2);
  if (v5 != (*(a2 + 20) & 0x7FFFFFF))
  {
    return 0;
  }

  v6 = (v2 - 53) > 1 ? 0 : *(a2 + 24);
  if (v6 != *(a1 + 1))
  {
    return 0;
  }

  if (v5)
  {
    v7 = *(a1 + 1);
    v8 = (a2 - 32 * v5);
    while (*v7 == *v8)
    {
      ++v7;
      v8 += 4;
      if (!--v5)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

LABEL_12:
  v9 = *(a1 + 4);
  if (v2 == 63)
  {
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (v9 != v11 || memcmp(*(a1 + 3), v10, 4 * v9))
  {
    return 0;
  }

  if (v2 == 34)
  {
    v13 = *(a2 + 24);
  }

  else
  {
    v13 = 0;
  }

  return *(a1 + 5) == v13;
}

void *llvm::ConstantExprKeyType::create(llvm::ConstantExprKeyType *this, llvm::Type *a2)
{
  v4 = *this;
  if (v4 <= 0x3C)
  {
    if (v4 != 34)
    {
      if (v4 == 53)
      {
        v62 = operator new(0x60uLL);
        v6 = v62 + 64;
        *(v62 + 21) = *(v62 + 21) & 0x38000000 | 2;
        *v62 = 0;
        *(v62 + 1) = 0;
        *(v62 + 2) = 0;
        *(v62 + 3) = v62 + 64;
        *(v62 + 4) = 0;
        *(v62 + 5) = 0;
        *(v62 + 6) = 0;
        *(v62 + 7) = v62 + 64;
        v7 = *(this + 1);
        v63 = *(this + 1);
        v9 = *v63;
        v10 = v63[1];
        v11 = (v62 + 64);
        v12 = a2;
        v13 = 53;
        goto LABEL_42;
      }

      if (v4 == 54)
      {
        v5 = operator new(0x60uLL);
        v6 = v5 + 64;
        *(v5 + 21) = *(v5 + 21) & 0x38000000 | 2;
        *v5 = 0;
        *(v5 + 1) = 0;
        *(v5 + 2) = 0;
        *(v5 + 3) = v5 + 64;
        *(v5 + 4) = 0;
        *(v5 + 5) = 0;
        *(v5 + 6) = 0;
        *(v5 + 7) = v5 + 64;
        v7 = *(this + 1);
        v8 = *(this + 1);
        v9 = *v8;
        v10 = v8[1];
        v11 = (v5 + 64);
        v12 = a2;
        v13 = 54;
LABEL_42:
        llvm::CompareConstantExpr::CompareConstantExpr(v11, v12, v13, v7, v9, v10);
        return v6;
      }

      goto LABEL_36;
    }

    TypeAtIndex = *(this + 5);
    v33 = *(this + 1);
    v34 = *(this + 2);
    v35 = v33 + 1;
    v36 = *v33;
    v37 = *(this + 1);
    v6 = llvm::User::operator new(0x28, v34);
    *v6 = a2;
    v6[1] = 0;
    v39 = *(v6 + 5) & 0xC0000000 | v34 & 0x7FFFFFF;
    *(v6 + 4) = 2228229;
    *(v6 + 5) = v39;
    v6[3] = TypeAtIndex;
    if (v34 == 1)
    {
      v43 = 1;
    }

    else
    {
      v40 = (v33 + 2);
      v41 = 8 * v34 - 16;
      do
      {
        if (!v41)
        {
          break;
        }

        v42 = *v40++;
        TypeAtIndex = llvm::GetElementPtrInst::getTypeAtIndex(TypeAtIndex, v42, v38);
        v41 -= 8;
      }

      while (TypeAtIndex);
      v43 = *(v6 + 5) & 0x7FFFFFF;
    }

    v6[4] = TypeAtIndex;
    v99 = &v6[-4 * v43];
    if (*v99)
    {
      v100 = v99[1];
      *v99[2] = v100;
      if (v100)
      {
        *(v100 + 16) = v99[2];
      }
    }

    *v99 = v36;
    if (v36)
    {
      v103 = *(v36 + 8);
      v102 = (v36 + 8);
      v101 = v103;
      v99[1] = v103;
      if (v103)
      {
        *(v101 + 16) = v99 + 1;
      }

      v99[2] = v102;
      *v102 = v99;
    }

    v104 = *(v6 + 5);
    if ((v104 & 0x40000000) != 0)
    {
      v105 = *(v6 - 1);
      if (v34 == 1)
      {
LABEL_95:
        *(v6 + 17) = *(v6 + 17) & 1 | (2 * v37);
        return v6;
      }
    }

    else
    {
      v105 = &v6[-4 * (v104 & 0x7FFFFFF)];
      if (v34 == 1)
      {
        goto LABEL_95;
      }
    }

    v106 = (v34 - 1);
    v107 = v105 + 4;
    do
    {
      v108 = *v35;
      if (*v107)
      {
        v109 = v107[1];
        *v107[2] = v109;
        if (v109)
        {
          *(v109 + 16) = v107[2];
        }
      }

      *v107 = v108;
      if (v108)
      {
        v112 = *(v108 + 8);
        v110 = (v108 + 8);
        v111 = v112;
        v107[1] = v112;
        if (v112)
        {
          *(v111 + 16) = v107 + 1;
        }

        v107[2] = v110;
        *v110 = v107;
      }

      v107 += 4;
      ++v35;
      --v106;
    }

    while (v106);
    goto LABEL_95;
  }

  switch(v4)
  {
    case '=':
      v44 = operator new(0x58uLL);
      v6 = v44 + 64;
      *(v44 + 21) = *(v44 + 21) & 0x38000000 | 2;
      *v44 = 0;
      *(v44 + 1) = 0;
      *(v44 + 2) = 0;
      *(v44 + 3) = v44 + 64;
      *(v44 + 4) = 0;
      v45 = v44 + 32;
      *(v44 + 5) = 0;
      *(v44 + 6) = 0;
      *(v44 + 7) = v44 + 64;
      v46 = *(this + 1);
      v48 = *v46;
      v47 = *(v46 + 8);
      *(v44 + 8) = *(*v48 + 24);
      *(v44 + 9) = 0;
      v44[80] = 5;
      v44[81] = 0;
      *(v44 + 21) = 2;
      *(v44 + 41) = 61;
      *v44 = v48;
      v51 = v48[1];
      v49 = v48 + 1;
      v50 = v51;
      *(v44 + 1) = v51;
      if (v51)
      {
        *(v50 + 16) = v44 + 8;
      }

      *(v44 + 2) = v49;
      *v49 = v44;
      if (*(v44 + 4))
      {
        v52 = *(v44 + 5);
        **(v44 + 6) = v52;
        if (v52)
        {
          *(v52 + 16) = *(v44 + 6);
        }
      }

      *v45 = v47;
      if (v47)
      {
        v55 = *(v47 + 8);
        v53 = (v47 + 8);
        v54 = v55;
        *(v44 + 5) = v55;
        if (v55)
        {
          *(v54 + 16) = v44 + 40;
        }

        *(v44 + 6) = v53;
        *v53 = v45;
      }

      break;
    case '>':
      v64 = operator new(0x78uLL);
      v65 = 0;
      v6 = v64 + 96;
      *(v64 + 29) = *(v64 + 29) & 0x38000000 | 3;
      do
      {
        v66 = &v64[v65];
        *v66 = 0;
        *(v66 + 1) = 0;
        *(v66 + 2) = 0;
        *(v66 + 3) = v6;
        v65 += 32;
      }

      while (v65 != 96);
      v67 = *(this + 1);
      v69 = *v67;
      v68 = *(v67 + 8);
      v70 = *(v67 + 16);
      *(v64 + 12) = *v69;
      *(v64 + 13) = 0;
      v64[112] = 5;
      v64[113] = 0;
      *(v64 + 29) = *(v64 + 29) & 0xC0000000 | 3;
      *(v64 + 57) = 62;
      if (*v64)
      {
        v71 = *(v64 + 1);
        **(v64 + 2) = v71;
        if (v71)
        {
          *(v71 + 16) = *(v64 + 2);
        }
      }

      *v64 = v69;
      v74 = v69[1];
      v72 = v69 + 1;
      v73 = v74;
      *(v64 + 1) = v74;
      if (v74)
      {
        *(v73 + 16) = v64 + 8;
      }

      *(v64 + 2) = v72;
      *v72 = v64;
      v75 = v64 + 32;
      if (*(v64 + 4))
      {
        v76 = *(v64 + 5);
        **(v64 + 6) = v76;
        if (v76)
        {
          *(v76 + 16) = *(v64 + 6);
        }
      }

      *v75 = v68;
      if (v68)
      {
        v79 = *(v68 + 8);
        v77 = (v68 + 8);
        v78 = v79;
        *(v64 + 5) = v79;
        if (v79)
        {
          *(v78 + 16) = v64 + 40;
        }

        *(v64 + 6) = v77;
        *v77 = v75;
      }

      v80 = v64 + 64;
      if (*(v64 + 8))
      {
        v81 = *(v64 + 9);
        **(v64 + 10) = v81;
        if (v81)
        {
          *(v81 + 16) = *(v64 + 10);
        }
      }

      *v80 = v70;
      if (v70)
      {
        v84 = *(v70 + 8);
        v82 = (v70 + 8);
        v83 = v84;
        *(v64 + 9) = v84;
        if (v84)
        {
          *(v83 + 16) = v64 + 72;
        }

        *(v64 + 10) = v82;
        *v82 = v80;
      }

      break;
    case '?':
      v14 = operator new(0x80uLL);
      v6 = v14 + 64;
      *(v14 + 21) = *(v14 + 21) & 0x38000000 | 2;
      *v14 = 0;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *(v14 + 3) = v14 + 64;
      *(v14 + 4) = 0;
      v15 = v14 + 32;
      *(v14 + 5) = 0;
      *(v14 + 6) = 0;
      *(v14 + 7) = v14 + 64;
      v16 = *(this + 1);
      v18 = *v16;
      v17 = v16[1];
      v20 = *(this + 3);
      v19 = *(this + 4);
      llvm::VectorType::get(*(**v16 + 24), (v19 | ((*(**v16 + 8) == 19) << 32)));
      *(v14 + 8) = v21;
      *(v14 + 9) = 0;
      v22 = *(v14 + 21) & 0xC0000000 | 2;
      *(v14 + 20) = 4128773;
      *(v14 + 21) = v22;
      *(v14 + 11) = v14 + 104;
      *(v14 + 12) = 0x400000000;
      if (*v14)
      {
        v23 = *(v14 + 1);
        **(v14 + 2) = v23;
        if (v23)
        {
          *(v23 + 16) = *(v14 + 2);
        }
      }

      *v14 = v18;
      v26 = *(v18 + 8);
      v25 = (v18 + 8);
      v24 = v26;
      *(v14 + 1) = v26;
      if (v26)
      {
        *(v24 + 16) = v14 + 8;
      }

      *(v14 + 2) = v25;
      *v25 = v14;
      if (*(v14 + 4))
      {
        v27 = *(v14 + 5);
        **(v14 + 6) = v27;
        if (v27)
        {
          *(v27 + 16) = *(v14 + 6);
        }
      }

      *v15 = v17;
      if (v17)
      {
        v30 = *(v17 + 8);
        v29 = (v17 + 8);
        v28 = v30;
        *(v14 + 5) = v30;
        if (v30)
        {
          *(v28 + 16) = v14 + 40;
        }

        *(v14 + 6) = v29;
        *v29 = v15;
      }

      *(v14 + 24) = 0;
      llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(v14 + 22, v20, &v20[v19]);
      *(v14 + 15) = llvm::ShuffleVectorInst::convertShuffleMaskForBitcode(v20, v19, *(v14 + 8), v31);
      break;
    default:
LABEL_36:
      if (v4 - 38 > 0xC)
      {
        v85 = operator new(0x58uLL);
        v6 = v85 + 64;
        *(v85 + 21) = *(v85 + 21) & 0x38000000 | 2;
        *v85 = 0;
        *(v85 + 1) = 0;
        *(v85 + 2) = 0;
        *(v85 + 3) = v85 + 64;
        *(v85 + 4) = 0;
        v86 = v85 + 32;
        *(v85 + 5) = 0;
        *(v85 + 6) = 0;
        *(v85 + 7) = v85 + 64;
        v87 = *this;
        v88 = *(this + 1);
        v90 = *v88;
        v89 = *(v88 + 8);
        v91 = *(this + 1);
        *(v85 + 8) = *v90;
        *(v85 + 9) = 0;
        v85[80] = 5;
        v85[81] = 0;
        *(v85 + 21) = 2;
        *(v85 + 41) = v87;
        *v85 = v90;
        v94 = v90[1];
        v92 = v90 + 1;
        v93 = v94;
        *(v85 + 1) = v94;
        if (v94)
        {
          *(v93 + 16) = v85 + 8;
        }

        *(v85 + 2) = v92;
        *v92 = v85;
        if (*(v85 + 4))
        {
          v95 = *(v85 + 5);
          **(v85 + 6) = v95;
          if (v95)
          {
            *(v95 + 16) = *(v85 + 6);
          }
        }

        *v86 = v89;
        if (v89)
        {
          v98 = *(v89 + 8);
          v96 = (v89 + 8);
          v97 = v98;
          *(v85 + 5) = v98;
          if (v98)
          {
            *(v97 + 16) = v85 + 40;
          }

          *(v85 + 6) = v96;
          *v96 = v86;
        }

        v85[81] = v85[81] & 1 | (2 * v91);
      }

      else
      {
        v56 = operator new(0x38uLL);
        v6 = v56 + 32;
        *(v56 + 13) = *(v56 + 13) & 0x38000000 | 1;
        *v56 = 0;
        *(v56 + 1) = 0;
        *(v56 + 2) = 0;
        *(v56 + 3) = v56 + 32;
        v57 = *this;
        v58 = **(this + 1);
        *(v56 + 4) = a2;
        *(v56 + 5) = 0;
        v56[48] = 5;
        v56[49] = 0;
        *(v56 + 13) = 1;
        *(v56 + 25) = v57;
        *v56 = v58;
        if (v58)
        {
          v61 = *(v58 + 8);
          v59 = (v58 + 8);
          v60 = v61;
          *(v56 + 1) = v61;
          if (v61)
          {
            *(v60 + 16) = v56 + 8;
          }

          *(v56 + 2) = v59;
          *v59 = v56;
        }
      }

      return v6;
  }

  return v6;
}

uint64_t llvm::CompareConstantExpr::CompareConstantExpr(uint64_t result, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 5;
  *(result + 20) = *(result + 20) & 0xC0000000 | 2;
  *(result + 18) = a3;
  *(result + 24) = a4;
  v6 = (result - 64);
  if (*(result - 64))
  {
    v7 = *(result - 56);
    **(result - 48) = v7;
    if (v7)
    {
      *(v7 + 16) = *(result - 48);
    }
  }

  *v6 = a5;
  if (a5)
  {
    v10 = *(a5 + 8);
    v8 = (a5 + 8);
    v9 = v10;
    *(result - 56) = v10;
    if (v10)
    {
      *(v9 + 16) = result - 56;
    }

    *(result - 48) = v8;
    *v8 = v6;
  }

  v11 = (result - 32);
  if (*(result - 32))
  {
    v12 = *(result - 24);
    **(result - 16) = v12;
    if (v12)
    {
      *(v12 + 16) = *(result - 16);
    }
  }

  *v11 = a6;
  if (a6)
  {
    v15 = *(a6 + 8);
    v13 = (a6 + 8);
    v14 = v15;
    *(result - 24) = v15;
    if (v15)
    {
      *(v14 + 16) = result - 24;
    }

    *(result - 16) = v13;
    *v13 = v11;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::insert_as<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(a1, a3, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::InsertIntoBucketImpl<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(a1, a2, a3, v12);
    v9 = result;
    *result = *a2;
    v10 = 1;
  }

  v11 = *a1 + 8 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::InsertIntoBucketImpl<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

  llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::grow(uint64_t a1, int a2)
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
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = v13 + 0x1FFFFFFFFFFFFFFFLL;
      v16 = v15 & 0x1FFFFFFFFFFFFFFFLL;
      v17 = (v15 & 0x1FFFFFFFFFFFFFFFLL) - (v15 & 1) + 2;
      v18 = vdupq_n_s64(v16);
      v19 = result + 8;
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_2750C1210)));
        if (v20.i8[0])
        {
          *(v19 - 1) = -4096;
        }

        if (v20.i8[4])
        {
          *v19 = -4096;
        }

        v14 += 2;
        v19 += 2;
      }

      while (v17 != v14);
    }

    if (v3)
    {
      v21 = &v4[v3];
      v22 = v4;
      do
      {
        if ((*v22 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v23 = *a1;
          v24 = *(a1 + 16);
          HashValue = llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo::getHashValue(*v22, v10, v11, v12);
          v26 = v24 - 1;
          v27 = *v22;
          v28 = HashValue & (v24 - 1);
          v29 = &v23[v28];
          v30 = *v29;
          if (*v22 != *v29)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v29;
              }

              v34 = v28 + v32++;
              v28 = v34 & v26;
              v29 = &v23[v34 & v26];
              v30 = *v29;
              if (v27 == *v29)
              {
                goto LABEL_16;
              }
            }

            if (v31)
            {
              v29 = v31;
            }
          }

LABEL_16:
          *v29 = v27;
          ++*(a1 + 8);
        }

        ++v22;
      }

      while (v22 != v21);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v35 = *(a1 + 16);
  if (v35)
  {
    v36 = 0;
    v37 = v35 + 0x1FFFFFFFFFFFFFFFLL;
    v38 = v37 & 0x1FFFFFFFFFFFFFFFLL;
    v39 = (v37 & 0x1FFFFFFFFFFFFFFFLL) - (v37 & 1) + 2;
    v40 = vdupq_n_s64(v38);
    v41 = result + 8;
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v36), xmmword_2750C1210)));
      if (v42.i8[0])
      {
        *(v41 - 1) = -4096;
      }

      if (v42.i8[4])
      {
        *v41 = -4096;
      }

      v36 += 2;
      v41 += 2;
    }

    while (v39 != v36);
  }

  return result;
}

unint64_t llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo::getHashValue(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v33[32] = *MEMORY[0x277D85DE8];
  v31 = v33;
  v32 = 0x2000000000;
  v5 = *(a1 + 18);
  v6 = *(a1 + 18);
  if ((v5 - 53) > 1)
  {
    if (v5 == 34)
    {
      v7 = 0;
      v8 = 0;
      v10 = 0;
      v9 = *(a1 + 24);
    }

    else if (v5 == 63)
    {
      v10 = 0;
      v9 = 0;
      v8 = *(a1 + 24);
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v10 = 0;
      v9 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 24);
  }

  v11 = *a1;
  v12 = *(a1 + 17) >> 1;
  v13 = *(a1 + 20);
  v14 = v13 & 0x7FFFFFF;
  if ((v13 & 0x7FFFFFF) != 0)
  {
    v15 = v10;
    v16 = a1;
    do
    {
      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v31, *(v16 - 32 * (*(a1 + 20) & 0x7FFFFFF)));
      v16 += 32;
      --v14;
    }

    while (v14);
    v17 = v31;
    v18 = v32;
    v10 = v15;
  }

  else
  {
    v18 = 0;
    v17 = v33;
  }

  v22 = v11;
  v23 = v6;
  v24 = v12;
  v25 = v10;
  v26 = v17;
  v27 = v18;
  v28 = v8;
  v29 = v7;
  v30 = v9;
  HashValue = llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo::getHashValue(&v22, a2, a3, a4);
  if (v31 != v33)
  {
    free(v31);
  }

  v20 = *MEMORY[0x277D85DE8];
  return HashValue;
}

unint64_t **llvm::StringMap<std::unique_ptr<llvm::ConstantDataSequential>,llvm::MallocAllocator>::try_emplace<std::unique_ptr<llvm::ConstantDataSequential>>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3, unint64_t *a4)
{
  v8 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v8);
  v10 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v10)
  {
    while (!v10 || v10 == -8)
    {
      v11 = i[1];
      ++i;
      v10 = v11;
    }

    return i;
  }

  v12 = operator new(a3 + 17, 8uLL);
  v13 = v12;
  v14 = (v12 + 2);
  if (a3)
  {
    memcpy(v12 + 2, a2, a3);
  }

  v14[a3] = 0;
  v15 = *a4;
  *a4 = 0;
  *v13 = a3;
  v13[1] = v15;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

unint64_t *llvm::SmallVectorImpl<unsigned short>::assign(unint64_t *result, unint64_t a2, __int16 a3)
{
  v5 = result;
  if (result[2] >= a2)
  {
    v13 = *result;
    v12 = result + 1;
    v14 = result[1];
    if (v14 >= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = result[1];
    }

    if (v15)
    {
      v16 = 0;
      v17 = vdupq_n_s64(v15 - 1);
      v18 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = (v13 + 8);
      do
      {
        v20 = vdupq_n_s64(v16);
        v21 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v20, xmmword_2750C1210)));
        if (vuzp1_s8(vuzp1_s16(v21, *v17.i8), *v17.i8).u8[0])
        {
          *(v19 - 4) = a3;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v17), *&v17).i8[1])
        {
          *(v19 - 3) = a3;
        }

        if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v20, xmmword_2750C1830)))), *&v17).i8[2])
        {
          *(v19 - 2) = a3;
          *(v19 - 1) = a3;
        }

        v22 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v20, xmmword_2750C4010)));
        if (vuzp1_s8(*&v17, vuzp1_s16(v22, *&v17)).i32[1])
        {
          *v19 = a3;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(v22, *&v17)).i8[5])
        {
          v19[1] = a3;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v20, xmmword_2750C4000))))).i8[6])
        {
          v19[2] = a3;
          v19[3] = a3;
        }

        v16 += 8;
        v19 += 8;
      }

      while (v18 != v16);
    }

    v23 = a2 - v14;
    if (a2 > v14)
    {
      v24 = 0;
      v25 = vdupq_n_s64(v23 - 1);
      v26 = (v13 + 2 * v14 + 8);
      do
      {
        v27 = vdupq_n_s64(v24);
        v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2750C1210)));
        if (vuzp1_s8(vuzp1_s16(v28, *v25.i8), *v25.i8).u8[0])
        {
          *(v26 - 4) = a3;
        }

        if (vuzp1_s8(vuzp1_s16(v28, *&v25), *&v25).i8[1])
        {
          *(v26 - 3) = a3;
        }

        if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2750C1830)))), *&v25).i8[2])
        {
          *(v26 - 2) = a3;
          *(v26 - 1) = a3;
        }

        v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2750C4010)));
        if (vuzp1_s8(*&v25, vuzp1_s16(v29, *&v25)).i32[1])
        {
          *v26 = a3;
        }

        if (vuzp1_s8(*&v25, vuzp1_s16(v29, *&v25)).i8[5])
        {
          v26[1] = a3;
        }

        if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2750C4000))))).i8[6])
        {
          v26[2] = a3;
          v26[3] = a3;
        }

        v24 += 8;
        v26 += 8;
      }

      while (((v23 + 7) & 0xFFFFFFFFFFFFFFF8) != v24);
    }
  }

  else
  {
    result[1] = 0;
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, a2, 2);
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*v5 + 8);
    do
    {
      v9 = vdupq_n_s64(v6);
      v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_2750C1210)));
      if (vuzp1_s8(vuzp1_s16(v10, *v7.i8), *v7.i8).u8[0])
      {
        *(v8 - 4) = a3;
      }

      if (vuzp1_s8(vuzp1_s16(v10, *&v7), *&v7).i8[1])
      {
        *(v8 - 3) = a3;
      }

      if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_2750C1830)))), *&v7).i8[2])
      {
        *(v8 - 2) = a3;
        *(v8 - 1) = a3;
      }

      v11 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_2750C4010)));
      if (vuzp1_s8(*&v7, vuzp1_s16(v11, *&v7)).i32[1])
      {
        *v8 = a3;
      }

      if (vuzp1_s8(*&v7, vuzp1_s16(v11, *&v7)).i8[5])
      {
        v8[1] = a3;
      }

      if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_2750C4000))))).i8[6])
      {
        v8[2] = a3;
        v8[3] = a3;
      }

      v6 += 8;
      v8 += 8;
    }

    while (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != v6);
    v12 = v5 + 1;
  }

  *v12 = a2;
  return result;
}

char *LLVMCreateMemoryBufferWithMemoryRange(uint64_t a1, uint64_t a2, char *__s)
{
  if (__s)
  {
    v6 = strlen(__s);
  }

  else
  {
    v6 = 0;
  }

  v9 = 261;
  v8[0] = __s;
  v8[1] = v6;
  v10 = v8;
  result = operator new(24, &v10);
  *result = &unk_2883EB078;
  *(result + 1) = a1;
  *(result + 2) = a1 + a2;
  return result;
}

uint64_t LLVMDisposeMemoryBuffer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

llvm::StructLayout *llvm::StructLayout::StructLayout(llvm::StructLayout *this, llvm::StructType *a2, unsigned __int8 **a3)
{
  *(this + 8) = 0;
  *this = 0;
  *(this + 9) &= ~1u;
  v4 = *(a2 + 3) & 0x7FFFFFFF;
  *(this + 3) = *(this + 3) & 0x80000000 | v4;
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 8 * v4;
    do
    {
      v10 = *(*(a2 + 2) + v7);
      if ((*(a2 + 9) & 2) != 0)
      {
        Alignment = 0;
      }

      else
      {
        Alignment = llvm::DataLayout::getAlignment(a3, *(*(a2 + 2) + v7), 1);
        v8 = *this;
      }

      v12 = Alignment;
      if ((v8 & ~(-1 << Alignment)) != 0)
      {
        *(this + 9) |= 1u;
        v8 = (v8 + (1 << Alignment) - 1) & -(1 << Alignment);
        *this = v8;
      }

      if (Alignment <= *(this + 8))
      {
        v12 = *(this + 8);
      }

      *(this + 8) = v12;
      *(this + v7 + 16) = v8;
      v8 = *this + llvm::DataLayout::getTypeAllocSize(a3, v10);
      *this = v8;
      v7 += 8;
    }

    while (v9 != v7);
    v13 = *(this + 8);
  }

  else
  {
    v8 = 0;
    v13 = 0;
  }

  if ((v8 & ~(-1 << v13)) != 0)
  {
    *(this + 9) |= 1u;
    *this = (v8 + (1 << v13) - 1) & -(1 << v13);
  }

  return this;
}

void llvm::DataLayout::reset(uint64_t a1, void *a2, size_t a3)
{
  llvm::DataLayout::clear(a1);
  *(a1 + 384) = 0;
  *a1 = 0;
  *(a1 + 4) = 0;
  if (*(a1 + 9) == 1)
  {
    *(a1 + 9) = 0;
  }

  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  if (*(a1 + 21) == 1)
  {
    *(a1 + 21) = 0;
  }

  *(a1 + 24) = 0;
  *(a1 + 400) = 0;
  *(a1 + 208) = 0;
  v6 = &byte_2815AC549;
  v7 = 132;
  *(a1 + 212) = 768;
  do
  {
    llvm::DataLayout::setAlignment(a1, *(v6 - 9), *(v6 - 1), *v6, *(v6 - 5), &v12);
    if (v12)
    {
      v11 = v12;
      v12 = 0;
      v8 = &v11;
      goto LABEL_12;
    }

    v6 += 12;
    v7 -= 12;
  }

  while (v7);
  llvm::DataLayout::setPointerAlignmentInBits(a1, 0, 3u, 3u, 64, 64, &v12);
  if (v12)
  {
    v10 = v12;
    v12 = 0;
    v8 = &v10;
    goto LABEL_12;
  }

  llvm::DataLayout::parseSpecifier(a1, a2, a3, &v12);
  if (v12)
  {
    v9 = v12;
    v12 = 0;
    v8 = &v9;
LABEL_12:
    llvm::report_fatal_error(v8);
  }
}

uint64_t llvm::DataLayout::clear(uint64_t this)
{
  v1 = this;
  *(this + 40) = 0;
  *(this + 72) = 0;
  *(this + 120) = 0;
  *(this + 168) = 0;
  *(this + 248) = 0;
  v2 = *(this + 384);
  if (v2)
  {
    v3 = *v2;
    if (*(v2 + 2))
    {
      v4 = *(v2 + 4);
      v5 = *v2;
      if (v4)
      {
        v6 = 16 * v4;
        v5 = *v2;
        while ((*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v5 += 16;
          v6 -= 16;
          if (!v6)
          {
            goto LABEL_14;
          }
        }
      }

      v7 = v3 + 16 * v4;
      if (v5 != v7)
      {
LABEL_9:
        free(*(v5 + 8));
        while (1)
        {
          v5 += 16;
          if (v5 == v7)
          {
            break;
          }

          if ((*v5 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            if (v5 != v7)
            {
              goto LABEL_9;
            }

            break;
          }
        }

        v3 = *v2;
      }
    }

LABEL_14:
    MEMORY[0x277C69E30](v3, 8);
    this = MEMORY[0x277C69E40](v2, 0x1020C405AF6BDC9);
  }

  *(v1 + 384) = 0;
  return this;
}

_BYTE *llvm::DataLayout::setAlignment@<X0>(_BYTE *result@<X0>, int a2@<W1>, unsigned __int8 a3@<W2>, unsigned __int8 a4@<W3>, unsigned int a5@<W4>, void *a6@<X8>)
{
  if (HIBYTE(a5))
  {
    v7 = "Invalid bit width, must be a 24-bit integer";
LABEL_5:
    v25 = v7;
    v26 = 259;
    getErrorErrorCat();
    llvm::Twine::str(&v25, __p);
    if (v28 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v30 = 3;
    v31 = &getErrorErrorCat(void)::ErrorErrorCat;
    v29 = v8;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  if (a4 < a3)
  {
    v7 = "Preferred alignment cannot be less than the ABI alignment";
    goto LABEL_5;
  }

  if (a2 > 104)
  {
    v10 = result + 160;
    if (a2 != 118)
    {
      v10 = 0;
    }

    if (a2 == 105)
    {
      v9 = (result + 64);
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    if (a2 == 97)
    {
      result[212] = a3;
      result[213] = a4;
      goto LABEL_40;
    }

    if (a2 == 102)
    {
      v9 = (result + 112);
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = *v9;
  v12 = *(v9 + 8);
  if (v12)
  {
    v13 = *v9;
    v14 = *(v9 + 8);
    do
    {
      v15 = v14 >> 1;
      v16 = &v13[8 * (v14 >> 1)];
      v18 = *v16;
      v17 = (v16 + 2);
      v14 += ~(v14 >> 1);
      if (v18 < a5)
      {
        v13 = v17;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v14);
    v19 = *(v9 + 8);
  }

  else
  {
    v19 = 0;
    v13 = *v9;
  }

  if (v13 == &v11[8 * v19] || *v13 != a5)
  {
    v20 = (a3 << 32) | (a4 << 40) | a5;
    if (&v11[8 * v12] == v13)
    {
      if (v12 >= *(v9 + 12))
      {
        result = llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 16), v12 + 1, 8);
        v12 = *(v9 + 8);
        v11 = *v9;
      }

      *&v11[8 * v12] = v20;
      ++*(v9 + 8);
    }

    else
    {
      v21 = v13 - v11;
      if (v12 >= *(v9 + 12))
      {
        result = llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 16), v12 + 1, 8);
        v11 = *v9;
        v12 = *(v9 + 8);
      }

      v22 = &v11[v21];
      *&v11[8 * v12] = *&v11[8 * v12 - 8];
      v23 = *(v9 + 8);
      v24 = *v9 + 8 * v23;
      if ((v24 - 8) != v22)
      {
        result = memmove(v22 + 8, v22, v24 - 8 - v22 - 2);
        LODWORD(v23) = *(v9 + 8);
      }

      *(v9 + 8) = v23 + 1;
      *(v22 + 2) = WORD2(v20);
      *v22 = v20;
    }
  }

  else
  {
    v13[4] = a3;
    v13[5] = a4;
  }

LABEL_40:
  *a6 = 0;
  return result;
}

unsigned int *llvm::DataLayout::setPointerAlignmentInBits@<X0>(unsigned int *a1@<X0>, unsigned int a2@<W1>, unsigned __int8 a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (a4 < a3)
  {
    v29 = "Preferred alignment cannot be less than the ABI alignment";
    v30 = 259;
    getErrorErrorCat();
    llvm::Twine::str(&v29, __p);
    if (v32 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v34 = 3;
    v35 = &getErrorErrorCat(void)::ErrorErrorCat;
    v33 = v8;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v12 = *(a1 + 30);
  result = a1 + 60;
  v11 = v12;
  v13 = result[2];
  if (v13)
  {
    v14 = v11;
    v15 = result[2];
    do
    {
      v16 = v15 >> 1;
      v17 = v14 + 16 * (v15 >> 1);
      v18 = *(v17 + 8);
      v19 = v17 + 16;
      v15 += ~(v15 >> 1);
      if (v18 < a2)
      {
        v14 = v19;
      }

      else
      {
        v15 = v16;
      }
    }

    while (v15);
    v20 = result[2];
  }

  else
  {
    v20 = 0;
    v14 = v11;
  }

  if (v14 == v11 + 16 * v20 || *(v14 + 8) != a2)
  {
    v21 = (a4 << 8) | (a5 << 32) | a3;
    v22 = a2 | (a6 << 32);
    v23 = a1[63];
    if (v11 + 16 * v13 == v14)
    {
      if (v13 >= v23)
      {
        result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, a1 + 64, v13 + 1, 16);
        v13 = a1[62];
        v11 = *(a1 + 30);
      }

      v28 = (v11 + 16 * v13);
      *v28 = v21;
      v28[1] = v22;
      ++a1[62];
    }

    else
    {
      v24 = v14 - v11;
      if (v13 >= v23)
      {
        result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, a1 + 64, v13 + 1, 16);
        v11 = *(a1 + 30);
        v13 = a1[62];
      }

      v25 = (v11 + v24);
      *(v11 + 16 * v13) = *(v11 + 16 * v13 - 16);
      v26 = a1[62];
      v27 = *(a1 + 30) + 16 * v26 - 16;
      if (v27 != v25)
      {
        result = memmove(v25 + 2, v25, v27 - v25);
        LODWORD(v26) = a1[62];
      }

      a1[62] = v26 + 1;
      *v25 = v21;
      v25[1] = v22;
    }
  }

  else
  {
    *v14 = a3;
    *(v14 + 1) = a4;
    *(v14 + 4) = a5;
    *(v14 + 12) = a6;
  }

  *a7 = 0;
  return result;
}

void llvm::DataLayout::parseSpecifier(uint64_t a1@<X0>, void *a2@<X1>, size_t a3@<X2>, void *a4@<X8>)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v5 = a3;
  v6 = a2;
  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v56) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + v5) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  *(a1 + 216) = __dst;
  *(a1 + 232) = v56;
  if (v5)
  {
    v8 = 0uLL;
    do
    {
      v59 = v8;
      v60 = v8;
      split(a4, v6, v5, 45, &v59);
      if (*a4)
      {
        return;
      }

      v5 = *(&v60 + 1);
      v6 = v60;
      split(a4, v59, *(&v59 + 1), 58, &v59);
      if (*a4)
      {
        return;
      }

      v9 = *(&v59 + 1);
      if (*(&v59 + 1) == 2)
      {
        v10 = v59;
        if (*v59 == 26990)
        {
          v11 = *(&v60 + 1);
          while (1)
          {
            split(a4, v60, v11, 58, &v59);
            if (*a4)
            {
              return;
            }

            v58 = 0;
            getInt<unsigned int>(a4, v59, *(&v59 + 1), &v58);
            if (*a4)
            {
              return;
            }

            if (!v58)
            {
              break;
            }

            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back((a1 + 392), v58);
            v11 = *(&v60 + 1);
            if (!*(&v60 + 1))
            {
              goto LABEL_160;
            }
          }

          v50 = "Address space 0 can never be non-integral";
          goto LABEL_185;
        }
      }

      else
      {
        v10 = v59;
      }

      v12 = *v10;
      v13 = *(&v59 + 1) != 0;
      if (*(&v59 + 1))
      {
        v14 = (v10 + 1);
      }

      else
      {
        v14 = v10;
      }

      v15 = *(&v59 + 1) - v13;
      *&v59 = v14;
      *(&v59 + 1) -= v13;
      if (v12 <= 100)
      {
        if (v12 > 70)
        {
          if (v12 <= 82)
          {
            if (v12 == 71)
            {
              v16 = a1 + 16;
            }

            else
            {
              if (v12 != 80)
              {
                goto LABEL_176;
              }

              v16 = a1 + 12;
            }

LABEL_129:
            getAddrSpace(a4, v14, v15, v16);
LABEL_130:
            if (*a4)
            {
              return;
            }

            goto LABEL_160;
          }

          if (v12 == 83)
          {
            __p[0] = 0;
            getIntInBytes<unsigned long long>(a4, v14, v15, __p);
            if (*a4)
            {
              return;
            }

            v30 = __p[0];
            if (__p[0])
            {
              if ((__p[0] & (__p[0] - 1)) != 0)
              {
                goto LABEL_175;
              }

              v31 = __clz(__p[0]) ^ 0x3F;
              v30 = 1;
            }

            else
            {
              v31 = 0;
            }

            *(a1 + 8) = v31 | (v30 << 8);
            goto LABEL_160;
          }

          if (v12 != 97)
          {
            goto LABEL_176;
          }

          v26 = 0;
          v27 = 1;
          goto LABEL_94;
        }

        switch(v12)
        {
          case 'A':
            v16 = a1 + 4;
            goto LABEL_129;
          case 'E':
            *a1 = 1;
            break;
          case 'F':
            v24 = *v14;
            if (v24 == 105)
            {
              v25 = 0;
            }

            else
            {
              if (v24 != 110)
              {
                v50 = "Unknown function pointer alignment type in datalayout string";
                goto LABEL_185;
              }

              v25 = 1;
            }

            *(a1 + 24) = v25;
            v43 = v9 > 1;
            v44 = v9 > 1;
            if (v43)
            {
              v14 = (v14 + 1);
            }

            *&v59 = v14;
            *(&v59 + 1) = v15 - v44;
            __p[0] = 0;
            getIntInBytes<unsigned long long>(a4, v14, v15 - v44, __p);
            if (*a4)
            {
              return;
            }

            v45 = __p[0];
            if (__p[0])
            {
              if ((__p[0] & (__p[0] - 1)) != 0)
              {
LABEL_175:
                v52 = "Alignment is neither 0 nor a power of 2";
                goto LABEL_191;
              }

              v46 = __clz(__p[0]) ^ 0x3F;
              v45 = 1;
            }

            else
            {
              v46 = 0;
            }

            *(a1 + 20) = v46 | (v45 << 8);
            break;
          default:
            goto LABEL_176;
        }
      }

      else if (v12 > 109)
      {
        if (v12 <= 114)
        {
          if (v12 == 110)
          {
            while (1)
            {
              v58 = 0;
              getInt<unsigned int>(a4, v14, v15, &v58);
              if (*a4)
              {
                return;
              }

              if (!v58)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<char,true>::push_back((a1 + 32), v58);
              if (!*(&v60 + 1))
              {
                goto LABEL_160;
              }

              split(a4, v60, *(&v60 + 1), 58, &v59);
              if (*a4)
              {
                return;
              }

              v15 = *(&v59 + 1);
              v14 = v59;
            }

            v50 = "Zero width native integer type in datalayout string";
            goto LABEL_185;
          }

          if (v12 != 112)
          {
            goto LABEL_176;
          }

          v17 = 0;
          v58 = 0;
          if (v9 >= 2)
          {
            getInt<unsigned int>(a4, v14, v15, &v58);
            if (*a4)
            {
              return;
            }

            v17 = v58;
            if (HIBYTE(v58))
            {
              v50 = "Invalid address space, must be a 24-bit integer";
              goto LABEL_185;
            }
          }

          if (!*(&v60 + 1))
          {
            v50 = "Missing size specification for pointer in datalayout string";
            goto LABEL_185;
          }

          split(a4, v60, *(&v60 + 1), 58, &v59);
          if (*a4)
          {
            return;
          }

          LODWORD(__p[0]) = 0;
          getInt<unsigned int>(a4, v59, *(&v59 + 1), __p);
          if (*a4)
          {
            return;
          }

          v18 = LODWORD(__p[0]);
          if (!LODWORD(__p[0]))
          {
            v52 = "Invalid pointer size of 0 bytes";
            goto LABEL_191;
          }

          if (!*(&v60 + 1))
          {
            v52 = "Missing alignment specification for pointer in datalayout string";
            goto LABEL_191;
          }

          split(a4, v60, *(&v60 + 1), 58, &v59);
          if (*a4)
          {
            return;
          }

          LODWORD(v64[0]) = 0;
          getIntInBytes<unsigned int>(a4, v59, *(&v59 + 1), v64);
          if (*a4)
          {
            return;
          }

          v20 = LODWORD(v64[0]);
          if (!LODWORD(v64[0]) || (v19.i32[0] = v64[0], v21 = vcnt_s8(v19), v21.i16[0] = vaddlv_u8(v21), v21.u32[0] >= 2uLL))
          {
            v52 = "Pointer ABI alignment must be a power of 2";
            goto LABEL_191;
          }

          LODWORD(v63) = v18;
          v54 = v64[0];
          v22 = v18;
          v23 = v64[0];
          if (*(&v60 + 1))
          {
            split(a4, v60, *(&v60 + 1), 58, &v59);
            if (*a4)
            {
              return;
            }

            getIntInBytes<unsigned int>(a4, v59, *(&v59 + 1), &v54);
            if (*a4)
            {
              return;
            }

            v23 = v54;
            if ((v54 ^ (v54 - 1)) <= v54 - 1)
            {
              v52 = "Pointer preferred alignment must be a power of 2";
              goto LABEL_191;
            }

            if (*(&v60 + 1))
            {
              split(a4, v60, *(&v60 + 1), 58, &v59);
              if (*a4)
              {
                return;
              }

              getInt<unsigned int>(a4, v59, *(&v59 + 1), &v63);
              if (*a4)
              {
                return;
              }

              v22 = v63;
              if (!v63)
              {
                v52 = "Invalid index size of 0 bytes";
                goto LABEL_191;
              }
            }

            else
            {
              v22 = v18;
            }
          }

          v47 = __clz(v20);
          v48 = 63 - __clz(v23);
          if (v23)
          {
            v49 = v48;
          }

          else
          {
            v49 = 0;
          }

          llvm::DataLayout::setPointerAlignmentInBits(a1, v17, v47 ^ 0x3F, v49, v18, v22, a4);
          goto LABEL_130;
        }

        if (v12 != 115)
        {
          if (v12 != 118)
          {
LABEL_176:
            v50 = "Unknown specifier in datalayout string";
            goto LABEL_185;
          }

          goto LABEL_86;
        }
      }

      else
      {
        if (v12 <= 104)
        {
          if (v12 == 101)
          {
            *a1 = 0;
            goto LABEL_160;
          }

          if (v12 != 102)
          {
            goto LABEL_176;
          }

LABEL_86:
          v27 = 0;
          v26 = 0;
LABEL_94:
          v32 = 0;
          v58 = 0;
          if (v9 >= 2)
          {
            getInt<unsigned int>(a4, v14, v15, &v58);
            if (*a4)
            {
              return;
            }

            v32 = v58;
            v33 = v58 ? v27 : 0;
            if (v33 == 1)
            {
              v50 = "Sized aggregate specification in datalayout string";
              goto LABEL_185;
            }
          }

          if (!*(&v60 + 1))
          {
            v50 = "Missing alignment specification in datalayout string";
            goto LABEL_185;
          }

          split(a4, v60, *(&v60 + 1), 58, &v59);
          if (*a4)
          {
            return;
          }

          LODWORD(__p[0]) = 0;
          getIntInBytes<unsigned int>(a4, v59, *(&v59 + 1), __p);
          if (*a4)
          {
            return;
          }

          v34 = LODWORD(__p[0]);
          if (LODWORD(__p[0]))
          {
            v35 = 1;
          }

          else
          {
            v35 = v27;
          }

          if ((v35 & 1) == 0)
          {
            v52 = "ABI alignment specification must be >0 for non-aggregate types";
            goto LABEL_191;
          }

          if (LODWORD(__p[0]) >= 0x10000)
          {
            v52 = "Invalid ABI alignment, must be a 16bit integer";
            goto LABEL_191;
          }

          if ((LODWORD(__p[0]) & (LODWORD(__p[0]) - 1)) != 0)
          {
            v52 = "Invalid ABI alignment, must be a power of 2";
            goto LABEL_191;
          }

          if (v32 == 8)
          {
            v36 = v26;
          }

          else
          {
            v36 = 0;
          }

          if (v36 == 1 && LODWORD(__p[0]) != 1)
          {
            v52 = "Invalid ABI alignment, i8 must be naturally aligned";
            goto LABEL_191;
          }

          LODWORD(v64[0]) = __p[0];
          v37 = LODWORD(__p[0]);
          v38 = __p[0];
          if (*(&v60 + 1))
          {
            split(a4, v60, *(&v60 + 1), 58, &v59);
            if (*a4)
            {
              return;
            }

            getIntInBytes<unsigned int>(a4, v59, *(&v59 + 1), v64);
            if (*a4)
            {
              return;
            }

            v37 = LODWORD(v64[0]);
            if (LODWORD(v64[0]) >= 0x10000)
            {
              v52 = "Invalid preferred alignment, must be a 16bit integer";
              goto LABEL_191;
            }

            v38 = v64[0];
            if ((LODWORD(v64[0]) & (LODWORD(v64[0]) - 1)) != 0)
            {
              v52 = "Invalid preferred alignment, must be a power of 2";
              goto LABEL_191;
            }
          }

          v39 = 63 - __clz(v34);
          v40 = 63 - __clz(v37);
          if (v34)
          {
            v41 = v39;
          }

          else
          {
            v41 = 0;
          }

          if (v38)
          {
            v42 = v40;
          }

          else
          {
            v42 = 0;
          }

          llvm::DataLayout::setAlignment(a1, v12, v41, v42, v32, a4);
          if (*a4)
          {
            return;
          }

          goto LABEL_160;
        }

        if (v12 == 105)
        {
          v27 = 0;
          v26 = 1;
          goto LABEL_94;
        }

        if (v12 != 109)
        {
          goto LABEL_176;
        }

        if (v9 >= 2)
        {
          v50 = "Unexpected trailing characters after mangling specifier in datalayout string";
          goto LABEL_185;
        }

        if (*(&v60 + 1) != 1)
        {
          if (*(&v60 + 1))
          {
            v52 = "Unknown mangling specifier in datalayout string";
            goto LABEL_191;
          }

          v50 = "Expected mangling specifier in datalayout string";
LABEL_185:
          *&__dst = v50;
          v57 = 259;
          getErrorErrorCat();
          llvm::Twine::str(&__dst, __p);
          if (v62 >= 0)
          {
            v51 = __p;
          }

          else
          {
            v51 = __p[0];
          }

          v64[0] = 3;
          v64[1] = &getErrorErrorCat(void)::ErrorErrorCat;
          v63 = v51;
          llvm::make_error<llvm::StringError,char const*&,std::error_code>();
        }

        v28 = *v60;
        if (v28 > 0x6C)
        {
          if (*v60 > 0x76u)
          {
            if (v28 == 119)
            {
              v29 = 3;
            }

            else
            {
              if (v28 != 120)
              {
LABEL_190:
                v52 = "Unknown mangling in datalayout string";
LABEL_191:
                *&__dst = v52;
                v57 = 259;
                getErrorErrorCat();
                *&v65.__val_ = &getErrorErrorCat(void)::ErrorErrorCat;
                v65.__cat_ = &__dst;
                llvm::createStringError(3, v65, v53);
              }

              v29 = 4;
            }
          }

          else if (v28 == 109)
          {
            v29 = 6;
          }

          else
          {
            if (v28 != 111)
            {
              goto LABEL_190;
            }

            v29 = 2;
          }

          goto LABEL_159;
        }

        if (v28 == 97)
        {
          v29 = 7;
LABEL_159:
          *(a1 + 28) = v29;
          goto LABEL_160;
        }

        if (v28 != 101)
        {
          if (v28 != 108)
          {
            goto LABEL_190;
          }

          v29 = 5;
          goto LABEL_159;
        }

        *(a1 + 28) = 1;
      }

LABEL_160:
      v8 = 0uLL;
    }

    while (v5);
  }

  *a4 = 0;
}

void llvm::DataLayout::parse(void *a1@<X0>, size_t a2@<X1>, llvm::DataLayout *a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::DataLayout::DataLayout(v9, &str_6_14, 0);
  llvm::DataLayout::parseSpecifier(v9, a1, a2, &v8);
  v6 = v8;
  if (v8)
  {
    *(a3 + 440) |= 1u;
    *a3 = v6;
  }

  else
  {
    *(a3 + 440) &= ~1u;
    llvm::DataLayout::DataLayout(a3, v9);
  }

  llvm::DataLayout::~DataLayout(v9);
  v7 = *MEMORY[0x277D85DE8];
}

void split(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  __s2 = a2;
  v14 = a3;
  LOBYTE(__p[0]) = a4;
  llvm::StringRef::split(&__s2, __p, 1uLL, v11);
  v7 = v11[1];
  *a5 = v11[0];
  *(a5 + 16) = v7;
  if (*(a5 + 24))
  {
    if (*(a5 + 8))
    {
      goto LABEL_3;
    }

    v9 = "Expected token before separator in datalayout string";
LABEL_9:
    *&v11[0] = v9;
    v12 = 259;
    getErrorErrorCat();
    llvm::Twine::str(v11, __p);
    if (v16 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v18 = 3;
    v19 = &getErrorErrorCat(void)::ErrorErrorCat;
    v17 = v10;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v8 = *(a5 + 8);
  if (v8 != v14 || v8 && memcmp(*a5, __s2, v8))
  {
    v9 = "Trailing separator in datalayout string";
    goto LABEL_9;
  }

LABEL_3:
  *a1 = 0;
}

uint64_t getInt<unsigned int>(void *a1, llvm::formatv_object_base *a2, uint64_t a3, unint64_t *a4)
{
  __p[0] = 0;
  v8 = a2;
  v9 = a3;
  result = llvm::consumeUnsignedInteger(&v8, 0xA, __p, a4);
  if ((result & 1) != 0 || v9 || __p[0] >> 32)
  {
    v8 = "not a number, or does not fit in an unsigned int";
    v10 = 259;
    getErrorErrorCat();
    llvm::Twine::str(&v8, __p);
    if (v12 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v14 = 3;
    v15 = &getErrorErrorCat(void)::ErrorErrorCat;
    v13 = v7;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  *a4 = __p[0];
  *a1 = 0;
  return result;
}

uint64_t getIntInBytes<unsigned int>(void *a1, llvm::formatv_object_base *a2, uint64_t a3, unint64_t *a4)
{
  result = getInt<unsigned int>(a1, a2, a3, a4);
  if (!*a1)
  {
    if ((*a4 & 7) != 0)
    {
      v8 = "number of bits must be a byte width multiple";
      v9 = 259;
      getErrorErrorCat();
      llvm::Twine::str(&v8, __p);
      if (v11 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v13 = 3;
      v14 = &getErrorErrorCat(void)::ErrorErrorCat;
      v12 = v7;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    *a4 >>= 3;
    *a1 = 0;
  }

  return result;
}

uint64_t getIntInBytes<unsigned long long>(void *a1, llvm::formatv_object_base *a2, uint64_t a3, unint64_t *a4)
{
  __p[0] = 0;
  v10 = a2;
  v11 = a3;
  result = llvm::consumeUnsignedInteger(&v10, 0xA, __p, a4);
  if ((result & 1) != 0 || v11)
  {
    v10 = "not a number, or does not fit in an unsigned int";
    v12 = 259;
    getErrorErrorCat();
    llvm::Twine::str(&v10, __p);
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v16 = 3;
    v17 = &getErrorErrorCat(void)::ErrorErrorCat;
    v15 = v8;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v7 = __p[0];
  *a4 = __p[0];
  *a1 = 0;
  if ((v7 & 7) != 0)
  {
    v10 = "number of bits must be a byte width multiple";
    v12 = 259;
    getErrorErrorCat();
    llvm::Twine::str(&v10, __p);
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v16 = 3;
    v17 = &getErrorErrorCat(void)::ErrorErrorCat;
    v15 = v9;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  *a4 = v7 >> 3;
  *a1 = 0;
  return result;
}

uint64_t getAddrSpace(void *a1, llvm::formatv_object_base *a2, uint64_t a3, uint64_t a4)
{
  result = getInt<unsigned int>(a1, a2, a3, a4);
  if (!*a1)
  {
    if (*(a4 + 3))
    {
      v8 = "Invalid address space, must be a 24-bit integer";
      v9 = 259;
      getErrorErrorCat();
      llvm::Twine::str(&v8, __p);
      if (v11 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v13 = 3;
      v14 = &getErrorErrorCat(void)::ErrorErrorCat;
      v12 = v7;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    *a1 = 0;
  }

  return result;
}

uint64_t llvm::DataLayout::getPointerAlignElem(llvm::DataLayout *this, unsigned int a2)
{
  v2 = *(this + 30);
  if (!a2)
  {
    return v2;
  }

  v3 = *(this + 62);
  if (v3)
  {
    result = *(this + 30);
    v5 = v3;
    do
    {
      v6 = v5 >> 1;
      v7 = result + 16 * (v5 >> 1);
      v8 = *(v7 + 8);
      v9 = v7 + 16;
      v5 += ~(v5 >> 1);
      if (v8 < a2)
      {
        result = v9;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  else
  {
    v3 = 0;
    result = *(this + 30);
  }

  if (result == v2 + 16 * v3 || *(result + 8) != a2)
  {
    return v2;
  }

  return result;
}

void llvm::DataLayout::~DataLayout(llvm::DataLayout *this)
{
  llvm::DataLayout::clear(this);
  v2 = *(this + 49);
  if (v2 != this + 408)
  {
    free(v2);
  }

  v3 = *(this + 30);
  if (v3 != this + 256)
  {
    free(v3);
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  v4 = *(this + 20);
  if (v4 != this + 176)
  {
    free(v4);
  }

  v5 = *(this + 14);
  if (v5 != this + 128)
  {
    free(v5);
  }

  v6 = *(this + 8);
  if (v6 != this + 80)
  {
    free(v6);
  }

  v7 = *(this + 4);
  if (v7 != this + 56)
  {
    free(v7);
  }
}

llvm::StructLayout *llvm::DataLayout::getStructLayout(llvm::DataLayout *this, llvm::StructType *a2)
{
  v4 = *(this + 48);
  if (!v4)
  {
    operator new();
  }

  v8 = a2;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct(v4, &v8);
  result = v5[1];
  if (!result)
  {
    v7 = malloc_type_malloc(8 * *(a2 + 3) + 16, 0x3C0F72FBuLL);
    if (!v7)
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    v5[1] = v7;
    return llvm::StructLayout::StructLayout(v7, a2, this);
  }

  return result;
}

uint64_t llvm::DataLayout::getAlignment(unsigned __int8 **this, llvm::Type *a2, int a3)
{
  while (1)
  {
    v6 = *(a2 + 2);
    if (v6 <= 0x10u)
    {
      break;
    }

    if (v6 == 17)
    {
      a2 = *(a2 + 3);
    }

    else
    {
      if (v6 != 21)
      {
        goto LABEL_17;
      }

      getTargetTypeInfo(a2);
      a2 = v7;
    }
  }

  if (*(a2 + 2) <= 7u)
  {
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(this, a2);
    v9 = *(this + 30);
    if (v9)
    {
      v10 = this[14];
      v11 = *(this + 30);
      do
      {
        v12 = v11 >> 1;
        v13 = &v10[8 * (v11 >> 1)];
        v15 = *v13;
        v14 = v13 + 8;
        v11 += ~(v11 >> 1);
        if (v15 < TypeSizeInBits)
        {
          v10 = v14;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11);
    }

    else
    {
      v9 = 0;
      v10 = this[14];
    }

    if (v10 == &this[14][8 * v9] || *v10 != TypeSizeInBits)
    {
      v25 = TypeSizeInBits >> 3;
      if (!(TypeSizeInBits >> 3))
      {
        return 63 - __clz(v25);
      }

      v26 = (v25 - 1) | ((v25 - 1) >> 1) | (((v25 - 1) | ((v25 - 1) >> 1)) >> 2);
      v27 = v26 | (v26 >> 4) | ((v26 | (v26 >> 4)) >> 8);
      v28 = v27 | (v27 >> 16);
LABEL_33:
      v25 = v28 + 1;
      return 63 - __clz(v25);
    }

    goto LABEL_65;
  }

  if (*(a2 + 2) <= 0xCu)
  {
    if (v6 == 8)
    {
      v29 = this[30];
      if (a3)
      {
        return *v29;
      }

      else
      {
        return v29[1];
      }
    }

    if (v6 != 10)
    {
      return 6;
    }

LABEL_17:
    v16 = llvm::DataLayout::getTypeSizeInBits(this, a2);
    v17 = *(this + 42);
    if (v17)
    {
      v10 = this[20];
      v18 = *(this + 42);
      do
      {
        v19 = v18 >> 1;
        v20 = &v10[8 * (v18 >> 1)];
        v22 = *v20;
        v21 = v20 + 8;
        v18 += ~(v18 >> 1);
        if (v22 < v16)
        {
          v10 = v21;
        }

        else
        {
          v18 = v19;
        }
      }

      while (v18);
    }

    else
    {
      v17 = 0;
      v10 = this[20];
    }

    if (v10 == &this[20][8 * v17] || *v10 != v16)
    {
      v41 = llvm::DataLayout::getTypeSizeInBits(this, a2);
      if ((v41 + 7) < 8)
      {
        v25 = 0;
        return 63 - __clz(v25);
      }

      v42 = (((v41 + 7) >> 3) - 1) | ((((v41 + 7) >> 3) - 1) >> 1);
      v43 = v42 | (v42 >> 2) | ((v42 | (v42 >> 2)) >> 4);
      v44 = v43 | (v43 >> 8) | ((v43 | (v43 >> 8)) >> 16);
      v28 = v44 | HIDWORD(v44);
      goto LABEL_33;
    }

    goto LABEL_65;
  }

  if (v6 == 13)
  {
    v30 = *(this + 18);
    if (v30)
    {
      v31 = v6 >> 8;
      v32 = this[8];
      v33 = *(this + 18);
      do
      {
        v34 = v33 >> 1;
        v35 = &v32[8 * (v33 >> 1)];
        v37 = *v35;
        v36 = v35 + 8;
        v33 += ~(v33 >> 1);
        if (v37 < v31)
        {
          v32 = v36;
        }

        else
        {
          v33 = v34;
        }
      }

      while (v33);
    }

    else
    {
      v30 = 0;
      v32 = this[8];
    }

    v45 = -8;
    if (v32 != &this[8][8 * v30])
    {
      v45 = 0;
    }

    v10 = &v32[v45];
LABEL_65:
    v46 = 4;
    if (!a3)
    {
      v46 = 5;
    }

    return v10[v46];
  }

  if (v6 == 15)
  {
    PointerAlignElem = llvm::DataLayout::getPointerAlignElem(this, v6 >> 8);
    if (a3)
    {
      return *PointerAlignElem;
    }

    else
    {
      return PointerAlignElem[1];
    }
  }

  else if (v6 & 0x200) != 0 && (a3)
  {
    return 0;
  }

  else
  {
    StructLayout = llvm::DataLayout::getStructLayout(this, a2);
    v39 = 212;
    if (!a3)
    {
      v39 = 213;
    }

    v40 = *(this + v39);
    if (v40 <= *(StructLayout + 8))
    {
      return *(StructLayout + 8);
    }

    else
    {
      return v40;
    }
  }
}

double llvm::DataLayout::getIntPtrType(llvm::DataLayout *this, llvm::Type *a2)
{
  v3 = *(a2 + 2);
  if ((v3 & 0xFE) == 0x12)
  {
    v3 = *(**(a2 + 2) + 8);
  }

  PointerAlignElem = llvm::DataLayout::getPointerAlignElem(this, v3 >> 8);
  v5 = llvm::IntegerType::get(*a2, *(PointerAlignElem + 4));
  if ((*(a2 + 2) & 0xFE) == 0x12)
  {
    v7 = (*(a2 + 8) | (((~*(a2 + 2) & 0x13) == 0) << 32));

    return llvm::VectorType::get(v5, v7);
  }

  return result;
}

uint64_t llvm::DataLayout::getPreferredAlign(unsigned __int8 **this, const llvm::GlobalVariable *a2)
{
  v4 = *(a2 + 8);
  v5 = (v4 >> 17) & 0x3F;
  if (!v5)
  {
    v10 = *(a2 + 3);
    Alignment = llvm::DataLayout::getAlignment(this, v10, 0);
    v6 = Alignment;
    if (*(a2 + 16))
    {
      if (*(a2 + 16) != 3)
      {
        goto LABEL_17;
      }

      v12 = (*(a2 + 5) & 0x7FFFFFF) == 0;
    }

    else
    {
      if (*(a2 + 9) != (a2 + 72))
      {
        goto LABEL_17;
      }

      v12 = (*(a2 + 35) & 1) == 0;
    }

    v13 = v12;
    if (v13)
    {
      return v6;
    }

LABEL_17:
    if (Alignment <= 3u)
    {
      TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(this, v10);
      if (v14)
      {
      }

      if (TypeSizeInBits <= 0x80)
      {
        return v6;
      }

      else
      {
        return 4;
      }
    }

    return v6;
  }

  v6 = (v5 - 1);
  if ((v4 & 0x800000) != 0)
  {
    return v6;
  }

  v7 = *(a2 + 3);
  v8 = (v5 - 1);
  if (v8 >= llvm::DataLayout::getAlignment(this, v7, 0))
  {
    return v6;
  }

  LOBYTE(result) = llvm::DataLayout::getAlignment(this, v7, 1);
  if (v8 <= result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

void _GLOBAL__sub_I_DataLayout_cpp()
{
  DefaultAlignments = 105;
  unk_2815AC544 = 1;
  dword_2815AC54C = 105;
  qword_2815AC550 = 8;
  dword_2815AC558 = 105;
  unk_2815AC55C = 0x10100000010;
  dword_2815AC564 = 105;
  qword_2815AC568 = 0x20200000020;
  dword_2815AC570 = 105;
  unk_2815AC574 = 0x30200000040;
  dword_2815AC57C = 102;
  qword_2815AC580 = 0x10100000010;
  dword_2815AC588 = 102;
  unk_2815AC58C = 0x20200000020;
  dword_2815AC594 = 102;
  qword_2815AC598 = 0x30300000040;
  dword_2815AC5A0 = 102;
  unk_2815AC5A4 = 0x40400000080;
  dword_2815AC5AC = 118;
  qword_2815AC5B0 = 0x30300000040;
  dword_2815AC5B8 = 118;
  unk_2815AC5BC = 0x40400000080;
}

BOOL llvm::stripDebugInfo(uint64_t ***this, llvm::Function *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  Metadata = llvm::Value::getMetadata(this, 0);
  v4 = Metadata != 0;
  if (Metadata)
  {
    llvm::Value::setMetadata(this, 0, 0);
  }

  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  v5 = this[10];
  v39 = this + 9;
  if (v5 == this + 9)
  {
    v36 = 0;
    goto LABEL_68;
  }

  do
  {
    v6 = v5 - 3;
    if (!v5)
    {
      v6 = 0;
    }

    v7 = v6[6];
    v8 = v6 + 5;
    if (v7 == v6 + 5)
    {
      goto LABEL_65;
    }

    do
    {
      v9 = v7[1];
      if (llvm::DbgInfoIntrinsic::classof((v7 - 3)))
      {
        llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase((v7[2] + 5), v7);
        v4 = 1;
        goto LABEL_47;
      }

      if (!v7[3])
      {
        goto LABEL_13;
      }

      v42 = 0;
      llvm::TrackingMDRef::operator=(v7 + 3, &v42);
      if (v42)
      {
        llvm::MetadataTracking::untrack(&v42, v42);
      }

      v4 = 1;
      if (!v7[3])
      {
LABEL_13:
        if ((*(v7 - 1) & 0x20) == 0)
        {
          goto LABEL_45;
        }
      }

      v10 = llvm::Value::getMetadata(v7 - 3, 18);
      v41 = v10;
      if (!v10)
      {
        goto LABEL_45;
      }

      v55 = v10;
      v50 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v43, &v55, &v50))
      {
        Impl = v50[1];
        if (Impl)
        {
          goto LABEL_43;
        }
      }

      Impl = v41;
      v55 = v59;
      v56 = v59;
      v57 = 8;
      v58 = 0;
      v50 = v54;
      v51 = v54;
      v52 = 8;
      v53 = 0;
      v45 = v49;
      v46 = v49;
      v47 = 8;
      v48 = 0;
      llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v55, v41, &v61);
      if (v63[0] != 1)
      {
        goto LABEL_34;
      }

      v13 = Impl - 1;
      v12 = Impl[-1].n128_u64[0];
      if ((v12 & 2) != 0)
      {
        v14 = Impl[-2].n128_u64[0];
        v15 = Impl[-2].n128_u32[2];
      }

      else
      {
        v14 = &v13->n128_u64[-((v12 >> 2) & 0xF)];
        v15 = (v12 >> 6) & 0xF;
      }

      if (v15 == 1)
      {
        goto LABEL_34;
      }

      v40 = v5;
      v16 = 0;
      v17 = (v14 + 1);
      v18 = 8 * v15 - 8;
      do
      {
        v19 = *v17++;
        v16 += isDILocationReachable(&v55, &v50, v19);
        v18 -= 8;
      }

      while (v18);
      if (!v16)
      {
        goto LABEL_33;
      }

      llvm::SmallPtrSetImplBase::clear(&v55);
      v20 = v13->n128_u64[0];
      if ((v13->n128_u64[0] & 2) != 0)
      {
        v21 = Impl[-2].n128_u64[0];
        v22 = Impl[-2].n128_u32[2];
      }

      else
      {
        v21 = &v13->n128_u64[-((v20 >> 2) & 0xF)];
        v22 = (v20 >> 6) & 0xF;
      }

      if (v22 == 1)
      {
LABEL_32:
        Impl = 0;
LABEL_33:
        v5 = v40;
        goto LABEL_34;
      }

      v23 = (v21 + 1);
      v24 = 8 * v22 - 8;
      while ((isAllDILocation(&v55, &v45, &v50, *v23) & 1) != 0)
      {
        ++v23;
        v24 -= 8;
        if (!v24)
        {
          goto LABEL_32;
        }
      }

      __src = 0;
      v61 = v63;
      v62 = 0x400000000;
      llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v61, &__src, &v61);
      for (i = 1; ; ++i)
      {
        v28 = v13->n128_u64[0];
        if ((v13->n128_u64[0] & 2) != 0)
        {
          break;
        }

        if (i >= ((v28 >> 6) & 0xF))
        {
          goto LABEL_61;
        }

        v29 = &v13->n128_u64[-((v28 >> 2) & 0xF)];
LABEL_55:
        v30 = v29[i];
        if (v30)
        {
          v31 = stripLoopMDLoc(&v45, &v50, v30);
          if (!v31)
          {
            continue;
          }

          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(&v61, v32);
      }

      if (i < Impl[-2].n128_u32[2])
      {
        v29 = Impl[-2].n128_u64[0];
        goto LABEL_55;
      }

LABEL_61:
      v33 = Impl->n128_u64[1];
      v34 = (v33 & 0xFFFFFFFFFFFFFFF8);
      if ((v33 & 4) != 0)
      {
        v34 = *v34;
      }

      Impl = llvm::MDTuple::getImpl(v34, v61, v62, 1, 1);
      llvm::MDNode::replaceOperandWith(Impl, 0, Impl, v35);
      v5 = v40;
      if (v61 != v63)
      {
        free(v61);
      }

LABEL_34:
      if (v46 != v45)
      {
        free(v46);
      }

      if (v51 != v50)
      {
        free(v51);
      }

      if (v56 != v55)
      {
        free(v56);
      }

      v55 = 0;
      v25 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v43, &v41, &v55);
      v26 = v55;
      if ((v25 & 1) == 0)
      {
        v26 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::InsertIntoBucketImpl<llvm::jitlink::Symbol *>(v43, &v41, &v41, v55);
        *v26 = v41;
        v26[1] = 0;
      }

      v26[1] = Impl;
LABEL_43:
      if (Impl != v41)
      {
        llvm::Instruction::setMetadata(v7 - 3, 18, Impl);
      }

LABEL_45:
      if ((*(v7 - 1) & 0x20) != 0)
      {
        llvm::Instruction::setMetadata(v7 - 3, "heapallocsite", 0xDuLL, 0);
        llvm::Instruction::setMetadata(v7 - 3, 38, 0);
      }

LABEL_47:
      v7 = v9;
    }

    while (v9 != v8);
LABEL_65:
    v5 = v5[1];
  }

  while (v5 != v39);
  v36 = v43[0];
LABEL_68:
  MEMORY[0x277C69E30](v36, 8);
  v37 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t llvm::StripDebugInfo(llvm *this, llvm::Module *a2)
{
  v3 = *(this + 10);
  v4 = this + 72;
  if (v3 == this + 72)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *(v3 + 2);
      v7 = *(v3 + 1);
      v8 = v3[39];
      if (v8 >= 0)
      {
        v6 = v3 + 16;
      }

      v9 = *(v3 + 3);
      if (v8 >= 0)
      {
        v9 = v3[39];
      }

      if (v9 >= 9)
      {
        v10 = *v6 == 0x6762642E6D766C6CLL && v6[8] == 46;
        if (v10 || v9 == 9 && ((v11 = *v6, v12 = v6[8], v11 == 0x6F63672E6D766C6CLL) ? (v13 = v12 == 118) : (v13 = 0), v13))
        {
          llvm::Module::eraseNamedMetadata(*(v3 + 5), v3);
          v5 = 1;
        }
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  for (i = *(this + 4); i != (this + 24); i = i[1])
  {
    if (i)
    {
      v15 = (i - 7);
    }

    else
    {
      v15 = 0;
    }

    v5 |= llvm::stripDebugInfo(v15, v3);
  }

  for (j = *(this + 2); j != (this + 8); j = j[1])
  {
    if (j)
    {
      v17 = (j - 7);
    }

    else
    {
      v17 = 0;
    }

    v5 |= llvm::Value::eraseMetadata(v17, 0);
  }

  v18 = *(this + 19);
  if (v18)
  {
    (*(*v18 + 40))(v18, v3);
  }

  return v5 & 1;
}

uint64_t llvm::getDebugMetadataVersionFromModule(llvm *this, const llvm::Module *a2)
{
  result = llvm::Module::getModuleFlag(this, "Debug Info Version", 0x12uLL);
  if (result)
  {
    if (*result == 1 && (v3 = *(result + 128), *(v3 + 16) == 16))
    {
      v4 = (v3 + 24);
      if (*(v3 + 32) >= 0x41u)
      {
        v4 = *v4;
      }

      return *v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::at::getAssignmentInsts(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
  if ((v1 & 4) != 0)
  {
    v2 = *v2;
  }

  v3 = *v2;
  v8 = a1;
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(v3 + 316, &v8, &v9);
  result = 0;
  if (v4)
  {
    v6 = v9 == v3[316] + 32 * *(v3 + 636);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    result = *(v9 + 8);
    v7 = result + 8 * *(v9 + 16);
  }

  return result;
}

uint64_t isDILocationReachable(llvm::SmallPtrSetImplBase *a1, uint64_t a2, char *a3)
{
  if (!a3)
  {
    return 0;
  }

  result = llvm::MDNode::classof(a3);
  if (result)
  {
    if (*a3 == 5)
    {
      return 1;
    }

    imp = llvm::SmallPtrSetImplBase::find_imp(a2, a3);
    v8 = *(a2 + 8);
    v9 = 16;
    if (v8 == *a2)
    {
      v9 = 20;
    }

    if (imp == (v8 + 8 * *(a2 + v9)))
    {
      llvm::SmallPtrSetImpl<llvm::Value *>::insert(a1, a3, v17);
      if (v17[16] == 1)
      {
        v10 = *(a3 - 2);
        if ((v10 & 2) != 0)
        {
          v11 = *(a3 - 4);
          v12 = *(a3 - 6);
        }

        else
        {
          v11 = &a3[-8 * ((v10 >> 2) & 0xF) - 16];
          v12 = (v10 >> 6) & 0xF;
        }

        if (v12)
        {
          v13 = 8 * v12;
          do
          {
            if (isDILocationReachable(a1, a2, *v11))
            {
              llvm::SmallPtrSetImpl<llvm::Value *>::insert(a2, a3, v17);
            }

            v11 += 8;
            v13 -= 8;
          }

          while (v13);
        }

        v14 = llvm::SmallPtrSetImplBase::find_imp(a2, a3);
        v15 = *(a2 + 8);
        v16 = 16;
        if (v15 == *a2)
        {
          v16 = 20;
        }

        return v14 != (v15 + 8 * *(a2 + v16));
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

  return result;
}

uint64_t isAllDILocation(llvm::SmallPtrSetImplBase *a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (!a4)
  {
    return 0;
  }

  result = llvm::MDNode::classof(a4);
  if (result)
  {
    if (*a4 == 5)
    {
      return 1;
    }

    imp = llvm::SmallPtrSetImplBase::find_imp(a2, a4);
    v10 = *(a2 + 8);
    v11 = 16;
    if (v10 == *a2)
    {
      v11 = 20;
    }

    if (imp != (v10 + 8 * *(a2 + v11)))
    {
      return 1;
    }

    v12 = llvm::SmallPtrSetImplBase::find_imp(a3, a4);
    v13 = *(a3 + 8);
    v14 = 16;
    if (v13 == *a3)
    {
      v14 = 20;
    }

    if (v12 == (v13 + 8 * *(a3 + v14)))
    {
      return 0;
    }

    llvm::SmallPtrSetImpl<llvm::Value *>::insert(a1, a4, v19);
    if (v19[16] != 1)
    {
      return 0;
    }

    v15 = *(a4 - 2);
    if ((v15 & 2) != 0)
    {
      v16 = *(a4 - 4);
      v17 = *(a4 - 6);
    }

    else
    {
      v16 = &a4[-8 * ((v15 >> 2) & 0xF) - 16];
      v17 = (v15 >> 6) & 0xF;
    }

    if (!v17)
    {
LABEL_23:
      llvm::SmallPtrSetImpl<llvm::Value *>::insert(a2, a4, v19);
      return 1;
    }

    v18 = 8 * v17;
    while (1)
    {
      if (*v16 != a4)
      {
        result = isAllDILocation(a1, a2, a3);
        if (!result)
        {
          break;
        }
      }

      ++v16;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_23;
      }
    }
  }

  return result;
}

llvm::MDNode *stripLoopMDLoc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[4] = *MEMORY[0x277D85DE8];
  if (*a3 == 5)
  {
    goto LABEL_5;
  }

  imp = llvm::SmallPtrSetImplBase::find_imp(a1, a3);
  v7 = *(a1 + 8);
  v8 = 16;
  if (v7 == *a1)
  {
    v8 = 20;
  }

  if (imp != (v7 + 8 * *(a1 + v8)))
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v12 = llvm::SmallPtrSetImplBase::find_imp(a2, a3);
  v13 = *(a2 + 8);
  v14 = 16;
  if (v13 == *a2)
  {
    v14 = 20;
  }

  if (v12 == (v13 + 8 * *(a2 + v14)) || !llvm::MDNode::classof(a3))
  {
    v9 = a3;
    goto LABEL_6;
  }

  v15 = 0;
  v16 = 0;
  v29 = v31;
  v30 = 0x400000000;
  v17 = (a3 - 16);
  while (1)
  {
    v18 = *v17;
    if ((*v17 & 2) != 0)
    {
      break;
    }

    if (v15 >= ((v18 >> 6) & 0xF))
    {
      goto LABEL_26;
    }

    v19 = &v17[-((v18 >> 2) & 0xF)];
LABEL_17:
    v20 = v19[v15];
    if (!v20)
    {
      v22 = 0;
LABEL_22:
      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v29, v22);
      goto LABEL_24;
    }

    if (v20 != a3)
    {
      v21 = stripLoopMDLoc(a1, a2);
      if (!v21)
      {
        goto LABEL_24;
      }

      v22 = v21;
      goto LABEL_22;
    }

    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v29, 0);
    v16 = 1;
LABEL_24:
    ++v15;
  }

  if (v15 < *(a3 - 24))
  {
    v19 = *(a3 - 32);
    goto LABEL_17;
  }

LABEL_26:
  v9 = 0;
  if (v30 && (v16 & (v30 == 1)) == 0)
  {
    v23 = *(a3 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFF8);
    if ((*(a3 + 1) & 0x7F) == 1)
    {
      if ((v23 & 4) != 0)
      {
        v24 = *v24;
      }

      v25 = v29;
      v26 = 1;
    }

    else
    {
      if ((v23 & 4) != 0)
      {
        v24 = *v24;
      }

      v25 = v29;
      v26 = 0;
    }

    Impl = llvm::MDTuple::getImpl(v24, v25, v30, v26, 1);
    v9 = Impl;
    if (v16)
    {
      llvm::MDNode::replaceOperandWith(Impl, 0, Impl, v28);
    }
  }

  if (v29 != v31)
  {
    free(v29);
  }

LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

llvm::MDNode *llvm::DILocation::getImpl(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v29 = *MEMORY[0x277D85DE8];
  if (HIWORD(a3))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  if (a7)
  {
    goto LABEL_12;
  }

  v16 = *a1;
  v25 = __PAIR64__(v14, a2);
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v24 = 0;
  v17 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILocation>>((v16 + 504), &v25, &v24))
  {
    v18 = v24 == (*(v16 + 504) + 8 * *(v16 + 520));
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v17 = *v24;
  }

  if (!v17 && a8)
  {
LABEL_12:
    v25 = &v27;
    v26 = 0x200000000;
    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v25, a4);
    if (a5)
    {
      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v25, a5);
    }

    v19 = llvm::MDNode::operator new(16, v26, a7);
    v20 = llvm::MDNode::MDNode(v19, a1, 5, a7, v25, v26, 0, 0);
    *(v20 + 4) = a2;
    *(v20 + 2) = v14;
    if (a6)
    {
      v21 = 0x80;
    }

    else
    {
      v21 = 0;
    }

    *(v20 + 1) = v21 & 0x80 | *(v20 + 1) & 0x7F;
    v17 = llvm::MDNode::storeImpl<llvm::DILocation,llvm::DenseSet<llvm::DILocation*,llvm::MDNodeInfo<llvm::DILocation>>>(v20, a7, *a1 + 504);
    if (v25 != &v27)
    {
      free(v25);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DILocation,llvm::DenseSet<llvm::DILocation*,llvm::MDNodeInfo<llvm::DILocation>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

_BYTE *llvm::DILocalScope::getSubprogram(_BYTE *this)
{
  while ((*this & 0xFE) == 0x12)
  {
    v1 = *(this - 2);
    if ((v1 & 2) != 0)
    {
      v2 = *(this - 4);
    }

    else
    {
      v2 = &this[-8 * ((v1 >> 2) & 0xF) - 16];
    }

    this = *(v2 + 8);
  }

  return this;
}

const char *llvm::DINode::getFlagString(int a1)
{
  if (a1 >= 0x2000)
  {
    if (a1 < 0x100000)
    {
      if (a1 >= 0x20000)
      {
        if (a1 >= 0x40000)
        {
          if (a1 == 0x40000)
          {
            return "DIFlagIntroducedVirtual";
          }

          if (a1 == 0x80000)
          {
            return "DIFlagBitField";
          }
        }

        else
        {
          if (a1 == 0x20000)
          {
            return "DIFlagMultipleInheritance";
          }

          if (a1 == 196608)
          {
            return "DIFlagVirtualInheritance";
          }
        }
      }

      else if (a1 >= 0x8000)
      {
        if (a1 == 0x8000)
        {
          return "DIFlagExportSymbols";
        }

        if (a1 == 0x10000)
        {
          return "DIFlagSingleInheritance";
        }
      }

      else
      {
        if (a1 == 0x2000)
        {
          return "DIFlagLValueReference";
        }

        if (a1 == 0x4000)
        {
          return "DIFlagRValueReference";
        }
      }
    }

    else if (a1 <= 0x1FFFFFF)
    {
      if (a1 >= 0x800000)
      {
        if (a1 == 0x800000)
        {
          return "DIFlagTypePassByReference";
        }

        if (a1 == 0x1000000)
        {
          return "DIFlagEnumClass";
        }
      }

      else
      {
        if (a1 == 0x100000)
        {
          return "DIFlagNoReturn";
        }

        if (a1 == 0x400000)
        {
          return "DIFlagTypePassByValue";
        }
      }
    }

    else if (a1 <= 0x7FFFFFF)
    {
      if (a1 == 0x2000000)
      {
        return "DIFlagThunk";
      }

      if (a1 == 0x4000000)
      {
        return "DIFlagNonTrivial";
      }
    }

    else
    {
      switch(a1)
      {
        case 0x8000000:
          return "DIFlagBigEndian";
        case 0x10000000:
          return "DIFlagLittleEndian";
        case 0x20000000:
          return "DIFlagAllCallsDescribed";
      }
    }

    return &str_36_4;
  }

  if (a1 > 35)
  {
    if (a1 > 511)
    {
      if (a1 > 2047)
      {
        if (a1 == 2048)
        {
          return "DIFlagVector";
        }

        if (a1 == 4096)
        {
          return "DIFlagStaticMember";
        }
      }

      else
      {
        if (a1 == 512)
        {
          return "DIFlagObjcClassComplete";
        }

        if (a1 == 1024)
        {
          return "DIFlagObjectPointer";
        }
      }
    }

    else if (a1 > 127)
    {
      if (a1 == 128)
      {
        return "DIFlagExplicit";
      }

      if (a1 == 256)
      {
        return "DIFlagPrototyped";
      }
    }

    else
    {
      if (a1 == 36)
      {
        return "DIFlagIndirectVirtualBase";
      }

      if (a1 == 64)
      {
        return "DIFlagArtificial";
      }
    }

    return &str_36_4;
  }

  if (a1 > 3)
  {
    if (a1 > 15)
    {
      if (a1 == 16)
      {
        return "DIFlagReservedBit4";
      }

      if (a1 == 32)
      {
        return "DIFlagVirtual";
      }
    }

    else
    {
      if (a1 == 4)
      {
        return "DIFlagFwdDecl";
      }

      if (a1 == 8)
      {
        return "DIFlagAppleBlock";
      }
    }

    return &str_36_4;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return "DIFlagZero";
    }

    if (a1 == 1)
    {
      return "DIFlagPrivate";
    }

    return &str_36_4;
  }

  if (a1 == 2)
  {
    return "DIFlagProtected";
  }

  else
  {
    return "DIFlagPublic";
  }
}

uint64_t llvm::DINode::splitFlags(uint64_t a1, unsigned int *a2)
{
  v3 = a1;
  if ((a1 & 3) != 0)
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, a1 & 3);
    v3 &= 0x3FFFFFFCu;
  }

  v4 = WORD1(v3) & 3;
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      v5 = 196608;
    }

    else
    {
      v5 = 0x20000;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = 0x10000;
  }

  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v5);
  v3 &= 0x3FFCFFFFu;
LABEL_10:
  if ((~v3 & 0x24) != 0)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 &= 0x3FFFFFDBu;
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, 36);
    if ((v3 & 1) == 0)
    {
LABEL_12:
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, 1);
  v3 &= 0x3FFFFFFEu;
  if ((v3 & 2) != 0)
  {
LABEL_13:
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 2);
    v3 &= 0x3FFFFFFDu;
  }

LABEL_14:
  if ((v3 & 3) != 0)
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 3);
    v3 &= 0x3FFFFFFCu;
  }

  if ((v3 & 4) != 0)
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 4);
    v3 &= 0x3FFFFFFBu;
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_55;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 8);
  v3 &= 0x3FFFFFF7u;
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x10);
  v3 &= 0x3FFFFFEFu;
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x20);
  v3 &= 0x3FFFFFDFu;
  if ((v3 & 0x40) == 0)
  {
LABEL_21:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x40);
  v3 &= 0x3FFFFFBFu;
  if ((v3 & 0x80) == 0)
  {
LABEL_22:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x80);
  v3 &= 0x3FFFFF7Fu;
  if ((v3 & 0x100) == 0)
  {
LABEL_23:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x100);
  v3 &= 0x3FFFFEFFu;
  if ((v3 & 0x200) == 0)
  {
LABEL_24:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x200);
  v3 &= 0x3FFFFDFFu;
  if ((v3 & 0x400) == 0)
  {
LABEL_25:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x400);
  v3 &= 0x3FFFFBFFu;
  if ((v3 & 0x800) == 0)
  {
LABEL_26:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x800);
  v3 &= 0x3FFFF7FFu;
  if ((v3 & 0x1000) == 0)
  {
LABEL_27:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x1000);
  v3 &= 0x3FFFEFFFu;
  if ((v3 & 0x2000) == 0)
  {
LABEL_28:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x2000);
  v3 &= 0x3FFFDFFFu;
  if ((v3 & 0x4000) == 0)
  {
LABEL_29:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x4000);
  v3 &= 0x3FFFBFFFu;
  if ((v3 & 0x8000) == 0)
  {
LABEL_30:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x8000);
  v3 &= 0x3FFF7FFFu;
  if ((v3 & 0x10000) == 0)
  {
LABEL_31:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_67:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x10000);
  v3 &= 0x3FFEFFFFu;
  if ((v3 & 0x20000) != 0)
  {
LABEL_32:
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x20000);
    v3 &= 0x3FFDFFFFu;
  }

LABEL_33:
  if ((v3 & 0x30000) != 0)
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x30000);
    v3 &= 0x3FFCFFFFu;
  }

  if ((v3 & 0x40000) != 0)
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x40000);
    v3 &= 0x3FFBFFFFu;
    if ((v3 & 0x80000) == 0)
    {
LABEL_37:
      if ((v3 & 0x100000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_71;
    }
  }

  else if ((v3 & 0x80000) == 0)
  {
    goto LABEL_37;
  }

  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x80000);
  v3 &= 0x3FF7FFFFu;
  if ((v3 & 0x100000) == 0)
  {
LABEL_38:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_72;
  }

LABEL_71:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x100000);
  v3 &= 0x3FEFFFFFu;
  if ((v3 & 0x400000) == 0)
  {
LABEL_39:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_73;
  }

LABEL_72:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x400000);
  v3 &= 0x3FBFFFFFu;
  if ((v3 & 0x800000) == 0)
  {
LABEL_40:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_74;
  }

LABEL_73:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x800000);
  v3 &= 0x3F7FFFFFu;
  if ((v3 & 0x1000000) == 0)
  {
LABEL_41:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_75;
  }

LABEL_74:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x1000000);
  v3 &= 0x3EFFFFFFu;
  if ((v3 & 0x2000000) == 0)
  {
LABEL_42:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_76;
  }

LABEL_75:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x2000000);
  v3 &= 0x3DFFFFFFu;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_43:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_77;
  }

LABEL_76:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x4000000);
  v3 &= 0x3BFFFFFFu;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_44:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_78;
  }

LABEL_77:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x8000000);
  v3 &= 0x37FFFFFFu;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_45:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_78:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x10000000);
  v3 &= 0x2FFFFFFFu;
  if ((v3 & 0x20000000) != 0)
  {
LABEL_46:
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x20000000);
    v3 &= 0x1FFFFFFFu;
  }

LABEL_47:
  if ((v3 & 0x24) != 0)
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x24);
    return v3 & 0x3FFFFFDB;
  }

  return v3;
}

llvm::MDNode *llvm::GenericDINode::getImpl(uint64_t *a1, int a2, uint64_t a3, llvm::hashing::detail::hash_state *this, uint64_t a5, int a6, int a7)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v13 = 0;
LABEL_9:
    v22[0] = a3;
    v18 = llvm::MDNode::operator new(16, a5 + 1, a6);
    v19 = llvm::MDNode::MDNode(v18, a1, 8, a6, v22, 1, this, a5);
    *(v19 + 2) = a2;
    *(v19 + 4) = v13;
    result = llvm::MDNode::storeImpl<llvm::GenericDINode,llvm::DenseSet<llvm::GenericDINode*,llvm::MDNodeInfo<llvm::GenericDINode>>>(v19, a6, *a1 + 576);
    goto LABEL_10;
  }

  v22[0] = this;
  v22[1] = a5;
  v22[2] = 0;
  v22[3] = 0;
  v23 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(this, this + 8 * a5, a3, this);
  v24 = a2;
  v25 = a3;
  v15 = *a1;
  v21 = 0;
  v16 = llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::GenericDINode>>((v15 + 576), v22, &v21);
  result = 0;
  if (v16 && v21 != (*(v15 + 576) + 8 * *(v15 + 592)))
  {
    result = *v21;
  }

  if (!result && a7)
  {
    v13 = v23;
    goto LABEL_9;
  }

LABEL_10:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::GenericDINode,llvm::DenseSet<llvm::GenericDINode*,llvm::MDNodeInfo<llvm::GenericDINode>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DISubrange::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = llvm::ConstantInt::get(*a1 + 2016, a2);
  v11 = llvm::ValueAsMetadata::get(v9, v10);
  v12 = llvm::ConstantInt::get(*a1 + 2016, a3);
  v14 = llvm::ValueAsMetadata::get(v12, v13);

  return llvm::DISubrange::getImpl(a1, v11, v14, 0, 0, a4, a5);
}

{
  v9 = llvm::ConstantInt::get(*a1 + 2016, a3);
  v11 = llvm::ValueAsMetadata::get(v9, v10);

  return llvm::DISubrange::getImpl(a1, a2, v11, 0, 0, a4, a5);
}

llvm::MDNode *llvm::DISubrange::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    goto LABEL_9;
  }

  v14 = *a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v22 = 0;
  v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DISubrange>>((v14 + 600), &v23, &v22);
  result = 0;
  if (v15)
  {
    v17 = v22 == (*(v14 + 600) + 8 * *(v14 + 616));
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    result = *v22;
  }

  if (!result && a7)
  {
LABEL_9:
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v26 = a5;
    v18 = operator new(0x40uLL);
    v19 = v18;
    v18[10] = 0;
    v20 = *(v18 + 4) & 0xFFFFFFFFFFFFFC00;
    if (a6)
    {
      ++v20;
    }

    *(v18 + 4) = v20 | 0x110;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    llvm::MDNode::MDNode((v18 + 12), a1, 9, a6, &v23, 4, 0, 0);
    *(v19 + 25) = 33;
    result = llvm::MDNode::storeImpl<llvm::DISubrange,llvm::DenseSet<llvm::DISubrange*,llvm::MDNodeInfo<llvm::DISubrange>>>((v19 + 12), a6, *a1 + 600);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DISubrange,llvm::DenseSet<llvm::DISubrange*,llvm::MDNodeInfo<llvm::DISubrange>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

unint64_t llvm::DISubrange::getCount(llvm::DISubrange *this)
{
  v1 = *(this - 2);
  if ((v1 & 2) != 0)
  {
    v2 = *(this - 4);
  }

  else
  {
    v2 = (this - 8 * ((v1 >> 2) & 0xF) - 16);
  }

  v3 = *v2;
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (v4 == 1)
  {
    return *(v3 + 128) & 0xFFFFFFFFFFFFFFF9;
  }

  if ((v4 & 0xFE) == 0x18)
  {
    return v3 & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  if (v4 == 6)
  {
    return v3 & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    return 0;
  }
}

llvm::MDNode *llvm::DIGenericSubrange::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    goto LABEL_9;
  }

  v14 = *a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v22 = 0;
  v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIGenericSubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGenericSubrange>,llvm::detail::DenseSetPair<llvm::DIGenericSubrange *>>,llvm::DIGenericSubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGenericSubrange>,llvm::detail::DenseSetPair<llvm::DIGenericSubrange *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIGenericSubrange>>((v14 + 1176), &v23, &v22);
  result = 0;
  if (v15)
  {
    v17 = v22 == (*(v14 + 1176) + 8 * *(v14 + 1192));
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    result = *v22;
  }

  if (!result && a7)
  {
LABEL_9:
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v26 = a5;
    v18 = operator new(0x40uLL);
    v19 = v18;
    v18[10] = 0;
    v20 = *(v18 + 4) & 0xFFFFFFFFFFFFFC00;
    if (a6)
    {
      ++v20;
    }

    *(v18 + 4) = v20 | 0x110;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    llvm::MDNode::MDNode((v18 + 12), a1, 35, a6, &v23, 4, 0, 0);
    *(v19 + 25) = 69;
    result = llvm::MDNode::storeImpl<llvm::DISubrange,llvm::DenseSet<llvm::DISubrange*,llvm::MDNodeInfo<llvm::DISubrange>>>((v19 + 12), a6, *a1 + 1176);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DIEnumerator::DIEnumerator(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v10 = llvm::MDNode::MDNode(a1, a2, 10, a3, a6, a7, 0, 0);
  *(v10 + 2) = 40;
  v11 = *(a4 + 8);
  *(v10 + 24) = v11;
  if (v11 > 0x40)
  {
    operator new[]();
  }

  *(a1 + 16) = *a4;
  *(a1 + 4) = a5;
  return a1;
}

llvm::MDNode *llvm::DIEnumerator::getImpl(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v11 = 2;
LABEL_15:
    v23 = a4;
    if (v11 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v11;
    }

    v18 = operator new(8 * v17 + 48);
    v19 = &v18[8 * v17];
    *(v19 + 2) = 0;
    *v19 = *v19 & 0xFFFFFFFFFFFFFC00 | (a5 != 0) | (4 * v17) | 0x40;
    bzero(v18, 8 * v17);
    llvm::DIEnumerator::DIEnumerator((v19 + 16), a1, a5, a2, a3, &v23, 1);
    v16 = llvm::MDNode::storeImpl<llvm::DIEnumerator,llvm::DenseSet<llvm::DIEnumerator*,llvm::MDNodeInfo<llvm::DIEnumerator>>>((v19 + 16), a5, *a1 + 624);
    goto LABEL_19;
  }

  v13 = *a1;
  if (*(a2 + 8) > 0x40u)
  {
    operator new[]();
  }

  v14 = *a2;
  v24 = *(a2 + 8);
  v22 = 0;
  v23 = v14;
  v25 = a4;
  v26 = a3;
  v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIEnumerator>>((v13 + 624), &v23, &v22);
  v16 = 0;
  if (v15 && v22 != (*(v13 + 624) + 8 * *(v13 + 640)))
  {
    v16 = *v22;
  }

  if (v24 >= 0x41 && v23)
  {
    MEMORY[0x277C69E10](v23, 0x1000C8000313F17);
  }

  if (!v16 && a6)
  {
    v11 = 0;
    goto LABEL_15;
  }

LABEL_19:
  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DIEnumerator,llvm::DenseSet<llvm::DIEnumerator*,llvm::MDNodeInfo<llvm::DIEnumerator>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DIBasicType::getImpl(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9)
{
  v15 = a2;
  v31 = *MEMORY[0x277D85DE8];
  if (a8)
  {
    goto LABEL_7;
  }

  v17 = *a1;
  LODWORD(v25) = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v24 = 0;
  v18 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIBasicType>>((v17 + 648), &v25, &v24);
  result = 0;
  if (v18 && v24 != (*(v17 + 648) + 8 * *(v17 + 664)))
  {
    result = *v24;
  }

  if (!result && a9)
  {
LABEL_7:
    v25 = 0;
    v26 = 0;
    v27 = a3;
    v20 = operator new(0x58uLL);
    v21 = v20;
    v20[8] = 0;
    v22 = *(v20 + 3) & 0xFFFFFFFFFFFFFC00;
    if (a8)
    {
      ++v22;
    }

    *(v20 + 2) = 0;
    *(v20 + 3) = v22 | 0xCC;
    *v20 = 0;
    *(v20 + 1) = 0;
    llvm::MDNode::MDNode((v20 + 10), a1, 11, a8, &v25, 3, 0, 0);
    *(v21 + 21) = v15;
    v21[14] = 0;
    v21[15] = a7;
    *(v21 + 8) = a4;
    *(v21 + 9) = 0;
    v21[20] = a5;
    v21[21] = a6;
    result = llvm::MDNode::storeImpl<llvm::DIBasicType,llvm::DenseSet<llvm::DIBasicType*,llvm::MDNodeInfo<llvm::DIBasicType>>>((v21 + 10), a8, *a1 + 648);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DIBasicType,llvm::DenseSet<llvm::DIBasicType*,llvm::MDNodeInfo<llvm::DIBasicType>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DIStringType::getImpl(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, char a11)
{
  v11 = a8;
  v17 = a2;
  v36 = *MEMORY[0x277D85DE8];
  if (a10)
  {
    goto LABEL_7;
  }

  v19 = *a1;
  LODWORD(v28) = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a9;
  v27 = 0;
  v20 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIStringType>>((v19 + 1152), &v28, &v27);
  result = 0;
  if (v20 && v27 != (*(v19 + 1152) + 8 * *(v19 + 1168)))
  {
    result = *v27;
  }

  v11 = a8;
  if (!result)
  {
    if (a11)
    {
LABEL_7:
      v28 = 0;
      v29 = 0;
      v30 = a3;
      v31 = a4;
      v32 = a5;
      v33 = a6;
      v22 = operator new(0x70uLL);
      v23 = v22;
      v22[14] = 0;
      v24 = *(v22 + 6) & 0xFFFFFFFFFFFFFC00;
      if (a10)
      {
        ++v24;
      }

      *(v22 + 6) = v24 | 0x198;
      *v22 = 0u;
      *(v22 + 1) = 0u;
      *(v22 + 2) = 0u;
      llvm::MDNode::MDNode((v22 + 16), a1, 34, a10, &v28, 6, 0, 0);
      *(v23 + 33) = v17;
      *(v23 + 10) = 0;
      *(v23 + 11) = a7;
      *(v23 + 12) = 0;
      v23[26] = v11;
      v23[27] = a9;
      result = llvm::MDNode::storeImpl<llvm::DIStringType,llvm::DenseSet<llvm::DIStringType*,llvm::MDNodeInfo<llvm::DIStringType>>>((v23 + 16), a10, *a1 + 1152);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DIStringType,llvm::DenseSet<llvm::DIStringType*,llvm::MDNodeInfo<llvm::DIStringType>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DIDerivedType::getImpl(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, int a16, char a17)
{
  v22 = a13;
  v23 = a12;
  v24 = a9;
  v57 = *MEMORY[0x277D85DE8];
  if (a16)
  {
    goto LABEL_7;
  }

  v25 = *a1;
  v38 = a2;
  v39 = a5;
  LODWORD(v43) = a2;
  v44 = a3;
  v45 = a4;
  LODWORD(v46) = a5;
  v47 = a6;
  v48 = a7;
  v49 = a8;
  v50 = a10;
  v51 = a9;
  v52 = a11;
  v53 = a12;
  v54 = a13;
  v55 = a14;
  v56 = a15;
  v42[0] = 0;
  v26 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIDerivedType>>((v25 + 672), &v43, v42) && v42[0] != (*(v25 + 672) + 8 * *(v25 + 688)))
  {
    v26 = *v42[0];
  }

  v23 = a12;
  LOWORD(a2) = v38;
  a5 = v39;
  v24 = a9;
  v22 = a13;
  if (!v26)
  {
    if (a17)
    {
LABEL_7:
      v43 = a4;
      v44 = a6;
      v45 = a3;
      v46 = a7;
      v47 = a14;
      v48 = a15;
      v27 = v23;
      v28 = a5;
      v29 = a2;
      v30 = v22;
      v31 = v24;
      v32 = operator new(0x78uLL);
      v33 = v32;
      v26 = (v32 + 16);
      v32[14] = 0;
      v34 = *(v32 + 6) & 0xFFFFFFFFFFFFFC00;
      if (a16)
      {
        ++v34;
      }

      *(v32 + 6) = v34 | 0x198;
      *v32 = 0u;
      *(v32 + 1) = 0u;
      *(v32 + 2) = 0u;
      llvm::MDNode::MDNode((v32 + 16), a1, 12, a16, &v43, 6, 0, 0);
      *(v33 + 33) = v29;
      v33[20] = v28;
      v33[21] = v30;
      v33[26] = v31;
      *(v33 + 11) = a8;
      *(v33 + 12) = a10;
      *(v33 + 27) = a11;
      if ((v27 & 0x100000000) != 0)
      {
        v33[17] = v27;
      }

      v35 = *a1;
      v41 = v26;
      if (a16 == 1)
      {
        llvm::MDNode::storeDistinctInContext(v26);
      }

      else if (!a16)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v35 + 672, &v41, v42);
        v26 = v41;
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v26;
}

llvm::MDNode *llvm::DICompositeType::getImpl(void *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, unsigned int a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24)
{
  v27 = a21;
  v26 = a22;
  v29 = a19;
  v28 = a20;
  v30 = a18;
  v31 = a11;
  v32 = a10;
  v33 = a9;
  v77 = *MEMORY[0x277D85DE8];
  if (a23)
  {
    goto LABEL_7;
  }

  v53 = a1;
  v54 = a8;
  v34 = *a1;
  v51 = a2;
  v52 = a5;
  LODWORD(v57) = a2;
  v58 = a3;
  v59 = a4;
  LODWORD(v60) = a5;
  v49 = a6;
  v61 = a6;
  v62 = a7;
  v50 = a7;
  v63 = a8;
  v64 = a10;
  v65 = __PAIR64__(a11, a9);
  v66 = a12;
  LODWORD(v67) = a13;
  v68 = a14;
  v69 = a15;
  v70 = a16;
  v71 = a17;
  v72 = a18;
  v73 = a19;
  v74 = a20;
  v75 = a21;
  v76 = a22;
  v56[0] = 0;
  v35 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DICompositeType>>((v34 + 696), &v57, v56) && v56[0] != (*(v34 + 696) + 8 * *(v34 + 712)))
  {
    v35 = *v56[0];
  }

  a1 = v53;
  a8 = v54;
  LOWORD(a2) = v51;
  a5 = v52;
  v32 = a10;
  v31 = a11;
  v33 = a9;
  a7 = v50;
  v26 = a22;
  v28 = a20;
  v27 = a21;
  v29 = a19;
  a6 = v49;
  v30 = a18;
  if (!v35)
  {
    if (a24)
    {
LABEL_7:
      v57 = a4;
      v58 = a6;
      v59 = a3;
      v60 = a7;
      v61 = a12;
      v62 = a14;
      v63 = a15;
      v64 = a16;
      v65 = a17;
      v66 = v30;
      v67 = v29;
      v68 = v28;
      v69 = v27;
      v70 = v26;
      v36 = a1;
      v37 = a5;
      v38 = a2;
      v39 = v32;
      v40 = v33;
      v41 = v31;
      v42 = a8;
      v43 = operator new(0xB0uLL);
      v44 = v43;
      v43[30] = 0;
      v45 = *(v43 + 14) & 0xFFFFFFFFFFFFFC00;
      if (a23)
      {
        ++v45;
      }

      *(v43 + 14) = v45 | 0x3B8;
      v35 = (v43 + 32);
      *v43 = 0u;
      *(v43 + 1) = 0u;
      *(v43 + 2) = 0u;
      *(v43 + 3) = 0u;
      *(v43 + 4) = 0u;
      *(v43 + 5) = 0u;
      *(v43 + 6) = 0u;
      llvm::MDNode::MDNode((v43 + 32), v36, 13, a23, &v57, 14, 0, 0);
      *(v44 + 65) = v38;
      v44[36] = v37;
      v44[37] = v41;
      *(v44 + 19) = v42;
      *(v44 + 20) = v39;
      v44[42] = v40;
      v44[43] = a13;
      v46 = *v36;
      v55 = v35;
      if (a23 == 1)
      {
        llvm::MDNode::storeDistinctInContext(v35);
      }

      else if (!a23)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v46 + 696, &v55, v56);
        v35 = v55;
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
  return v35;
}

llvm::MDNode *llvm::DICompositeType::buildODRType(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, unsigned int a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v46[14] = *MEMORY[0x277D85DE8];
  v22 = *a1;
  if (*(*a1 + 1224) != 1)
  {
    goto LABEL_9;
  }

  v46[0] = 0;
  v31 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(v22 + 1200), *(v22 + 1216), a2, v46);
  v32 = v46[0];
  if ((v31 & 1) == 0)
  {
    v37 = *(v22 + 1208);
    v38 = *(v22 + 1216);
    if (4 * v37 + 4 >= 3 * v38)
    {
      v38 *= 2;
    }

    else if (v38 + ~v37 - *(v22 + 1212) > v38 >> 3)
    {
LABEL_12:
      ++*(v22 + 1208);
      if (*v32 != -4096)
      {
        --*(v22 + 1212);
      }

      *v32 = a2;
      v32[1] = 0;
      v34 = v32 + 1;
      goto LABEL_15;
    }

    llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::grow(v22 + 1200, v38);
    v46[0] = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(v22 + 1200), *(v22 + 1216), a2, v46);
    v32 = v46[0];
    goto LABEL_12;
  }

  v34 = (v46[0] + 8);
  result = *(v46[0] + 8);
  if (!result)
  {
LABEL_15:
    result = llvm::DICompositeType::getImpl(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a2, a17, a18, a19, a20, a21, a22, 1, 1);
    *v34 = result;
    goto LABEL_16;
  }

  if (*(result + 1) != a3)
  {
LABEL_9:
    result = 0;
    goto LABEL_16;
  }

  if ((a12 & 4) == 0 && (*(result + 5) & 4) != 0)
  {
    *(result + 1) = a3;
    *(result + 4) = a6;
    *(result + 5) = a12;
    *(result + 10) = a10;
    *(result + 11) = a14;
    *(result + 3) = a9;
    *(result + 4) = a11;
    v46[0] = a5;
    v46[1] = a7;
    v46[2] = a4;
    v46[3] = a8;
    v46[4] = a13;
    v46[5] = a15;
    v46[6] = a16;
    v46[7] = a2;
    v46[8] = a17;
    v46[9] = a18;
    v46[10] = a19;
    v46[11] = a20;
    v46[12] = a21;
    v46[13] = a22;
    v35 = *(result - 2);
    v36 = (v35 & 2) != 0 ? *(result - 6) : (v35 >> 6) & 0xF;
    if (v36)
    {
      v40 = 0;
      v41 = v36;
      do
      {
        v42 = *v34;
        v43 = *(*v34 - 16);
        if ((v43 & 2) != 0)
        {
          v44 = *(v42 - 32);
        }

        else
        {
          v44 = *v34 - 16 - 8 * ((v43 >> 2) & 0xF);
        }

        v45 = v46[v40];
        if (v45 != *(v44 + 8 * v40))
        {
          llvm::MDNode::setOperand(v42, v40, v45);
        }

        ++v40;
      }

      while (v41 != v40);
      result = *v34;
    }
  }

LABEL_16:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::DISubroutineType::getImpl(uint64_t *a1, int a2, char a3, uint64_t a4, int a5, int a6)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    goto LABEL_9;
  }

  v12 = *a1;
  LODWORD(v21) = a2;
  BYTE4(v21) = a3;
  v22 = a4;
  v20 = 0;
  v13 = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DISubroutineType>>((v12 + 720), &v21, &v20);
  result = 0;
  if (v13)
  {
    v15 = v20 == (*(v12 + 720) + 8 * *(v12 + 736));
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    result = *v20;
  }

  if (!result && a6)
  {
LABEL_9:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = a4;
    v16 = operator new(0x60uLL);
    v17 = v16;
    v16[10] = 0;
    v18 = *(v16 + 4) & 0xFFFFFFFFFFFFFC00;
    if (a5)
    {
      ++v18;
    }

    *(v16 + 4) = v18 | 0x110;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    llvm::MDNode::MDNode((v16 + 12), a1, 14, a5, &v21, 4, 0, 0);
    *(v17 + 25) = 21;
    v17[16] = 0;
    v17[17] = a2;
    *(v17 + 9) = 0;
    *(v17 + 10) = 0;
    v17[22] = 0;
    *(v17 + 92) = a3;
    result = llvm::MDNode::storeImpl<llvm::DISubroutineType,llvm::DenseSet<llvm::DISubroutineType*,llvm::MDNodeInfo<llvm::DISubroutineType>>>((v17 + 12), a5, *a1 + 720);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DISubroutineType,llvm::DenseSet<llvm::DISubroutineType*,llvm::MDNodeInfo<llvm::DISubroutineType>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

__n128 *llvm::DIFile::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, __n128 *a4, unint64_t a5, int a6, int a7)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    goto LABEL_7;
  }

  v14 = *a1;
  v27 = *a4;
  v15 = a4[1].n128_i64[0];
  v25 = a2;
  v26 = a3;
  v28 = v15;
  v29 = a5;
  v23.n128_u64[0] = 0;
  v16 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIFile>>((v14 + 744), &v25, &v23);
  result = 0;
  if (v16 && v23.n128_u64[0] != *(v14 + 744) + 8 * *(v14 + 760))
  {
    result = *v23.n128_u64[0];
  }

  if (!result && a7)
  {
LABEL_7:
    v25 = a2;
    v26 = a3;
    if (a4[1].n128_u8[0] == 1)
    {
      v18 = a4->n128_i64[1];
    }

    else
    {
      v18 = 0;
    }

    v27.n128_u64[0] = v18;
    v27.n128_u64[1] = a5;
    v19 = operator new(0x60uLL);
    v20 = v19;
    v19[2].n128_u32[2] = 0;
    v21 = v19[2].n128_u64[0] & 0xFFFFFFFFFFFFFC00;
    if (a6)
    {
      ++v21;
    }

    v19[2].n128_u64[0] = v21 | 0x110;
    *v19 = 0u;
    v19[1] = 0u;
    v23 = *a4;
    v24 = a4[1].n128_u64[0];
    llvm::MDNode::MDNode(&v19[3], a1, 15, a6, &v25, 4, 0, 0);
    v20[3].n128_u16[1] = 41;
    v20[4] = v23;
    v20[5].n128_u64[0] = v24;
    v20[5].n128_u64[1] = a5;
    result = llvm::MDNode::storeImpl<llvm::DIFile,llvm::DenseSet<llvm::DIFile*,llvm::MDNodeInfo<llvm::DIFile>>>(v20 + 3, a6, *a1 + 744);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 *llvm::MDNode::storeImpl<llvm::DIFile,llvm::DenseSet<llvm::DIFile*,llvm::MDNodeInfo<llvm::DIFile>>>(__n128 *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

_DWORD *llvm::DICompileUnit::getImpl(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, uint64_t a8, int a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, char a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19, int a20)
{
  v35 = *MEMORY[0x277D85DE8];
  v29[0] = a3;
  v29[1] = a4;
  v29[2] = a6;
  v29[3] = a8;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  v33 = a18;
  v34 = a19;
  v23 = operator new(0xA0uLL);
  v24 = v23;
  v23[24] = 0;
  v25 = *(v23 + 11) & 0xFFFFFFFFFFFFFC00;
  if (a20)
  {
    ++v25;
  }

  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *(v23 + 4) = 0u;
  *(v23 + 10) = 0;
  *(v23 + 11) = v25 | 0x2EC;
  llvm::MDNode::MDNode((v23 + 26), a1, 16, a20, v29, 11, 0, 0);
  *(v24 + 53) = 17;
  v24[30] = a2;
  *(v24 + 124) = a5;
  v24[32] = a7;
  v24[33] = a9;
  *(v24 + 17) = a13;
  *(v24 + 144) = a14;
  *(v24 + 145) = a15;
  v24[37] = a16;
  *(v24 + 152) = a17;
  if (a20 == 1)
  {
    llvm::MDNode::storeDistinctInContext((v24 + 26));
  }

  v26 = *MEMORY[0x277D85DE8];
  return v24 + 26;
}

const char *llvm::DISubprogram::getFlagString(int a1)
{
  v1 = &str_36_4;
  if (a1 <= 31)
  {
    v2 = "DISPFlagLocalToUnit";
    v5 = "DISPFlagDefinition";
    v6 = "DISPFlagOptimized";
    if (a1 != 16)
    {
      v6 = &str_36_4;
    }

    if (a1 != 8)
    {
      v5 = v6;
    }

    if (a1 != 4)
    {
      v2 = v5;
    }

    if (a1 == 2)
    {
      v1 = "DISPFlagPureVirtual";
    }

    if (a1 == 1)
    {
      v1 = "DISPFlagVirtual";
    }

    if (!a1)
    {
      v1 = "DISPFlagZero";
    }

    v4 = a1 <= 3;
    goto LABEL_25;
  }

  if (a1 > 255)
  {
    v2 = "DISPFlagObjCDirect";
    v3 = "DISPFlagIsTransparentStepping";
    if (a1 != 4096)
    {
      v3 = &str_36_4;
    }

    if (a1 != 2048)
    {
      v2 = v3;
    }

    if (a1 == 512)
    {
      v1 = "DISPFlagDeleted";
    }

    if (a1 == 256)
    {
      v1 = "DISPFlagMainSubprogram";
    }

    v4 = a1 <= 2047;
LABEL_25:
    if (v4)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }

  if (a1 == 128)
  {
    v1 = "DISPFlagRecursive";
  }

  if (a1 == 64)
  {
    v1 = "DISPFlagElemental";
  }

  if (a1 == 32)
  {
    return "DISPFlagPure";
  }

  else
  {
    return v1;
  }
}

uint64_t llvm::DISubprogram::splitFlags(uint64_t a1, unsigned int *a2)
{
  v3 = a1;
  if (a1)
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, 1);
    v3 &= 0x1FFEu;
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 2);
  v3 &= 0x1FFDu;
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 4);
  v3 &= 0x1FFBu;
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 8);
  v3 &= 0x1FF7u;
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x10);
  v3 &= 0x1FEFu;
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x20);
  v3 &= 0x1FDFu;
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x40);
  v3 &= 0x1FBFu;
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x80);
  v3 &= 0x1F7Fu;
  if ((v3 & 0x100) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x100);
  v3 &= 0x1EFFu;
  if ((v3 & 0x200) == 0)
  {
LABEL_11:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x800);
    v3 &= 0x17FFu;
    if ((v3 & 0x1000) == 0)
    {
      return v3;
    }

    goto LABEL_13;
  }

LABEL_24:
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x200);
  v3 &= 0x1DFFu;
  if ((v3 & 0x800) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((v3 & 0x1000) != 0)
  {
LABEL_13:
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v3 & 0x1000);
    return v3 & 0xFFF;
  }

  return v3;
}

char *llvm::DISubprogram::getImpl(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int a6, uint64_t *a7, int a8, uint64_t *a9, int a10, int a11, int a12, int a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t *a19, uint64_t *a20, int a21, char a22)
{
  v22 = a8;
  v26 = a19;
  v27 = a18;
  v28 = a15;
  v29 = a9;
  v67 = *MEMORY[0x277D85DE8];
  if (a21)
  {
    goto LABEL_7;
  }

  v30 = *a1;
  v49 = a2;
  v50 = a3;
  v42 = a4;
  v43 = a7;
  v51[0] = a4;
  v51[1] = a5;
  v52 = a6;
  v53 = a7;
  v54 = a8;
  v55 = a9;
  v56 = a10;
  v57 = a11;
  v58 = a12;
  v59 = a13;
  v60 = a14;
  v61 = a15;
  v62 = a16;
  v63 = a17;
  v64 = a18;
  v65 = a19;
  v66 = a20;
  __src[0] = 0;
  v31 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DISubprogram>>((v30 + 768), &v49, __src) && __src[0] != (*(v30 + 768) + 8 * *(v30 + 784)))
  {
    v31 = *__src[0];
  }

  v22 = a8;
  v28 = a15;
  v29 = a9;
  v26 = a19;
  v27 = a18;
  a4 = v42;
  a7 = v43;
  if (!v31)
  {
    if (a22)
    {
LABEL_7:
      __src[0] = a5;
      __src[1] = a2;
      __src[2] = a3;
      __src[3] = a4;
      __src[4] = a7;
      __src[5] = a14;
      __src[6] = a16;
      __src[7] = a17;
      v32 = v29;
      __src[8] = v29;
      __src[9] = v28;
      v33 = v28;
      v34 = v27;
      __src[10] = v27;
      __src[11] = v26;
      __src[12] = a20;
      v49 = v51;
      v50 = 0xD00000000;
      v35 = v26;
      llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v49, __src, &v49);
      v36 = v50;
      v37 = v50;
      if (!a20)
      {
        v37 = v50 - 1;
        LODWORD(v50) = v50 - 1;
        if (!v35)
        {
          v37 = v36 - 2;
          LODWORD(v50) = v36 - 2;
          if (!v34)
          {
            v37 = v36 - 3;
            LODWORD(v50) = v36 - 3;
            if (!v33)
            {
              v37 = v36 - 4;
              LODWORD(v50) = v36 - 4;
              if (!v32)
              {
                v37 = v36 - 5;
                LODWORD(v50) = v36 - 5;
              }
            }
          }
        }
      }

      v31 = llvm::MDNode::operator new(40, v37, a21);
      v38 = llvm::MDNode::MDNode(v31, a1, 17, a21, v49, v50, 0, 0);
      *(v38 + 2) = 46;
      *(v38 + 16) = a6;
      *(v38 + 20) = v22;
      *(v38 + 24) = a10;
      *(v38 + 28) = a11;
      *(v38 + 32) = a12;
      *(v38 + 36) = a13;
      v39 = *a1;
      v47 = v38;
      if (a21 == 1)
      {
        llvm::MDNode::storeDistinctInContext(v31);
      }

      else if (!a21)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v39 + 768, &v47, __src);
        v31 = v47;
      }

      if (v49 != v51)
      {
        free(v49);
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
  return v31;
}

llvm::MDNode *llvm::DILexicalBlock::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, int a6, int a7)
{
  v27 = *MEMORY[0x277D85DE8];
  if (HIWORD(a5))
  {
    v12 = 0;
  }

  else
  {
    v12 = a5;
  }

  if (a6)
  {
    goto LABEL_12;
  }

  v14 = *a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = v12;
  v22 = 0;
  v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILexicalBlock>>((v14 + 792), &v23, &v22);
  result = 0;
  if (v15)
  {
    v17 = v22 == (*(v14 + 792) + 8 * *(v14 + 808));
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    result = *v22;
  }

  if (!result && a7)
  {
LABEL_12:
    v23 = a3;
    v24 = a2;
    v18 = operator new(0x38uLL);
    v19 = v18;
    v18[6] = 0;
    v20 = *(v18 + 2) & 0xFFFFFFFFFFFFFC00;
    if (a6)
    {
      ++v20;
    }

    *(v18 + 1) = 0;
    *(v18 + 2) = v20 | 0x88;
    *v18 = 0;
    llvm::MDNode::MDNode((v18 + 8), a1, 18, a6, &v23, 2, 0, 0);
    *(v19 + 17) = 11;
    v19[12] = a4;
    *(v19 + 26) = v12;
    result = llvm::MDNode::storeImpl<llvm::DILexicalBlock,llvm::DenseSet<llvm::DILexicalBlock*,llvm::MDNodeInfo<llvm::DILexicalBlock>>>((v19 + 8), a6, *a1 + 792);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DILexicalBlock,llvm::DenseSet<llvm::DILexicalBlock*,llvm::MDNodeInfo<llvm::DILexicalBlock>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DILexicalBlockFile::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    goto LABEL_9;
  }

  v12 = *a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v20 = 0;
  v13 = llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILexicalBlockFile>>((v12 + 816), &v21, &v20);
  result = 0;
  if (v13)
  {
    v15 = v20 == (*(v12 + 816) + 8 * *(v12 + 832));
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    result = *v20;
  }

  if (!result && a6)
  {
LABEL_9:
    v21 = a3;
    v22 = a2;
    v16 = operator new(0x38uLL);
    v17 = v16;
    v16[6] = 0;
    v18 = *(v16 + 2) & 0xFFFFFFFFFFFFFC00;
    if (a5)
    {
      ++v18;
    }

    *(v16 + 1) = 0;
    *(v16 + 2) = v18 | 0x88;
    *v16 = 0;
    llvm::MDNode::MDNode((v16 + 8), a1, 19, a5, &v21, 2, 0, 0);
    *(v17 + 17) = 11;
    v17[12] = a4;
    result = llvm::MDNode::storeImpl<llvm::DILexicalBlockFile,llvm::DenseSet<llvm::DILexicalBlockFile*,llvm::MDNodeInfo<llvm::DILexicalBlockFile>>>((v17 + 8), a5, *a1 + 816);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DILexicalBlockFile,llvm::DenseSet<llvm::DILexicalBlockFile*,llvm::MDNodeInfo<llvm::DILexicalBlockFile>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DINamespace::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    goto LABEL_9;
  }

  v12 = *a1;
  v21 = a2;
  v22 = a3;
  LOBYTE(v23) = a4;
  v20 = 0;
  v13 = llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DINamespace>>((v12 + 840), &v21, &v20);
  result = 0;
  if (v13)
  {
    v15 = v20 == (*(v12 + 840) + 8 * *(v12 + 856));
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    result = *v20;
  }

  if (!result && a6)
  {
LABEL_9:
    v21 = 0;
    v22 = a2;
    v23 = a3;
    v16 = operator new(0x40uLL);
    v17 = v16;
    v16[8] = 0;
    v18 = *(v16 + 3) & 0xFFFFFFFFFFFFFC00;
    if (a5)
    {
      ++v18;
    }

    *(v16 + 2) = 0;
    *(v16 + 3) = v18 | 0xCC;
    *v16 = 0;
    *(v16 + 1) = 0;
    llvm::MDNode::MDNode((v16 + 10), a1, 20, a5, &v21, 3, 0, 0);
    *(v17 + 21) = 57;
    *(v17 + 56) = v17[14] & 0xFE | a4;
    result = llvm::MDNode::storeImpl<llvm::DINamespace,llvm::DenseSet<llvm::DINamespace*,llvm::MDNodeInfo<llvm::DINamespace>>>((v17 + 10), a5, *a1 + 840);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DINamespace,llvm::DenseSet<llvm::DINamespace*,llvm::MDNodeInfo<llvm::DINamespace>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DICommonBlock::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    goto LABEL_9;
  }

  v16 = *a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v24 = 0;
  v17 = llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DICommonBlock>>((v16 + 1104), &v25, &v24);
  result = 0;
  if (v17)
  {
    v19 = v24 == (*(v16 + 1104) + 8 * *(v16 + 1120));
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    result = *v24;
  }

  if (!result && a8)
  {
LABEL_9:
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v20 = operator new(0x48uLL);
    v21 = v20;
    v20[10] = 0;
    v22 = *(v20 + 4) & 0xFFFFFFFFFFFFFC00;
    if (a7)
    {
      ++v22;
    }

    *(v20 + 4) = v22 | 0x110;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    llvm::MDNode::MDNode((v20 + 12), a1, 32, a7, &v25, 4, 0, 0);
    *(v21 + 25) = 26;
    v21[16] = a6;
    result = llvm::MDNode::storeImpl<llvm::DICommonBlock,llvm::DenseSet<llvm::DICommonBlock*,llvm::MDNodeInfo<llvm::DICommonBlock>>>((v21 + 12), a7, *a1 + 1104);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DICommonBlock,llvm::DenseSet<llvm::DICommonBlock*,llvm::MDNodeInfo<llvm::DICommonBlock>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DIModule::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, int a10, char a11)
{
  v11 = a8;
  v36 = *MEMORY[0x277D85DE8];
  if (a10)
  {
    goto LABEL_7;
  }

  v19 = *a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a9;
  v27 = 0;
  v20 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIModule>>((v19 + 864), &v28, &v27);
  result = 0;
  if (v20 && v27 != (*(v19 + 864) + 8 * *(v19 + 880)))
  {
    result = *v27;
  }

  v11 = a8;
  if (!result)
  {
    if (a11)
    {
LABEL_7:
      v28 = a2;
      v29 = a3;
      v30 = a4;
      v31 = a5;
      v32 = a6;
      v33 = a7;
      v22 = operator new(0x58uLL);
      v23 = v22;
      v22[14] = 0;
      v24 = *(v22 + 6) & 0xFFFFFFFFFFFFFC00;
      if (a10)
      {
        ++v24;
      }

      *(v22 + 6) = v24 | 0x198;
      *v22 = 0u;
      *(v22 + 1) = 0u;
      *(v22 + 2) = 0u;
      llvm::MDNode::MDNode((v22 + 16), a1, 21, a10, &v28, 6, 0, 0);
      *(v23 + 33) = 30;
      v23[20] = v11;
      *(v23 + 84) = a9;
      result = llvm::MDNode::storeImpl<llvm::DIModule,llvm::DenseSet<llvm::DIModule*,llvm::MDNodeInfo<llvm::DIModule>>>((v23 + 16), a10, *a1 + 864);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DIModule,llvm::DenseSet<llvm::DIModule*,llvm::MDNodeInfo<llvm::DIModule>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DITemplateTypeParameter::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    goto LABEL_9;
  }

  v12 = *a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v20 = 0;
  v13 = llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DITemplateTypeParameter>>((v12 + 888), &v21, &v20);
  result = 0;
  if (v13)
  {
    v15 = v20 == (*(v12 + 888) + 8 * *(v12 + 904));
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    result = *v20;
  }

  if (!result && a6)
  {
LABEL_9:
    v21 = a2;
    v22 = a3;
    v16 = operator new(0x38uLL);
    v17 = v16;
    v16[6] = 0;
    v18 = *(v16 + 2) & 0xFFFFFFFFFFFFFC00;
    if (a5)
    {
      ++v18;
    }

    *(v16 + 1) = 0;
    *(v16 + 2) = v18 | 0x88;
    *v16 = 0;
    llvm::MDNode::MDNode((v16 + 8), a1, 22, a5, &v21, 2, 0, 0);
    *(v17 + 17) = 47;
    *(v17 + 48) = a4;
    result = llvm::MDNode::storeImpl<llvm::DITemplateTypeParameter,llvm::DenseSet<llvm::DITemplateTypeParameter*,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>>>((v17 + 8), a5, *a1 + 888);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DITemplateTypeParameter,llvm::DenseSet<llvm::DITemplateTypeParameter*,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DITemplateValueParameter::getImpl(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, int a8)
{
  v13 = a2;
  v30 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    goto LABEL_9;
  }

  v16 = *a1;
  LODWORD(v25) = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v24 = 0;
  v17 = llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DITemplateValueParameter>>((v16 + 912), &v25, &v24);
  result = 0;
  if (v17)
  {
    v19 = v24 == (*(v16 + 912) + 8 * *(v16 + 928));
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    result = *v24;
  }

  if (!result && a8)
  {
LABEL_9:
    v25 = a3;
    v26 = a4;
    v27 = a6;
    v20 = operator new(0x40uLL);
    v21 = v20;
    v20[8] = 0;
    v22 = *(v20 + 3) & 0xFFFFFFFFFFFFFC00;
    if (a7)
    {
      ++v22;
    }

    *(v20 + 2) = 0;
    *(v20 + 3) = v22 | 0xCC;
    *v20 = 0;
    *(v20 + 1) = 0;
    llvm::MDNode::MDNode((v20 + 10), a1, 23, a7, &v25, 3, 0, 0);
    *(v21 + 21) = v13;
    *(v21 + 56) = a5;
    result = llvm::MDNode::storeImpl<llvm::DITemplateValueParameter,llvm::DenseSet<llvm::DITemplateValueParameter*,llvm::MDNodeInfo<llvm::DITemplateValueParameter>>>((v21 + 10), a7, *a1 + 912);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DITemplateValueParameter,llvm::DenseSet<llvm::DITemplateValueParameter*,llvm::MDNodeInfo<llvm::DITemplateValueParameter>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DIGlobalVariable::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8, char a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, int a14, char a15)
{
  v15 = a8;
  v43 = *MEMORY[0x277D85DE8];
  if (a14)
  {
    goto LABEL_7;
  }

  v21 = *a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  LODWORD(v36) = a6;
  v37 = a7;
  LOBYTE(v38) = a8;
  BYTE1(v38) = a9;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  v42 = a13;
  v31 = 0;
  v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIGlobalVariable>>((v21 + 936), &v32, &v31);
  result = 0;
  if (v22 && v31 != (*(v21 + 936) + 8 * *(v21 + 952)))
  {
    result = *v31;
  }

  v15 = a8;
  if (!result)
  {
    if (a15)
    {
LABEL_7:
      v32 = a2;
      v33 = a3;
      v34 = a5;
      v35 = a7;
      v36 = a3;
      v37 = a4;
      v38 = a10;
      v39 = a11;
      v40 = a13;
      v24 = operator new(0x78uLL);
      v25 = v24;
      v24[20] = 0;
      v26 = *(v24 + 9) & 0xFFFFFFFFFFFFFC00;
      if (a14)
      {
        ++v26;
      }

      *v24 = 0u;
      *(v24 + 1) = 0u;
      *(v24 + 2) = 0u;
      *(v24 + 3) = 0u;
      *(v24 + 8) = 0;
      *(v24 + 9) = v26 | 0x264;
      llvm::MDNode::MDNode((v24 + 22), a1, 24, a14, &v32, 9, 0, 0);
      *(v25 + 45) = 52;
      v25[26] = a6;
      v25[27] = a12;
      *(v25 + 112) = v15;
      *(v25 + 113) = a9;
      result = llvm::MDNode::storeImpl<llvm::DIGlobalVariable,llvm::DenseSet<llvm::DIGlobalVariable*,llvm::MDNodeInfo<llvm::DIGlobalVariable>>>((v25 + 22), a14, *a1 + 936);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DIGlobalVariable,llvm::DenseSet<llvm::DIGlobalVariable*,llvm::MDNodeInfo<llvm::DIGlobalVariable>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DILocalVariable::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, int a9, uint64_t a10, int a11, char a12)
{
  v12 = a8;
  v39 = *MEMORY[0x277D85DE8];
  if (a11)
  {
    goto LABEL_7;
  }

  v19 = *a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  LODWORD(v33) = a5;
  v34 = a6;
  v27 = a7;
  v35 = a7;
  v36 = a8;
  v37 = a9;
  v38 = a10;
  v29 = 0;
  v20 = llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILocalVariable>>((v19 + 960), &v30, &v29);
  result = 0;
  if (v20 && v29 != (*(v19 + 960) + 8 * *(v19 + 976)))
  {
    result = *v29;
  }

  LOWORD(a7) = v27;
  v12 = a8;
  if (!result)
  {
    if (a12)
    {
LABEL_7:
      v30 = a2;
      v31 = a3;
      v32 = a4;
      v33 = a6;
      v34 = a10;
      v22 = a7;
      v23 = operator new(0x58uLL);
      v24 = v23;
      v23[12] = 0;
      v25 = *(v23 + 5) & 0xFFFFFFFFFFFFFC00;
      if (a11)
      {
        ++v25;
      }

      *v23 = 0u;
      *(v23 + 1) = 0u;
      *(v23 + 4) = 0;
      *(v23 + 5) = v25 | 0x154;
      llvm::MDNode::MDNode((v23 + 14), a1, 25, a11, &v30, 5, 0, 0);
      *(v24 + 29) = 52;
      v24[18] = a5;
      v24[19] = a9;
      *(v24 + 40) = v22;
      v24[21] = v12;
      result = llvm::MDNode::storeImpl<llvm::DILocalVariable,llvm::DenseSet<llvm::DILocalVariable*,llvm::MDNodeInfo<llvm::DILocalVariable>>>((v24 + 14), a11, *a1 + 960);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DILocalVariable,llvm::DenseSet<llvm::DILocalVariable*,llvm::MDNodeInfo<llvm::DILocalVariable>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

unint64_t llvm::DIVariable::getSizeInBits(llvm::DIVariable *this)
{
  v1 = *(this - 2);
  if ((v1 & 2) != 0)
  {
    v2 = *(this - 4);
  }

  else
  {
    v2 = (this - 8 * ((v1 >> 2) & 0xF) - 16);
  }

  while (1)
  {
    v6 = *(v2 + 3);
    if (!v6)
    {
      goto LABEL_14;
    }

    v3 = *v6;
    if ((v3 - 11) >= 4 && v3 != 34)
    {
LABEL_13:
      v6 = 0;
LABEL_14:
      v7 = 0;
      return v7 | v6;
    }

    v4 = *(v6 + 24);
    if (v4)
    {
      break;
    }

    if (v3 != 12)
    {
      goto LABEL_13;
    }

    v5 = *(v6 - 16);
    if ((v5 & 2) != 0)
    {
      v2 = *(v6 - 32);
    }

    else
    {
      v2 = (v6 - 16 - 8 * ((v5 >> 2) & 0xF));
    }
  }

  v7 = v4 & 0xFFFFFFFFFFFFFF00;
  v6 = *(v6 + 24);
  return v7 | v6;
}

llvm::MDNode *llvm::DILabel::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    goto LABEL_9;
  }

  v14 = *a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v22 = 0;
  v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILabel>>((v14 + 984), &v23, &v22);
  result = 0;
  if (v15)
  {
    v17 = v22 == (*(v14 + 984) + 8 * *(v14 + 1000));
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    result = *v22;
  }

  if (!result && a7)
  {
LABEL_9:
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v18 = operator new(0x40uLL);
    v19 = v18;
    v18[8] = 0;
    v20 = *(v18 + 3) & 0xFFFFFFFFFFFFFC00;
    if (a6)
    {
      ++v20;
    }

    *(v18 + 2) = 0;
    *(v18 + 3) = v20 | 0xCC;
    *v18 = 0;
    *(v18 + 1) = 0;
    llvm::MDNode::MDNode((v18 + 10), a1, 26, a6, &v23, 3, 0, 0);
    *(v19 + 21) = 10;
    v19[14] = a5;
    result = llvm::MDNode::storeImpl<llvm::DILabel,llvm::DenseSet<llvm::DILabel*,llvm::MDNodeInfo<llvm::DILabel>>>((v19 + 10), a6, *a1 + 984);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DILabel,llvm::DenseSet<llvm::DILabel*,llvm::MDNodeInfo<llvm::DILabel>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DIExpression::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, int a5)
{
  v5 = a4;
  if (a4)
  {
    v9 = 2;
LABEL_11:
    v15 = operator new(8 * v9 + 56) + 8 * v9;
    *(v15 + 2) = 0;
    *v15 = *v15 & 0xFFFFFFFFFFFFFC00 | (v5 != 0) | (4 * v9);
    if (v5)
    {
      bzero(v15 - 16, 8 * v9);
    }

    v15[16] = 6;
    *(v15 + 9) = 0;
    *(v15 + 5) = 0;
    *(v15 + 3) = a1;
    v15[17] = v5 & 0x7F;
    if ((v5 & 0x7F) == 0)
    {
      llvm::MDNode::countUnresolvedOperands((v15 + 16));
    }

    std::vector<unsigned long long>::vector[abi:nn200100]<unsigned long long const*,0>(v15 + 4, a2, a2 + 8 * a3);
    return llvm::MDNode::storeImpl<llvm::DIExpression,llvm::DenseSet<llvm::DIExpression*,llvm::MDNodeInfo<llvm::DIExpression>>>((v15 + 16), v5, *a1 + 528, v16);
  }

  v11 = *a1;
  v17[0] = a2;
  v17[1] = a3;
  v18 = 0;
  v12 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIExpression>>((v11 + 528), v17, &v18, a4);
  result = 0;
  if (v12)
  {
    v14 = v18 == (*(v11 + 528) + 8 * *(v11 + 544));
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    result = *v18;
  }

  if (!result && a5)
  {
    v9 = 0;
    goto LABEL_11;
  }

  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DIExpression,llvm::DenseSet<llvm::DIExpression*,llvm::MDNodeInfo<llvm::DIExpression>>>(llvm::MDNode *this, int a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  v6 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v6, a4, v7);
    return v6;
  }

  return v4;
}

char *llvm::DIAssignID::getImpl(uint64_t a1, int a2)
{
  v4 = a2 != 0;
  v5 = operator new((16 * v4) | 0x20) + 16 * v4;
  *(v5 + 2) = 0;
  *v5 = *v5 & 0xFFFFFFFFFFFFFC00 | (v4 || 8 * v4);
  if (a2)
  {
    bzero(v5 - 16, 16 * v4);
  }

  v5[16] = 29;
  *(v5 + 9) = 0;
  *(v5 + 5) = 0;
  *(v5 + 3) = a1;
  v5[17] = a2 & 0x7F;
  if ((a2 & 0x7F) == 0)
  {
    llvm::MDNode::countUnresolvedOperands((v5 + 16));
  }

  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext((v5 + 16));
  }

  return v5 + 16;
}

uint64_t llvm::DIExpression::ExprOperand::getSize(uint64_t **this)
{
  v1 = **this;
  if ((v1 - 112) < 0x20)
  {
    return 2;
  }

  result = 3;
  if (v1 <= 147)
  {
    v3 = v1 > 0x23 || ((1 << v1) & 0x800030000) == 0;
    if (!v3 || v1 == 144)
    {
      return 2;
    }

    if (v1 != 146)
    {
      return 1;
    }
  }

  else
  {
    if ((v1 - 4096) > 5)
    {
      goto LABEL_7;
    }

    if (((1 << v1) & 0x2C) != 0)
    {
      return 2;
    }

    if (((1 << v1) & 3) == 0)
    {
LABEL_7:
      if (v1 != 148)
      {
        return 1;
      }

      return 2;
    }
  }

  return result;
}

BOOL llvm::DIExpression::isValid(llvm::DIExpression *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  v11 = v1;
  if (v1 == v2)
  {
    return 1;
  }

  v3 = v1;
  v4 = v1;
  while (1)
  {
    v5 = &v4[llvm::DIExpression::ExprOperand::getSize(&v11)];
    if (v5 > v2)
    {
      return 0;
    }

    v6 = *v4;
    if ((*v4 - 80) < 0x40)
    {
      return 1;
    }

    if (v6 <= 0x30)
    {
      if (((1 << v6) & 0x100FF7D170040) != 0)
      {
        goto LABEL_7;
      }

      if (v6 == 22)
      {
        if (((v2 - v1) & 0x7FFFFFFF8) == 8)
        {
          return 0;
        }

        goto LABEL_7;
      }
    }

    if (v6 - 144 > 0xF)
    {
      break;
    }

    if (((1 << (v6 + 112)) & 0x95) != 0)
    {
      goto LABEL_7;
    }

    if (v6 != 159)
    {
      break;
    }

    if (v5 != v2)
    {
      v10 = v3;
      if (v3[llvm::DIExpression::ExprOperand::getSize(&v10)] != 4096)
      {
        return 0;
      }
    }

LABEL_7:
    v11 = v5;
    v3 = v5;
    v4 = v5;
    if (v5 == v2)
    {
      return 1;
    }
  }

  v7 = v6 - 4096;
  if (v7 > 5)
  {
    return 0;
  }

  if (((1 << v7) & 0x36) != 0)
  {
    goto LABEL_7;
  }

  if (v7)
  {
    v10 = v1;
    if (*v1 == 4101 && !v1[1])
    {
      v1 += llvm::DIExpression::ExprOperand::getSize(&v10);
    }

    if (v4 != v1)
    {
      return 0;
    }

    return v4[1] == 1;
  }

  else
  {
    return v5 == v2;
  }
}

int8x16_t llvm::DIExpression::getFragmentInfo@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  v7 = a1;
  if (a1 == a2)
  {
LABEL_5:
    a3->i8[0] = 0;
    a3[1].i8[0] = 0;
  }

  else
  {
    v5 = a1;
    while (*v5 != 4096)
    {
      v5 += llvm::DIExpression::ExprOperand::getSize(&v7);
      v7 = v5;
      if (v5 == a2)
      {
        goto LABEL_5;
      }
    }

    result = vextq_s8(*(v5 + 1), *(v5 + 1), 8uLL);
    *a3 = result;
    a3[1].i8[0] = 1;
  }

  return result;
}

llvm::MDNode *llvm::DIExpression::append(void *a1, _BYTE *__src, uint64_t a3)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x1000000000;
  v6 = a1[2];
  v7 = a1[3];
  while (1)
  {
    v16 = v6;
    if (v6 == v7)
    {
      break;
    }

    v15 = v6;
    if (*v6 == 4096 || *v6 == 159)
    {
      llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v17, __src, &__src[8 * a3]);
      __src = 0;
      a3 = 0;
      v6 = v15;
    }

    Size = llvm::DIExpression::ExprOperand::getSize(&v15);
    llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v17, v6, &v6[Size]);
    v9 = v16;
    v6 = &v9[llvm::DIExpression::ExprOperand::getSize(&v16)];
  }

  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v17, __src, &__src[8 * a3]);
  v10 = a1[1];
  v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 4) != 0)
  {
    v11 = *v11;
  }

  Impl = llvm::DIExpression::getImpl(v11, v17, v18, 0, 1);
  if (v17 != v19)
  {
    free(v17);
  }

  v13 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t llvm::DIExpression::isConstant(llvm::DIExpression *this)
{
  v1 = *(this + 2);
  v2 = (*(this + 3) - v1) >> 3;
  if (v2 != 2)
  {
    if (v2 != 6 && v2 != 3)
    {
      goto LABEL_19;
    }

    v4 = *v1;
    if ((*v1 & 0xFFFFFFFFFFFFFFFELL) != 0x10)
    {
      goto LABEL_19;
    }

    if (v2 == 6)
    {
      if (v1[2] != 159 || v1[3] != 4096)
      {
        goto LABEL_19;
      }
    }

    else if (v2 == 3 && v1[2] != 159)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v4 = *v1;
  if (*v1 == 16)
  {
LABEL_17:
    v5 = v4 == 16;
    goto LABEL_18;
  }

  if (v4 != 17)
  {
LABEL_19:
    v6 = 0;
    v5 = 0;
    return v5 | v6;
  }

  v5 = 0;
LABEL_18:
  v6 = 0x100000000;
  return v5 | v6;
}

llvm::MDNode *llvm::DIGlobalVariableExpression::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    goto LABEL_9;
  }

  v10 = *a1;
  v19 = a2;
  v20 = a3;
  v18 = 0;
  v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIGlobalVariableExpression>>((v10 + 552), &v19, &v18);
  result = 0;
  if (v11)
  {
    v13 = v18 == (*(v10 + 552) + 8 * *(v10 + 568));
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    result = *v18;
  }

  if (!result && a5)
  {
LABEL_9:
    v19 = a2;
    v20 = a3;
    v14 = operator new(0x30uLL);
    v15 = v14;
    v14[6] = 0;
    v16 = *(v14 + 2) & 0xFFFFFFFFFFFFFC00;
    if (a4)
    {
      ++v16;
    }

    *(v14 + 1) = 0;
    *(v14 + 2) = v16 | 0x88;
    *v14 = 0;
    llvm::MDNode::MDNode((v14 + 8), a1, 7, a4, &v19, 2, 0, 0);
    result = llvm::MDNode::storeImpl<llvm::DIGlobalVariableExpression,llvm::DenseSet<llvm::DIGlobalVariableExpression*,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>>>((v15 + 8), a4, *a1 + 552);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DIGlobalVariableExpression,llvm::DenseSet<llvm::DIGlobalVariableExpression*,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DIObjCProperty::getImpl(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9, char a10)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a9)
  {
    goto LABEL_7;
  }

  v18 = *a1;
  v26 = a2;
  v27 = a3;
  LODWORD(v28) = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v25 = 0;
  v19 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIObjCProperty>>((v18 + 1008), &v26, &v25);
  result = 0;
  if (v19 && v25 != (*(v18 + 1008) + 8 * *(v18 + 1024)))
  {
    result = *v25;
  }

  if (!result && a10)
  {
LABEL_7:
    v26 = a2;
    v27 = a3;
    v28 = a5;
    v29 = a6;
    v30 = a8;
    v21 = operator new(0x50uLL);
    v22 = v21;
    v21[12] = 0;
    v23 = *(v21 + 5) & 0xFFFFFFFFFFFFFC00;
    if (a9)
    {
      ++v23;
    }

    *v21 = 0u;
    *(v21 + 1) = 0u;
    *(v21 + 4) = 0;
    *(v21 + 5) = v23 | 0x154;
    llvm::MDNode::MDNode((v21 + 14), a1, 27, a9, &v26, 5, 0, 0);
    *(v22 + 29) = 16896;
    v22[18] = a4;
    v22[19] = a7;
    result = llvm::MDNode::storeImpl<llvm::DIObjCProperty,llvm::DenseSet<llvm::DIObjCProperty*,llvm::MDNodeInfo<llvm::DIObjCProperty>>>((v22 + 14), a9, *a1 + 1008);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DIObjCProperty,llvm::DenseSet<llvm::DIObjCProperty*,llvm::MDNodeInfo<llvm::DIObjCProperty>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DIImportedEntity::getImpl(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9, char a10)
{
  v16 = a2;
  v33 = *MEMORY[0x277D85DE8];
  if (a9)
  {
    goto LABEL_7;
  }

  v18 = *a1;
  LODWORD(v26) = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  LODWORD(v30) = a6;
  v31 = a7;
  v32 = a8;
  v25 = 0;
  v19 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIImportedEntity>>((v18 + 1032), &v26, &v25);
  result = 0;
  if (v19 && v25 != (*(v18 + 1032) + 8 * *(v18 + 1048)))
  {
    result = *v25;
  }

  if (!result && a10)
  {
LABEL_7:
    v26 = a3;
    v27 = a4;
    v28 = a7;
    v29 = a5;
    v30 = a8;
    v21 = operator new(0x50uLL);
    v22 = v21;
    v21[12] = 0;
    v23 = *(v21 + 5) & 0xFFFFFFFFFFFFFC00;
    if (a9)
    {
      ++v23;
    }

    *v21 = 0u;
    *(v21 + 1) = 0u;
    *(v21 + 4) = 0;
    *(v21 + 5) = v23 | 0x154;
    llvm::MDNode::MDNode((v21 + 14), a1, 28, a9, &v26, 5, 0, 0);
    *(v22 + 29) = v16;
    v22[18] = a6;
    result = llvm::MDNode::storeImpl<llvm::DIImportedEntity,llvm::DenseSet<llvm::DIImportedEntity*,llvm::MDNodeInfo<llvm::DIImportedEntity>>>((v22 + 14), a9, *a1 + 1032);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DIImportedEntity,llvm::DenseSet<llvm::DIImportedEntity*,llvm::MDNodeInfo<llvm::DIImportedEntity>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DIMacro::getImpl(uint64_t *a1, unsigned int a2, unsigned int a3, unint64_t a4, unint64_t a5, int a6, int a7)
{
  v11 = a2;
  v26 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    goto LABEL_9;
  }

  v14 = *a1;
  v23 = __PAIR64__(a3, a2);
  v24 = a4;
  v25 = a5;
  v22 = 0;
  v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIMacro>>((v14 + 1056), &v23, &v22);
  result = 0;
  if (v15)
  {
    v17 = v22 == (*(v14 + 1056) + 8 * *(v14 + 1072));
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    result = *v22;
  }

  if (!result && a7)
  {
LABEL_9:
    v23 = a4;
    v24 = a5;
    v18 = operator new(0x38uLL);
    v19 = v18;
    v18[6] = 0;
    v20 = *(v18 + 2) & 0xFFFFFFFFFFFFFC00;
    if (a6)
    {
      ++v20;
    }

    *(v18 + 1) = 0;
    *(v18 + 2) = v20 | 0x88;
    *v18 = 0;
    llvm::MDNode::MDNode((v18 + 8), a1, 30, a6, &v23, 2, 0, 0);
    *(v19 + 17) = v11;
    v19[12] = a3;
    result = llvm::MDNode::storeImpl<llvm::DIMacro,llvm::DenseSet<llvm::DIMacro*,llvm::MDNodeInfo<llvm::DIMacro>>>((v19 + 8), a6, *a1 + 1056);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DIMacro,llvm::DenseSet<llvm::DIMacro*,llvm::MDNodeInfo<llvm::DIMacro>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

llvm::MDNode *llvm::DIMacroFile::getImpl(uint64_t *a1, unsigned int a2, unsigned int a3, unint64_t a4, unint64_t a5, int a6, int a7)
{
  v11 = a2;
  v26 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    goto LABEL_9;
  }

  v14 = *a1;
  v23 = __PAIR64__(a3, a2);
  v24 = a4;
  v25 = a5;
  v22 = 0;
  v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIMacro>>((v14 + 1080), &v23, &v22);
  result = 0;
  if (v15)
  {
    v17 = v22 == (*(v14 + 1080) + 8 * *(v14 + 1096));
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    result = *v22;
  }

  if (!result && a7)
  {
LABEL_9:
    v23 = a4;
    v24 = a5;
    v18 = operator new(0x38uLL);
    v19 = v18;
    v18[6] = 0;
    v20 = *(v18 + 2) & 0xFFFFFFFFFFFFFC00;
    if (a6)
    {
      ++v20;
    }

    *(v18 + 1) = 0;
    *(v18 + 2) = v20 | 0x88;
    *v18 = 0;
    llvm::MDNode::MDNode((v18 + 8), a1, 31, a6, &v23, 2, 0, 0);
    *(v19 + 17) = v11;
    v19[12] = a3;
    result = llvm::MDNode::storeImpl<llvm::DIMacro,llvm::DenseSet<llvm::DIMacro*,llvm::MDNodeInfo<llvm::DIMacro>>>((v19 + 8), a6, *a1 + 1080);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *llvm::DIArgList::getImpl(uint64_t *a1, _BYTE *a2, uint64_t a3, unint64_t *a4, int a5)
{
  v5 = a4;
  if (a4)
  {
    v9 = 2;
LABEL_11:
    v15 = operator new(8 * v9 + 80) + 8 * v9;
    *(v15 + 2) = 0;
    *v15 = *v15 & 0xFFFFFFFFFFFFFC00 | (v5 != 0) | (4 * v9);
    if (v5)
    {
      bzero(v15 - 16, 8 * v9);
    }

    llvm::DIArgList::DIArgList((v15 + 16), a1, v5, a2, a3);
    return llvm::MDNode::storeImpl<llvm::DIArgList,llvm::DenseSet<llvm::DIArgList*,llvm::MDNodeInfo<llvm::DIArgList>>>((v15 + 16), v5, *a1 + 1128, v16);
  }

  v11 = *a1;
  v17[0] = a2;
  v17[1] = a3;
  v18 = 0;
  v12 = llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIArgList>>((v11 + 1128), v17, &v18, a4);
  result = 0;
  if (v12)
  {
    v14 = v18 == (*(v11 + 1128) + 8 * *(v11 + 1144));
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    result = *v18;
  }

  if (!result && a5)
  {
    v9 = 0;
    goto LABEL_11;
  }

  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::DIArgList,llvm::DenseSet<llvm::DIArgList*,llvm::MDNodeInfo<llvm::DIArgList>>>(llvm::MDNode *this, int a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  v6 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v6, a4, v7);
    return v6;
  }

  return v4;
}

uint64_t llvm::DIArgList::handleChangedOperand(__n128 *a1, uint64_t a2, uint64_t a3)
{
  llvm::DIArgList::untrack(a1);
  v9 = a1->n128_u8[1] & 0x7F;
  if ((a1->n128_u8[1] & 0x7F) == 0)
  {
    llvm::MDNode::eraseFromStore(a1, v6, v7, v8);
  }

  v10 = a1[1].n128_u32[2];
  if (v10)
  {
    v11 = a1[1].n128_u64[0];
    v12 = 8 * v10;
    do
    {
      if (v11 == a2)
      {
        v13 = a3;
        if (!a3)
        {
          v14 = llvm::UndefValue::get(**(*v11 + 128), v6);
          v13 = llvm::ValueAsMetadata::get(v14, v15);
        }

        *v11 = v13;
      }

      v11 += 8;
      v12 -= 8;
    }

    while (v12);
  }

  if (!v9 && llvm::MDNode::uniquify(a1, v6, v7, v8) != a1)
  {
    llvm::MDNode::storeDistinctInContext(a1);
  }

  return llvm::DIArgList::track(a1);
}

unint64_t llvm::DIArgList::untrack(unint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(this + 16);
    v3 = 8 * v1;
    do
    {
      if (*v2)
      {
        this = llvm::MetadataTracking::untrack(v2, *v2);
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
  }

  return this;
}

uint64_t llvm::DIArgList::track(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 16);
    v4 = 8 * v1;
    do
    {
      if (*v3)
      {
        this = llvm::MetadataTracking::track(v3, *v3, v2 | 2);
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  return this;
}

llvm::MDNode *llvm::DIArgList::DIArgList(llvm::MDNode *this, uint64_t a2, char a3, _BYTE *__src, uint64_t a5)
{
  *this = 33;
  *(this + 1) = 0;
  *(this + 1) = 0;
  *(this + 1) = a2;
  *(this + 1) = a3 & 0x7F;
  if ((a3 & 0x7F) == 0)
  {
    llvm::MDNode::countUnresolvedOperands(this);
  }

  *(this + 2) = this + 32;
  *(this + 3) = 0x400000000;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(this + 4, __src, &__src[8 * a5]);
  llvm::DIArgList::track(this);
  return this;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILocation>>(uint64_t *a1, int *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::DILocation>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::DILocation>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::DILocation>::getHashValue(int *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v4);
  v4 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::Metadata *,llvm::Metadata *,BOOL>(&v4, 0, v5, v6, a1 + 1, a1 + 1, a1 + 2, a1 + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::Metadata *,llvm::Metadata *,BOOL>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, uint64_t *a6, uint64_t *a7, char *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,BOOL>(a1, v17, v14, a4, a7, a8);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,BOOL>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, char *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

BOOL llvm::MDNodeKeyImpl<llvm::DILocation>::isKeyOf(uint64_t a1, uint64_t a2)
{
  if (*a1 != *(a2 + 4) || *(a1 + 4) != *(a2 + 2))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 - 16);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 32);
    if (v2 == *v4)
    {
      v5 = *(a1 + 16);
      if (*(a2 - 24) == 2)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

    return 0;
  }

  v4 = (a2 - 16 - 8 * ((v3 >> 2) & 0xF));
  if (v2 != *v4)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if ((*(a2 - 16) & 0x3C0) == 0x80)
  {
LABEL_6:
    v6 = v4[1];
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  if (v5 != v6)
  {
    return 0;
  }

  return *(a1 + 24) == *(a2 + 1) >> 7;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::LookupBucketFor<llvm::DILocation *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::InsertIntoBucketImpl<llvm::DILocation *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::LookupBucketFor<llvm::DILocation *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::DILocation>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::DILocation>::getHashValue(v17);
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

uint64_t llvm::MDNodeKeyImpl<llvm::DILocation>::MDNodeKeyImpl(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 2);
  *result = *(a2 + 4);
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
    if (*(a2 - 24) == 2)
    {
      v6 = *(a2 - 32);
      goto LABEL_9;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if ((*v3 & 0x3C0) != 0x80)
  {
    goto LABEL_10;
  }

  v6 = &v3[-((*v3 >> 2) & 0xFLL)];
LABEL_9:
  v7 = v6[1];
LABEL_11:
  *(result + 16) = v7;
  *(result + 24) = *(a2 + 1) >> 7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::InsertIntoBucketImpl<llvm::DILocation *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
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

  llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::LookupBucketFor<llvm::DILocation *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::LookupBucketFor<llvm::DILocation *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::GenericDINode>>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    HashValue = llvm::MDNodeKeyImpl<llvm::GenericDINode>::getHashValue(a2);
    v8 = 0;
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = HashValue & v9;
      v12 = (v6 + 8 * (HashValue & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeKeyImpl<llvm::GenericDINode>::isKeyOf(a2, v13))
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

unint64_t llvm::MDNodeKeyImpl<llvm::GenericDINode>::getHashValue(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v5);
  v5 = v2;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<int,llvm::hash_code>(&v5, 0, v6, v7, (a1 + 36), (a1 + 40));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::MDNodeKeyImpl<llvm::GenericDINode>::isKeyOf(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 36) == *(a2 + 2) && ((v2 = *(a2 - 16), (v2 & 2) != 0) ? (v3 = *(a2 - 32)) : (v3 = (a2 - 16 - 8 * ((v2 >> 2) & 0xF))), *(a1 + 40) == *v3))
  {
    return llvm::MDNodeOpsKey::compareOps<llvm::GenericDINode>(a1, a2, 1u);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::MDNodeOpsKey::compareOps<llvm::GenericDINode>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 32) != *(a2 + 4))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *a1;
  }

  else
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 16);
  }

  return llvm::MDNodeOpsKey::compareOps<llvm::MDOperand>(v6, v5, a2, a3);
}

uint64_t llvm::MDNodeOpsKey::compareOps<llvm::MDOperand>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a3 - 16);
  if ((v4 & 2) == 0)
  {
    if (a2 == ((v4 >> 6) & 0xF) - a4)
    {
      v5 = a3 - 16 - 8 * ((v4 >> 2) & 0xF);
      if (a2)
      {
        goto LABEL_4;
      }

      return 1;
    }

    return 0;
  }

  if (a2 != *(a3 - 24) - a4)
  {
    return 0;
  }

  v5 = *(a3 - 32);
  if (!a2)
  {
    return 1;
  }

LABEL_4:
  v6 = (v5 + 8 * a4);
  v7 = 8 * a2 - 8;
  do
  {
    v9 = *a1++;
    v8 = v9;
    v10 = *v6++;
    v12 = v8 == v10;
    v11 = v8 == v10;
    v12 = !v12 || v7 == 0;
    v7 -= 8;
  }

  while (!v12);
  return v11;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::LookupBucketFor<llvm::GenericDINode *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::InsertIntoBucketImpl<llvm::GenericDINode *>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::LookupBucketFor<llvm::GenericDINode *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::MDNodeKeyImpl<llvm::GenericDINode>::MDNodeKeyImpl(v17, *a2);
    HashValue = llvm::MDNodeKeyImpl<llvm::GenericDINode>::getHashValue(v17);
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