uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 24 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 24 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::grow(uint64_t a1, int a2)
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
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -1;
        }

        if (v14.i8[4])
        {
          result[3] = -1;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4 + 8;
      do
      {
        v17 = *(v16 - 8);
        if (v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *(v16 - 8);
          *(v18 + 1) = *v16;
          *v16 = 0;
          *(v16 + 8) = 0;
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 24 * v19 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_2750C1210)));
      if (v23.i8[0])
      {
        *result = -1;
      }

      if (v23.i8[4])
      {
        result[3] = -1;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

void std::__shared_ptr_emplace<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EBFD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

void *std::__split_buffer<llvm::orc::LookupState *>::emplace_back<llvm::orc::LookupState *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::grow(uint64_t a1, int a2)
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
      v15 = 72 * v3;
      v16 = v4 + 32;
      do
      {
        v17 = *(v16 - 32);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), v17, &v29);
          v18 = v29;
          *v29 = *(v16 - 32);
          *(v18 + 1) = *(v16 - 24);
          *(v16 - 24) = 0;
          *(v16 - 16) = 0;
          v18[3] = 0;
          v18[4] = 0;
          *(v18 + 10) = 0;
          v18[3] = *(v16 - 8);
          *(v16 - 8) = 0;
          *(v18 + 8) = *v16;
          *v16 = 0;
          v19 = *(v18 + 9);
          *(v18 + 9) = *(v16 + 4);
          *(v16 + 4) = v19;
          v20 = *(v18 + 10);
          *(v18 + 10) = *(v16 + 8);
          *(v16 + 8) = v20;
          v18[6] = 0;
          v18[7] = 0;
          *(v18 + 16) = 0;
          v18[6] = *(v16 + 16);
          *(v16 + 16) = 0;
          *(v18 + 14) = *(v16 + 24);
          *(v16 + 24) = 0;
          v21 = *(v18 + 15);
          *(v18 + 15) = *(v16 + 28);
          *(v16 + 28) = v21;
          v22 = *(v18 + 16);
          *(v18 + 16) = *(v16 + 32);
          *(v16 + 32) = v22;
          ++*(a1 + 8);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::destroyAll(v16 + 16);
          MEMORY[0x277C69E30](*(v16 + 16), 8);
          MEMORY[0x277C69E30](*(v16 - 8), 8);
          v23 = *(v16 - 16);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v23);
          }
        }

        v16 += 72;
        v15 -= 72;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = 72 * v24 - 72;
    v27 = vdupq_n_s64(v26 / 0x48);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v25), xmmword_2750C1210)));
      if (v28.i8[0])
      {
        *result = -4096;
      }

      if (v28.i8[4])
      {
        result[9] = -4096;
      }

      v25 += 2;
      result += 18;
    }

    while (((v26 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v25);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 72 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 72 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void std::__shared_ptr_emplace<llvm::orc::JITDylib::EmissionDepUnit>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EC010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

void std::__shared_ptr_emplace<llvm::orc::JITDylib::EmissionDepUnit>::__on_zero_shared(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::destroyAll(a1 + 56);
  MEMORY[0x277C69E30](*(a1 + 56), 8);
  v2 = *(a1 + 32);

  JUMPOUT(0x277C69E30);
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::InsertIntoBucketImpl<llvm::orc::JITDylib::EmissionDepUnit *>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 7) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 1) = 0u;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::InsertIntoBucketImpl<llvm::orc::JITDylib::EmissionDepUnit *>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::grow(a1, v6);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -8)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -16;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucketImpl<llvm::orc::NonOwningSymbolStringPtr>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -8)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::grow(uint64_t a1, int a2)
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
          *(v16 - 2) = -8;
        }

        if (v17.i8[4])
        {
          *v16 = -8;
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
        v20 = *v19;
        if ((*v19 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 4) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
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
        *(v28 - 2) = -8;
      }

      if (v29.i8[4])
      {
        *v28 = -8;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -8)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  return result;
}

char *llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *>>::grow(uint64_t a1, int a2)
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
          *(v16 - 2) = -8;
        }

        if (v17.i8[4])
        {
          *v16 = -8;
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
        v20 = *v19;
        if ((*v19 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
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
        *(v28 - 2) = -8;
      }

      if (v29.i8[4])
      {
        *v28 = -8;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 8 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -8)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -16;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 8 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::NonOwningSymbolStringPtr>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -8)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::grow(uint64_t a1, int a2)
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
          *(v16 - 1) = -8;
        }

        if (v17.i8[4])
        {
          *v16 = -8;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
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
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 8;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_2750C1210)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -8;
      }

      if (v28.i8[4])
      {
        *v27 = -8;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a2, *(a2 + 16), *a3, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::NonOwningSymbolStringPtr>(a2, a3, v10);
    v7 = result;
    *result = *a3;
    v8 = 1;
  }

  v9 = *a2 + 8 * *(a2 + 16);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a2, *(a2 + 16), *a3, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::InsertIntoBucketImpl<llvm::orc::JITDylib::EmissionDepUnit *>(a2, a3, v10);
    v7 = result;
    *result = *a3;
    v8 = 1;
  }

  v9 = *a2 + 8 * *(a2 + 16);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 8 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 8 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::InsertIntoBucketImpl<llvm::orc::JITDylib::EmissionDepUnit *>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::grow(uint64_t a1, int a2)
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

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
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
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 8;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_2750C1210)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(a1, a2, v8);
    v6 = *a2;
    v5[2] = 0;
    v5[3] = 0;
    *v5 = v6;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::grow(a1, v6);
  v8 = 0;
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::grow(uint64_t a1, int a2)
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
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = (v4 + 24);
      v19 = 32 * v3;
      do
      {
        v20 = *(v18 - 3);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          v21 = v31;
          v22 = *(v18 - 3);
          *(v31 + 24) = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = v22;
          *(v21 + 8) = *(v18 - 2);
          *(v18 - 2) = 0;
          *(v21 + 16) = *(v18 - 2);
          *(v18 - 2) = 0;
          LODWORD(v22) = *(v21 + 20);
          *(v21 + 20) = *(v18 - 1);
          *(v18 - 1) = v22;
          LODWORD(v22) = *(v21 + 24);
          *(v21 + 24) = *v18;
          *v18 = v22;
          ++*(a1 + 8);
          MEMORY[0x277C69E30](0, 8);
        }

        v18 += 8;
        v19 -= 32;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0x7FFFFFFFFFFFFFFLL;
    v26 = v25 & 0x7FFFFFFFFFFFFFFLL;
    v27 = (v25 & 0x7FFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 32;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_2750C1210)));
      if (v30.i8[0])
      {
        *(v29 - 4) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 8;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<llvm::orc::JITDylib::EmissionDepUnit **>::emplace_back<llvm::orc::JITDylib::EmissionDepUnit **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::JITDylib::EmissionDepUnit **>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<llvm::orc::JITDylib::EmissionDepUnit **>::emplace_front<llvm::orc::JITDylib::EmissionDepUnit **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::JITDylib::EmissionDepUnit **>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::JITDylib::EmissionDepUnit **>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (!v2 && !*(result + 12))
  {
    return result;
  }

  v3 = *(result + 16);
  if (v3 <= 4 * v2 || v3 < 0x41)
  {
    if (!v3)
    {
LABEL_24:
      v1[1] = 0;
      return result;
    }

    v10 = *result;
    v11 = 32 * v3;
    while (1)
    {
      if (*v10 == -8192)
      {
        goto LABEL_22;
      }

      if (*v10 != -4096)
      {
        break;
      }

LABEL_23:
      v10 += 4;
      v11 -= 32;
      if (!v11)
      {
        goto LABEL_24;
      }
    }

    result = MEMORY[0x277C69E30](v10[1], 8);
LABEL_22:
    *v10 = -4096;
    goto LABEL_23;
  }

  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::destroyAll(result);
  if (!v2)
  {
    if (*(v1 + 4))
    {
      result = MEMORY[0x277C69E30](*v1, 8);
      *v1 = 0;
      v1[1] = 0;
      *(v1 + 4) = 0;
      return result;
    }

    goto LABEL_24;
  }

  v4 = 1 << (33 - __clz(v2 - 1));
  if (v4 <= 64)
  {
    v5 = 64;
  }

  else
  {
    v5 = v4;
  }

  if (v5 == *(v1 + 4))
  {
    v6 = 0;
    v1[1] = 0;
    v7 = vdupq_n_s64((v5 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL);
    v8 = (*v1 + 32);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
      if (v9.i8[0])
      {
        *(v8 - 4) = -4096;
      }

      if (v9.i8[4])
      {
        *v8 = -4096;
      }

      v6 += 2;
      v8 += 8;
    }

    while (((v5 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL) - ((v5 - 1) & 1) + 2 != v6);
  }

  else
  {
    MEMORY[0x277C69E30](*v1, 8);
    v12 = (4 * v5 / 3 + 1) | ((4 * v5 / 3 + 1) >> 1);
    v13 = v12 | (v12 >> 2) | ((v12 | (v12 >> 2)) >> 4);
    LODWORD(v13) = (((v13 | (v13 >> 8)) >> 16) | v13 | (v13 >> 8)) + 1;
    *(v1 + 4) = v13;
    result = operator new(32 * v13, 8uLL);
    *v1 = result;
    v1[1] = 0;
    v14 = *(v1 + 4);
    if (v14)
    {
      v15 = 0;
      v16 = v14 + 0x7FFFFFFFFFFFFFFLL;
      v17 = v16 & 0x7FFFFFFFFFFFFFFLL;
      v18 = (v16 & 0x7FFFFFFFFFFFFFFLL) - (v16 & 1) + 2;
      v19 = vdupq_n_s64(v17);
      v20 = (result + 32);
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(vdupq_n_s64(v15), xmmword_2750C1210)));
        if (v21.i8[0])
        {
          *(v20 - 4) = -4096;
        }

        if (v21.i8[4])
        {
          *v20 = -4096;
        }

        v15 += 2;
        v20 += 8;
      }

      while (v18 != v15);
    }
  }

  return result;
}

uint64_t std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::deque(uint64_t result, void *a2)
{
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  v2 = a2[1];
  if (a2[2] != v2)
  {
    v3 = a2[4];
    v4 = (v3 >> 6) & 0x3FFFFFFFFFFFFF8;
    v5 = (v2 + v4);
    v6 = v3 & 0x1FF;
    v7 = (*(v2 + v4) + 8 * v6);
    v8 = a2[5] + v3;
    v9 = (v8 >> 6) & 0x3FFFFFFFFFFFFF8;
    if ((*(v2 + v9) + 8 * (v8 & 0x1FF)) != v7)
    {
      v10 = v8 & 0x1FF | ((v9 - v4) << 6);
      v11 = v10 - v6;
      if (v10 != v6)
      {
        if (((v11 + 1) & 0x1FF) != 0)
        {
          v12 = ((v11 + 1) >> 9) + 1;
        }

        else
        {
          v12 = (v11 + 1) >> 9;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::JITDylib::EmissionDepUnit **>>(v12);
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = v11 + (-MEMORY[0] >> 3);
        if (v16 < 1)
        {
          v18 = 511 - v16;
          LOWORD(v16) = ~(511 - v16);
          v17 = -8 * (v18 >> 9);
        }

        else
        {
          v17 = 8 * (v16 >> 9);
        }

        v19 = *v17 + 8 * (v16 & 0x1FF);
        if (v19)
        {
          do
          {
            v20 = v19;
            if (v15 != v17)
            {
              v20 = *v15 + 4096;
            }

            if (v13 == v20)
            {
              v20 = v13;
            }

            else
            {
              v21 = v13;
              do
              {
                v22 = *v7++;
                *v21++ = v22;
                if ((v7 - *v5) == 4096)
                {
                  v23 = v5[1];
                  ++v5;
                  v7 = v23;
                }
              }

              while (v21 != v20);
            }

            v14 += (v20 - v13) >> 3;
            if (v15 == v17)
            {
              break;
            }

            v24 = v15[1];
            ++v15;
            v13 = v24;
          }

          while (v24 != v19);
          *(result + 40) = v14;
        }
      }
    }
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*a1, *(a1 + 16), *a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a2, v8);
    v5 = v6;
    if ((*v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v6 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    *v6 = 0;
    *v6 = *a2;
    *a2 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  return v5;
}

uint64_t std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::__emplace_unique_key_args<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>,std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> const&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a2, v8);
    v5 = v6;
    if ((*v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v6 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    *v6 = 0;
    *v6 = *a2;
    *a2 = 0;
    *(v6 + 7) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    *(v6 + 1) = 0u;
  }

  return v5;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::erase(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), a2, &v4))
  {
    *v4 = -16;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

char *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::clear(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2)
  {
    v3 = *(result + 4);
    if (v3 > 4 * v2 && v3 >= 0x41)
    {
      v4 = 1 << (33 - __clz(v2 - 1));
      if (v4 <= 64)
      {
        v5 = 64;
      }

      else
      {
        v5 = v4;
      }

LABEL_10:
      if (v5 == v3)
      {
        v6 = 0;
        *(result + 1) = 0;
        v7 = v3 + 0x1FFFFFFFFFFFFFFFLL;
        v8 = v7 & 0x1FFFFFFFFFFFFFFFLL;
        v9 = (v7 & 0x1FFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
        v10 = vdupq_n_s64(v8);
        v11 = (*result + 8);
        do
        {
          v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
          if (v12.i8[0])
          {
            *(v11 - 1) = -4096;
          }

          if (v12.i8[4])
          {
            *v11 = -4096;
          }

          v6 += 2;
          v11 += 2;
        }

        while (v9 != v6);
      }

      else
      {
        result = MEMORY[0x277C69E30](*result, 8);
        if (v5)
        {
          v20 = (4 * v5 / 3u + 1) | ((4 * v5 / 3u + 1) >> 1);
          v21 = v20 | (v20 >> 2) | ((v20 | (v20 >> 2)) >> 4);
          LODWORD(v21) = (((v21 | (v21 >> 8)) >> 16) | v21 | (v21 >> 8)) + 1;
          *(v1 + 4) = v21;
          result = operator new(8 * v21, 8uLL);
          *v1 = result;
          *(v1 + 1) = 0;
          v22 = *(v1 + 4);
          if (v22)
          {
            v23 = 0;
            v24 = v22 + 0x1FFFFFFFFFFFFFFFLL;
            v25 = v24 & 0x1FFFFFFFFFFFFFFFLL;
            v26 = (v24 & 0x1FFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
            v27 = vdupq_n_s64(v25);
            v28 = result + 8;
            do
            {
              v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
              if (v29.i8[0])
              {
                *(v28 - 1) = -4096;
              }

              if (v29.i8[4])
              {
                *v28 = -4096;
              }

              v23 += 2;
              v28 += 2;
            }

            while (v26 != v23);
          }
        }

        else
        {
          *v1 = 0;
          *(v1 + 1) = 0;
          *(v1 + 4) = 0;
        }
      }

      return result;
    }
  }

  else
  {
    if (!*(result + 3))
    {
      return result;
    }

    v3 = *(result + 4);
    if (v3 > 0x40)
    {
      v5 = 0;
      goto LABEL_10;
    }
  }

  if (v3)
  {
    v13 = 0;
    v14 = v3 + 0x1FFFFFFFFFFFFFFFLL;
    v15 = v14 & 0x1FFFFFFFFFFFFFFFLL;
    v16 = (v14 & 0x1FFFFFFFFFFFFFFFLL) - (v14 & 1) + 2;
    v17 = vdupq_n_s64(v15);
    v18 = (*result + 8);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v13), xmmword_2750C1210)));
      if (v19.i8[0])
      {
        *(v18 - 1) = -4096;
      }

      if (v19.i8[4])
      {
        *v18 = -4096;
      }

      v13 += 2;
      v18 += 2;
    }

    while (v16 != v13);
  }

  *(result + 1) = 0;
  return result;
}

uint64_t llvm::Expected<std::set<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>>::~Expected(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::destroy(a1, *(a1 + 8));
  }

  return a1;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::shrink_and_clear(char *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  if (v2)
  {
    v4 = *result;
    v5 = 16 * v2;
    do
    {
      if ((*v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 16;
      v5 -= 16;
    }

    while (v5);
  }

  if (v3)
  {
    v6 = 1 << (33 - __clz(v3 - 1));
    if (v6 <= 64)
    {
      v7 = 64;
    }

    else
    {
      v7 = v6;
    }

    v8 = *(result + 4);
    result = *result;
    if (v7 == v8)
    {
      v9 = 0;
      *(v1 + 1) = 0;
      v10 = vdupq_n_s64((v7 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
      v11 = result + 16;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v9), xmmword_2750C1210)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -8;
        }

        if (v12.i8[4])
        {
          *v11 = -8;
        }

        v9 += 2;
        v11 += 4;
      }

      while (((v7 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((v7 - 1) & 1) + 2 != v9);
      return result;
    }
  }

  else
  {
    if (!*(result + 4))
    {
      *(result + 1) = 0;
      return result;
    }

    v7 = 0;
    result = *result;
  }

  MEMORY[0x277C69E30](result, 8);

  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::init(v1, v7);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::try_emplace<llvm::JITSymbolFlags const&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _WORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&,llvm::JITSymbolFlags const&>(a1, v12, a2, a3);
    v9 = result;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

_WORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&,llvm::JITSymbolFlags const&>(uint64_t a1, void *a2, uint64_t *a3, _WORD *a4)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v7 = *a3;
  *result = *a3;
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v7 + 8), 1uLL);
  }

  result[4] = *a4;
  return result;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::erase(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), a2, &v4))
  {
    *v4 = -8192;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

void llvm::orc::GDBJITDebugInfoRegistrationPlugin::Create(llvm::orc::GDBJITDebugInfoRegistrationPlugin *this, llvm::orc::ExecutionSession *a2, llvm::orc::JITDylib *a3, const llvm::Triple *a4)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 11);
  if (v6 == 5)
  {
    v7 = "_llvm_orc_registerJITLoaderGDBAllocAction";
  }

  else
  {
    v7 = "llvm_orc_registerJITLoaderGDBAllocAction";
  }

  if (v6 == 5)
  {
    v8 = 41;
  }

  else
  {
    v8 = 40;
  }

  llvm::orc::ExecutionSession::intern(this, v7, v8, &v10);
  v11[0] = a2;
  v9 = v10;
  if (v10 - 1 < 0xFFFFFFFFFFFFFFE0)
  {
    atomic_fetch_add(v10 + 1, 1uLL);
    llvm::orc::ExecutionSession::lookup(this, v11, 1uLL, &v9);
  }

  llvm::orc::ExecutionSession::lookup(this, v11, 1uLL, &v9);
}

void llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a3 + 180) == 5)
  {
    v3 = *(a3 + 160);
    v4 = v3 == 38 || v3 == 3;
    if (v4 && *(a3 + 208))
    {
      v5 = *(a3 + 216);
      if (v5)
      {
        v6 = 24 * v5;
        v7 = *(a3 + 200);
        while (*v7 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v7 += 3;
          v6 -= 24;
          if (!v6)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v7 = *(a3 + 200);
      }

      v8 = *(a3 + 200) + 24 * v5;
      if (v7 != v8)
      {
LABEL_15:
        v9 = v7[2];
        if (*(v9 + 8) >= 8uLL && **v9 == 0x2C46524157445F5FLL)
        {
          v10 = *(*a2 + 32);
          operator new();
        }

        while (1)
        {
          v7 += 3;
          if (v7 == v8)
          {
            break;
          }

          if (*v7 < 0xFFFFFFFFFFFFFFFELL)
          {
            if (v7 != v8)
            {
              goto LABEL_15;
            }

            break;
          }
        }
      }
    }
  }

LABEL_22:
  v11 = *MEMORY[0x277D85DE8];
}

void std::__shared_ptr_emplace<anonymous namespace::MachODebugObjectSynthesizer<llvm::orc::MachO64LE>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EC0A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t anonymous namespace::MachODebugObjectSynthesizer<llvm::orc::MachO64LE>::~MachODebugObjectSynthesizer(uint64_t a1)
{
  *a1 = &unk_2883EC0D8;
  v2 = *(a1 + 504);
  if (v2 != (a1 + 520))
  {
    free(v2);
  }

  v3 = *(a1 + 232);
  if (v3 != (a1 + 248))
  {
    free(v3);
  }

  v4 = *(a1 + 208);
  if (v4)
  {
    *(a1 + 216) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(a1 + 152, *(a1 + 160));
  v6 = *(a1 + 128);
  if (v6)
  {
    *(a1 + 136) = v6;
    operator delete(v6);
  }

  v8 = (a1 + 96);
  std::vector<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::__list_imp<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment>>::clear((a1 + 72));
  return a1;
}

void anonymous namespace::MachODebugObjectSynthesizer<llvm::orc::MachO64LE>::~MachODebugObjectSynthesizer(uint64_t a1)
{

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::MachODebugObjectSynthesizer<llvm::orc::MachO64LE>::startSynthesis(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  llvm::jitlink::LinkGraph::createSection();
}

uint64_t *anonymous namespace::MachODebugObjectSynthesizer<llvm::orc::MachO64LE>::completeSynthesisAndRegister@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v46[3] = *MEMORY[0x277D85DE8];
  if (result[3])
  {
    v3 = result;
    v4 = *(result + 128);
    if (v4)
    {
      v5 = result[63];
      v6 = &v5[2 * v4];
      do
      {
        llvm::jitlink::SectionRange::SectionRange(&v31, *v5);
        v7 = v31;
        if (v31)
        {
          v8 = *v31;
        }

        else
        {
          v8 = 0;
        }

        v9 = v5[1];
        *(v9 + 32) = v8;
        v10 = v32;
        if (v32)
        {
          v10 = (*(v32 + 4) + *v32);
        }

        if (v7)
        {
          *(v9 + 40) = &v10[-*v7];
          LODWORD(v7) = *v7;
        }

        else
        {
          *(v9 + 40) = v10;
        }

        *(v9 + 48) = v7;
        v5 += 2;
      }

      while (v5 != v6);
    }

    v11 = *(v3 + 60);
    if (v11)
    {
      v12 = v3[29];
      v13 = &v12[2 * v11];
      do
      {
        if (*(*v12 + 40) != 1)
        {
          getErrorErrorCat();
          operator new();
        }

        v14 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(*v12 + 32);
        v15 = *(*v14 + 32);
        v16 = v12[1];
        *(v16 + 104) = *(*v14 + 24);
        *(v16 + 112) = v15;
        *(v16 + 64) |= 0x2000000u;
        v12 += 2;
      }

      while (v12 != v13);
    }

    v17 = v3[26];
    v18 = v3[27];
    while (v17 != v18)
    {
      v19 = *v17;
      *(*(v17[1] + 8) + 16 * v17[2] + 8) = (*(*v17 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v17 + 8);
      *(*(v17[3] + 8) + 16 * v17[4] + 8) = *(v19 + 24);
      v17 += 5;
    }

    llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::write((v3 + 4), *(v3[3] + 24), *(v3[3] + 32));
    llvm::jitlink::SectionRange::SectionRange(&v27, *(v3[3] + 16));
    if (v27)
    {
      v20 = *v27;
    }

    else
    {
      v20 = 0;
    }

    if (v28)
    {
      v21 = v28[4] + *v28;
    }

    else
    {
      v21 = 0;
    }

    v22 = v3[1];
    v23 = v3[2];
    v44 = v46;
    v45 = xmmword_2750C12E0;
    llvm::SmallVectorImpl<char>::resizeImpl<false>(&v44, 0x11uLL);
    v24 = v45;
    if (v45 < 8 || (v25 = v44, *v44 = v20, (v24 & 0xFFFFFFFFFFFFFFF8) == 8) || (v25[1] = v21, v24 == 16))
    {
      getErrorErrorCat();
      v31 = 3;
      v32 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
    }

    *(v25 + 16) = 1;
    v41 = v43;
    v42 = xmmword_2750C12E0;
    if (v45)
    {
      llvm::SmallVectorImpl<char>::operator=(&v41, &v44);
      v31 = v23;
      v32 = v34;
      v33 = xmmword_2750C12E0;
      if (v42)
      {
        llvm::SmallVectorImpl<char>::operator=(&v32, &v41);
      }
    }

    else
    {
      v31 = v23;
      v32 = v34;
      v33 = xmmword_2750C12E0;
    }

    llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::Expected<llvm::orc::shared::WrapperFunctionCall>(&v29, &v31);
    if (v32 != v34)
    {
      free(v32);
    }

    if (v41 != v43)
    {
      free(v41);
    }

    if (v44 != v46)
    {
      free(v44);
    }

    v31 = v29;
    v32 = v34;
    v33 = xmmword_2750C12E0;
    if (v30[1])
    {
      llvm::SmallVectorImpl<char>::operator=(&v32, v30);
    }

    v35 = 0;
    v37 = 0;
    v40 = 0;
    v39 = 0u;
    v36 = &v39;
    v38 = 24;
    std::vector<llvm::orc::shared::AllocActionCallPair>::push_back[abi:nn200100](v22 + 272, &v31);
    if (v36 != &v39)
    {
      free(v36);
    }

    if (v32 != v34)
    {
      free(v32);
    }

    result = llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::~Expected(&v29);
  }

  *a2 = 0;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::__list_imp<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        (*v2[2])();
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::addSymbol(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = a1[17];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3 == 0;
  }

  if (!v11)
  {
    *(&v25 + 1) = 0;
    v26 = 0;
    *&v25 = "";
    std::__tree<std::__value_type<llvm::StringRef,unsigned long>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,unsigned long>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,unsigned long>>>::__emplace_unique_key_args<llvm::StringRef,std::pair<llvm::StringRef,unsigned long>>((a1 + 15), &v25);
    v10 = a1[17];
  }

  *&v25 = a2;
  *(&v25 + 1) = a3;
  v26 = v10;
  v12 = *(std::__tree<std::__value_type<llvm::StringRef,unsigned long>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,unsigned long>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,unsigned long>>>::__emplace_unique_key_args<llvm::StringRef,std::pair<llvm::StringRef,unsigned long>>((a1 + 15), &v25) + 48);
  v13 = a1[13];
  v14 = a1[14];
  if (v13 >= v14)
  {
    v16 = a1[12];
    v17 = v13 - v16;
    v18 = (v13 - v16) >> 4;
    v19 = v18 + 1;
    if ((v18 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v20 = v14 - v16;
    if (v20 >> 3 > v19)
    {
      v19 = v20 >> 3;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF0)
    {
      v21 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (!(v21 >> 60))
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v22 = 16 * v18;
    *v22 = v12;
    *(v22 + 4) = a4;
    *(v22 + 5) = a5;
    *(v22 + 6) = 0;
    *(v22 + 8) = 0;
    v15 = 16 * v18 + 16;
    memcpy(0, v16, v17);
    a1[12] = 0;
    a1[13] = v15;
    a1[14] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v13 = v12;
    *(v13 + 4) = a4;
    *(v13 + 5) = a5;
    *(v13 + 6) = 0;
    v15 = v13 + 16;
    *(v13 + 8) = 0;
  }

  a1[13] = v15;
  v23 = ((v15 - a1[12]) >> 4) - 1;
  return a1 + 11;
}

unint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::layout(uint64_t a1)
{
  llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::makeStringTable(a1);
  if (*(a1 + 144) != *(a1 + 152))
  {
    llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::addLoadCommand<(llvm::MachO::LoadCommandType)2>();
  }

  v2 = (a1 + 40);
  v3 = *(a1 + 48);
  v4 = 32;
  if (v3 != a1 + 40)
  {
    do
    {
      v5 = (*(v3 + 112) - *(v3 + 104)) >> 3;
      v6 = (*(v3 + 28) + 80 * v5);
      *(v3 + 28) = v6;
      *(v3 + 88) = v5;
      v4 += v6;
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  while (v7 != v8)
  {
    v9 = *v7++;
    v4 += (*(*v9 + 16))(v9);
  }

  *(a1 + 20) = v4 - 32;
  v10 = *(a1 + 48);
  if (v10 == v2)
  {
    result = v4;
  }

  else
  {
    v11 = 0;
    v12 = *(a1 + 12);
    v13 = *(a1 + 48);
    result = v4;
    do
    {
      v13[6] = v11;
      v13[8] = v4;
      v15 = v13[13];
      v16 = v13[14];
      if (v15 != v16)
      {
        result = v4;
        do
        {
          v17 = *v15;
          v18 = 1 << *(*v15 + 52);
          v19 = (result + v18 - 1) & -v18;
          v20 = *(*v15 + 112);
          if (v20)
          {
            v21 = v19;
            *(v17 + 48) = v19;
          }

          else
          {
            v21 = *(v17 + 48);
          }

          *(v17 + 32) = v11 - v4 + v21;
          *(v17 + 40) = v20;
          result = v19 + v20;
          ++v15;
        }

        while (v15 != v16);
      }

      v22 = result - v4;
      v13[9] = result - v4;
      if (v12 != 1)
      {
        v22 = (v22 + *(a1 + 32) - 1) / *(a1 + 32) * *(a1 + 32);
      }

      v13[7] = v22;
      v11 += v22;
      v13 = v13[1];
      v4 = result;
    }

    while (v13 != v2);
  }

  v23 = *(a1 + 96);
  v24 = *(a1 + 104);
  if (v23 != v24)
  {
    v25 = *(a1 + 144);
    v26 = *(a1 + 96);
    do
    {
      *v26 = *(v25 + 24 * *v26 + 16);
      v26 += 16;
    }

    while (v26 != v24);
  }

  v27 = (v24 - v23) >> 4;
  if (v10 != v2)
  {
    v28 = 0;
    v29 = v10;
    do
    {
      v30 = v29[13];
      v31 = v29[14];
      while (v30 != v31)
      {
        ++v28;
        v32 = *v30;
        v32[15] = v28;
        v32[16] = v27;
        v34 = v32[17];
        v33 = v32[18];
        v35 = v33 - v34;
        if (v33 != v34)
        {
          v36 = *(a1 + 144);
          v37 = v32[4];
          do
          {
            *(v34 + 5) = v28;
            *v34 = *(v36 + 24 * *v34 + 16);
            *(v34 + 1) += v37;
            v34 += 4;
          }

          while (v34 != v33);
        }

        v27 += v35 >> 4;
        ++v30;
      }

      v29 = v29[1];
    }

    while (v29 != v2);
    v38 = 0;
    do
    {
      v39 = v10[13];
      v40 = v10[14];
      while (v39 != v40)
      {
        v41 = *v39;
        v42 = *(*v39 + 160);
        v43 = *(*v39 + 168);
        if (v42 != v43)
        {
          if (v38)
          {
            v44 = result;
          }

          else
          {
            v44 = (result + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          v45 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3);
          *(v41 + 56) = v44;
          *(v41 + 60) = v45;
          do
          {
            v47 = *(v42 + 8);
            v46 = *(v42 + 16);
            if (v46 == 0xFFFFFFFFLL)
            {
              v48 = v47[15];
            }

            else
            {
              v48 = *v47 + v46;
            }

            *(v42 + 4) = v48 & 0xFFFFFF | (*(v42 + 7) << 24);
            v42 += 24;
          }

          while (v42 != v43);
          result = v44 + 8 * v45;
          v38 = 1;
        }

        ++v39;
      }

      v10 = v10[1];
    }

    while (v10 != v2);
  }

  if (v27)
  {
    result = (result + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x10] = result;
    MEMORY[0x14] = v27;
    v49 = *(a1 + 152);
    if (*(a1 + 144) != v49)
    {
      v50 = result + 16 * v27;
      v51 = *(v49 - 8) + *(v49 - 16) + 1;
      MEMORY[0x18] = v50;
      MEMORY[0x1C] = v51;
      return v51 + v50;
    }
  }

  return result;
}

uint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment::~Segment(uint64_t a1)
{
  *a1 = &unk_2883EC108;
  v3 = (a1 + 88);
  std::vector<std::unique_ptr<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section,std::default_delete<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  return a1;
}

void llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment::~Segment(uint64_t a1)
{
  *a1 = &unk_2883EC108;
  v1 = (a1 + 88);
  std::vector<std::unique_ptr<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section,std::default_delete<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section>>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Segment::write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v22 = *(a1 + 16);
  v8 = *(a1 + 48);
  v7 = *(a1 + 64);
  if (a5)
  {
    v5 = vrev32_s8(v5);
    v6 = vrev64q_s8(v6);
    v8 = vrev64q_s8(v8);
    v7 = vrev32q_s8(v7);
  }

  v9 = a2 + a4;
  *v9 = v5;
  *(v9 + 8) = v22;
  *(v9 + 24) = v6;
  *(v9 + 40) = v8;
  *(v9 + 56) = v7;
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  while (v10 != v11)
  {
    v12 = *v10;
    v14 = (*v10)[2];
    v13 = (*v10)[3];
    v15 = *(*v10)[4].i8;
    v16 = (*v10)[4].u32[2];
    if (a5)
    {
      v14 = vrev64q_s8(v14);
      v13 = vrev32q_s8(v13);
      v15 = vrev32_s8(v15);
      v16 = bswap32(v16);
    }

    v17 = v12[4].i32[3];
    v18 = a2 + a4;
    v19 = *v12;
    *(v18 + 88) = v12[1];
    *(v18 + 72) = v19;
    *(v18 + 104) = v14;
    *(v18 + 120) = v13;
    *(v18 + 136) = v15;
    *(v18 + 144) = v16;
    *(v18 + 148) = v17;
    ++v10;
    a4 += 80;
  }

  result = a4 + 72;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<std::unique_ptr<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section,std::default_delete<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section,std::default_delete<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section>>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::unique_ptr<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section,std::default_delete<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::Section>>::~unique_ptr[abi:nn200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[20];
    if (v3)
    {
      v2[21] = v3;
      operator delete(v3);
    }

    v4 = v2[17];
    if (v4)
    {
      v2[18] = v4;
      operator delete(v4);
    }

    MEMORY[0x277C69E40](v2, 0x1072C4036453466);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<llvm::StringRef,unsigned long>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,unsigned long>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,unsigned long>>>::__emplace_unique_key_args<llvm::StringRef,std::pair<llvm::StringRef,unsigned long>>(uint64_t a1, __int128 *a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = v2[4];
      v7 = v2[5];
      v11 = *a2;
      if ((llvm::StringRef::compare(&v11, v6, v7) & 0x80000000) == 0)
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    v8 = *a2;
    v9 = *(a2 + 1);
    v11 = *(v5 + 2);
    if ((llvm::StringRef::compare(&v11, v8, v9) & 0x80000000) == 0)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

void llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::makeStringTable(void *a1)
{
  v1 = a1[17];
  if (v1)
  {
    std::vector<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>::resize(a1 + 18, v1);
    v3 = a1[15];
    if (v3 != a1 + 16)
    {
      do
      {
        v4 = a1[18] + 24 * v3[6];
        *v4 = *(v3 + 2);
        *(v4 + 16) = 0;
        v5 = v3[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v3[2];
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != a1 + 16);
    }

    v8 = a1[18];
    v9 = a1[19];
    if (v8 != v9)
    {
      v10 = 0;
      do
      {
        *(v8 + 16) = v10;
        v10 += *(v8 + 8) + 1;
        v8 += 24;
      }

      while (v8 != v9);
    }
  }
}

void std::vector<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry,std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::StringTableEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t llvm::orc::MachOBuilderLoadCommandImplBase<(llvm::MachO::LoadCommandType)2>::write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = vrev32q_s8(v5);
  v8 = vrev32_s8(v6);
  if (a5)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s32(v9);
  v11 = a2 + a4;
  *v11 = vbslq_s8(v10, v7, v5);
  *(v11 + 16) = vbsl_s8(*v10.i8, v8, v6);
  return a4 + 24;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::__destruct_at_end[abi:nn200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::write(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(a1 + 16) = ((*(a1 + 72) - *(a1 + 64)) >> 3) + *(a1 + 56);
  v6 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v6;
  v7 = a1 + 40;
  v8 = *(a1 + 48);
  v9 = 32;
  while (v8 != v7)
  {
    v11 = *(v8 + 16);
    v10 = v8 + 16;
    v9 = (*(v11 + 24))(v10, a2, a3, v9, 0);
    v8 = *(v10 - 8);
  }

  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  while (v12 != v13)
  {
    v14 = *v12++;
    v9 = (*(*v14 + 24))(v14, a2, a3, v9, 0);
  }

  v15 = llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeSectionContent(a1, a2, a3, v9);
  v16 = llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeRelocations(a1, a2, a3, v15);
  result = llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeSymbols(a1, a2, a3, v16);
  v19 = *(a1 + 144);
  v18 = *(a1 + 152);
  if (v19 != v18)
  {
    v20 = result;
    do
    {
      result = memcpy(a2 + v20, *v19, *(v19 + 8));
      v21 = *(v19 + 8) + v20;
      v20 = v21 + 1;
      *(a2 + v21) = 0;
      v19 += 24;
    }

    while (v19 != v18);
  }

  return result;
}

uint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeSectionContent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a1 + 40);
  v6 = *(a1 + 48);
  if (v6 != (a1 + 40))
  {
    do
    {
      v8 = v6[13];
      v9 = v6[14];
      while (v8 != v9)
      {
        v10 = *v8;
        v11 = *(*v8 + 104);
        if (v11)
        {
          if (a4 != *(v10 + 48))
          {
            do
            {
              *(a2 + a4++) = 0;
              v10 = *v8;
            }

            while (a4 != *(*v8 + 48));
            v11 = *(v10 + 104);
          }

          memcpy((a2 + a4), v11, *(v10 + 112));
          a4 += *(*v8 + 112);
        }

        ++v8;
      }

      v6 = v6[1];
    }

    while (v6 != v5);
  }

  return a4;
}

uint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeRelocations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a1 + 40);
  v6 = *(a1 + 48);
  if (v6 != (a1 + 40))
  {
    do
    {
      v8 = v6[13];
      v9 = v6[14];
      while (v8 != v9)
      {
        v10 = *(*v8 + 160);
        v11 = *(*v8 + 168);
        v12 = a4 & 7;
        if (v10 != v11 && v12 != 0)
        {
          bzero((a2 + a4), 8 - v12);
          a4 -= a4 | 0xFFFFFFFFFFFFFFF8;
          v10 = *(*v8 + 160);
          v11 = *(*v8 + 168);
        }

        while (v10 != v11)
        {
          v14 = *v10;
          v10 += 3;
          *(a2 + a4) = v14;
          a4 += 8;
        }

        v8 += 8;
      }

      v6 = v6[1];
    }

    while (v6 != v5);
  }

  return a4;
}

uint64_t llvm::orc::MachOBuilder<llvm::orc::MachO64LE>::writeSymbols(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a1[12];
  v8 = a1[13];
  v9 = v8 - v7;
  v10 = a1 + 5;
  for (i = a1[6]; i != v10; i = i[1])
  {
    for (j = i[13]; j != i[14]; ++j)
    {
      v13 = *j;
      v9 += (*(v13 + 144) - *(v13 + 136)) >> 4;
    }
  }

  if (v9)
  {
    if ((a4 & 0xF) != 0)
    {
      bzero((a2 + a4), 16 - (a4 & 0xF));
      v4 = (v4 | 0xF) + 1;
      v7 = a1[12];
      v8 = a1[13];
    }

    while (v7 != v8)
    {
      v14 = *v7++;
      *(a2 + v4) = v14;
      v4 += 16;
    }

    for (k = a1[6]; k != v10; k = k[1])
    {
      v16 = k[13];
      v17 = k[14];
      while (v16 != v17)
      {
        v18 = *(*v16 + 136);
        v19 = *(*v16 + 144);
        while (v18 != v19)
        {
          v20 = *v18++;
          *(a2 + v4) = v20;
          v4 += 16;
        }

        v16 += 8;
      }
    }
  }

  return v4;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_0>(uint64_t *a1@<X0>, unint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  if (!llvm::jitlink::LinkGraph::findSectionByName(*(*a1 + 8), "__jitlink_synth_debug_object", 28, a2))
  {
    v5 = *(v4 + 8);
    if (*(v5 + 208))
    {
      v6 = *(v5 + 200);
      v7 = *(v5 + 216);
      if (v7)
      {
        v8 = 24 * v7;
        v9 = v6;
        while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v9 += 3;
          v8 -= 24;
          if (!v8)
          {
            goto LABEL_2;
          }
        }
      }

      else
      {
        v9 = v6;
      }

      v10 = &v6[3 * v7];
      if (v9 != v10)
      {
        v11 = &v33;
LABEL_12:
        v12 = v9[2];
        if (*(v12 + 8) >= 8uLL && **v12 == 0x2C46524157445F5FLL)
        {
          v28 = v11;
          v29 = v11;
          v30 = v11;
          v31 = 8;
          v32 = 0;
          v13 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v12 + 56);
          v15 = *(v12 + 56) + 8 * *(v12 + 72);
          if (v15 != v13)
          {
            v16 = v13;
            v17 = v14;
            do
            {
              v18 = *v16;
              llvm::SmallPtrSetImplBase::insert_imp(&v29, *(*v16 + 8));
              if (v19)
              {
                *(v18 + 16) |= 0x1000000000000000uLL;
              }

              do
              {
                ++v16;
              }

              while (v16 != v17 && (*v16 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v16 != v15);
          }

          v20 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v12 + 32);
          v22 = *(v12 + 32) + 8 * *(v12 + 48);
          if (v22 != v20)
          {
            v23 = v20;
            v24 = v21;
            do
            {
              v25 = *v23;
              imp = llvm::SmallPtrSetImplBase::find_imp(&v29, *v23);
              if (v30 == v29)
              {
                v27 = (&v31 + 4);
              }

              else
              {
                v27 = &v31;
              }

              if (imp == &v30[*v27])
              {
                llvm::jitlink::LinkGraph::addAnonymousSymbol(*(v4 + 8), v25, 0, 0, 0, 1);
              }

              do
              {
                ++v23;
              }

              while (v23 != v24 && (*v23 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v23 != v22);
          }

          if (v30 != v29)
          {
            free(v30);
          }

          v11 = v28;
        }

        while (1)
        {
          v9 += 3;
          if (v9 == v10)
          {
            break;
          }

          if (*v9 < 0xFFFFFFFFFFFFFFFELL)
          {
            if (v9 != v10)
            {
              goto LABEL_12;
            }

            break;
          }
        }
      }
    }
  }

LABEL_2:
  *a3 = 0;
}

__n128 llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::MoveImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_0>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::DestroyImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_0>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

__n128 llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::MoveImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_1>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::DestroyImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_1>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

__n128 llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::MoveImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_2>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::DestroyImpl<llvm::orc::GDBJITDebugInfoRegistrationPlugin::modifyPassConfigForMachO(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_2>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

llvm::raw_ostream *llvm::orc::operator<<(llvm::raw_ostream *this, uint64_t a2)
{
  v4 = *(this + 4);
  if (v4 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 123);
  }

  else
  {
    *(this + 4) = v4 + 1;
    *v4 = 123;
  }

  v5 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin(a2);
  v7 = *a2 + 8 * *(a2 + 16);
  if (v7 != v5)
  {
    v8 = v5;
    v9 = v6;
    v10 = 0;
    do
    {
      if (v10)
      {
        v11 = *(this + 4);
        if (v11 >= *(this + 3))
        {
          llvm::raw_ostream::write(this, 44);
        }

        else
        {
          *(this + 4) = v11 + 1;
          *v11 = 44;
        }
      }

      v12 = *(this + 4);
      if (v12 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 32);
      }

      else
      {
        *(this + 4) = v12 + 1;
        *v12 = 32;
      }

      v13 = *v8++;
      llvm::raw_ostream::operator<<(this, v13 + 2, *v13);
      while (v8 != v9 && (*v8 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        ++v8;
      }

      v10 = 1;
    }

    while (v8 != v7);
  }

  v14 = *(this + 4);
  if (v14 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 32);
  }

  else
  {
    *(this + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = *(this + 4);
  if (v15 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 125);
  }

  else
  {
    *(this + 4) = v15 + 1;
    *v15 = 125;
  }

  return this;
}

llvm::raw_ostream *llvm::orc::operator<<(llvm::raw_ostream *this, size_t ***a2)
{
  v4 = *(this + 4);
  if (v4 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 91);
  }

  else
  {
    *(this + 4) = v4 + 1;
    *v4 = 91;
  }

  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = 0;
    do
    {
      if (v7)
      {
        v8 = *(this + 4);
        if (v8 >= *(this + 3))
        {
          llvm::raw_ostream::write(this, 44);
        }

        else
        {
          *(this + 4) = v8 + 1;
          *v8 = 44;
        }
      }

      v9 = *(this + 4);
      if (v9 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 32);
      }

      else
      {
        *(this + 4) = v9 + 1;
        *v9 = 32;
      }

      v10 = *v6++;
      llvm::raw_ostream::operator<<(this, v10 + 2, *v10);
      v7 = 1;
    }

    while (v6 != v5);
  }

  v11 = *(this + 4);
  if (v11 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 32);
  }

  else
  {
    *(this + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = *(this + 4);
  if (v12 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 93);
  }

  else
  {
    *(this + 4) = v12 + 1;
    *v12 = 93;
  }

  return this;
}

llvm::raw_ostream *llvm::orc::operator<<(llvm::raw_ostream *result)
{
  v1 = *(result + 4);
  if (v1 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 123);
  }

  else
  {
    *(result + 4) = v1 + 1;
    *v1 = 123;
  }

  v2 = *(result + 4);
  if (v2 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 32);
  }

  else
  {
    *(result + 4) = v2 + 1;
    *v2 = 32;
  }

  v3 = *(result + 4);
  if (v3 >= *(result + 3))
  {
    return llvm::raw_ostream::write(result, 125);
  }

  *(result + 4) = v3 + 1;
  *v3 = 125;
  return result;
}

llvm::raw_ostream *llvm::orc::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (*(a1 + 3) == v3)
  {
    a1 = llvm::raw_ostream::write(a1, "(", 1uLL);
  }

  else
  {
    *v3 = 40;
    ++*(a1 + 4);
  }

  v4 = *(*a2 + 31);
  if (v4 >= 0)
  {
    v5 = (*a2 + 8);
  }

  else
  {
    v5 = *(*a2 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(*a2 + 31);
  }

  else
  {
    v6 = *(*a2 + 16);
  }

  v7 = llvm::raw_ostream::write(a1, v5, v6);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8236;
    *(v7 + 4) += 2;
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, ", ", 2uLL);
  }

  result = llvm::orc::operator<<(v7, a2 + 8);
  v10 = *(result + 4);
  if (*(result + 3) == v10)
  {
    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  *v10 = 41;
  ++*(result + 4);
  return result;
}

llvm::raw_ostream *llvm::orc::operator<<(llvm::raw_ostream *result, uint64_t a2)
{
  v3 = *(result + 4);
  if (v3 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 123);
  }

  else
  {
    *(result + 4) = v3 + 1;
    *v3 = 123;
  }

  if (*(a2 + 8))
  {
    v4 = *a2;
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 32 * v5;
      v7 = *a2;
      while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v7 += 4;
        v6 -= 32;
        if (!v6)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v7 = *a2;
    }

    v8 = &v4[4 * v5];
    if (v7 != v8)
    {
      v9 = 0;
LABEL_13:
      if (v9)
      {
        v10 = *(result + 4);
        if (v10 >= *(result + 3))
        {
          result = llvm::raw_ostream::write(result, 44);
        }

        else
        {
          *(result + 4) = v10 + 1;
          *v10 = 44;
        }
      }

      v11 = *(result + 4);
      if (v11 >= *(result + 3))
      {
        result = llvm::raw_ostream::write(result, 32);
      }

      else
      {
        *(result + 4) = v11 + 1;
        *v11 = 32;
      }

      result = llvm::orc::operator<<(result, v7);
      while (1)
      {
        v7 += 4;
        if (v7 == v8)
        {
          break;
        }

        if ((*v7 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v9 = 1;
          if (v7 != v8)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }
  }

LABEL_24:
  v12 = *(result + 4);
  if (v12 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 32);
  }

  else
  {
    *(result + 4) = v12 + 1;
    *v12 = 32;
  }

  v13 = *(result + 4);
  if (v13 >= *(result + 3))
  {
    return llvm::raw_ostream::write(result, 125);
  }

  *(result + 4) = v13 + 1;
  *v13 = 125;
  return result;
}

void *llvm::orc::EPCDynamicLibrarySearchGenerator::Load@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = (*(**(*(a1 + 72) + 128) + 16))(&v6);
  if ((v7 & 1) == 0)
  {
    operator new();
  }

  v4 = v6;
  *(a2 + 8) |= 1u;
  *a2 = v4;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(uint64_t a1@<X0>, unint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t **a5@<X5>, void *a6@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3 == 1 || (v7 = *a5, v8 = a5[1], v9 = *a5, *a5 == v8))
  {
    *a6 = 0;
  }

  else
  {
    v12 = (a1 + 152);
    if (*(a1 + 144))
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      do
      {
        v14 = *(a1 + 176);
        if (v14 < 8)
        {
          goto LABEL_9;
        }

        v15 = v12;
        if ((v14 & 2) == 0)
        {
          v15 = *v12;
        }

        if ((*(v14 & 0xFFFFFFFFFFFFFFF8))(v15, v9))
        {
LABEL_9:
          v16 = *v9;
          v32 = v16;
          if ((v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v16 + 8), 1uLL);
          }

          llvm::orc::SymbolLookupSet::add(&v33, &v32, 1);
          if ((v32 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v32 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }
        }

        v9 += 2;
      }

      while (v9 != v8);
      v17 = *(a1 + 128);
      v31[0] = *(a1 + 136);
      v31[1] = &v33;
      v18 = *(v17 + 128);
      *&v28 = a1;
      *(&v28 + 1) = a4;
      v19 = *a2;
      *a2 = 0;
      v29 = v19;
      v30 = 0uLL;
      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__init_with_size[abi:nn200100]<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>*,std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>*>(&v29 + 8, v33, v34, (v34 - v33) >> 4);
      v38 = v28;
      v26 = v30;
      v27 = v29;
      v29 = 0uLL;
      v30 = 0uLL;
      v20 = operator new(0x30uLL, 8uLL);
      v41 = v40;
      v42 = v20;
      v43 = xmmword_2750C3F40;
      v39 = 0;
      v40[0] = 0;
      *v20 = v38;
      v20[1] = v27;
      v20[2] = v26;
      v40[1] = 0;
      v40[2] = 0;
      v44 = llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>>::CallbacksHolder<llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(llvm::orc::LookupState &,llvm::orc::LookupKind,llvm::orc::JITDylib &,llvm::orc::JITDylibLookupFlags,llvm::orc::SymbolLookupSet const&)::$_0,llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(llvm::orc::LookupState &,llvm::orc::LookupKind,llvm::orc::JITDylib &,llvm::orc::JITDylibLookupFlags,llvm::orc::SymbolLookupSet const&)::$_0,void>::Callbacks + 4;
      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v41);
      v21 = v39;
      v39 = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      (*(*v18 + 24))(v18, v31, 1, &v42);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v42);
      *&v38 = &v29 + 8;
      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v38);
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }

      *a6 = 0;
      *&v38 = &v33;
      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v38);
    }

    else
    {
      v38 = 0uLL;
      LODWORD(v39) = 0;
      do
      {
        v23 = *(a1 + 176);
        v24 = v12;
        if ((v23 & 2) == 0)
        {
          v24 = *v12;
        }

        if ((*(v23 & 0xFFFFFFFFFFFFFFF8))(v24, v9))
        {
          v25 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::FindAndConstruct(&v38, v9);
          v25[1] = 0;
          *(v25 + 8) = 0;
        }

        v9 += 2;
      }

      while (v9 != v8);
      v36 = v38;
      v38 = 0uLL;
      v37 = v39;
      LODWORD(v39) = 0;
      llvm::orc::EPCDynamicLibrarySearchGenerator::addAbsolutes(a6, a1, a4, &v36);
      llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v36);
      llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v38);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::orc::EPCDynamicLibrarySearchGenerator::addAbsolutes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 240) < 8uLL)
  {
    v6 = *a4;
    *a4 = 0;
    v7 = *(a4 + 16);
    *(a4 + 16) = 0;
    v8 = *(a4 + 8);
    *(a4 + 8) = 0;
    operator new();
  }

  v4 = (a2 + 216);
  v10[0] = *a4;
  v10[1] = *(a4 + 8);
  *a4 = 0;
  *(a4 + 8) = 0;
  v11 = *(a4 + 16);
  *(a4 + 16) = 0;
  v5 = *(a2 + 240);
  if ((v5 & 2) == 0)
  {
    v4 = *v4;
  }

  (*(v5 & 0xFFFFFFFFFFFFFFF8))(v4, a3, v10);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(v10);
}

void llvm::orc::EPCDynamicLibrarySearchGenerator::~EPCDynamicLibrarySearchGenerator(llvm::orc::EPCDynamicLibrarySearchGenerator *this)
{
  *this = &unk_2883EC168;
  v2 = (this + 152);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 27);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 23);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v2);

  llvm::orc::DefinitionGenerator::~DefinitionGenerator(this);
}

{
  *this = &unk_2883EC168;
  v2 = (this + 152);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 27);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 23);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v2);
  llvm::orc::DefinitionGenerator::~DefinitionGenerator(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::orc::EPCDynamicLibrarySearchGenerator::EPCDynamicLibrarySearchGenerator(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 57) = 0u;
  *a1 = &unk_2883EC168;
  *(a1 + 8) = 850045863;
  *(a1 + 128) = *(a2 + 72);
  *(a1 + 136) = a3;
  *(a1 + 144) = 1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a1 + 152, a4);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a1 + 184, a5);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a1 + 216, a6);
  return a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>>::CallImpl<llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(llvm::orc::LookupState &,llvm::orc::LookupKind,llvm::orc::JITDylib &,llvm::orc::JITDylibLookupFlags,llvm::orc::SymbolLookupSet const&)::$_0>(uint64_t a1, __int128 *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!(*(a2 + 24) & 1))
  {
    v28 = *(a2 + 2);
    v4 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    v27 = v4;
    v5 = *a1;
    v24 = 0;
    memset(v25, 0, 12);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    if (v6 == v7)
    {
      goto LABEL_18;
    }

    v8 = *v4;
    do
    {
      if (*v8)
      {
        goto LABEL_7;
      }

      v11 = *(v5 + 208);
      if (v11 >= 8)
      {
        v12 = v5 + 184;
        if ((v11 & 2) == 0)
        {
          v12 = *(v5 + 184);
        }

        if ((*(v11 & 0xFFFFFFFFFFFFFFF8))(v12, v6))
        {
LABEL_7:
          v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::FindAndConstruct(&v24, v6);
          v10 = *(v8 + 8);
          v9[1] = *v8;
          *(v9 + 8) = v10;
        }
      }

      v8 += 16;
      v6 += 2;
    }

    while (v6 != v7);
    if (!LODWORD(v25[0]))
    {
LABEL_18:
      v23 = 0;
      llvm::orc::LookupState::continueLookup((a1 + 16), &v23);
      v15 = v23;
      if (!v23)
      {
LABEL_20:
        llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v24);
        goto LABEL_21;
      }
    }

    else
    {
      v13 = *(a1 + 8);
      v19 = v24;
      v20 = v25[0];
      v14 = *(v25 + 4);
      v24 = 0;
      memset(v25, 0, 12);
      v21 = v14;
      llvm::orc::EPCDynamicLibrarySearchGenerator::addAbsolutes(&v22, v5, v13, &v19);
      llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v19);
      v18 = v22;
      v22 = 0;
      llvm::orc::LookupState::continueLookup((a1 + 16), &v18);
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      v15 = v22;
      if (!v22)
      {
        goto LABEL_20;
      }
    }

    (*(*v15 + 8))(v15);
    goto LABEL_20;
  }

  v3 = *a2;
  *a2 = 0;
  v26 = v3;
  *&v27 = 0;
  llvm::orc::LookupState::continueLookup((a1 + 16), &v26);
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

LABEL_21:
  result = llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>::~Expected(&v27);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>>::MoveImpl<llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(llvm::orc::LookupState &,llvm::orc::LookupKind,llvm::orc::JITDylib &,llvm::orc::JITDylibLookupFlags,llvm::orc::SymbolLookupSet const&)::$_0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>>::DestroyImpl<llvm::orc::EPCDynamicLibrarySearchGenerator::tryToGenerate(llvm::orc::LookupState &,llvm::orc::LookupKind,llvm::orc::JITDylib &,llvm::orc::JITDylibLookupFlags,llvm::orc::SymbolLookupSet const&)::$_0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v3);
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>::~Expected(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    v4 = a1;
    std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::__destroy_vector::operator()[abi:nn200100](&v4);
  }

  return a1;
}

void std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t llvm::orc::EPCGenericDylibManager::CreateWithDefaultBootstrapSymbols@<X0>(llvm::orc::EPCGenericDylibManager *this@<X0>, uint64_t a2@<X8>)
{
  v14[9] = *MEMORY[0x277D85DE8];
  v12 = 0uLL;
  v5 = llvm::orc::rt::SimpleExecutorDylibManagerInstanceName;
  v13 = 0;
  v14[0] = &v12;
  v14[1] = llvm::orc::rt::SimpleExecutorDylibManagerInstanceName;
  if (llvm::orc::rt::SimpleExecutorDylibManagerInstanceName)
  {
    v5 = strlen(llvm::orc::rt::SimpleExecutorDylibManagerInstanceName);
  }

  v14[2] = v5;
  v14[3] = &v12 + 8;
  v6 = llvm::orc::rt::SimpleExecutorDylibManagerOpenWrapperName;
  v14[4] = llvm::orc::rt::SimpleExecutorDylibManagerOpenWrapperName;
  if (llvm::orc::rt::SimpleExecutorDylibManagerOpenWrapperName)
  {
    v6 = strlen(llvm::orc::rt::SimpleExecutorDylibManagerOpenWrapperName);
  }

  v14[5] = v6;
  v14[6] = &v13;
  v7 = llvm::orc::rt::SimpleExecutorDylibManagerLookupWrapperName;
  v14[7] = llvm::orc::rt::SimpleExecutorDylibManagerLookupWrapperName;
  if (llvm::orc::rt::SimpleExecutorDylibManagerLookupWrapperName)
  {
    v7 = strlen(llvm::orc::rt::SimpleExecutorDylibManagerLookupWrapperName);
  }

  v14[8] = v7;
  result = llvm::orc::ExecutorProcessControl::getBootstrapSymbols(this, v14, 3, &v11);
  v9 = v11;
  if (v11)
  {
    *(a2 + 32) |= 1u;
    this = v9;
  }

  else
  {
    *(a2 + 8) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) &= ~1u;
  }

  *a2 = this;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::orc::EPCGenericDylibManager::open(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v6[0] = a2;
  v6[1] = a3;
  v5 = a4;
  v9 = 0;
  v8 = 0;
  v4 = a1[2];
  v7[0] = *a1;
  v7[1] = v4;
  llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr> ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>,unsigned long long)>::call<llvm::Error llvm::orc::ExecutorProcessControl::callSPSWrapper<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr> ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>,unsigned long long),llvm::Expected<llvm::orc::ExecutorAddr> &,llvm::orc::ExecutorAddr&,llvm::StringRef &,unsigned long long &>(llvm::orc::ExecutorAddr,llvm::Expected<llvm::orc::ExecutorAddr> &,llvm::orc::ExecutorAddr&,llvm::StringRef &,unsigned long long &)::{lambda(char const*,unsigned long)#1},llvm::Expected<llvm::orc::ExecutorAddr>,llvm::orc::ExecutorAddr,llvm::StringRef,unsigned long long>(v7, &v8, a1 + 1, v6, &v5);
}

void *llvm::orc::EPCGenericDylibManager::lookupAsync(uint64_t a1, size_t a2, size_t ***a3, __int128 *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *(a1 + 24);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v36, a4);
  v9 = v7[3];
  v11 = *a3;
  v10 = a3[1];
  if (*a3 == v10)
  {
    v14 = 24;
  }

  else
  {
    v12 = 8;
    do
    {
      v13 = *v11;
      v11 += 2;
      v12 += *v13 + 9;
    }

    while (v11 != v10);
    v14 = v12 + 16;
    if ((v12 + 16) < 9)
    {
      llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", &v34);
      goto LABEL_11;
    }
  }

  v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
  v16 = v15;
  *v15 = *(a1 + 8);
  if ((v14 & 0xFFFFFFFFFFFFFFF8) == 8 || (v15[1] = a2, (v14 & 0xFFFFFFFFFFFFFFF8) == 0x10))
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", &v34);
LABEL_10:
    free(v16);
    goto LABEL_11;
  }

  v33 = v8;
  v15[2] = (a3[1] - *a3) >> 4;
  v23 = *a3;
  v24 = a3[1];
  if (*a3 == v24)
  {
LABEL_32:
    v34 = v16;
    v35 = v14;
    v8 = v33;
    goto LABEL_11;
  }

  v25 = v14 - 24;
  v26 = v15 + 3;
  while (1)
  {
    v27 = v25 - 8;
    if (v25 < 8)
    {
      break;
    }

    v28 = *v23 + 2;
    v29 = **v23;
    v30 = *(v23 + 2);
    *v26 = v29;
    v31 = (v26 + 1);
    if (v29)
    {
      v32 = v27 >= v29;
      v27 -= v29;
      if (!v32)
      {
        break;
      }

      memcpy(v31, v28, v29);
      v31 += v29;
    }

    if (!v27)
    {
      break;
    }

    *v31 = v30 == 0;
    v26 = (v31 + 1);
    v25 = v27 - 1;
    v23 += 2;
    if (v23 == v24)
    {
      goto LABEL_32;
    }
  }

  llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", &v34);
  v8 = v33;
  if (v14 > 8)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (!v35)
  {
    v38 = v34;
    if (v34)
    {
      getErrorErrorCat();
      v41 = 3;
      *&v42[0] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v37, &v36);
  v17 = v35;
  if (v35 <= 8)
  {
    v18 = &v34;
  }

  else
  {
    v18 = v34;
  }

  v41 = v9;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v42, v37);
  v43 = v41;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v44, v42);
  v45 = v43;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v46, &v44);
  v19 = operator new(0x28uLL, 8uLL);
  v38 = v19;
  v39 = xmmword_2750C12A0;
  *v19 = v45;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v19 + 1), &v46);
  v40 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrENSD_IJhhEEEEEEEEEESE_SE_NSC_INSD_IJNSC_IcEEbEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISM_S8_ZNS2_22EPCGenericDylibManager11lookupAsyncENS2_12ExecutorAddrERKNS2_15SymbolLookupSetENS_15unique_functionIFvNS_8ExpectedINSt3__16vectorINS2_17ExecutorSymbolDefENSX_9allocatorISZ_EEEEEEEEEE3__0JSR_SR_SS_EEEvOT0_SR_OT1_DpRKT2_EUlOT_PKcmE_S16_JSR_SR_SS_EEEvS1G_S18_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1G_EUlS4_E_S1Q_vE9CallbacksE + 4;
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v46);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v44);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v42);
  (*(*v7 + 40))(v7, v8, &v38, v18, v17);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v38);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v37);
  if (v35 >= 9)
  {
    v20 = v34;
LABEL_19:
    free(v20);
    goto LABEL_20;
  }

  if (!v35)
  {
    v20 = v34;
    if (v34)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v36);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr> ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>,unsigned long long)>::call<llvm::Error llvm::orc::ExecutorProcessControl::callSPSWrapper<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr> ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>,unsigned long long),llvm::Expected<llvm::orc::ExecutorAddr> &,llvm::orc::ExecutorAddr&,llvm::StringRef &,unsigned long long &>(llvm::orc::ExecutorAddr,llvm::Expected<llvm::orc::ExecutorAddr> &,llvm::orc::ExecutorAddr&,llvm::StringRef &,unsigned long long &)::{lambda(char const*,unsigned long)#1},llvm::Expected<llvm::orc::ExecutorAddr>,llvm::orc::ExecutorAddr,llvm::StringRef,unsigned long long>(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (*(a2 + 8))
  {
    *a2 = 0;
  }

  v9 = *(a4 + 8);
  v10 = v9 + 24;
  if ((v9 + 24) < 9)
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", &v20);
    goto LABEL_13;
  }

  v11 = malloc_type_malloc(v9 + 24, 0x100004077774924uLL);
  v12 = v11;
  *v11 = *a3;
  if ((v9 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF0)
  {
    v13 = *a4;
    v14 = *(a4 + 8);
    v11[1] = v14;
    v15 = v11 + 2;
    v16 = v9 + 8;
    if (v14)
    {
      v17 = v16 >= v14;
      v16 -= v14;
      if (!v17)
      {
        goto LABEL_12;
      }

      memcpy(v11 + 2, v13, v14);
      v15 = (v15 + v14);
    }

    if (v16 >= 8)
    {
      *v15 = *a5;
      v20 = v12;
      v21 = v10;
      goto LABEL_13;
    }
  }

LABEL_12:
  llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", &v20);
  free(v12);
LABEL_13:
  if (!v21)
  {
    if (v20)
    {
      getErrorErrorCat();
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }
  }

  v18 = *a1;
  v19 = a1[1];
  llvm::orc::ExecutorProcessControl::callWrapper();
}

uint64_t llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  if (v2)
  {
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (v3)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_11SPSSequenceINS3_8SPSTupleIJNS3_15SPSExecutorAddrENSD_IJhhEEEEEEEEEESE_SE_NSC_INSD_IJNSC_IcEEbEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISM_S8_ZNS2_22EPCGenericDylibManager11lookupAsyncENS2_12ExecutorAddrERKNS2_15SymbolLookupSetENS_15unique_functionIFvNS_8ExpectedINSt3__16vectorINS2_17ExecutorSymbolDefENSX_9allocatorISZ_EEEEEEEEEE3__0JSR_SR_SS_EEEvOT0_SR_OT1_DpRKT2_EUlOT_PKcmE_S16_JSR_SR_SS_EEEvS1G_S18_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1G_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *a1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a1 + 1));
  v6[0] = v2;
  v6[1] = v3;
  operator new();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrENS9_IJhhEEEEEEEEEESA_SA_NS8_INS9_IJNS8_IcEEbEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISI_S3_ZNS0_22EPCGenericDylibManager11lookupAsyncENS0_12ExecutorAddrERKNS0_15SymbolLookupSetENS_15unique_functionIFvNS_8ExpectedINSt3__16vectorINS0_17ExecutorSymbolDefENST_9allocatorISV_EEEEEEEEEE3__0JSN_SN_SO_EEEvOT0_SN_OT1_DpRKT2_EUlOT_PKcmE_S12_JSN_SN_SO_EEEvS1C_S14_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1C_ENUlS1K_E_clES1K_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EC190;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 >= 9)
  {
    v3 = *(a1 + 40);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrENS9_IJhhEEEEEEEEEESA_SA_NS8_INS9_IJNS8_IcEEbEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISI_S3_ZNS0_22EPCGenericDylibManager11lookupAsyncENS0_12ExecutorAddrERKNS0_15SymbolLookupSetENS_15unique_functionIFvNS_8ExpectedINSt3__16vectorINS0_17ExecutorSymbolDefENST_9allocatorISV_EEEEEEEEEE3__0JSN_SN_SO_EEEvOT0_SN_OT1_DpRKT2_EUlOT_PKcmE_S12_JSN_SN_SO_EEEvS1C_S14_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1C_ENUlS1K_E_clES1K_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EC190;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_11SPSSequenceINS5_8SPSTupleIJNS5_15SPSExecutorAddrENS9_IJhhEEEEEEEEEESA_SA_NS8_INS9_IJNS8_IcEEbEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISI_S3_ZNS0_22EPCGenericDylibManager11lookupAsyncENS0_12ExecutorAddrERKNS0_15SymbolLookupSetENS_15unique_functionIFvNS_8ExpectedINSt3__16vectorINS0_17ExecutorSymbolDefENST_9allocatorISV_EEEEEEEEEE3__0JSN_SN_SO_EEEvOT0_SN_OT1_DpRKT2_EUlOT_PKcmE_S12_JSN_SN_SO_EEEvS1C_S14_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1C_ENUlS1K_E_clES1K_EUlvE_E3runEv(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 8);
  *v12 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v17 = 0;
  v18 = 0uLL;
  v19 = 0;
  if (v12[1])
  {
    if (v12[1] <= 8)
    {
      v3 = v12;
    }

    else
    {
      v3 = v12[0];
    }
  }

  else
  {
    v15 = v12[0];
    if (v12[0])
    {
      getErrorErrorCat();
      v13 = 3;
      v14 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v3 = v12;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSTuple<unsigned char,unsigned char>>>>,llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>>::deserialize(&v16, &v17, v3, v12[1]);
  v4 = v16;
  if (v16)
  {
    v16 = 0;
    v22 = v19 & 1;
    if (v19)
    {
      v5 = 0;
    }

    else
    {
      v5 = v17;
      v21 = v18;
      v18 = 0uLL;
    }

    v17 = 0;
    v20 = v5;
    v25 = -1;
    v23 = v4;
    v7 = *(a1 + 32);
    if ((v7 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v7 & 0xFFFFFFFFFFFFFFF8))(v2, &v23);
    llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v23);
    llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v20);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  else
  {
    v22 = v19 & 1;
    v6 = v17;
    if (v19)
    {
      v17 = 0;
    }

    else
    {
      v8 = v18;
      v17 = 0;
      v18 = 0uLL;
      v24 = v8;
      v21 = 0uLL;
    }

    v20 = 0;
    v25 = v19 & 1;
    v23 = v6;
    v9 = *(a1 + 32);
    if ((v9 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v9 & 0xFFFFFFFFFFFFFFF8))(v2, &v23);
    llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v23);
    llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v20);
  }

  llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v17);
  if (v12[1] >= 9)
  {
    v10 = v12[0];
LABEL_27:
    free(v10);
    goto LABEL_28;
  }

  if (!v12[1])
  {
    v10 = v12[0];
    if (v12[0])
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v11 = *MEMORY[0x277D85DE8];
}

void llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSTuple<unsigned char,unsigned char>>>>,llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>>::deserialize(void *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v41 = a4;
  *__p = 0u;
  *v38 = 0u;
  v39 = 0u;
  if (!a4)
  {
    goto LABEL_25;
  }

  v7 = *a3;
  v40 = a3 + 1;
  v41 = a4 - 1;
  v36 = v7;
  if (v7)
  {
    if (a4 - 1 < 8)
    {
      goto LABEL_25;
    }

    v8 = *(a3 + 1);
    v9 = a3 + 9;
    v10 = a4 - 9;
    v40 = a3 + 9;
    v41 = a4 - 9;
    std::vector<llvm::orc::ExecutorSymbolDef>::reserve(__p, v8);
    if (v8)
    {
      while (v10 >= 8)
      {
        v13 = *v9;
        v12 = v9 + 8;
        v11 = v13;
        v40 = v12;
        v41 = v10 - 8;
        if (v10 == 8)
        {
          break;
        }

        v16 = *v12;
        v15 = v12 + 1;
        v14 = v16;
        v17 = v10 - 9;
        v40 = v15;
        v41 = v10 - 9;
        if (v10 == 9)
        {
          break;
        }

        v18 = *v15;
        v9 = v15 + 1;
        v10 -= 10;
        v40 = v9;
        v41 = v17 - 1;
        v4 = v4 & 0xFFFFFFFFFFFF0000 | (v14 << 8) | v18;
        v19 = __p[1];
        if (__p[1] >= v38[0])
        {
          v21 = (__p[1] - __p[0]) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v23 = v38[0] - __p[0];
          if ((v38[0] - __p[0]) >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorSymbolDef>>(__p, v24);
          }

          v25 = (16 * v21);
          *v25 = v11;
          v25[1] = v4;
          v20 = (16 * v21 + 16);
          v26 = v25 - (__p[1] - __p[0]);
          memcpy(v26, __p[0], __p[1] - __p[0]);
          v27 = __p[0];
          __p[0] = v26;
          __p[1] = v20;
          v38[0] = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *__p[1] = v11;
          v19[1] = v4;
          v20 = v19 + 2;
        }

        __p[1] = v20;
        if (!--v8)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      getErrorErrorCat();
      *&v42 = 3;
      *(&v42 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
    }
  }

  else if (!llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::deserialize(&v40, &v38[1]))
  {
    goto LABEL_25;
  }

LABEL_23:
  v29 = __p[0];
  v28 = __p[1];
  v30 = v38[0];
  __p[1] = 0;
  v38[0] = 0;
  __p[0] = 0;
  v34 = v38[1];
  v35 = HIBYTE(v39);
  v38[1] = 0;
  v39 = 0uLL;
  if (v36 != 1)
  {
    getErrorErrorCat();
    operator new();
  }

  v44 = 0;
  *(&v42 + 1) = v28;
  v43 = v30;
  *&v42 = v29;
  if (&v42 != a2)
  {
    llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(a2);
    v31 = v44;
    *(a2 + 24) = *(a2 + 24) & 0xFE | v44 & 1;
    if (v31)
    {
      v32 = v42;
      *&v42 = 0;
      *a2 = v32;
    }

    else
    {
      *a2 = v42;
      *(a2 + 16) = v43;
      v43 = 0;
      v42 = 0uLL;
    }
  }

  llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v42);
  if (v35 < 0)
  {
    operator delete(v34);
  }

  *a1 = 0;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void *std::vector<llvm::orc::ExecutorSymbolDef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorSymbolDef>>(result, a2);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorSymbolDef>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t llvm::orc::EPCGenericJITLinkMemoryManager::allocate(void *a1, uint64_t a2, llvm::jitlink::LinkGraph *a3, __int128 *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  llvm::jitlink::BasicLayout::BasicLayout(&v24, a3);
  llvm::jitlink::BasicLayout::getContiguousPageBasedLayoutSizes(&v24, *(a1[1] + 88), v22);
  if (v23)
  {
    v21 = -1;
    v20 = v22[0];
    v6 = *(a4 + 3);
    if ((v6 & 2) == 0)
    {
      a4 = *a4;
    }

    (*(v6 & 0xFFFFFFFFFFFFFFF8))(a4, &v20);
    llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(&v20);
  }

  else
  {
    v7 = a1[1];
    v8 = a1[3];
    *&v15 = a1;
    *(&v15 + 1) = v24;
    v16 = &v18;
    v17 = 0x400000000;
    if (v25[2])
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v16, v25);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v19, a4);
    v9 = v22[1] + v22[0];
    v10 = v7[3];
    v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    *v11 = a1[2];
    v11[1] = v9;
    v26 = v15;
    v27 = &v29;
    v28 = 0x400000000;
    if (v17)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v27, &v16);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v30, v19);
    *&v34[8] = v26;
    *v34 = v10;
    v35 = &v37;
    v36 = 0x400000000;
    if (v28)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v35, &v27);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v38, v30);
    v39 = *v34;
    v40 = *&v34[16];
    v41 = &v43;
    v42 = 0x400000000;
    if (v36)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v41, &v35);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v44, v38);
    v45 = v39;
    v46 = v40;
    v47 = &v49;
    v48 = 0x400000000;
    if (v42)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v47, &v41);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v50, v44);
    v12 = operator new(0x1E8uLL, 8uLL);
    v31 = v12;
    v32 = xmmword_2750C3F80;
    *v12 = v45;
    v12[2] = v46;
    v12[3] = v12 + 5;
    v12[4] = 0x400000000;
    if (v48)
    {
      llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=((v12 + 3), &v47);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v12 + 57), v50);
    v33 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_yEE9callAsyncIZNS7_19callSPSWrapperAsyncISE_S8_ZNS2_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSJ_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSJ_20JITLinkMemoryManager13InFlightAllocENSR_14default_deleteISU_EEEEEEEEEE3__0JNS2_12ExecutorAddrEyEEEvOT0_S12_OT1_DpRKT2_EUlOT_PKcmE_S11_JS12_yEEEvS1C_S14_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1C_EUlS4_E_S1M_vE9CallbacksE + 4;
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v50);
    llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v47);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v44);
    llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v41);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v38);
    llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v35);
    (*(*v7 + 40))(v7, v8, &v31, v11, 16);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v31);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v30);
    llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v27);
    free(v11);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v19);
    llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v16);
  }

  result = llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(v25);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::orc::EPCGenericJITLinkMemoryManager::deallocate(void *a1, void **a2, __int128 *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v6 = a1[5];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v27, a3);
  v7 = v5[3];
  v8 = a2[1] - *a2 + 16;
  if (a2[1] == *a2)
  {
    v9 = 16;
  }

  else
  {
    v9 = a2[1] - *a2 + 16;
  }

  *&v36[0] = 0;
  *(&v36[0] + 1) = v9;
  if (v9 < 9)
  {
    if (!v8)
    {
      llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", v26);
      goto LABEL_24;
    }

    v10 = v36;
  }

  else
  {
    v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
    *&v36[0] = v10;
    v8 = v9;
  }

  *v10 = a1[2];
  if ((v8 & 0xFFFFFFFFFFFFFFF8) != 8)
  {
    v10[1] = (a2[1] - *a2) >> 3;
    v12 = *a2;
    v11 = a2[1];
    v13 = *a2 == v11;
    if ((v8 - 16) >= 8 && v12 != v11)
    {
      v15 = v10 + 2;
      v16 = v8 - 24;
      v17 = v12 + 8;
      do
      {
        *v15++ = *(v17 - 1);
        v13 = v17 == v11;
        if (v17 == v11)
        {
          break;
        }

        v17 += 8;
        v18 = v16 > 7;
        v16 -= 8;
      }

      while (v18);
    }

    if (v13)
    {
      *v26 = v36[0];
      goto LABEL_24;
    }

    v9 = *(&v36[0] + 1);
  }

  llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", v26);
  if (v9 > 8 || !v9 && *&v36[0])
  {
    free(*&v36[0]);
  }

LABEL_24:
  if (!v26[1])
  {
    v32 = v26[0];
    if (v26[0])
    {
      getErrorErrorCat();
      *&v36[0] = 3;
      *(&v36[0] + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v28, &v27);
  v19 = v26[1];
  if (v26[1] <= 8)
  {
    v20 = v26;
  }

  else
  {
    v20 = v26[0];
  }

  v32 = v7;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v33, v28);
  v34 = v32;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v35, v33);
  *&v36[0] = v34;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v36 + 8, v35);
  v21 = operator new(0x28uLL, 8uLL);
  v29 = v21;
  v30 = xmmword_2750C12A0;
  *v21 = *&v36[0];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v21 + 1), (v36 + 8));
  v31 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZNS2_30EPCGenericJITLinkMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSK_9allocatorISO_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS2_12ExecutorAddrESR_EEEvOT0_SX_OT1_DpRKT2_EUlOT_PKcmE_SW_JSX_SR_EEEvS17_SZ_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES17_EUlS4_E_S1H_vE9CallbacksE + 4;
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v36 + 1);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v35);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v33);
  (*(*v5 + 40))(v5, v6, &v29, v20, v19);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v29);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v28);
  if (v26[1] >= 9)
  {
    v22 = v26[0];
LABEL_32:
    free(v22);
    goto LABEL_33;
  }

  if (!v26[1])
  {
    v22 = v26[0];
    if (v26[0])
    {
      goto LABEL_32;
    }
  }

LABEL_33:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v27);
  result = *a2;
  v24 = a2[1];
  if (*a2 != v24)
  {
    result = memset(result, 255, v24 - result);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::orc::EPCGenericJITLinkMemoryManager::allocate(llvm::jitlink::JITLinkDylib const*,llvm::jitlink::LinkGraph &,llvm::unique_function<void ()(llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)>)::$_0::operator()(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a3 + 8);
  if (*a2)
  {
    if (a3[1])
    {
      *a3 = 0;
    }

    v6 = a1 + 56;
    *a2 = 0;
    v63 = -1;
    v62 = v4;
    v7 = a1[59];
    if ((v7 & 2) == 0)
    {
      v6 = *v6;
    }

    (*(v7 & 0xFFFFFFFFFFFFFFF8))(v6, &v62);
    v8 = &v62;
LABEL_11:
    result = llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(v8);
    goto LABEL_12;
  }

  if (a3[1])
  {
    v9 = a1 + 56;
    v10 = *a3;
    *a3 = 0;
    v61 = -1;
    v60 = v10;
    v11 = a1[59];
    if ((v11 & 2) == 0)
    {
      v9 = *v9;
    }

    (*(v11 & 0xFFFFFFFFFFFFFFF8))(v9, &v60);
    v8 = &v60;
    goto LABEL_11;
  }

  v51 = *a3;
  v14 = *a1;
  v56 = a1[1];
  v57 = &v59;
  v58 = 0x400000000;
  if (*(a1 + 6))
  {
    llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(&v57, (a1 + 2));
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v54, a1 + 28);
  v64 = v66;
  v65 = 0x400000000;
  if (v58)
  {
    v15 = v57;
    v16 = &v57[13 * v58];
    v17 = v51;
    do
    {
      v15[4] = v17;
      v18 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v56, v15[2], 0);
      v15[5] = v18;
      v19 = *v15;
      if (v65)
      {
        v20 = v64;
        v21 = v65;
        do
        {
          v22 = v21 >> 1;
          v23 = &v20[40 * (v21 >> 1)];
          v25 = *v23;
          v24 = (v23 + 40);
          v21 += ~(v21 >> 1);
          if (v25 < v19)
          {
            v20 = v24;
          }

          else
          {
            v21 = v22;
          }
        }

        while (v21);
        v26 = v65;
      }

      else
      {
        v26 = 0;
        v20 = v64;
      }

      v27 = *(v15 + 1);
      v28 = *(*(v14 + 8) + 88);
      if (v20 == v64 + 40 * v26 || *v20 != v19)
      {
        v52 = *(v15 + 1);
        v69 = 0u;
        v68 = 0u;
        LOBYTE(v67) = v19;
        if (v64 + 40 * v65 == v20)
        {
          v44 = llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,true>>(&v64, &v67);
          v45 = v64 + 40 * v65;
          v46 = *(v44 + 32);
          v47 = *(v44 + 16);
          *v45 = *v44;
          *(v45 + 1) = v47;
          *(v45 + 4) = v46;
          LODWORD(v65) = v65 + 1;
          v20 = v64 + 40 * v65 - 40;
        }

        else
        {
          v30 = v20 - v64;
          v31 = llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,true>>(&v64, &v67);
          v20 = v64 + v30;
          v32 = v64 + 40 * v65;
          *(v32 + 4) = *(v32 - 1);
          v33 = *(v32 - 24);
          *v32 = *(v32 - 40);
          *(v32 + 1) = v33;
          v34 = v64;
          v35 = v65;
          v36 = v64 + 40 * v65 - 40;
          if (v36 != v20)
          {
            v37 = v64 + 40 * v65 - 40;
            do
            {
              v38 = *(v37 - 40);
              v37 -= 40;
              *v36 = v38;
              v39 = *(v36 - 1);
              *(v36 + 8) = *(v36 - 2);
              *(v36 + 24) = v39;
              v36 = v37;
            }

            while (v37 != v20);
            v35 = v65;
            v34 = v64;
          }

          LODWORD(v65) = v35 + 1;
          if (v31 < v34 + 40 * (v35 + 1) && v31 >= v20)
          {
            v41 = 40;
          }

          else
          {
            v41 = 0;
          }

          v42 = (v31 + v41);
          *v20 = *v42;
          v43 = *(v42 + 8);
          *(v20 + 24) = *(v42 + 24);
          *(v20 + 8) = v43;
        }

        v29 = *(v15 + 1);
        v18 = v15[5];
        v27 = v52;
      }

      else
      {
        v29 = *(v15 + 1);
      }

      v17 += (vaddvq_s64(v27) + v28 - 1) / v28 * v28;
      *(v20 + 24) = v29;
      v48 = v15[4];
      *(v20 + 1) = v18;
      *(v20 + 2) = v48;
      v15 += 13;
    }

    while (v15 != v16);
  }

  llvm::jitlink::BasicLayout::apply(&v56, &v53);
  v49 = v53;
  if (!v53)
  {
    operator new();
  }

  v53 = 0;
  LOBYTE(v68) = -1;
  v67 = v49;
  if ((v55 & 2) != 0)
  {
    v50 = v54;
  }

  else
  {
    v50 = v54[0];
  }

  (*(v55 & 0xFFFFFFFFFFFFFFF8))(v50, &v67);
  llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(&v67);
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  if (v64 != v66)
  {
    free(v64);
  }

  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v54);
  result = llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v57);
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_yEE9callAsyncIZNS7_19callSPSWrapperAsyncISE_S8_ZNS2_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSJ_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSJ_20JITLinkMemoryManager13InFlightAllocENSR_14default_deleteISU_EEEEEEEEEE3__0JNS2_12ExecutorAddrEyEEEvOT0_S12_OT1_DpRKT2_EUlOT_PKcmE_S11_JS12_yEEEvS1C_S14_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1C_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *a1;
  v6 = *(a1 + 1);
  v7[0] = &v8;
  v7[1] = 0x400000000;
  if (*(a1 + 8))
  {
    llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(v7, (a1 + 3));
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v9, (a1 + 57));
  v10 = v3;
  v11 = v4;
  operator new();
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8MoveImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_yEE9callAsyncIZNS7_19callSPSWrapperAsyncISE_S8_ZNS2_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSJ_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSJ_20JITLinkMemoryManager13InFlightAllocENSR_14default_deleteISU_EEEEEEEEEE3__0JNS2_12ExecutorAddrEyEEEvOT0_S12_OT1_DpRKT2_EUlOT_PKcmE_S11_JS12_yEEEvS1C_S14_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1C_EUlS4_E_EEvPvS1N_(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  a1[3] = a1 + 5;
  v5 = (a1 + 3);
  *(v5 - 16) = v4;
  *(v5 + 8) = 0x400000000;
  if (*(a2 + 32))
  {
    llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>>::operator=(v5, a2 + 24);
  }

  return llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((a1 + 57), (a2 + 456));
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE11DestroyImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_yEE9callAsyncIZNS7_19callSPSWrapperAsyncISE_S8_ZNS2_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSJ_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSJ_20JITLinkMemoryManager13InFlightAllocENSR_14default_deleteISU_EEEEEEEEEE3__0JNS2_12ExecutorAddrEyEEEvOT0_S12_OT1_DpRKT2_EUlOT_PKcmE_S11_JS12_yEEEvS1C_S14_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1C_EUlS4_E_EEvPv(uint64_t a1)
{
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 456));

  return llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(a1 + 24);
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_yEE9callAsyncIZNS2_19callSPSWrapperAsyncISA_S3_ZNS0_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSF_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSF_20JITLinkMemoryManager13InFlightAllocENSN_14default_deleteISQ_EEEEEEEEEE3__0JNS0_12ExecutorAddrEyEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_SX_JSY_yEEEvS18_S10_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES18_ENUlS1G_E_clES1G_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EC208;
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  v2 = *(a1 + 496);
  if (v2 >= 9)
  {
    v3 = *(a1 + 488);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 488);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 456));
  llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(a1 + 24);
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_yEE9callAsyncIZNS2_19callSPSWrapperAsyncISA_S3_ZNS0_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSF_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSF_20JITLinkMemoryManager13InFlightAllocENSN_14default_deleteISQ_EEEEEEEEEE3__0JNS0_12ExecutorAddrEyEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_SX_JSY_yEEEvS18_S10_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES18_ENUlS1G_E_clES1G_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EC208;
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  v2 = *(a1 + 496);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 488);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 488);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 456));
  llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(a1 + 24);

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_yEE9callAsyncIZNS2_19callSPSWrapperAsyncISA_S3_ZNS0_30EPCGenericJITLinkMemoryManager8allocateEPKNS_7jitlink12JITLinkDylibERNSF_9LinkGraphENS_15unique_functionIFvNS_8ExpectedINSt3__110unique_ptrINSF_20JITLinkMemoryManager13InFlightAllocENSN_14default_deleteISQ_EEEEEEEEEE3__0JNS0_12ExecutorAddrEyEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_SX_JSY_yEEEvS18_S10_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES18_ENUlS1G_E_clES1G_EUlvE_E3runEv(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *v9 = *(a1 + 488);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  v15 = 0;
  v14 = 0;
  if (v9[1])
  {
    if (v9[1] <= 8)
    {
      v2 = v9;
    }

    else
    {
      v2 = v9[0];
    }
  }

  else
  {
    v10 = v9[0];
    if (v9[0])
    {
      getErrorErrorCat();
      v12 = 3;
      v13 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v2 = v9;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSExecutorAddr>,llvm::Expected<llvm::orc::ExecutorAddr>>::deserialize(&v14, v2, v9[1], &v11);
  if (v11)
  {
    v10 = v11;
    v11 = 0;
    LOBYTE(v13) = v15 & 1;
    v3 = v14;
    if (v15)
    {
      v14 = 0;
    }

    v12 = v3;
    llvm::orc::EPCGenericJITLinkMemoryManager::allocate(llvm::jitlink::JITLinkDylib const*,llvm::jitlink::LinkGraph &,llvm::unique_function<void ()(llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)>)::$_0::operator()((a1 + 8), &v10, &v12);
    if ((v13 & 1) != 0 && v12)
    {
      (*(*v12 + 8))(v12);
    }

    v5 = v10;
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    (*(*v5 + 8))(v5);
    goto LABEL_20;
  }

  v11 = 0;
  LOBYTE(v13) = v15 & 1;
  v4 = v14;
  if (v15)
  {
    v14 = 0;
  }

  v12 = v4;
  llvm::orc::EPCGenericJITLinkMemoryManager::allocate(llvm::jitlink::JITLinkDylib const*,llvm::jitlink::LinkGraph &,llvm::unique_function<void ()(llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)>)::$_0::operator()((a1 + 8), &v11, &v12);
  if (v13)
  {
    v5 = v12;
    if (v12)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v15)
  {
    v6 = v14;
    v14 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if (v9[1] >= 9)
  {
    v7 = v9[0];
LABEL_29:
    free(v7);
    goto LABEL_30;
  }

  if (!v9[1])
  {
    v7 = v9[0];
    if (v9[0])
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  v8 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZNS2_30EPCGenericJITLinkMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSK_9allocatorISO_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS2_12ExecutorAddrESR_EEEvOT0_SX_OT1_DpRKT2_EUlOT_PKcmE_SW_JSX_SR_EEEvS17_SZ_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES17_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *a1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a1 + 1));
  v6[0] = v2;
  v6[1] = v3;
  operator new();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSG_9allocatorISK_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS0_12ExecutorAddrESN_EEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SS_JST_SN_EEEvS13_SV_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES13_ENUlS1B_E_clES1B_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EC250;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 >= 9)
  {
    v3 = *(a1 + 40);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSG_9allocatorISK_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS0_12ExecutorAddrESN_EEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SS_JST_SN_EEEvS13_SV_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES13_ENUlS1B_E_clES1B_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EC250;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager10deallocateENSt3__16vectorINS_7jitlink20JITLinkMemoryManager14FinalizedAllocENSG_9allocatorISK_EEEENS_15unique_functionIFvNS_5ErrorEEEEE3__0JNS0_12ExecutorAddrESN_EEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SS_JST_SN_EEEvS13_SV_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES13_ENUlS1B_E_clES1B_EUlvE_E3runEv(uint64_t a1)
{
  v2 = (a1 + 8);
  *v10 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v12 = 0;
  if (v10[1])
  {
    if (v10[1] <= 8)
    {
      v3 = v10;
    }

    else
    {
      v3 = v10[0];
    }
  }

  else
  {
    v11[3] = v10[0];
    if (v10[0])
    {
      getErrorErrorCat();
      v11[0] = 3;
      v11[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v3 = v10;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSError,llvm::Error>::deserialize(&v12, v3, v10[1], &v13);
  v4 = v13;
  if (v13)
  {
    v12 = 0;
    v13 = 0;
    v11[0] = v4;
    v5 = *(a1 + 32);
    if ((v5 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v5 & 0xFFFFFFFFFFFFFFF8))(v2, v11);
    if (v11[0])
    {
      (*(*v11[0] + 8))(v11[0]);
    }

    v6 = v13;
    if (v13)
    {
LABEL_11:
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v8 = v12;
    v12 = 0;
    v11[0] = v8;
    v9 = *(a1 + 32);
    if ((v9 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v9 & 0xFFFFFFFFFFFFFFF8))(v2, v11);
    v6 = v11[0];
    if (v11[0])
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (v10[1] >= 9)
  {
    v7 = v10[0];
LABEL_18:
    free(v7);
    return;
  }

  if (!v10[1])
  {
    v7 = v10[0];
    if (v10[0])
    {
      goto LABEL_18;
    }
  }
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>,true>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 40 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 40);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 40);
    }
  }

  return v2;
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::orc::AllocGroup,llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::SegInfo>>::operator=(uint64_t a1, char **a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 2;
    v4 = *a2;
    if (*a2 != (a2 + 2))
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = a2 + 1;
      *(a1 + 8) = a2[1];
      *a2 = v5;
      *(a2 + 3) = 0;
      goto LABEL_21;
    }

    v7 = a2 + 1;
    v8 = *(a2 + 2);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        v10 = *a1;
        v11 = &v4[40 * v8];
        do
        {
          *v10 = *v4;
          v12 = *(v4 + 8);
          *(v10 + 24) = *(v4 + 24);
          *(v10 + 8) = v12;
          v4 += 40;
          v10 += 40;
        }

        while (v4 != v11);
      }

      goto LABEL_20;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        v13 = &v4[40 * v9];
        v14 = *a1;
        do
        {
          *v14 = *v4;
          v15 = *(v4 + 8);
          *(v14 + 24) = *(v4 + 24);
          *(v14 + 8) = v15;
          v4 += 40;
          v14 += 40;
        }

        while (v4 != v13);
LABEL_18:
        v16 = *v7 - v9;
        if (v16)
        {
          memcpy((*a1 + 40 * v9), &(*a2)[40 * v9], 40 * v16);
        }

LABEL_20:
        *(a1 + 8) = v8;
LABEL_21:
        *v7 = 0;
        return a1;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 40);
    }

    v9 = 0;
    goto LABEL_18;
  }

  return a1;
}

void llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::~InFlightAlloc(llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc *this)
{
  *this = &unk_2883EC298;
  v2 = *(this + 4);
  if (v2 != this + 48)
  {
    free(v2);
  }
}

{
  *this = &unk_2883EC298;
  v2 = *(this + 4);
  if (v2 != this + 48)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

void *llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::abandon(uint64_t a1, __int128 *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  v5 = *(v3 + 40);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v16, a2);
  v6 = *(a1 + 8);
  v7 = v4[3];
  v8 = malloc_type_malloc(0x18uLL, 0x100004077774924uLL);
  *v8 = *(v6 + 16);
  v8[1] = 1;
  v8[2] = *(a1 + 24);
  v14 = v8;
  v15 = 24;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v17, v16);
  v9 = v14;
  v21 = v7;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v22, v17);
  v23 = v21;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v24, v22);
  v25 = v23;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v26, v24);
  v10 = operator new(0x28uLL, 8uLL);
  v18 = v10;
  v19 = xmmword_2750C12A0;
  *v10 = v25;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v10 + 1), v26);
  v20 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZNS2_30EPCGenericJITLinkMemoryManager13InFlightAlloc7abandonENS_15unique_functionIFvNS_5ErrorEEEEEUlSM_SM_E_JNS2_12ExecutorAddrENS_8ArrayRefISQ_EEEEEvOT0_SQ_OT1_DpRKT2_EUlOT_PKcmE_SP_JSQ_SS_EEEvS12_SU_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES12_EUlS4_E_S1C_vE9CallbacksE + 4;
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v26);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v24);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v22);
  (*(*v4 + 40))(v4, v5, &v18, v9, 24);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v18);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v17);
  if (v15 >= 9)
  {
    v11 = v14;
LABEL_5:
    free(v11);
    goto LABEL_6;
  }

  if (!v15)
  {
    v11 = v14;
    if (v14)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v16);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::orc::EPCGenericJITLinkMemoryManager::InFlightAlloc::finalize(uint64_t a1, __int128 *a2)
{
  v2 = a1;
  v69 = *MEMORY[0x277D85DE8];
  v3 = 0uLL;
  memset(v52, 0, sizeof(v52));
  *__p = 0u;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 32);
    v47 = a2;
    v48 = v7 + 40 * v4;
    do
    {
      v8 = (*v7 & 0xF8) == 8;
      v9 = *(v7 + 24);
      v10 = *(*(v2[1] + 8) + 88);
      v11 = (v9 + *(v7 + 32) + v10 - 1) / v10 * v10;
      v12 = *(v7 + 8);
      v13 = *(v7 + 16);
      v14 = v5 - v6;
      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3);
      v16 = v15 + 1;
      if (v15 + 1 > 0x666666666666666)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      if (0x999999999999999ALL * (-v6 >> 3) > v16)
      {
        v16 = 0x999999999999999ALL * (-v6 >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * (-v6 >> 3) >= 0x333333333333333)
      {
        v17 = 0x666666666666666;
      }

      else
      {
        v17 = v16;
      }

      __src = v6;
      if (v17)
      {
        if (v17 <= 0x666666666666666)
        {
          operator new();
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v18 = 40 * v15;
      *v18 = *v7 & 7;
      *(v18 + 4) = v8;
      *(v18 + 8) = v13;
      *(v18 + 16) = v11;
      *(v18 + 24) = v12;
      *(v18 + 32) = v9;
      memcpy((40 * v15 + 40 * (v14 / -40)), v6, v14);
      if (__src)
      {
        operator delete(__src);
      }

      v19 = 40 * v15 + 40 * (v14 / -40);
      v6 = v19;
      v2 = a1;
      v7 += 40;
      v5 = 40 * v15 + 40;
    }

    while (v7 != v48);
    __p[0] = v19;
    __p[1] = (40 * v15 + 40);
    v3 = *(v52 + 8);
    v20 = *(&v52[1] + 1);
    a2 = v47;
  }

  else
  {
    v20 = 0;
  }

  v21 = v2[2];
  *(v52 + 8) = *(v21 + 272);
  *(v21 + 272) = v3;
  *(&v52[1] + 1) = *(v21 + 288);
  *(v21 + 288) = v20;
  v22 = v2[1];
  v23 = *(v22 + 8);
  v24 = *(v22 + 32);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v54, a2);
  v55 = v2[3];
  v25 = __p[0];
  v26 = *(&v52[0] + 1);
  v27 = 8;
  while (v25 != __p[1])
  {
    v27 += v25[4] + 25;
    v25 += 5;
  }

  v28 = v2[1];
  v29 = 8;
  while (v26 != *&v52[1])
  {
    v29 += *(v26 + 16) + *(v26 + 72) + 32;
    v26 += 112;
  }

  v30 = v23[3];
  v31 = v29 + v27;
  v32 = v29 + v27 + 8;
  *&v67[0] = 0;
  *(&v67[0] + 1) = v32;
  if (v32 != 8 && (v29 + v27) < 0xFFFFFFFFFFFFFFF8)
  {
    v33 = malloc_type_malloc(v32, 0x100004077774924uLL);
    *&v67[0] = v33;
    *v33 = *(v28 + 16);
    v64 = (v33 + 1);
    *&v65[0] = v31;
    v34 = v31 - 8;
    if (v31 >= 8)
    {
      v35 = __p[0];
      v33[1] = 0xCCCCCCCCCCCCCCCDLL * ((__p[1] - __p[0]) >> 3);
      v36 = v33 + 2;
      v64 = (v33 + 2);
      *&v65[0] = v31 - 8;
      while (v35 != __p[1])
      {
        if (!v34)
        {
          goto LABEL_44;
        }

        v37 = (v35[4] & 1) != 0 ? *v35 & 7 | 8 : *v35 & 7;
        *v36 = v37;
        v38 = v64;
        v39 = *&v65[0];
        ++v64;
        --*&v65[0];
        if ((v39 - 1) < 8)
        {
          goto LABEL_44;
        }

        *(v38 + 1) = *(v35 + 1);
        v64 = v38 + 9;
        *&v65[0] = v39 - 9;
        if ((v39 - 9) < 8)
        {
          goto LABEL_44;
        }

        *(v38 + 9) = *(v35 + 2);
        v64 = v38 + 17;
        *&v65[0] = v39 - 17;
        if ((v39 - 17) < 8)
        {
          goto LABEL_44;
        }

        *(v38 + 17) = *(v35 + 4);
        v36 = (v38 + 25);
        v34 = v39 - 25;
        v64 = v38 + 25;
        *&v65[0] = v39 - 25;
        v40 = *(v35 + 4);
        if (v40)
        {
          v41 = v34 >= v40;
          v34 -= v40;
          if (!v41)
          {
            goto LABEL_44;
          }

          memcpy((v38 + 25), *(v35 + 3), *(v35 + 4));
          v36 += v40;
          v64 = v36;
          *&v65[0] = v34;
        }

        v35 += 40;
      }

      if (llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<char>>>>,std::vector<llvm::orc::shared::AllocActionCallPair>,void>::serialize(&v64, v52 + 1))
      {
        *v53 = v67[0];
        goto LABEL_48;
      }
    }
  }

  else
  {
    v64 = v67;
    *&v65[0] = v29 + v27 + 8;
    if (!v31)
    {
      *&v67[0] = *(v28 + 16);
      v64 = v67 + 8;
      *&v65[0] = 0;
    }
  }

LABEL_44:
  llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", v53);
  if (*(&v67[0] + 1) > 8uLL || !*(&v67[0] + 1) && *&v67[0])
  {
    free(*&v67[0]);
  }

LABEL_48:
  if (!v53[1])
  {
    v61 = v53[0];
    if (v53[0])
    {
      getErrorErrorCat();
      v64 = 3;
      *&v65[0] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v56, &v54);
  v57 = v55;
  v42 = v53[1];
  if (v53[1] <= 8)
  {
    v43 = v53;
  }

  else
  {
    v43 = v53[0];
  }

  v61 = v30;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v62, v56);
  v63 = v57;
  v64 = v61;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v65, v62);
  v66 = v63;
  *&v67[0] = v64;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v67 + 8, v65);
  v68 = v66;
  v44 = operator new(0x30uLL, 8uLL);
  v58 = v44;
  v59 = xmmword_2750C3F40;
  *v44 = *&v67[0];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v44 + 1), (v67 + 8));
  v44[5] = v68;
  v60 = _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE15CallbacksHolderIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_8SPSTupleIJNS3_11SPSSequenceINSD_IJNS3_19SPSRemoteAllocGroupESC_yNSE_IcEEEEEEENSE_INSD_IJNSD_IJSC_SG_EEESJ_EEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISN_S8_ZNS2_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorES11_E_JNS2_12ExecutorAddrENS2_8tpctypes15FinalizeRequestEEEEvOT0_S13_OT1_DpRKT2_EUlOT_PKcmE_S12_JS13_S15_EEEvS1F_S17_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1F_EUlS4_E_S1P_vE9CallbacksE + 4;
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v67 + 1);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v65);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v62);
  (*(*v23 + 40))(v23, v24, &v58, v43, v42);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v58);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v56);
  if (v53[1] >= 9)
  {
    v45 = v53[0];
LABEL_56:
    free(v45);
    goto LABEL_57;
  }

  if (!v53[1])
  {
    v45 = v53[0];
    if (v53[0])
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v54);
  *&v67[0] = v52 + 8;
  std::vector<llvm::orc::shared::AllocActionCallPair>::__destroy_vector::operator()[abi:nn200100](v67);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_11SPSSequenceISC_EEEE9callAsyncIZNS7_19callSPSWrapperAsyncISF_S8_ZNS2_30EPCGenericJITLinkMemoryManager13InFlightAlloc7abandonENS_15unique_functionIFvNS_5ErrorEEEEEUlSM_SM_E_JNS2_12ExecutorAddrENS_8ArrayRefISQ_EEEEEvOT0_SQ_OT1_DpRKT2_EUlOT_PKcmE_SP_JSQ_SS_EEEvS12_SU_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES12_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *a1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, (a1 + 1));
  v6[0] = v2;
  v6[1] = v3;
  operator new();
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc7abandonENS_15unique_functionIFvNS_5ErrorEEEEEUlSI_SI_E_JNS0_12ExecutorAddrENS_8ArrayRefISM_EEEEEvOT0_SM_OT1_DpRKT2_EUlOT_PKcmE_SL_JSM_SO_EEEvSY_SQ_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerESY_ENUlS16_E_clES16_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EC2C8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 >= 9)
  {
    v3 = *(a1 + 40);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc7abandonENS_15unique_functionIFvNS_5ErrorEEEEEUlSI_SI_E_JNS0_12ExecutorAddrENS_8ArrayRefISM_EEEEEvOT0_SM_OT1_DpRKT2_EUlOT_PKcmE_SL_JSM_SO_EEEvSY_SQ_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerESY_ENUlS16_E_clES16_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EC2C8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_11SPSSequenceIS8_EEEE9callAsyncIZNS2_19callSPSWrapperAsyncISB_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc7abandonENS_15unique_functionIFvNS_5ErrorEEEEEUlSI_SI_E_JNS0_12ExecutorAddrENS_8ArrayRefISM_EEEEEvOT0_SM_OT1_DpRKT2_EUlOT_PKcmE_SL_JSM_SO_EEEvSY_SQ_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerESY_ENUlS16_E_clES16_EUlvE_E3runEv(uint64_t a1)
{
  v2 = (a1 + 8);
  *v10 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v12 = 0;
  if (v10[1])
  {
    if (v10[1] <= 8)
    {
      v3 = v10;
    }

    else
    {
      v3 = v10[0];
    }
  }

  else
  {
    v11[3] = v10[0];
    if (v10[0])
    {
      getErrorErrorCat();
      v11[0] = 3;
      v11[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v3 = v10;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSError,llvm::Error>::deserialize(&v12, v3, v10[1], &v13);
  v4 = v13;
  if (v13)
  {
    v12 = 0;
    v13 = 0;
    v11[0] = v4;
    v5 = *(a1 + 32);
    if ((v5 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v5 & 0xFFFFFFFFFFFFFFF8))(v2, v11);
    if (v11[0])
    {
      (*(*v11[0] + 8))(v11[0]);
    }

    v6 = v13;
    if (v13)
    {
LABEL_11:
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v8 = v12;
    v12 = 0;
    v11[0] = v8;
    v9 = *(a1 + 32);
    if ((v9 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v9 & 0xFFFFFFFFFFFFFFF8))(v2, v11);
    v6 = v11[0];
    if (v11[0])
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (v10[1] >= 9)
  {
    v7 = v10[0];
LABEL_18:
    free(v7);
    return;
  }

  if (!v10[1])
  {
    v7 = v10[0];
    if (v10[0])
    {
      goto LABEL_18;
    }
  }
}

void _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8CallImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_8SPSTupleIJNS3_11SPSSequenceINSD_IJNS3_19SPSRemoteAllocGroupESC_yNSE_IcEEEEEEENSE_INSD_IJNSD_IJSC_SG_EEESJ_EEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISN_S8_ZNS2_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorES11_E_JNS2_12ExecutorAddrENS2_8tpctypes15FinalizeRequestEEEEvOT0_S13_OT1_DpRKT2_EUlOT_PKcmE_S12_JS13_S15_EEEvS1F_S17_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1F_EUlS4_E_EEvPvRS4_(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *a1;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v6, (a1 + 1));
  v7 = a1[5];
  v8[0] = v3;
  v8[1] = v4;
  operator new();
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionResultEEE8MoveImplIZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_8SPSErrorENS3_15SPSExecutorAddrENS3_8SPSTupleIJNS3_11SPSSequenceINSD_IJNS3_19SPSRemoteAllocGroupESC_yNSE_IcEEEEEEENSE_INSD_IJNSD_IJSC_SG_EEESJ_EEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISN_S8_ZNS2_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorES11_E_JNS2_12ExecutorAddrENS2_8tpctypes15FinalizeRequestEEEEvOT0_S13_OT1_DpRKT2_EUlOT_PKcmE_S12_JS13_S15_EEEvS1F_S17_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1F_EUlS4_E_EEvPvS1Q_(void *a1, uint64_t a2)
{
  *a1 = *a2;
  result = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((a1 + 1), (a2 + 8));
  a1[5] = *(a2 + 40);
  return result;
}

uint64_t _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_8SPSTupleIJNS5_11SPSSequenceINS9_IJNS5_19SPSRemoteAllocGroupES8_yNSA_IcEEEEEEENSA_INS9_IJNS9_IJS8_SC_EEESF_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISJ_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorESX_E_JNS0_12ExecutorAddrENS0_8tpctypes15FinalizeRequestEEEEvOT0_SZ_OT1_DpRKT2_EUlOT_PKcmE_SY_JSZ_S11_EEEvS1B_S13_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1B_ENUlS1J_E_clES1J_EUlvE_ED1Ev(uint64_t a1)
{
  *a1 = &unk_2883EC310;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 56);
  if (v2 >= 9)
  {
    v3 = *(a1 + 48);
LABEL_5:
    free(v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
  return a1;
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_8SPSTupleIJNS5_11SPSSequenceINS9_IJNS5_19SPSRemoteAllocGroupES8_yNSA_IcEEEEEEENSA_INS9_IJNS9_IJS8_SC_EEESF_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISJ_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorESX_E_JNS0_12ExecutorAddrENS0_8tpctypes15FinalizeRequestEEEEvOT0_SZ_OT1_DpRKT2_EUlOT_PKcmE_SY_JSZ_S11_EEEvS1B_S13_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1B_ENUlS1J_E_clES1J_EUlvE_ED0Ev(uint64_t a1)
{
  *a1 = &unk_2883EC310;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 56);
  if (v2 < 9)
  {
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 48);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 48);
  }

  free(v3);
LABEL_7:
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));

  JUMPOUT(0x277C69E40);
}

void _ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_8SPSErrorENS5_15SPSExecutorAddrENS5_8SPSTupleIJNS5_11SPSSequenceINS9_IJNS5_19SPSRemoteAllocGroupES8_yNSA_IcEEEEEEENSA_INS9_IJNS9_IJS8_SC_EEESF_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISJ_S3_ZNS0_30EPCGenericJITLinkMemoryManager13InFlightAlloc8finalizeENS_15unique_functionIFvNS_8ExpectedINS_7jitlink20JITLinkMemoryManager14FinalizedAllocEEEEEEEUlNS_5ErrorESX_E_JNS0_12ExecutorAddrENS0_8tpctypes15FinalizeRequestEEEEvOT0_SZ_OT1_DpRKT2_EUlOT_PKcmE_SY_JSZ_S11_EEEvS1B_S13_DpRKT1_EUlNS5_21WrapperFunctionResultEE_EENS2_18IncomingWFRHandlerES1B_ENUlS1J_E_clES1J_EUlvE_E3runEv(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 8);
  *v12 = *(a1 + 48);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v14 = 0;
  if (v12[1])
  {
    if (v12[1] <= 8)
    {
      v3 = v12;
    }

    else
    {
      v3 = v12[0];
    }
  }

  else
  {
    v13[3] = v12[0];
    if (v12[0])
    {
      getErrorErrorCat();
      v13[0] = 3;
      v13[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v3 = v12;
  }

  llvm::orc::shared::detail::ResultDeserializer<llvm::orc::shared::SPSError,llvm::Error>::deserialize(&v14, v3, v12[1], v13);
  v4 = v13[0];
  if (v13[0])
  {
    v13[0] = 0;
    v14 = 0;
    v16 = -1;
    v15 = v4;
    v5 = *(a1 + 32);
    if ((v5 & 2) == 0)
    {
      v2 = *v2;
    }

    (*(v5 & 0xFFFFFFFFFFFFFFF8))(v2, &v15);
    if (v16)
    {
      v6 = v15;
      v15 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    v7 = v13[0];
    if (!v13[0])
    {
      goto LABEL_24;
    }

LABEL_23:
    (*(*v7 + 8))(v7);
    goto LABEL_24;
  }

  v8 = v14;
  v14 = 0;
  if (v8)
  {
    v16 = -1;
    v15 = v8;
    v9 = *(a1 + 32);
  }

  else
  {
    v16 = 0;
    v9 = *(a1 + 32);
    v15 = *(a1 + 40);
  }

  if ((v9 & 2) == 0)
  {
    v2 = *v2;
  }

  (*(v9 & 0xFFFFFFFFFFFFFFF8))(v2, &v15);
  if (v16)
  {
    v7 = v15;
    v15 = 0;
    if (v7)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (v12[1] >= 9)
  {
    v10 = v12[0];
LABEL_30:
    free(v10);
    goto LABEL_31;
  }

  if (!v12[1])
  {
    v10 = v12[0];
    if (v12[0])
    {
      goto LABEL_30;
    }
  }

LABEL_31:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::GlobalValue::setLinkage(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 32);
  if ((a2 - 7) < 2)
  {
    v3 &= 0xFFFFFCCF;
  }

  v4 = v3 & 0xFFFFFFF0 | a2 & 0xF;
  *(result + 32) = v4;
  if ((a2 & 0xFu) - 7 < 2)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x30) != 0)
  {
    result = llvm::GlobalValue::hasExternalWeakLinkage(result);
    if ((result & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_7:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return result;
}

uint64_t llvm::GlobalValue::setVisibility(uint64_t result, char a2)
{
  v2 = result;
  v3 = *(result + 32) & 0xF;
  v4 = *(result + 32) & 0xFFFFFFCF | (16 * (a2 & 3));
  *(result + 32) = v4;
  if ((v3 - 7) < 2)
  {
    goto LABEL_5;
  }

  if (16 * (a2 & 3))
  {
    result = llvm::GlobalValue::hasExternalWeakLinkage(result);
    if ((result & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_5:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return result;
}

uint64_t *llvm::orc::StaticLibraryDefinitionGenerator::Create@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = *(*a2 + 8);
  v11 = *(*a2 + 16) - v10;
  v12 = (*(**a2 + 16))();
  *&v26 = v10;
  *(&v26 + 1) = v11;
  v27 = v12;
  v28 = v13;
  llvm::object::createBinary(&v26, 0, 1, &v36);
  v14 = v36;
  if (v37)
  {
    v36 = 0;
    *(a5 + 8) |= 1u;
    *a5 = v14;
  }

  else
  {
    v15 = *(v36 + 2);
    if (v15 == 1)
    {
      llvm::orc::getMachOSliceRangeForTriple(v36, (*(*(a1 + 8) + 72) + 40), &v32);
      if ((v33 & 1) == 0)
      {
        v20 = v32.i64[1];
        v21 = *(*a2 + 8) + v32.i64[0];
        v22 = (*(**a2 + 16))();
        *&v26 = v21;
        *(&v26 + 1) = v20;
        v27 = v22;
        v28 = v23;
        llvm::object::Archive::create(&v26);
      }

      v17 = v32.i64[0];
      *(a5 + 8) |= 1u;
      *a5 = v17;
    }

    else
    {
      if (v15)
      {
        v18 = (*(**a2 + 16))();
        *&v26 = "Unrecognized file type for ";
        v27 = v18;
        v28 = v19;
        v29 = 1283;
        getErrorErrorCat();
        operator new();
      }

      v16 = *a2;
      *a2 = 0;
      v30 = v14;
      v31 = v16;
      v36 = 0;
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v35, a3);
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v34, a4);
      llvm::orc::StaticLibraryDefinitionGenerator::Create(a1, &v30, v35, a5);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v34);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v35);
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }

      if (v31)
      {
        (*(*v31 + 8))(v31);
      }
    }
  }

  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v36);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::orc::StaticLibraryDefinitionGenerator::Create@<X0>(uint64_t a1@<X0>, llvm::object::Archive **a2@<X2>, void *a3@<X3>, unint64_t *a4@<X8>)
{
  v94 = *MEMORY[0x277D85DE8];
  v71[0] = 0;
  v71[1] = 0;
  v72 = 0;
  if (a3[3] >= 8uLL)
  {
    v70 = 0;
    llvm::object::Archive::children(*a2, &v70, 1, &v87);
    llvm::object::Archive::Child::Child(&Next, &v87);
    v86 = v90;
    llvm::object::Archive::Child::Child(&v78, &v91);
    v8 = 0;
    v81 = v93;
    v9 = *a4;
    v10 = *(a4 + 8);
    while ((v86 > 7 || v81 >= 8) && v84 != v80)
    {
      llvm::object::Archive::Child::Child(&v67, &Next);
      llvm::object::Archive::Child::getMemoryBufferRef(&v67, &v75);
      if (v77)
      {
        v11 = v75;
        *&v75 = 0;
        *&v66[0] = v11;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v66);
        if (*&v66[0])
        {
          (*(**&v66[0] + 8))(*&v66[0]);
        }

        v12 = 1;
        v13 = v8;
      }

      else
      {
        v14 = *a2;
        v66[0] = v75;
        v66[1] = v76;
        v15 = a3[3];
        v16 = a3;
        if ((v15 & 2) == 0)
        {
          v16 = *a3;
        }

        v13 = v8 + 1;
        (*(v15 & 0xFFFFFFFFFFFFFFF8))(&v73, v16, v14, v66, v8);
        if (v74)
        {
          v12 = 0;
          v9 = v73;
          v10 |= 1u;
        }

        else
        {
          if ((v73 & 1) == 0)
          {
            v65 = v68 - *(v67 + 16) + v69;
            llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(v71, &v65, v66);
            if (v74)
            {
              v17 = v73;
              v73 = 0;
              if (v17)
              {
                (*(*v17 + 8))(v17);
              }
            }
          }

          v12 = 1;
        }
      }

      v18 = *(&v67 + 1);
      *(&v67 + 1) = 0;
      if (v18)
      {
        (*(*v18 + 16))(v18);
      }

      if (!v12)
      {
        *(a4 + 8) = v10;
        *a4 = v9;
        v44 = v79;
        v79 = 0;
        if (v44)
        {
          (*(*v44 + 16))(v44);
        }

        v45 = v83;
        v83 = 0;
        if (v45)
        {
          (*(*v45 + 16))(v45);
        }

        v46 = v92;
        v92 = 0;
        if (v46)
        {
          (*(*v46 + 16))(v46);
        }

        v47 = v87.n128_u64[1];
        v87.n128_u64[1] = 0;
        if (v47)
        {
          (*(*v47 + 16))(v47);
        }

        if (v70)
        {
          (*(*v70 + 8))(v70);
        }

        goto LABEL_103;
      }

      llvm::fallible_iterator<llvm::object::Archive::ChildFallibleIterator>::operator++(&Next);
      v8 = v13;
    }

    *(a4 + 8) = v10;
    *a4 = v9;
    v19 = v79;
    v79 = 0;
    if (v19)
    {
      (*(*v19 + 16))(v19);
    }

    v20 = v83;
    v83 = 0;
    if (v20)
    {
      (*(*v20 + 16))(v20);
    }

    v21 = v92;
    v92 = 0;
    if (v21)
    {
      (*(*v21 + 16))(v21);
    }

    v22 = v87.n128_u64[1];
    v87.n128_u64[1] = 0;
    if (v22)
    {
      (*(*v22 + 16))(v22);
    }

    v23 = v70;
    if (v70)
    {
      *(a4 + 8) = v10 | 1;
      *a4 = v23;
      goto LABEL_103;
    }
  }

  v67 = 0uLL;
  LODWORD(v68) = 0;
  v75 = 0uLL;
  LODWORD(v76) = 0;
  v73 = 0;
  llvm::object::Archive::children(*a2, &v73, 1, &v87);
  llvm::object::Archive::Child::Child(&Next, &v87);
  v86 = v90;
  llvm::object::Archive::Child::Child(&v78, &v91);
  v24 = 0;
  v25 = 0;
  v81 = v93;
  while ((v86 > 7 || v81 >= 8) && v84 != v80)
  {
    v70 = v84 - *(Next + 2) + v85;
    *&v66[0] = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::LookupBucketFor<unsigned long long>(v71, &v70, v66))
    {
      goto LABEL_45;
    }

    v26 = v84 - *(Next + 2) + v85;
    *&v66[0] = 0;
    v27 = v76;
    v28 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(v24, v76, v26, v66);
    v29 = *&v66[0];
    if ((v28 & 1) == 0)
    {
      if (4 * DWORD2(v75) + 4 >= 3 * v27)
      {
        v30 = 2 * v27;
      }

      else
      {
        if (v27 + ~DWORD2(v75) - HIDWORD(v75) > v27 >> 3)
        {
LABEL_41:
          ++DWORD2(v75);
          if (*v29 != -1)
          {
            --HIDWORD(v75);
          }

          *v29 = v26;
          v29[1] = 0;
          goto LABEL_44;
        }

        v30 = v27;
      }

      llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::grow(&v75, v30);
      *&v66[0] = 0;
      v24 = v75;
      llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(v75, v76, v26, v66);
      v29 = *&v66[0];
      goto LABEL_41;
    }

LABEL_44:
    v29[1] = v25;
LABEL_45:
    ++v25;
    llvm::fallible_iterator<llvm::object::Archive::ChildFallibleIterator>::operator++(&Next);
  }

  v31 = v79;
  v79 = 0;
  if (v31)
  {
    (*(*v31 + 16))(v31);
  }

  v32 = v83;
  v83 = 0;
  if (v32)
  {
    (*(*v32 + 16))(v32);
  }

  v33 = v92;
  v92 = 0;
  if (v33)
  {
    (*(*v33 + 16))(v33);
  }

  v34 = v87.n128_u64[1];
  v87.n128_u64[1] = 0;
  if (v34)
  {
    (*(*v34 + 16))(v34);
  }

  v35 = v73;
  if (v73)
  {
    *(a4 + 8) |= 1u;
    *a4 = v35;
    MEMORY[0x277C69E30](v24, 8);
    goto LABEL_102;
  }

  v36 = *(a1 + 8);
  v37 = *a2;
  v38 = llvm::object::Archive::symbol_begin(*a2);
  v40 = v39;
  NumberOfSymbols = llvm::object::Archive::getNumberOfSymbols(v37);
  v42 = NumberOfSymbols;
  Next = v38;
  v83 = v40;
  if (v38 == v37 && NumberOfSymbols == v40)
  {
LABEL_61:
    v43 = 1;
    goto LABEL_98;
  }

  while (2)
  {
    llvm::object::Archive::Symbol::getMember(&Next, &v87);
    v48 = v87.n128_u64[0];
    if ((v90 & 1) == 0)
    {
      v49 = v88 - *(v87.n128_u64[0] + 16);
      v78 = 0;
      v50 = v75;
      v51 = v76;
      if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(v75, v76, v49 + v89, &v78))
      {
        v52 = v78 == (v50 + 16 * v51);
      }

      else
      {
        v52 = 1;
      }

      if (v52)
      {
        goto LABEL_91;
      }

      v53 = v78[1];
      v54 = *(Next + 6);
      if (v54)
      {
        v55 = strlen((v54 + HIDWORD(v83)));
      }

      else
      {
        v55 = 0;
      }

      llvm::orc::ExecutionSession::intern(v36, (v54 + HIDWORD(v83)), v55, v66);
      v78 = 0;
      v56 = v68;
      v57 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(v67, v68, *&v66[0], &v78);
      v58 = v78;
      if (v57)
      {
        v59 = *&v66[0];
        goto LABEL_89;
      }

      if (4 * DWORD2(v67) + 4 >= 3 * v56)
      {
        v62 = 2 * v56;
      }

      else
      {
        if (v56 + ~DWORD2(v67) - HIDWORD(v67) > v56 >> 3)
        {
LABEL_84:
          ++DWORD2(v67);
          v60 = *v58;
          if (*v58 != -8)
          {
            --HIDWORD(v67);
          }

          if ((v60 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v60 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          v59 = 0;
          *v58 = 0;
          v58[1] = 0;
          *v58 = *&v66[0];
          *&v66[0] = 0;
LABEL_89:
          v58[1] = v53;
          if ((v59 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v59 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

LABEL_91:
          llvm::Expected<llvm::object::Archive::Child>::~Expected(&v87);
          Next = llvm::object::Archive::Symbol::getNext(&Next);
          v83 = v61;
          if (Next == v37 && v42 == v61)
          {
            goto LABEL_61;
          }

          continue;
        }

        v62 = v56;
      }

      llvm::DenseMap<llvm::orc::SymbolStringPtr,unsigned long,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,unsigned long>>::grow(&v67, v62);
      v78 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(v67, v68, *&v66[0], &v78);
      v58 = v78;
      goto LABEL_84;
    }

    break;
  }

  v87.n128_u64[0] = 0;
  *(a4 + 8) |= 1u;
  *a4 = v48;
  llvm::Expected<llvm::object::Archive::Child>::~Expected(&v87);
  v43 = 0;
LABEL_98:
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  MEMORY[0x277C69E30](v75, 8);
  if (v43)
  {
    operator new();
  }

LABEL_102:
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v67);
LABEL_103:
  result = MEMORY[0x277C69E30](v71[0], 8);
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

double llvm::object::Archive::children@<D0>(llvm::object::Archive *this@<X0>, llvm::Error *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  llvm::object::Archive::child_begin(this, a2, a3, v16);
  llvm::object::Archive::child_end(v13);
  v5 = v17;
  v6 = v18;
  v7 = v14;
  v8 = v15;
  v9 = v16[1];
  *a4 = v16[0];
  *(a4 + 16) = v9;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;
  result = *v13;
  v11 = v13[1];
  *(a4 + 48) = v13[0];
  *(a4 + 64) = v11;
  *(a4 + 80) = v7;
  *(a4 + 88) = v8;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::object::Archive::ChildFallibleIterator *llvm::fallible_iterator<llvm::object::Archive::ChildFallibleIterator>::operator++(llvm::object::Archive::ChildFallibleIterator *a1)
{
  llvm::object::Archive::ChildFallibleIterator::inc(a1, &v4);
  v2 = v4;
  if (v4)
  {
    v4 = 0;
    *(*(a1 + 5) & 0xFFFFFFFFFFFFFFF8) = v2;
    *(a1 + 5) = *(a1 + 5) & 3 | 4;
  }

  else
  {
    *(*(a1 + 5) & 0xFFFFFFFFFFFFFFF8) = 0;
  }

  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t llvm::orc::StaticLibraryDefinitionGenerator::tryToGenerate@<X0>(uint64_t result@<X0>, int a2@<W2>, llvm::orc::JITDylib *a3@<X3>, uint64_t **a4@<X5>, uint64_t *a5@<X8>)
{
  v70 = *MEMORY[0x277D85DE8];
  if (a2 || (v6 = result, !*(result + 176)))
  {
    *a5 = 0;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v8 = *a4;
    v9 = a4[1];
    if (*a4 != v9)
    {
      v10 = 0;
      while (1)
      {
        *&v65 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*(v6 + 184), *(v6 + 200), *v8, &v65))
        {
          v11 = v65 == *(v6 + 184) + 16 * *(v6 + 200);
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          goto LABEL_24;
        }

        v12 = *(v65 + 8);
        *&v65 = 0;
        v13 = v60;
        if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(v10, v60, v12, &v65))
        {
          goto LABEL_24;
        }

        llvm::object::Archive::findSym(*(v6 + 176), (*v8 + 16), **v8, &v65);
        if (v69)
        {
          v52 = v65;
          *&v65 = 0;
          goto LABEL_89;
        }

        if (v68)
        {
          break;
        }

LABEL_23:
        llvm::Expected<std::optional<llvm::object::Archive::Child>>::~Expected(&v65);
LABEL_24:
        v8 += 2;
        if (v8 == v9)
        {
          goto LABEL_29;
        }
      }

      llvm::object::Archive::Child::getMemoryBufferRef(&v65, &v62);
      if (v64)
      {
        v52 = v62;
LABEL_89:
        *a5 = v52;
        llvm::Expected<std::optional<llvm::object::Archive::Child>>::~Expected(&v65);
        goto LABEL_85;
      }

      v61 = 0;
      v14 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(v10, v13, v12, &v61);
      v15 = v61;
      if (v14)
      {
LABEL_20:
        v16 = v62;
        *(v15 + 24) = v63;
        *(v15 + 8) = v16;
        if ((v64 & 1) != 0 && v62)
        {
          (*(*v62 + 8))(v62);
        }

        goto LABEL_23;
      }

      if (4 * v59 + 4 >= 3 * v13)
      {
        v17 = 2 * v13;
      }

      else
      {
        if (v13 + ~v59 - HIDWORD(v59) > v13 >> 3)
        {
LABEL_17:
          LODWORD(v59) = v59 + 1;
          if (*v15 != -1)
          {
            --HIDWORD(v59);
          }

          *v15 = v12;
          *(v15 + 8) = 0u;
          *(v15 + 24) = 0u;
          goto LABEL_20;
        }

        v17 = v13;
      }

      llvm::DenseMap<unsigned long,llvm::MemoryBufferRef,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::MemoryBufferRef>>::grow(&v58, v17);
      v61 = 0;
      v10 = v58;
      llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(v58, v60, v12, &v61);
      v15 = v61;
      goto LABEL_17;
    }

LABEL_29:
    v62 = 0uLL;
    *&v63 = 0;
    if (*(v6 + 192))
    {
      v18 = *(v6 + 200);
      if (v18)
      {
        v19 = 16 * v18;
        v20 = *(v6 + 184);
        while ((*v20 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v20 += 2;
          v19 -= 16;
          if (!v19)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
        v20 = *(v6 + 184);
      }

      v21 = *(v6 + 184) + 16 * v18;
      if (v20 != v21)
      {
LABEL_37:
        if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(v58, v60, v20[1], &v65))
        {
          v22 = *(&v62 + 1);
          if (*(&v62 + 1) >= v63)
          {
            v25 = (*(&v62 + 1) - v62) >> 3;
            v26 = v25 + 1;
            if ((v25 + 1) >> 61)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v27 = v63 - v62;
            if ((v63 - v62) >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            v67 = &v62;
            if (v28)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&v62, v28);
            }

            v29 = (8 * v25);
            *&v65 = 0;
            *(&v65 + 1) = v29;
            v66 = (8 * v25);
            v30 = *v20;
            *v29 = *v20;
            if ((v30 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v30 + 8), 1uLL);
              v29 = v66;
            }

            *&v66 = v29 + 1;
            std::vector<llvm::orc::SymbolStringPtr>::__swap_out_circular_buffer(&v62, &v65);
            v24 = *(&v62 + 1);
            std::__split_buffer<llvm::orc::SymbolStringPtr>::~__split_buffer(&v65);
          }

          else
          {
            v23 = *v20;
            **(&v62 + 1) = *v20;
            if ((v23 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v23 + 8), 1uLL);
            }

            v24 = v22 + 8;
          }

          *(&v62 + 1) = v24;
        }

        while (1)
        {
          v20 += 2;
          if (v20 == v21)
          {
            break;
          }

          if ((*v20 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            if (v20 != v21)
            {
              goto LABEL_37;
            }

            break;
          }
        }

        v32 = *(&v62 + 1);
        for (i = v62; i != v32; ++i)
        {
          v33 = *i;
          *&v65 = 0;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*(v6 + 184), *(v6 + 200), v33, &v65))
          {
            v34 = v65;
            if ((*v65 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*v65 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            *v34 = -16;
            *(v6 + 192) = vadd_s32(*(v6 + 192), 0x1FFFFFFFFLL);
          }
        }
      }
    }

LABEL_63:
    *&v65 = &v62;
    std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v65);
    if (!v59)
    {
      goto LABEL_84;
    }

    if (v60)
    {
      v35 = 40 * v60;
      v36 = v58;
      while (*v36 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v36 += 40;
        v35 -= 40;
        if (!v35)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      v36 = v58;
    }

    v37 = v58 + 40 * v60;
    if (v36 == v37)
    {
LABEL_84:
      *a5 = 0;
      goto LABEL_85;
    }

LABEL_71:
    v38 = *(v6 + 176);
    v39 = *(v36 + 24);
    v65 = *(v36 + 8);
    v66 = v39;
    llvm::orc::StaticLibraryDefinitionGenerator::createMemberBuffer(v38, &v65, *v36, &v61);
    v40 = *(*(v6 + 128) + 8);
    v41 = v61;
    v42 = *(v61 + 1);
    v43 = *(v61 + 2) - v42;
    v44 = (*(*v61 + 16))(v61);
    *&v62 = v42;
    *(&v62 + 1) = v43;
    *&v63 = v44;
    *(&v63 + 1) = v45;
    v46 = v6 + 136;
    v47 = *(v6 + 160);
    if ((v47 & 2) == 0)
    {
      v46 = *(v6 + 136);
    }

    (*(v47 & 0xFFFFFFFFFFFFFFF8))(&v65, v46, v40, &v62);
    if (v67)
    {
      v53 = v65;
      *&v65 = 0;
      *a5 = v53;
      llvm::Expected<llvm::orc::MaterializationUnit::Interface>::~Expected(&v65);
      (*(*v41 + 8))(v41);
      goto LABEL_85;
    }

    v48 = *(v6 + 128);
    v61 = 0;
    v54 = v65;
    v65 = 0uLL;
    v55 = v66;
    LODWORD(v66) = 0;
    v56 = *(&v66 + 1);
    v57 = v41;
    *(&v66 + 1) = 0;
    llvm::orc::ObjectLayer::add(v48, a3, &v57, &v54);
    if ((v56 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v56 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v54);
    v49 = v57;
    v57 = 0;
    if (v49)
    {
      (*(*v49 + 8))(v49);
    }

    v50 = *a5;
    llvm::Expected<llvm::orc::MaterializationUnit::Interface>::~Expected(&v65);
    if (v61)
    {
      (*(*v61 + 8))(v61);
    }

    if (!v50)
    {
      while (1)
      {
        v36 += 40;
        if (v36 == v37)
        {
          goto LABEL_84;
        }

        if (*v36 < 0xFFFFFFFFFFFFFFFELL)
        {
          if (v36 != v37)
          {
            goto LABEL_71;
          }

          goto LABEL_84;
        }
      }
    }

LABEL_85:
    result = MEMORY[0x277C69E30](v58, 8);
  }

  v51 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::orc::StaticLibraryDefinitionGenerator::createMemberBuffer(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v25 = a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = 773;
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = "[";
  v14[0] = v12;
  v14[2] = &v25;
  v15 = 2562;
  v16[0] = v14;
  v16[2] = "](";
  v17 = 770;
  v18 = v16;
  v19 = *(a2 + 1);
  v20 = 1282;
  v21[0] = &v18;
  v21[2] = ")";
  v22 = 770;
  llvm::Twine::str(v21, v23);
  v9 = v24;
  v10 = v23[0];
  if (v24 >= 0)
  {
    v10 = v23;
  }

  if (v24 < 0)
  {
    v9 = v23[1];
  }

  v27 = 261;
  v26[0] = v10;
  v26[1] = v9;
  v28 = v26;
  v11 = operator new(24, &v28);
  *v11 = &unk_2883EB078;
  *(v11 + 1) = v5;
  *(v11 + 2) = v5 + v6;
  *a4 = v11;
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }
}

void *llvm::jitlink::LinkGraph::addAbsoluteSymbol(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, int a8)
{
  v16 = *(a1 + 120);
  std::mutex::lock(v16);
  v20 = 0;
  v17 = *llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v16[1], a2, a3, &v20);
  v19 = v17;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v17 + 1, 1uLL);
  }

  std::mutex::unlock(v16);
  result = llvm::jitlink::LinkGraph::addAbsoluteSymbol(a1, &v19, a4, a5, a6, a7, a8);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v19 + 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void llvm::orc::StaticLibraryDefinitionGenerator::~StaticLibraryDefinitionGenerator(llvm::orc::StaticLibraryDefinitionGenerator *this)
{
  *this = &unk_2883EC358;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 23);
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 17);

  llvm::orc::DefinitionGenerator::~DefinitionGenerator(this);
}

{
  *this = &unk_2883EC358;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 23);
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 17);
  llvm::orc::DefinitionGenerator::~DefinitionGenerator(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::object::Archive::Child::Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 8);
  if (v3)
  {
    (**v3)(&v8);
    v4 = v8;
    v8 = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    if (v5)
    {
      (*(*v5 + 16))(v5);
      v6 = v8;
      v8 = 0;
      if (v6)
      {
        (*(*v6 + 16))(v6);
      }
    }
  }

  return a1;
}

void *llvm::jitlink::LinkGraph::addAbsoluteSymbol(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, char a6, int a7)
{
  v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 16, 3);
  v15 = v14[1] & 0xFFFFFFFFFFFFFFFCLL | 2;
  *v14 = a3;
  v14[1] = v15;
  v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 32, 3);
  v17 = v16;
  *v16 = 0;
  *v16 = *a2;
  *a2 = 0;
  v18 = 0x1000000000000000;
  if (!a7)
  {
    v18 = 0;
  }

  v16[1] = v14;
  v16[2] = ((a5 & 1) << 57) | ((a6 & 3) << 58) | v18;
  v16[3] = a4;
  v20 = v16;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 248, &v20, v21);
  return v17;
}

uint64_t *llvm::Expected<llvm::object::Archive::Child>::~Expected(uint64_t *a1)
{
  if (a1[5])
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    v3 = a1[1];
    a1[1] = 0;
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }
  }

  return a1;
}

uint64_t *llvm::object::Archive::ChildFallibleIterator::inc@<X0>(llvm::object::Archive::ChildFallibleIterator *this@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::object::Archive::Child::getNext(this, v7);
  if (v8)
  {
    v4 = *&v7[0];
    *&v7[0] = 0;
  }

  else
  {
    llvm::object::Archive::Child::operator=(this, v7);
    v4 = 0;
  }

  *a2 = v4;
  result = llvm::Expected<llvm::object::Archive::Child>::~Expected(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::Archive::Child::operator=(uint64_t a1, __int128 *a2)
{
  if (a2 != a1)
  {
    v4 = *a2;
    *(a2 + 1) = 0;
    v5 = *(a1 + 8);
    *a1 = v4;
    if (v5)
    {
      (*(*v5 + 16))(v5);
    }

    *(a1 + 16) = a2[1];
    *(a1 + 32) = *(a2 + 16);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::LookupBucketFor<unsigned long long>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::InsertIntoBucketImpl<unsigned long long>(a1, a2, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::LookupBucketFor<unsigned long long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::InsertIntoBucketImpl<unsigned long long>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::LookupBucketFor<unsigned long long>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

void *llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {

    return memset(result, 255, 8 * v10);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    result = memset(*result, 255, 8 * v6);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::LookupBucketFor<unsigned long long>(v5, a2, &v7);
      *v7 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::grow(uint64_t a1, int a2)
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
          *(v16 - 2) = -1;
        }

        if (v17.i8[4])
        {
          *v16 = -1;
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
        v20 = *v19;
        if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
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
        *(v27 - 2) = -1;
      }

      if (v28.i8[4])
      {
        *v27 = -1;
      }

      v22 += 2;
      v27 += 4;
    }

    while (v25 != v22);
  }

  return result;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,unsigned long,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,unsigned long>>::grow(uint64_t a1, int a2)
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
          *(v16 - 2) = -8;
        }

        if (v17.i8[4])
        {
          *v16 = -8;
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
        v20 = *v19;
        if ((*v19 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          if ((*v31 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((*v31 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          v20 = 0;
          *v21 = 0;
          v22 = v19[1];
          *v21 = *v19;
          *v19 = 0;
          v21[1] = v22;
          ++*(a1 + 8);
        }

        if ((v20 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v20 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 16;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_2750C1210)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -8;
      }

      if (v30.i8[4])
      {
        *v29 = -8;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

void *llvm::DenseMap<unsigned long,llvm::MemoryBufferRef,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::MemoryBufferRef>>::grow(uint64_t a1, int a2)
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
  result = operator new(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 40 * v10 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -1;
        }

        if (v14.i8[4])
        {
          result[5] = -1;
        }

        v11 += 2;
        result += 10;
      }

      while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 40 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), v17, &v25);
          v18 = v25;
          *v25 = *v16;
          v19 = *(v16 + 8);
          *(v18 + 3) = *(v16 + 24);
          *(v18 + 1) = v19;
          ++*(a1 + 8);
        }

        v16 += 40;
        v15 -= 40;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 40 * v20 - 40;
    v23 = vdupq_n_s64(v22 / 0x28);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_2750C1210)));
      if (v24.i8[0])
      {
        *result = -1;
      }

      if (v24.i8[4])
      {
        result[5] = -1;
      }

      v21 += 2;
      result += 10;
    }

    while (((v22 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Expected<llvm::orc::MaterializationUnit::Interface>,llvm::orc::ExecutionSession &,llvm::MemoryBufferRef>::CallImpl<llvm::Expected<llvm::orc::MaterializationUnit::Interface> (*)(llvm::orc::ExecutionSession &,llvm::MemoryBufferRef)>(uint64_t (**a1)(uint64_t, _OWORD *), uint64_t a2, _OWORD *a3)
{
  v3 = *a1;
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  return v3(a2, v6);
}

uint64_t llvm::Expected<std::unique_ptr<llvm::jitlink::LinkGraph>>::~Expected(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::unique_ptr<llvm::jitlink::LinkGraph>::~unique_ptr[abi:nn200100](a1);
  }

  return a1;
}

_WORD *llvm::orc::addInitSymbol(uint64_t *a1, uint64_t a2, const void *a3, size_t a4)
{
  v8 = 0;
  do
  {
    __p = 0;
    v24 = 0;
    v25 = 0;
    v15 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v14 = &unk_2883EB8F0;
    p_p = &__p;
    llvm::raw_ostream::SetUnbuffered(&v14);
    if ((v17 - v18) > 1)
    {
      *v18 = 11812;
      v18 += 2;
    }

    else
    {
      llvm::raw_ostream::write(&v14, "$.", 2uLL);
    }

    llvm::raw_ostream::operator<<(&v14, a3, a4);
    v9 = v18;
    if ((v17 - v18) > 8)
    {
      *(v18 + 8) = 46;
      *v9 = *".__inits.";
      v18 += 9;
    }

    else
    {
      llvm::raw_ostream::write(&v14, ".__inits.", 9uLL);
    }

    write_unsigned<unsigned long>(&v14, v8, 0, 0, 0);
    llvm::raw_ostream::~raw_ostream(&v14);
    if (v25 >= 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p;
    }

    if (v25 >= 0)
    {
      v11 = SHIBYTE(v25);
    }

    else
    {
      v11 = v24;
    }

    llvm::orc::ExecutionSession::intern(a2, v10, v11, &v14);
    v12 = a1[3];
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    a1[3] = v14;
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p);
    }

    v14 = 0;
    ++v8;
  }

  while ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a1 + 3, &v14) & 1) != 0);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(a1, a1 + 3);
  result[4] = 0x4000;
  return result;
}

uint64_t *llvm::orc::getObjectFileInterface@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v131 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v120 = *a2;
  v121 = v5;
  llvm::object::ObjectFile::createObjectFile(&v120, 0, 1, &v122);
  v6 = v122;
  if ((v123 & 1) == 0)
  {
    v7 = *(v122 + 8);
    if (v122)
    {
      v8 = (v7 - 21) >= 0xFFFFFFFC;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      if (v122 && (v7 - 17) >= 0xFFFFFFFC)
      {
        v120 = 0uLL;
        LODWORD(v121) = 0;
        *(&v121 + 1) = 0;
        v9 = (*(*v122 + 48))(v122);
        v11 = v10;
        v12 = (*(*v6 + 56))(v6);
        v118 = v9;
        v119 = v11;
        if (v9 == v12)
        {
LABEL_10:
          v13 = (*(*v6 + 352))(v6);
          v15 = v14;
          v16 = (*(*v6 + 360))(v6);
          v118 = v13;
          v119 = v15;
          if (v15 == v17 && v13 == v16)
          {
            goto LABEL_77;
          }

          v19 = v16;
          v20 = v17;
          while (1)
          {
            (*(*v15 + 144))(&v126, v15, v13);
            if (v128)
            {
              v21 = v126;
              v126 = 0;
              if (v21)
              {
                (*(*v21 + 8))(v21);
              }
            }

            else if (llvm::orc::isELFInitializerSection(v126, v127))
            {
              llvm::orc::addInitSymbol(&v120, a1, *(v6 + 32), *(v6 + 40));
              if (v128)
              {
                v113 = v126;
                v126 = 0;
                if (v113)
                {
                  (*(*v113 + 8))(v113);
                }
              }

              goto LABEL_77;
            }

            (*(*v119 + 136))(v119, &v118);
            v13 = v118;
            v15 = v119;
            if (v119 == v20 && v118 == v19)
            {
              goto LABEL_77;
            }
          }
        }

        v56 = v12;
        while (1)
        {
          (*(*v119 + 40))(&v129);
          if (v130)
          {
            break;
          }

          if ((v129 & 3) != 2)
          {
            goto LABEL_88;
          }

          (*(*v119 + 120))(&v126);
          if (v127)
          {
            goto LABEL_85;
          }

          if (v126 == 4)
          {
LABEL_88:
            v58 = 3;
            goto LABEL_89;
          }

          (*(*v119 + 80))(&v126);
          if (v128)
          {
LABEL_85:
            v57 = v126;
            goto LABEL_86;
          }

          llvm::JITSymbolFlags::fromObjectSymbol(&v118, &v124);
          if (v125)
          {
            v60 = v124;
            *(a3 + 32) |= 1u;
            *a3 = v60;
            v58 = 1;
          }

          else
          {
            if ((*(*v119 + 456))(v119, v118) == 10)
            {
              BYTE1(v124) |= 2u;
            }

            llvm::orc::ExecutionSession::intern(a1, v126, v127, &v117);
            v61 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v120, &v117);
            v61[4] = v124;
            if (v117 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v117 + 1, 0xFFFFFFFFFFFFFFFFLL);
              if (v125)
              {
                if (v124)
                {
                  (*(*v124 + 8))(v124);
                }
              }
            }

            v58 = 0;
          }

          if (v128)
          {
            v62 = v126;
            v126 = 0;
            if (v62)
            {
              (*(*v62 + 8))(v62);
            }
          }

LABEL_89:
          if (v130)
          {
            v59 = v129;
            v129 = 0;
            if (v59)
            {
              (*(*v59 + 8))(v59);
            }
          }

          if (v58 != 3 && v58)
          {
            goto LABEL_225;
          }

          (*(*v119 + 24))(v119, &v118);
          if (v118 == v56)
          {
            goto LABEL_10;
          }
        }

        v57 = v129;
        v129 = 0;
LABEL_86:
        *(a3 + 32) |= 1u;
        *a3 = v57;
        v58 = 1;
        goto LABEL_89;
      }

      if (v122 && v7 == 10)
      {
        v120 = 0uLL;
        LODWORD(v121) = 0;
        *(&v121 + 1) = 0;
        v37 = *(v122 + 48);
        if (v37)
        {
          v38 = *(v37 + 2);
          if (v38 == 0xFFFF)
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = *(*(v122 + 56) + 44);
        }

        if (v38 != -1)
        {
          operator new();
        }

        v70 = (*(*v122 + 48))(v122);
        v72 = v71;
        v73 = (*(*v6 + 56))(v6);
        v118 = v70;
        v119 = v72;
        if (v70 != v73)
        {
          v74 = v73;
          do
          {
            (*(*v119 + 40))(&v129);
            if (v130)
            {
              v75 = v129;
              v129 = 0;
LABEL_144:
              *(a3 + 32) |= 1u;
              *a3 = v75;
              v76 = 1;
              goto LABEL_203;
            }

            v77 = *(v6 + 96);
            if (v77)
            {
              v78 = v118;
            }

            else
            {
              v78 = 0;
            }

            if (v77)
            {
              v79 = 0;
            }

            else
            {
              v79 = v118;
            }

            if (v78)
            {
              if (!*(v78 + 17) || *(v78 + 16) != 3)
              {
                goto LABEL_164;
              }

              v80 = v78 + 18;
              v81 = *(v78 + 12);
              if (v81 >> 8 <= 0xFE)
              {
                v82 = *(v78 + 12);
              }

              else
              {
                v82 = v81;
              }
            }

            else
            {
              if (!*(v79 + 19) || *(v79 + 18) != 3)
              {
                goto LABEL_167;
              }

              v80 = v79 + 20;
              v82 = *(v79 + 12);
            }

            llvm::object::COFFObjectFile::getSection(v6, v82, &v126);
            v75 = v126;
            if (v127)
            {
              goto LABEL_144;
            }

            if ((*(v126 + 37) & 0x10) != 0 && *(v80 + 14) != 5)
            {
              if (v78)
              {
                v87 = *(v78 + 12);
                if (v87 >> 8 > 0xFE)
                {
                  v87 = v87;
                }
              }

              else
              {
                v87 = *(v79 + 12);
              }

              v95 = 19 * v87;
              v96 = *(v95 + 18);
              v97 = *(v80 + 16);
              *v95 = *v80;
              *(v95 + 16) = v97;
              if ((v96 & 1) == 0)
              {
                *(v95 + 18) = 1;
              }

LABEL_202:
              v76 = 3;
              goto LABEL_203;
            }

            if (v78)
            {
LABEL_164:
              v83 = *(v78 + 12);
              if (v83 + 256) >= 0x101u && (*(19 * *(v78 + 12) + 0x12))
              {
                goto LABEL_169;
              }

              goto LABEL_171;
            }

LABEL_167:
            v83 = *(v79 + 12);
            if (v83 >= 1 && *(19 * v83 + 0x12) == 1)
            {
LABEL_169:
              v84 = 19 * v83;
              v85 = *(v84 + 14) != 1;
              *(v84 + 18) = 0;
              if ((v129 & 2) == 0)
              {
                goto LABEL_202;
              }

              goto LABEL_173;
            }

LABEL_171:
            if (v129)
            {
              goto LABEL_202;
            }

            v85 = 0;
            if ((v129 & 2) == 0)
            {
              goto LABEL_202;
            }

LABEL_173:
            (*(*v119 + 120))(&v126);
            if (v127)
            {
              goto LABEL_174;
            }

            if (v126 == 4)
            {
              goto LABEL_202;
            }

            (*(*v119 + 80))(&v126);
            if (v128)
            {
LABEL_174:
              v75 = v126;
              goto LABEL_144;
            }

            llvm::JITSymbolFlags::fromObjectSymbol(&v118, &v124);
            if (v125)
            {
              v86 = v124;
              *(a3 + 32) |= 1u;
              *a3 = v86;
              v76 = 1;
            }

            else
            {
              v88 = BYTE1(v124);
              v89 = BYTE1(v124) | 0x10;
              BYTE1(v124) |= 0x10u;
              v90 = (v78 + 16);
              if (!v78)
              {
                v90 = (v79 + 18);
              }

              v91 = *v90;
              if (((v91 != 105) & ~v85) == 0)
              {
                v92 = v88 | 0x30;
                if (v91 == 105)
                {
                  v89 = v92;
                }

                if (v85)
                {
                  v89 |= 2u;
                }

                BYTE1(v124) = v89;
              }

              llvm::orc::ExecutionSession::intern(a1, v126, v127, &v117);
              v93 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v120, &v117);
              v93[4] = v124;
              if (v117 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add(v117 + 1, 0xFFFFFFFFFFFFFFFFLL);
                if (v125)
                {
                  if (v124)
                  {
                    (*(*v124 + 8))(v124);
                  }
                }
              }

              v76 = 0;
            }

            if (v128)
            {
              v94 = v126;
              v126 = 0;
              if (v94)
              {
                (*(*v94 + 8))(v94);
              }
            }

LABEL_203:
            if (v130)
            {
              v98 = v129;
              v129 = 0;
              if (v98)
              {
                (*(*v98 + 8))(v98);
              }
            }

            if (v76 != 3 && v76)
            {
              goto LABEL_225;
            }

            (*(*v119 + 24))(v119, &v118);
          }

          while (v118 != v74);
        }

        v99 = (*(*v6 + 352))(v6);
        v101 = v100;
        v102 = (*(*v6 + 360))(v6);
        v118 = v99;
        v119 = v101;
        if (v101 == v103 && v99 == v102)
        {
          v107 = *(a3 + 32);
        }

        else
        {
          v105 = v102;
          v106 = v103;
          v116 = *a3;
          v107 = *(a3 + 32);
          while (1)
          {
            (*(*v101 + 144))(&v126, v101, v99);
            if (v128)
            {
              v114 = v126;
              *(a3 + 32) = v107 | 1;
              *a3 = v114;
              goto LABEL_225;
            }

            if (v127 >= 4 && *v126 == *".CRT")
            {
              break;
            }

            (*(*v119 + 136))(v119, &v118);
            v99 = v118;
            v101 = v119;
            if (v119 == v106 && v118 == v105)
            {
              goto LABEL_224;
            }
          }

          llvm::orc::addInitSymbol(&v120, a1, *(v6 + 32), *(v6 + 40));
          if (v128)
          {
            v115 = v126;
            v126 = 0;
            if (v115)
            {
              (*(*v115 + 8))(v115);
            }

            *(a3 + 32) = v107;
            *a3 = v116;
          }
        }

LABEL_224:
        *(a3 + 32) = v107 & 0xFE;
        *a3 = v120;
        v120 = 0uLL;
        *(a3 + 4) = v121;
        LODWORD(v121) = 0;
        a3[3] = *(&v121 + 1);
        *(&v121 + 1) = 0;
LABEL_225:
        v47 = *(&v121 + 1);
        goto LABEL_226;
      }

      v120 = 0uLL;
      LODWORD(v121) = 0;
      *(&v121 + 1) = 0;
      v48 = (*(*v122 + 48))(v122);
      v50 = v49;
      v51 = (*(*v6 + 56))(v6);
      v118 = v48;
      v119 = v50;
      if (v48 == v51)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
LABEL_231:
        v112 = 0;
        *(a3 + 32) &= ~1u;
        *a3 = v54;
        v120 = 0uLL;
        a3[1] = v55;
        *(a3 + 4) = v53;
        LODWORD(v121) = 0;
        a3[3] = v52;
        *(&v121 + 1) = 0;
LABEL_232:
        if ((v112 - 1) > 0xFFFFFFFFFFFFFFDFLL)
        {
          goto LABEL_229;
        }

        v109 = (v112 + 8);
        goto LABEL_228;
      }

      v63 = v51;
      while (1)
      {
        (*(*v119 + 40))(&v129);
        if (v130)
        {
          break;
        }

        if ((v129 & 3) != 2)
        {
          goto LABEL_117;
        }

        (*(*v119 + 120))(&v126);
        if (v127)
        {
          goto LABEL_114;
        }

        if (v126 == 4)
        {
LABEL_117:
          v65 = 3;
          goto LABEL_118;
        }

        (*(*v119 + 80))(&v126);
        if (v128)
        {
LABEL_114:
          v64 = v126;
          goto LABEL_115;
        }

        llvm::JITSymbolFlags::fromObjectSymbol(&v118, &v124);
        if (v125)
        {
          v67 = v124;
          *(a3 + 32) |= 1u;
          *a3 = v67;
          v65 = 1;
        }

        else
        {
          llvm::orc::ExecutionSession::intern(a1, v126, v127, &v117);
          v68 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v120, &v117);
          v68[4] = v124;
          if (v117 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v117 + 1, 0xFFFFFFFFFFFFFFFFLL);
            if (v125)
            {
              if (v124)
              {
                (*(*v124 + 8))(v124);
              }
            }
          }

          v65 = 0;
        }

        if (v128)
        {
          v69 = v126;
          v126 = 0;
          if (v69)
          {
            (*(*v69 + 8))(v69);
          }
        }

LABEL_118:
        if (v130)
        {
          v66 = v129;
          v129 = 0;
          if (v66)
          {
            (*(*v66 + 8))(v66);
          }
        }

        if (v65 != 3 && v65)
        {
          v112 = *(&v121 + 1);
          goto LABEL_232;
        }

        (*(*v119 + 24))(v119, &v118);
        if (v118 == v63)
        {
          v55 = *(&v120 + 1);
          v54 = v120;
          v53 = v121;
          v52 = *(&v121 + 1);
          goto LABEL_231;
        }
      }

      v64 = v129;
      v129 = 0;
LABEL_115:
      *(a3 + 32) |= 1u;
      *a3 = v64;
      v65 = 1;
      goto LABEL_118;
    }

    v120 = 0uLL;
    LODWORD(v121) = 0;
    *(&v121 + 1) = 0;
    v23 = (*(*v122 + 48))(v122);
    v25 = v24;
    v26 = (*(*v6 + 56))(v6);
    v118 = v23;
    v119 = v25;
    if (v23 == v26)
    {
LABEL_26:
      v27 = (*(*v6 + 352))(v6);
      v29 = v28;
      v30 = (*(*v6 + 360))(v6);
      v118 = v27;
      v119 = v29;
      if (v29 != v31 || v27 != v30)
      {
        v33 = v30;
        v34 = v31;
        do
        {
          if (getSectionFlags(v6, v27) == 9 || ((v35 = *(*(v6 + 80) + 8 * v118), !*(v35 + 31)) ? (v36 = strlen((v35 + 16))) : (v36 = 16), (*(*v6 + 144))(&v126, v6, v118), (llvm::orc::isMachOInitializerSection((v35 + 16), v36, v126, v127) & 1) != 0))
          {
            llvm::orc::addInitSymbol(&v120, a1, *(v6 + 32), *(v6 + 40));
            break;
          }

          (*(*v119 + 136))(v119, &v118);
          LODWORD(v27) = v118;
        }

        while (v119 != v34 || v118 != v33);
      }

LABEL_77:
      v47 = 0;
      *(a3 + 32) &= ~1u;
      *a3 = v120;
      *(a3 + 4) = v121;
      a3[3] = *(&v121 + 1);
      a3[1] = *(&v120 + 1);
      v120 = 0uLL;
      LODWORD(v121) = 0;
      *(&v121 + 1) = 0;
LABEL_226:
      if ((v47 - 1) > 0xFFFFFFFFFFFFFFDFLL)
      {
LABEL_229:
        llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v120);
        goto LABEL_230;
      }

      v109 = (v47 + 8);
LABEL_228:
      atomic_fetch_add(v109, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_229;
    }

    v39 = v26;
    while (1)
    {
      (*(*v119 + 40))(&v129);
      if (v130)
      {
        break;
      }

      if ((v129 & 3) != 2)
      {
        goto LABEL_53;
      }

      (*(*v119 + 120))(&v126);
      if (v127)
      {
        goto LABEL_50;
      }

      if (v126 == 4)
      {
LABEL_53:
        v41 = 3;
        goto LABEL_54;
      }

      (*(*v119 + 80))(&v126);
      if (v128)
      {
LABEL_50:
        v40 = v126;
        goto LABEL_51;
      }

      llvm::JITSymbolFlags::fromObjectSymbol(&v118, &v124);
      if (v125)
      {
        v43 = v124;
        *(a3 + 32) |= 1u;
        *a3 = v43;
        v41 = 1;
      }

      else
      {
        if (v127)
        {
          v44 = v126;
          if (*v126 == 108)
          {
            BYTE1(v124) &= 0x6Fu;
          }
        }

        else
        {
          v44 = v126;
        }

        llvm::orc::ExecutionSession::intern(a1, v44, v127, &v117);
        v45 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v120, &v117);
        v45[4] = v124;
        if (v117 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v117 + 1, 0xFFFFFFFFFFFFFFFFLL);
          if (v125)
          {
            if (v124)
            {
              (*(*v124 + 8))(v124);
            }
          }
        }

        v41 = 0;
      }

      if (v128)
      {
        v46 = v126;
        v126 = 0;
        if (v46)
        {
          (*(*v46 + 8))(v46);
        }
      }

LABEL_54:
      if (v130)
      {
        v42 = v129;
        v129 = 0;
        if (v42)
        {
          (*(*v42 + 8))(v42);
        }
      }

      if (v41 != 3 && v41)
      {
        goto LABEL_225;
      }

      (*(*v119 + 24))(v119, &v118);
      if (v118 == v39)
      {
        goto LABEL_26;
      }
    }

    v40 = v129;
    v129 = 0;
LABEL_51:
    *(a3 + 32) |= 1u;
    *a3 = v40;
    v41 = 1;
    goto LABEL_54;
  }

  v122 = 0;
  *(a3 + 32) |= 1u;
  *a3 = v6;
LABEL_230:
  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v122);
  v111 = *MEMORY[0x277D85DE8];
  return result;
}