void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>,std::pair<llvm::WeakTrackingVH,unsigned int>*>(int a1, llvm::ValueHandleBase *this, llvm::ValueHandleBase *a3, uint64_t a4)
{
  if (this != a3)
  {
    v8 = this;
    do
    {
      llvm::ValueHandleBase::ValueHandleBase(a4, 3u, v8);
      *(a4 + 24) = *(v8 + 6);
      v8 = (v8 + 32);
      a4 += 32;
    }

    while (v8 != a3);
  }

  std::__allocator_destroy[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>,std::pair<llvm::WeakTrackingVH,unsigned int>*,std::pair<llvm::WeakTrackingVH,unsigned int>*>(a1, this, a3);
}

void std::__allocator_destroy[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>,std::pair<llvm::WeakTrackingVH,unsigned int>*,std::pair<llvm::WeakTrackingVH,unsigned int>*>(int a1, llvm::ValueHandleBase *this, llvm::ValueHandleBase *a3)
{
  if (this != a3)
  {
    v4 = this;
    do
    {
      v5 = *(v4 + 2);
      if (v5 != -8192 && v5 != -4096 && v5 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v4);
      }

      v4 = (v4 + 32);
    }

    while (v4 != a3);
  }
}

uint64_t std::__split_buffer<std::pair<llvm::WeakTrackingVH,unsigned int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<llvm::WeakTrackingVH,unsigned int>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

llvm::ValueHandleBase *std::__split_buffer<std::pair<llvm::WeakTrackingVH,unsigned int>>::__destruct_at_end[abi:nn200100](uint64_t a1, llvm::ValueHandleBase *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v5 = *(result - 2);
    result = (result - 32);
    *(a1 + 16) = result;
    if (v5 != -8192 && v5 != -4096 && v5 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(result);
      result = *(a1 + 16);
    }
  }

  return result;
}

uint64_t llvm::BitstreamCursor::advanceSkippingSubblocks@<X0>(llvm::BitstreamCursor *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = this;
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 8);
  while (1)
  {
    result = llvm::BitstreamCursor::advance(this, a2, &v12);
    if (v13)
    {
      v6 = v6 & 0xFE | v13 & 1;
      v8 = v12;
LABEL_11:
      *a3 = v8;
      goto LABEL_12;
    }

    v8 = v12;
    if (v12 != 2)
    {
      v6 &= ~1u;
      goto LABEL_11;
    }

    result = llvm::BitstreamCursor::SkipBlock(v4, &v11);
    v9 = v11;
    v6 |= v11 != 0;
    if (v13)
    {
      result = v12;
      v12 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    if (v9)
    {
      break;
    }

    this = v4;
    a2 = v3;
  }

  *a3 = v9;
LABEL_12:
  *(a3 + 8) = v6;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t anonymous namespace::BitcodeReader::getPtrElementTypeByID(_anonymous_namespace_::BitcodeReader *this, unsigned int a2)
{
  v3 = *(this + 65);
  if (a2 >= ((*(this + 66) - v3) >> 3) || *(*(v3 + 8 * a2) + 8) != 15)
  {
    return 0;
  }
}

unint64_t anonymous namespace::BitcodeConstant::create(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v9 = 4 * a5;
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 4 * a5 + 48, 3);
  *result = a2;
  *(result + 8) = 0;
  v11 = *(result + 20) & 0xC0000000;
  *(result + 16) = 255;
  *(result + 20) = v11;
  *(result + 24) = *a3;
  v12 = *(a3 + 4);
  *(result + 28) = a5;
  *(result + 32) = v12;
  *(result + 40) = *(a3 + 8);
  if (a5)
  {
    v13 = (result + 48);
    do
    {
      v14 = *a4++;
      *v13++ = v14;
      v9 -= 4;
    }

    while (v9);
  }

  return result;
}

void *llvm::SmallVectorImpl<unsigned short>::append<unsigned long long *,void>(void *result, char *a2, char *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3 - a2;
  v7 = result[1];
  v8 = v7 + ((a3 - a2) >> 3);
  if (result[2] < v8)
  {
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v8, 2);
    v7 = v5[1];
  }

  if (v4 != a3)
  {
    v9 = (*v5 + 2 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  v5[1] = v7 + (v6 >> 3);
  return result;
}

uint64_t llvm::ConstantDataArray::get<unsigned short>(uint64_t a1, uint64_t *a2, llvm::Type *a3)
{
  v4 = (2 * a3);
  llvm::ArrayType::get((*a1 + 1968), a3);

  return llvm::ConstantDataSequential::getImpl(a2, v4, v5);
}

uint64_t llvm::ConstantDataArray::get<unsigned int>(uint64_t a1, uint64_t *a2, llvm::Type *a3)
{
  v4 = (4 * a3);
  llvm::ArrayType::get((*a1 + 1992), a3);

  return llvm::ConstantDataSequential::getImpl(a2, v4, v5);
}

uint64_t llvm::ConstantDataArray::get<unsigned long long>(uint64_t a1, uint64_t *a2, llvm::Type *a3)
{
  v4 = (8 * a3);
  llvm::ArrayType::get((*a1 + 2016), a3);

  return llvm::ConstantDataSequential::getImpl(a2, v4, v5);
}

void anonymous namespace::BitcodeReader::recordValue(uint64_t a1, uint64_t a2, uint64_t **a3, unsigned int a4, uint64_t a5)
{
  v44[16] = *MEMORY[0x277D85DE8];
  v42 = v44;
  v43 = xmmword_2750C1290;
  v7 = *(a3 + 2);
  if (v7 < a4)
  {
    v39[0] = "Invalid record";
    v40 = 259;
  }

  llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v42, &(*a3)[a4], &(*a3)[v7]);
  v10 = **a3;
  v11 = *(a2 + 712);
  if (((*(a2 + 720) - v11) >> 5) <= v10 || (v12 = *(v11 + 32 * v10 + 16)) == 0)
  {
    v39[0] = "Invalid record";
    v40 = 259;
  }

  v13 = v42;
  v14 = v43;
  if (v43)
  {
    v15 = memchr(v42, 0, v43);
    if (v15)
    {
      if (v15 - v13 != -1)
      {
        v39[0] = "Invalid value name";
        v40 = 259;
      }
    }
  }

  v40 = 261;
  v39[0] = v13;
  v39[1] = v14;
  llvm::Value::setName(v12, v39);
  v17 = v12[16];
  if (v17 <= 3 && v17 != 1)
  {
    v19 = *(a2 + 816);
    v20 = *(a2 + 832);
    v21 = (v19 + 8 * v20);
    if (v20)
    {
      v22 = v20 - 1;
      LODWORD(v23) = v22 & ((v12 >> 4) ^ (v12 >> 9));
      v24 = (v19 + 8 * v23);
      v25 = *v24;
      if (*v24 == v12)
      {
LABEL_24:
        if (v21 != v24)
        {
          v28 = *(a5 + 44);
          v29 = v28 > 8;
          v30 = (1 << v28) & 0x124;
          if (v29 || v30 == 0)
          {
            v32 = *(a2 + 432);
            if ((v12[23] & 0x10) != 0)
            {
              ValueName = llvm::Value::getValueName(v12);
              v34 = (ValueName + 2);
              v33 = *ValueName;
            }

            else
            {
              v33 = 0;
              v34 = &str_3_24;
            }

            inserted = llvm::Module::getOrInsertComdat(v32, v34, v33);
            llvm::GlobalObject::setComdat(v12, inserted);
          }
        }

        goto LABEL_34;
      }

      v26 = 1;
      while (v25 != -4096)
      {
        v27 = v23 + v26++;
        v23 = v27 & v22;
        v25 = *(v19 + 8 * v23);
        if (v25 == v12)
        {
          v24 = (v19 + 8 * v23);
          goto LABEL_24;
        }
      }
    }

    v24 = v21;
    goto LABEL_24;
  }

LABEL_34:
  *(a1 + 8) &= ~1u;
  *a1 = v12;
  if (v42 != v44)
  {
    free(v42);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v3 + 16 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 16 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::grow(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x11)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 0x10)
    {
      v14 = a2;
      *(a1 + 8) = operator new(16 * a2, 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::moveFromOldBuckets(a1, v6, v6 + 16 * v7);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x277C69E30);
  }

  v8 = 0;
  v9 = v16;
  do
  {
    v10 = *(a1 + v8 + 8);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v10;
      *(v9 + 2) = *(a1 + v8 + 16);
      v9 += 16;
    }

    v8 += 16;
  }

  while (v8 != 256);
  if (a2 > 0x10)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = operator new(16 * a2, 8uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::moveFromOldBuckets(a1, v16, v9);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 264;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 8);
    v9 = v8 + 16 * v7;
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = (v8 + 16);
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_2750C1210)));
    if (v14.i8[0])
    {
      *(v13 - 2) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      *(v16 + 2) = *(a2 + 8);
      *v5 += 2;
    }

    a2 += 16;
  }

  return result;
}

uint64_t llvm::Value::mergeUseLists<anonymous namespace::BitcodeReader::parseUseLists(void)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v6 = &v10;
  while (a2)
  {
    v11 = 0;
    if (llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(a3, a2, &v11))
    {
      v7 = *(v11 + 8);
    }

    else
    {
      v7 = 0;
    }

    v11 = 0;
    if (llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(a3, a1, &v11))
    {
      v8 = *(v11 + 8);
    }

    else
    {
      v8 = 0;
    }

    if (v7 >= v8)
    {
      *v6 = a1;
      v6 = (a1 + 8);
      a1 = *(a1 + 8);
      if (!a1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v6 = a2;
      v6 = (a2 + 8);
      a2 = *(a2 + 8);
      if (!a1)
      {
        goto LABEL_15;
      }
    }
  }

  a2 = a1;
LABEL_15:
  *v6 = a2;
  return v10;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>,std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(uint64_t a1, int a2, uint64_t a3, int a4, void *a5)
{
  if (a2)
  {
    v5 = ~((37 * a4) << 32) + (37 * a4) + (((a3 >> 4) ^ (a3 >> 9)) << 32);
    v6 = (v5 ^ (v5 >> 22)) + ~((v5 ^ (v5 >> 22)) << 13);
    v7 = (9 * (v6 ^ (v6 >> 8))) ^ ((9 * (v6 ^ (v6 >> 8))) >> 15);
    v8 = a2 - 1;
    v9 = (a2 - 1) & (((v7 + ~(v7 << 27)) >> 31) ^ (v7 + ~(v7 << 27)));
    v10 = (a1 + 24 * v9);
    v11 = *v10;
    v12 = *(v10 + 2);
    if (*v10 == a3 && v12 == a4)
    {
      v14 = 1;
    }

    else
    {
      v16 = 0;
      v17 = 1;
      while (v11 != -4096 || v12 != -1)
      {
        if (v16)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12 == -2;
        }

        if (v18 && v11 == -8192)
        {
          v16 = v10;
        }

        v20 = v9 + v17++;
        v9 = v20 & v8;
        v10 = (a1 + 24 * (v20 & v8));
        v11 = *v10;
        v12 = *(v10 + 2);
        v14 = 1;
        if (*v10 == a3 && v12 == a4)
        {
          goto LABEL_9;
        }
      }

      v14 = 0;
      if (v16)
      {
        v10 = v16;
      }
    }
  }

  else
  {
    v10 = 0;
    v14 = 0;
  }

LABEL_9:
  *a5 = v10;
  return v14;
}

double llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::FindAndConstruct(uint64_t a1, int *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), *a2, &v9);
  v6 = v9;
  if (v4)
  {
    return result;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 12) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::grow(a1, v8);
    v9 = 0;
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), *a2, &v9);
    v6 = v9;
  }

  ++*(a1 + 8);
  if (*v6 != -1)
  {
    --*(a1 + 12);
  }

  *v6 = *a2;
  *(v6 + 8) = v6 + 24;
  *&result = 0x100000000;
  *(v6 + 16) = 0x100000000;
  return result;
}

char *llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::grow(uint64_t a1, int a2)
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
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = result + 64;
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1210)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 16) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1830)))).i32[1])
        {
          *v16 = -1;
          v16[8] = -1;
        }

        v11 += 4;
        v16 += 32;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v19 = 32 * v3;
      v20 = (v4 + 24);
      do
      {
        v21 = *(v20 - 6);
        if (v21 <= 0xFFFFFFFD)
        {
          v34 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v21, &v34);
          v22 = v34;
          *v34 = *(v20 - 6);
          *(v22 + 2) = 0x100000000;
          *(v22 + 1) = v22 + 6;
          v23 = (v22 + 2);
          if (*(v20 - 2))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=(v23, (v20 - 4));
          }

          ++*(a1 + 8);
          v24 = *(v20 - 2);
          if (v20 != v24)
          {
            free(v24);
          }
        }

        v20 += 8;
        v19 -= 32;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v25 + 0x7FFFFFFFFFFFFFFLL;
    v28 = v27 & 0x7FFFFFFFFFFFFFFLL;
    v29 = (v27 & 0x7FFFFFFFFFFFFFFLL) - (v27 & 3) + 4;
    v30 = vdupq_n_s64(v28);
    v31 = result + 64;
    do
    {
      v32 = vdupq_n_s64(v26);
      v33 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_2750C1210)));
      if (vuzp1_s16(v33, *v30.i8).u8[0])
      {
        *(v31 - 16) = -1;
      }

      if (vuzp1_s16(v33, *&v30).i8[2])
      {
        *(v31 - 8) = -1;
      }

      if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_2750C1830)))).i32[1])
      {
        *v31 = -1;
        v31[8] = -1;
      }

      v26 += 4;
      v31 += 32;
    }

    while (v29 != v26);
  }

  return result;
}

char *llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::grow(uint64_t a1, int a2)
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
      v11 = &result[24 * v10];
      do
      {
        *result = -4096;
        *(result + 2) = -1;
        result += 24;
      }

      while (result != v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = (v4 + 8);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        if ((v14 != -4096 || v15 != -1) && (v14 != -8192 || v15 != -2))
        {
          v21 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>,std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(*a1, *(a1 + 16), v14, v15, &v21);
          v18 = v21;
          *v21 = *(v13 - 1);
          *(v18 + 2) = *v13;
          *(v18 + 4) = v13[2];
          ++*(a1 + 8);
        }

        v13 += 6;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = &result[24 * v19];
    do
    {
      *result = -4096;
      *(result + 2) = -1;
      result += 24;
    }

    while (result != v20);
  }

  return result;
}

uint64_t llvm::UnaryInstruction::UnaryInstruction(llvm::UnaryInstruction *this, llvm::Type *a2, char a3, llvm::Value *a4, llvm::Instruction *a5)
{
  v6 = (this - 32);
  result = llvm::Instruction::Instruction(this, a2, a3, this - 32, 1, a5);
  if (*(result - 32))
  {
    v8 = *(result - 24);
    **(result - 16) = v8;
    if (v8)
    {
      *(v8 + 16) = *(result - 16);
    }
  }

  *v6 = a4;
  if (a4)
  {
    v11 = *(a4 + 1);
    v10 = (a4 + 8);
    v9 = v11;
    *(result - 24) = v11;
    if (v11)
    {
      *(v9 + 16) = result - 24;
    }

    *(result - 16) = v10;
    *v10 = v6;
  }

  return result;
}

_WORD *llvm::FCmpInst::FCmpInst(_WORD *a1, llvm::Type *a2, llvm::CmpInst **a3, uint64_t a4, const llvm::Twine *a5)
{
  v8 = a2;
  llvm::CmpInst::makeCmpResultType(*a3, a2);
  return llvm::CmpInst::CmpInst(a1, v10, 54, v8, a3, a4, a5, 0, 0);
}

_WORD *llvm::ICmpInst::ICmpInst(_WORD *a1, llvm::Type *a2, llvm::CmpInst **a3, uint64_t a4, const llvm::Twine *a5)
{
  v8 = a2;
  llvm::CmpInst::makeCmpResultType(*a3, a2);
  return llvm::CmpInst::CmpInst(a1, v10, 53, v8, a3, a4, a5, 0, 0);
}

void std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void std::vector<llvm::InlineAsm::ConstraintInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::InlineAsm::ConstraintInfo>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::InlineAsm::ConstraintInfo>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = (v3 - 32);
      std::vector<llvm::InlineAsm::SubConstraintInfo>::__destroy_vector::operator()[abi:nn200100](&v4);
      v4 = (v3 - 64);
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
      v3 -= 80;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void std::vector<llvm::InlineAsm::SubConstraintInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 32;
        v7 = (v4 - 24);
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::LookupBucketFor<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>>(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1 + 8;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      v11 = 0;
      result = 0;
      goto LABEL_11;
    }

    v5 = *(a1 + 8);
  }

  HashValue = llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>::getHashValue(a2);
  v8 = v6 - 1;
  v9 = *(a2 + 8);
  v10 = HashValue & (v6 - 1);
  v11 = (v5 + 24 * v10);
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
      v11 = (v5 + 24 * (v20 & v8));
      v12 = *v11;
      v13 = v11[1];
      if (*a2 == *v11 && v9 == v13)
      {
        goto LABEL_11;
      }
    }

    result = 0;
    if (v15)
    {
      v11 = v15;
    }
  }

LABEL_11:
  *a3 = v11;
  return result;
}

uint64_t llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::grow(uint64_t a1, unsigned int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v15 = a2;
      *(a1 + 8) = operator new(24 * a2, 8uLL);
      *(a1 + 16) = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::moveFromOldBuckets(a1, v6, v6 + 24 * v7);
    v16 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x277C69E30);
  }

  v8 = 0;
  v9 = v17;
  do
  {
    v11 = *(a1 + v8 + 8);
    v10 = *(a1 + v8 + 16);
    if ((v11 != -4096 || v10 != -4096) && (v11 != -8192 || v10 != -8192))
    {
      *v9 = *(a1 + v8 + 8);
      *(v9 + 4) = *(a1 + v8 + 24);
      v9 += 24;
    }

    v8 += 24;
  }

  while (v8 != 96);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v12 = a2;
    *(a1 + 8) = operator new(24 * a2, 8uLL);
    *(a1 + 16) = v12;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::moveFromOldBuckets(a1, v17, v9);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = (result + 8);
    v9 = (result + 104);
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(result + 8);
    v9 = (v8 + 24 * v7);
  }

  v10 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  do
  {
    *v8 = v10;
    v8 = (v8 + 24);
  }

  while (v8 != v9);
LABEL_14:
  while (a2 != a3)
  {
    v11 = *(a2 + 8);
    if ((*a2 != -4096 || v11 != -4096) && (*a2 != -8192 || v11 != -8192))
    {
      v13 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::LookupBucketFor<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>>(v5, a2, &v13);
      v12 = v13;
      *v13 = *a2;
      v12[1] = *(a2 + 8);
      *(v12 + 4) = *(a2 + 16);
      *v5 += 2;
    }

    a2 += 24;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::try_emplace<llvm::Value *>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v19 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::LookupBucketFor<llvm::BasicBlock *>(a2, *a3, &v19);
  v9 = v19;
  v10 = *a2;
  if (result)
  {
    if (v10)
    {
      v11 = a2 + 8;
      v12 = 4;
    }

    else
    {
      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
    }

    v15 = 0;
    v16 = v11 + 16 * v12;
    goto LABEL_17;
  }

  v13 = v10 >> 1;
  if (v10)
  {
    v14 = 4;
  }

  else
  {
    v14 = *(a2 + 16);
  }

  if (4 * v13 + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_19;
  }

  if (v14 + ~v13 - *(a2 + 4) <= v14 >> 3)
  {
LABEL_19:
    llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::grow(a2, v14);
    v19 = 0;
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::LookupBucketFor<llvm::BasicBlock *>(a2, *a3, &v19);
    v9 = v19;
  }

  *a2 += 2;
  if (*v9 != -4096)
  {
    --*(a2 + 4);
  }

  *v9 = *a3;
  v9[1] = *a4;
  v17 = a2 + 8;
  if (*a2)
  {
    v18 = 4;
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a2 + 16);
  }

  v16 = v17 + 16 * v18;
  v15 = 1;
LABEL_17:
  *a1 = v9;
  *(a1 + 8) = v16;
  *(a1 + 16) = v15;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::LookupBucketFor<llvm::BasicBlock *>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v3 + 16 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 16 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::grow(uint64_t a1, unsigned int a2)
{
  v16[8] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = operator new(16 * a2, 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::moveFromOldBuckets(a1, v6, &v6[2 * v7]);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x277C69E30);
  }

  v8 = 0;
  v9 = v16;
  do
  {
    v10 = *(a1 + v8 + 8);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v10;
      v9[1] = *(a1 + v8 + 16);
      v9 += 2;
    }

    v8 += 16;
  }

  while (v8 != 64);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = operator new(16 * a2, 8uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::moveFromOldBuckets(a1, v16, v9);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 72;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 8);
    v9 = v8 + 16 * v7;
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = (v8 + 16);
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_2750C1210)));
    if (v14.i8[0])
    {
      *(v13 - 2) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::LookupBucketFor<llvm::BasicBlock *>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      v16[1] = a2[1];
      *v5 += 2;
    }

    a2 += 2;
  }

  return result;
}

__n128 std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::construct[abi:nn200100]<llvm::OperandBundleDefT<llvm::Value *>,std::string &,std::vector<llvm::Value *>>(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  v5 = a3[1].n128_u64[0];
  result = *a3;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  a3->n128_u64[0] = 0;
  *a1 = v7;
  *(a1 + 24) = result;
  *(a1 + 40) = v5;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::OperandBundleDefT<llvm::Value *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::OperandBundleDefT<llvm::Value *>>,llvm::OperandBundleDefT<llvm::Value *>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    do
    {
      std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](a1, v5);
      v5 += 48;
    }

    while (v5 != a3);
  }
}

void **std::__split_buffer<llvm::OperandBundleDefT<llvm::Value *>>::~__split_buffer(void **a1)
{
  std::__split_buffer<llvm::OperandBundleDefT<llvm::Value *>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<llvm::OperandBundleDefT<llvm::Value *>>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](v4, i - 48);
  }
}

void std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::__base_destruct_at_end[abi:nn200100](a1, (*a1 + 32 * a2));
    }
  }

  else
  {
    std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::__append(a1, a2 - v2);
  }
}

uint64_t std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = v4 + 32 * a2;
      do
      {
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        *v4 = 6;
        *(v4 + 24) = 0;
        v4 += 32;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v19[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>>(result, v10);
    }

    v12 = 32 * v8;
    v13 = 32 * v8 + 32 * a2;
    v14 = v12;
    do
    {
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 6;
      *(v14 + 24) = 0;
      v14 += 32;
    }

    while (v14 != v13);
    v15 = *(result + 8);
    v16 = v12 + *result - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>,std::pair<llvm::WeakTrackingVH,unsigned int>*>(result, *result, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v3[1] = v13;
    v18 = v3[2];
    v3[2] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    return std::__split_buffer<std::pair<llvm::WeakTrackingVH,unsigned int>>::~__split_buffer(v19);
  }

  return result;
}

void std::vector<llvm::OperandBundleDefT<llvm::Value *>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<llvm::SmallString<32u>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<llvm::SmallString<32u>>::destroy(a1, *a2);
    std::__tree<llvm::SmallString<32u>>::destroy(a1, a2[1]);
    v4 = a2[4];
    if (v4 != a2 + 7)
    {
      free(v4);
    }

    operator delete(a2);
  }
}

void anonymous namespace::BitcodeReader::parseModule(void ***a1, std::string::size_type a2, unint64_t a3, int a4, uint64_t a5)
{
  v462 = *MEMORY[0x277D85DE8];
  v10 = a5 + 40;
  v11 = a2 + 1832;
  if (*(a2 + 1864) == *(a5 + 72))
  {
    if (*(a2 + 1864))
    {
      v12 = *(a2 + 1856);
      *(a2 + 1856) = 0;
      if (v12 == v11)
      {
        (*(*v12 + 32))(v12);
      }

      else if (v12)
      {
        (*(*v12 + 40))(v12);
      }

      v14 = *(a5 + 64);
      if (v14)
      {
        if (v14 == v10)
        {
          *(a2 + 1856) = v11;
          (*(**(a5 + 64) + 24))(*(a5 + 64), v11);
        }

        else
        {
          *(a2 + 1856) = v14;
          *(a5 + 64) = 0;
        }
      }

      else
      {
        *(a2 + 1856) = 0;
      }
    }
  }

  else if (*(a2 + 1864))
  {
    std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](a2 + 1832);
    *(a2 + 1864) = 0;
  }

  else
  {
    v13 = *(a5 + 64);
    if (v13)
    {
      if (v13 == v10)
      {
        *(a2 + 1856) = v11;
        (*(**(a5 + 64) + 24))(*(a5 + 64), a2 + 1832);
      }

      else
      {
        *(a2 + 1856) = v13;
        *(a5 + 64) = 0;
      }
    }

    else
    {
      *(a2 + 1856) = 0;
    }

    *(a2 + 1864) = 1;
  }

  v15 = (a2 + 32);
  if (a3)
  {
    llvm::SimpleBitstreamCursor::JumpToBit(v15, a3, a1);
  }

  else
  {
    llvm::BitstreamCursor::EnterSubBlock(v15, 0, 8, a1);
  }

  if (!*a1)
  {
    v437 = v439;
    v438 = 0x4000000000;
    v433 = 0;
    v16 = *(a2 + 432);
    if (*(v16 + 495) < 0)
    {
      std::string::__init_copy_ctor_external(&v432, *(v16 + 472), *(v16 + 480));
    }

    else
    {
      v432 = *(v16 + 472);
    }

    v431[0] = &v433;
    v431[1] = &v432;
    v431[2] = a2;
    v431[3] = a5;
    v421 = (a2 + 520);
    v422 = (a2 + 1776);
    v430 = a4;
    while (1)
    {
      llvm::BitstreamCursor::advance(a2 + 32, 0, v435);
      if (v436)
      {
        v17 = *v435;
        *v435 = 0;
        *a1 = v17;
        goto LABEL_29;
      }

      if (*v435 != 2)
      {
        if (*v435 != 1)
        {
          if (!*v435)
          {
            __p.__r_.__value_.__r.__words[0] = "Malformed block";
            v461 = 259;
          }

          llvm::BitstreamCursor::readRecord((a2 + 32), *&v435[4], &v437, 0, &v440);
          if (v441)
          {
            v52 = v440;
            v440 = 0;
            *a1 = v52;
LABEL_169:
            v18 = 1;
LABEL_809:
            if (v441)
            {
              v292 = v440;
              v440 = 0;
              if (v292)
              {
                (*(*v292 + 8))(v292);
              }
            }

            goto LABEL_30;
          }

          v53 = v440;
          switch(v440)
          {
            case 1:
              if (!v438)
              {
                __p.__r_.__value_.__r.__words[0] = "Invalid version record";
                v461 = 259;
              }

              v126 = *v437;
              if (*v437 >= 3)
              {
                __p.__r_.__value_.__r.__words[0] = "Invalid value";
                v461 = 259;
              }

              *(a2 + 392) = v126 == 2;
              v231 = v126 & 3;
              v416 = v231 | v416 & 0xFFFFFFFF00000000;
              *(a2 + 1712) = v231 != 0;
              goto LABEL_808;
            case 2:
              if (v433 == 1)
              {
                v125 = "target triple too late in module";
                goto LABEL_435;
              }

              memset(&__p, 0, sizeof(__p));
              std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v437, (v437 + 8 * v438));
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __p.__r_.__value_.__l.__size_;
              }

              llvm::Module::setTargetTriple(*(a2 + 432), p_p, size);
LABEL_408:
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_808;
            case 3:
              if (v433 == 1)
              {
                v125 = "datalayout too late in module";
                goto LABEL_435;
              }

              std::string::append[abi:nn200100]<unsigned long long const*,0>(&v432, v437, (v437 + 8 * v438));
              goto LABEL_808;
            case 4:
              memset(&__p, 0, sizeof(__p));
              std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v437, (v437 + 8 * v438));
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v135 = &__p;
              }

              else
              {
                v135 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v136 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v136 = __p.__r_.__value_.__l.__size_;
              }

              llvm::Module::setModuleInlineAsm(*(a2 + 432), v135, v136);
              goto LABEL_408;
            case 5:
              memset(&__p, 0, sizeof(__p));
              std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v437, (v437 + 8 * v438));
              v124 = a2 + 472;
              goto LABEL_407;
            case 6:
              memset(&__p, 0, sizeof(__p));
              std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v437, (v437 + 8 * v438));
              goto LABEL_408;
            case 7:
              v127 = v437;
              v128 = v438;
              if (*(a2 + 392) == 1)
              {
                v129 = *(v437 + 1);
                if (v129 + *v437 > *(a2 + 384))
                {
LABEL_431:
                  __p.__r_.__value_.__r.__words[0] = "Invalid record";
                  goto LABEL_432;
                }

                v130 = (*(a2 + 376) + *v437);
                v128 = v438 - 2;
                v127 = v437 + 16;
              }

              else
              {
                v129 = 0;
                v130 = "";
              }

              if (v128 <= 5)
              {
                goto LABEL_431;
              }

              *v419 = v130;
              v426 = v128;
              LODWORD(v450) = *v127;
              v146 = v450;
              if (!TypeByID)
              {
                __p.__r_.__value_.__r.__words[0] = "Invalid record";
LABEL_432:
                v461 = 259;
              }

              v148 = *(v127 + 1);
              if ((v148 & 2) == 0)
              {
                v149 = *(TypeByID + 8);
                if (*(TypeByID + 8) == 15)
                {
                  v413 = *(v127 + 1);
                  if (v150)
                  {
                    v404 = v149 >> 8;
                    v408 = v150;
                    goto LABEL_716;
                  }

                  v263 = "Missing element type for old-style global";
                }

                else
                {
                  v263 = "Invalid type for value";
                }

                __p.__r_.__value_.__r.__words[0] = v263;
                v461 = 259;
              }

              v408 = TypeByID;
              LOBYTE(v413) = *(v127 + 1);
              v404 = (v148 >> 2);
LABEL_716:
              v254 = *(v127 + 3);
              DecodedLinkage = getDecodedLinkage(v254);
              LOWORD(v447) = 0;
              if (*a1)
              {
LABEL_940:
                a4 = v430;
                goto LABEL_807;
              }

              memset(&v458, 0, 24);
              v256 = *(v127 + 5);
              if (v256)
              {
                v257 = v256 - 1;
                v258 = *(a2 + 472);
                if (v257 >= 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 480) - v258) >> 3))
                {
                  __p.__r_.__value_.__r.__words[0] = "Invalid ID";
                  v461 = 259;
                }

                std::string::operator=(&v458, (v258 + 24 * v257));
              }

              v392 = v254;
              if (v426 == 6)
              {
                v401 = 0;
                v399 = 0;
                v397 = 0;
                v394 = 0;
                v259 = v408;
                goto LABEL_886;
              }

              if ((DecodedLinkage - 7) >= 2)
              {
                v295 = *(v127 + 12);
                if (v295 == 2)
                {
                  v293 = 2;
                }

                else
                {
                  v293 = v295 == 1;
                }
              }

              else
              {
                v293 = 0;
              }

              v399 = v293;
              if (v426 == 7)
              {
                v401 = 0;
                v397 = 0;
              }

              else
              {
                if (*(v127 + 14) >= 5u)
                {
                  LOBYTE(v296) = 1;
                }

                else
                {
                  v296 = *(v127 + 14);
                }

                v397 = v296;
                if (v426 < 9)
                {
                  v401 = 0;
                }

                else
                {
                  v297 = *(v127 + 16);
                  if (v297 == 2)
                  {
                    v298 = 1;
                  }

                  else
                  {
                    v298 = 2 * (v297 == 1);
                  }

                  v401 = v298;
                  if (v426 != 9)
                  {
                    v394 = *(v127 + 9) != 0;
LABEL_885:
                    v259 = v408;
LABEL_886:
                    v331 = operator new(0x78uLL);
                    *(v331 + 13) = *(v331 + 13) & 0x38000000 | 1;
                    *v331 = 0;
                    *(v331 + 1) = 0;
                    *(v331 + 2) = 0;
                    *(v331 + 3) = v331 + 32;
                    v332 = *(a2 + 432);
                    v461 = 261;
                    __p.__r_.__value_.__r.__words[0] = *v419;
                    __p.__r_.__value_.__l.__size_ = v129;
                    v333 = (v331 + 32);
                    llvm::GlobalVariable::GlobalVariable((v331 + 32), v332, v259, v413 & 1, DecodedLinkage, 0, &__p, 0, v397, v404 | 0x100000000, v394);
                    if (BYTE1(v447) == 1)
                    {
                      *(v331 + 16) = ((v447 << 17) + 0x20000) | *(v331 + 16) & 0xFF81FFFF;
                    }

                    if (SHIBYTE(v458.__end_) >= 0)
                    {
                      end_high = HIBYTE(v458.__end_);
                    }

                    else
                    {
                      end_high = v458.__begin_;
                    }

                    if (end_high)
                    {
                      if (SHIBYTE(v458.__end_) >= 0)
                      {
                        first = &v458;
                      }

                      else
                      {
                        first = v458.__first_;
                      }

                      llvm::GlobalObject::setSection(v333, first, end_high, v334);
                    }

                    llvm::GlobalValue::setVisibility(v333, v399);
                    v337 = *(v331 + 16) & 0xF;
                    v338 = *(v331 + 16) & 0xFFFFFF3F | ((v401 & 3) << 6);
                    *(v331 + 16) = v338;
                    v339 = v337 - 7;
                    if (v426 < 0xB)
                    {
                      if (v339 >= 2)
                      {
                        if (v392 == 5)
                        {
                          v341 = 256;
                        }

                        else
                        {
                          if (v392 != 6)
                          {
                            goto LABEL_907;
                          }

                          v341 = 512;
                        }

LABEL_906:
                        *(v331 + 16) = v341 | v338 & 0xFFFFFCFF;
                      }
                    }

                    else if (v339 >= 2)
                    {
                      v340 = *(v127 + 20);
                      if (v340 == 2)
                      {
                        v341 = 512;
                      }

                      else
                      {
                        v341 = (v340 == 1) << 8;
                      }

                      goto LABEL_906;
                    }

LABEL_907:
                    llvm::BitcodeReaderValueList::push_back((a2 + 712), v333, VirtualTypeID);
                    v343 = *(v127 + 4);
                    v344 = v426;
                    if (v343)
                    {
                      v345 = v331 + 32;
                      v346 = v343 - 1;
                      v347 = *(a2 + 1376);
                      v348 = *(a2 + 1384);
                      if (v347 >= v348)
                      {
                        v350 = *(a2 + 1368);
                        v351 = (v347 - v350) >> 4;
                        v352 = v351 + 1;
                        if ((v351 + 1) >> 60)
                        {
                          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                        }

                        v353 = v348 - v350;
                        if (v353 >> 3 > v352)
                        {
                          v352 = v353 >> 3;
                        }

                        if (v353 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v354 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v354 = v352;
                        }

                        if (v354)
                        {
                          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::GlobalVariable *,unsigned int>>>(v354);
                        }

                        v355 = 16 * v351;
                        *v355 = v345;
                        *(v355 + 8) = v346;
                        v349 = 16 * v351 + 16;
                        v356 = *(a2 + 1368);
                        v357 = *(a2 + 1376) - v356;
                        v358 = v355 - v357;
                        memcpy((v355 - v357), v356, v357);
                        v359 = *(a2 + 1368);
                        *(a2 + 1368) = v358;
                        *(a2 + 1376) = v349;
                        *(a2 + 1384) = 0;
                        if (v359)
                        {
                          operator delete(v359);
                        }

                        v344 = v426;
                      }

                      else
                      {
                        *v347 = v345;
                        *(v347 + 8) = v346;
                        v349 = v347 + 16;
                      }

                      *(a2 + 1376) = v349;
                      v333 = (v331 + 32);
                    }

                    if (v344 < 0xC)
                    {
                      if (v392 <= 0xB && ((1 << v392) & 0xC12) != 0)
                      {
                        v443 = v333;
                        llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>,llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&__p, a2 + 816, &v443);
                      }

                      goto LABEL_937;
                    }

                    v360 = *(v127 + 11);
                    if (v360)
                    {
                      v361 = *(a2 + 792);
                      if (v360 > ((*(a2 + 800) - v361) >> 3))
                      {
                        __p.__r_.__value_.__r.__words[0] = "Invalid global variable comdat ID";
                        v461 = 259;
                      }

                      llvm::GlobalObject::setComdat(v333, *(v361 + 8 * (v360 - 1)));
                      v344 = v426;
                    }

                    if (v344 == 12)
                    {
LABEL_937:
                      inferDSOLocal(v333);
LABEL_938:
                      *a1 = 0;
                      if (SHIBYTE(v458.__end_) < 0)
                      {
                        operator delete(v458.__first_);
                      }

                      goto LABEL_940;
                    }

                    v362 = (*(v127 + 24) - 1);
                    v363 = *(a2 + 1440);
                    if (v362 >= (*(a2 + 1448) - v363) >> 3)
                    {
                      goto LABEL_935;
                    }

                    v364 = *(v363 + 8 * v362);
                    if (!v364)
                    {
                      goto LABEL_936;
                    }

                    if (*(v364 + 8))
                    {
                      v364 = *(v364 + 40);
                    }

                    else
                    {
LABEL_935:
                      v364 = 0;
                    }

LABEL_936:
                    *(v331 + 13) = v364;
                    if (v344 != 13)
                    {
                      *(v331 + 16) = *(v331 + 16) & 0xFFFFBFFF | ((*(v127 + 26) == 1) << 14);
                      inferDSOLocal(v333);
                      if (v426 >= 0x10)
                      {
                        llvm::GlobalValue::setPartition(v333, *(a2 + 376) + *(v127 + 14), *(v127 + 15), v365);
                        if (v426 != 16)
                        {
                          v366 = *(v127 + 16);
                          if (v366)
                          {
                            llvm::GlobalValue::setSanitizerMetadata(v333, v366 & 0xF);
                          }
                        }
                      }

                      goto LABEL_938;
                    }

                    goto LABEL_937;
                  }
                }
              }

              v394 = 0;
              goto LABEL_885;
            case 8:
              if (*a1)
              {
                v18 = 1;
                goto LABEL_809;
              }

              v131 = v437;
              v132 = v438;
              if (*(a2 + 392) == 1)
              {
                v133 = *(v437 + 1);
                if (v133 + *v437 > *(a2 + 384))
                {
                  goto LABEL_683;
                }

                v134 = (*(a2 + 376) + *v437);
                v132 = v438 - 2;
                v131 = (v437 + 16);
              }

              else
              {
                v133 = 0;
                v134 = "";
              }

              if (v132 > 7)
              {
                v396 = v132;
                v398 = v131;
                v456[0] = *v131;
                v420 = v456[0];
                if (v235)
                {
                  v236 = v235;
                  v237 = *(v235 + 8);
                  if (v237 == 15)
                  {
                    v420 = v456[0];
                    if (!v238)
                    {
                      v240 = "Missing element type for old-style function";
                      goto LABEL_684;
                    }

                    v236 = v238;
                    v237 = *(v238 + 8);
                  }

                  if (v237 == 14)
                  {
                    v239 = *(v398 + 1);
                    if ((v239 & 0xFFFFFC00) != 0)
                    {
                      v111 = "Invalid calling convention ID";
                      goto LABEL_366;
                    }

                    v414 = *(a2 + 432);
                    if (v396 < 0x11)
                    {
                      v427 = *(*(a2 + 432) + 268);
                      v294 = v398;
                    }

                    else
                    {
                      v294 = v398;
                      v427 = v398[32];
                    }

                    v461 = 261;
                    __p.__r_.__value_.__r.__words[0] = v134;
                    __p.__r_.__value_.__l.__size_ = v133;
                    v299 = operator new(0x80uLL);
                    *(v299 + 7) = *(v299 + 7) & 0x38000000 | 0x40000000;
                    *v299 = 0;
                    llvm::Function::Function((v299 + 8), v236, 0, v427, &__p, v414);
                    v450 = v299 + 8;
                    *(llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>,llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::FindAndConstruct(a2 + 592, &v450) + 8) = v420;
                    *(v299 + 13) = *(v299 + 13) & 0xC00F | (16 * v239);
                    v391 = *(v294 + 2);
                    v393 = *(v294 + 3);
                    v395 = v299;
                    v300 = getDecodedLinkage(v393);
                    v402 = (v299 + 8);
                    llvm::GlobalValue::setLinkage((v299 + 8), v300);
                    v301 = 0;
                    v302 = v294[8] - 1;
                    v303 = *(a2 + 1440);
                    if (v302 < (*(a2 + 1448) - v303) >> 3)
                    {
                      v301 = *(v303 + 8 * v302);
                    }

                    *(v299 + 15) = v301;
                    v304 = (v299 + 120);
                    a4 = v430;
                    if (*(a2 + 1864) == 1)
                    {
                      __p.__r_.__value_.__r.__words[0] = &unk_2883EFC20;
                      __p.__r_.__value_.__l.__size_ = a2;
                      v460 = &__p;
                      v458.__first_ = &unk_2883EFC68;
                      v458.__begin_ = a2;
                      v458.__end_cap_.__value_ = &v458;
                      std::function<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::operator()(*(a2 + 1856), v402, v420);
                      std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](&v458);
                      std::__function::__value_func<llvm::Type * ()>::~__value_func[abi:nn200100](&__p);
                    }

                    if (*(v395 + 13))
                    {
                      v305 = 0;
                      v415 = *v304;
                      do
                      {
                        v306 = 0;
                        v458.__first_ = 0x4A00000046;
                        LODWORD(v458.__begin_) = 72;
                        v428 = v305 + 1;
                        v409 = v305;
                        v307 = v305 + 2;
                        v308 = v415;
                        v405 = v307;
                        do
                        {
                          if (v308)
                          {
                            if (v307 < *(v308 + 2))
                            {
                              v309 = v308[v307 + 5];
                              if (v309)
                              {
                                v310 = *(&v458.__first_ + v306);
                                if ((*(v309 + v310 / 8 + 12) >> (v310 & 7)))
                                {
                                  AttributeAtIndex = llvm::AttributeList::getAttributeAtIndex(v304, v428, *(&v458.__first_ + v306));
                                  if (!AttributeAtIndex || !*(AttributeAtIndex + 16))
                                  {
                                    *v304 = llvm::AttributeList::removeAttributeAtIndex(v304, **v402, v428, v310);
                                    if (!PtrElementTypeByID)
                                    {
                                      __p.__r_.__value_.__r.__words[0] = "Missing param element type for attribute upgrade";
                                      v461 = 259;
                                    }

                                    v314 = llvm::Attribute::get(*(a2 + 424), v310, PtrElementTypeByID);
                                    LODWORD(__p.__r_.__value_.__l.__data_) = v409;
                                    v308 = llvm::AttributeList::addParamAttribute(v304, **v402, &__p, 1, v314);
                                    *v304 = v308;
                                    v415 = v308;
                                    v307 = v405;
                                  }
                                }
                              }
                            }
                          }

                          v306 += 4;
                        }

                        while (v306 != 12);
                        v305 = v428;
                      }

                      while (*(v395 + 13) != v428);
                      a4 = v430;
                      if (v428)
                      {
                        if ((*(v395 + 13) & 0x3FF0) == 0x530 && (!v415 || *(v415 + 8) < 3u || (v315 = *(v415 + 56)) == 0 || (*(v315 + 20) & 0x40) == 0))
                        {
                          if (!v317)
                          {
                            v372 = "Missing param element type for x86_intrcc upgrade";
                            goto LABEL_951;
                          }

                          v318 = llvm::Attribute::get(*(a2 + 424), 70, v317);
                          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
                          *v304 = llvm::AttributeList::addParamAttribute(v304, **v402, &__p, 1, v318);
                        }
                      }
                    }

                    LOWORD(v454) = 0;
                    if (*a1)
                    {
                      goto LABEL_807;
                    }

                    if (BYTE1(v454) == 1)
                    {
                      *(v395 + 10) = ((v454 << 17) + 0x20000) | *(v395 + 10) & 0xFF81FFFF;
                    }

                    v320 = *(v398 + 6);
                    if (!v320)
                    {
LABEL_875:
                      v327 = v402;
                      if ((*(v395 + 10) & 0xFu) - 7 >= 2)
                      {
                        v328 = v398[14];
                        if (v328 == 2)
                        {
                          v329 = 2;
                        }

                        else
                        {
                          v329 = v328 == 1;
                        }

                        llvm::GlobalValue::setVisibility(v402, v329);
                      }

                      if (v396 == 8)
                      {
                        v330 = 0;
                      }

                      else
                      {
                        v367 = *(v398 + 8);
                        if (v367)
                        {
                          v368 = v367 - 1;
                          v369 = *(a2 + 496);
                          if (v368 >= 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 504) - v369) >> 3))
                          {
                            v373 = "Invalid ID";
LABEL_953:
                            __p.__r_.__value_.__r.__words[0] = v373;
LABEL_367:
                            v461 = 259;
                          }

                          v370 = (v369 + 24 * v368);
                          if (*(v370 + 23) < 0)
                          {
                            std::string::__init_copy_ctor_external(&v458, *v370, *(v370 + 1));
                          }

                          else
                          {
                            v371 = *v370;
                            v458.__end_ = *(v370 + 2);
                            *&v458.__first_ = v371;
                          }

                          llvm::Function::setGC(v402, &v458);
                          if (SHIBYTE(v458.__end_) < 0)
                          {
                            operator delete(v458.__first_);
                          }
                        }

                        if (v396 < 0xA)
                        {
                          v330 = 0;
                        }

                        else
                        {
                          v374 = v398[18];
                          if (v374 == 2)
                          {
                            v330 = 64;
                          }

                          else
                          {
                            v330 = (v374 == 1) << 7;
                          }
                        }

                        v327 = v402;
                      }

                      v375 = *(v395 + 10);
                      v376 = v375 & 0xFFFFFF3F | v330;
                      *(v395 + 10) = v376;
                      v443 = v327;
                      v444 = 0u;
                      if (v396 < 0xB)
                      {
                        v429 = 0;
                      }

                      else
                      {
                        v429 = v398[20];
                        DWORD2(v444) = v429;
                        if (v396 != 11)
                        {
                          if ((v375 & 0xFu) - 7 >= 2)
                          {
                            v377 = v398[22];
                            if (v377 == 2)
                            {
                              v378 = 512;
                            }

                            else
                            {
                              v378 = (v377 == 1) << 8;
                            }

                            *(v395 + 10) = v378 | v376 & 0xFFFFFCFF;
                          }

                          if (v396 >= 0xD)
                          {
                            v379 = *(v398 + 12);
                            if (v379)
                            {
                              v380 = *(a2 + 792);
                              if (v379 > ((*(a2 + 800) - v380) >> 3))
                              {
                                v373 = "Invalid function comdat ID";
                                goto LABEL_953;
                              }

                              llvm::GlobalObject::setComdat(v402, *(v380 + 8 * (v379 - 1)));
                            }

                            if (v396 == 13)
                            {
                              v382 = 0;
                            }

                            else
                            {
                              v382 = v398[26];
                              DWORD1(v444) = v382;
                              if (v396 != 14)
                              {
                                v384 = v398[28];
                                LODWORD(v444) = v384;
                                if (v396 > 0xF)
                                {
                                  *(v395 + 10) = *(v395 + 10) & 0xFFFFBFFF | ((v398[30] == 1) << 14);
                                  inferDSOLocal(v402);
                                  if (v396 >= 0x13 && (v387 = *(a2 + 376)) != 0 && (v389 = *(v398 + 17), v388 = *(v398 + 18), (v388 + v389) <= *(a2 + 384)))
                                  {
                                    v383 = v402;
                                    llvm::GlobalValue::setPartition(v402, v387 + v389, v388, v386);
                                    a4 = v430;
                                  }

                                  else
                                  {
                                    a4 = v430;
                                    v383 = v402;
                                  }

                                  goto LABEL_992;
                                }

                                goto LABEL_990;
                              }
                            }

                            v384 = 0;
LABEL_990:
                            a4 = v430;
                            v383 = v402;
                            goto LABEL_991;
                          }

                          goto LABEL_981;
                        }
                      }

                      if ((v375 & 0xFu) - 7 < 2)
                      {
                        goto LABEL_981;
                      }

                      if (v393 == 5)
                      {
                        v381 = 256;
                      }

                      else
                      {
                        if (v393 != 6)
                        {
                          goto LABEL_981;
                        }

                        v381 = 512;
                      }

                      *(v395 + 10) = v381 | v376 & 0xFFFFFCFF;
LABEL_981:
                      v382 = 0;
                      if (v393 <= 0xB && ((1 << v393) & 0xC12) != 0)
                      {
                        v383 = v402;
                        v447 = v402;
                        llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>,llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&__p, a2 + 816, &v447);
                        v382 = 0;
                        v384 = 0;
                        a4 = v430;
LABEL_991:
                        inferDSOLocal(v383);
LABEL_992:
                        llvm::BitcodeReaderValueList::push_back((a2 + 712), v383, v385);
                        if (v384 || v382 || v429)
                        {
                        }

                        if (!v391)
                        {
                          *(v395 + 10) |= 0x1000000u;
                          std::vector<llvm::orc::NonOwningSymbolStringPtr>::push_back[abi:nn200100](a2 + 1512, &v450);
                          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(a2 + 1568, &v450)[1] = 0;
                        }

                        *a1 = 0;
                        goto LABEL_807;
                      }

                      v384 = 0;
                      goto LABEL_990;
                    }

                    v321 = v320 - 1;
                    v322 = *(a2 + 472);
                    if (v321 < 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 480) - v322) >> 3))
                    {
                      v323 = v322 + 24 * v321;
                      v324 = *(v323 + 23);
                      if (v324 >= 0)
                      {
                        v325 = v323;
                      }

                      else
                      {
                        v325 = *v323;
                      }

                      if (v324 >= 0)
                      {
                        v326 = *(v323 + 23);
                      }

                      else
                      {
                        v326 = *(v323 + 8);
                      }

                      llvm::GlobalObject::setSection(v402, v325, v326, v319);
                      goto LABEL_875;
                    }

                    v372 = "Invalid ID";
LABEL_951:
                    __p.__r_.__value_.__r.__words[0] = v372;
                    v461 = 259;
                  }

                  v240 = "Invalid type for value";
LABEL_684:
                  __p.__r_.__value_.__r.__words[0] = v240;
                  v461 = 259;
                }
              }

LABEL_683:
              v240 = "Invalid record";
              goto LABEL_684;
            case 9:
            case 14:
            case 18:
              v54 = v437;
              v55 = v438;
              if (*(a2 + 392) == 1)
              {
                v56 = *(v437 + 1);
                if (v56 + *v437 > *(a2 + 384))
                {
LABEL_365:
                  v111 = "Invalid record";
LABEL_366:
                  __p.__r_.__value_.__r.__words[0] = v111;
                  goto LABEL_367;
                }

                v57 = (*(a2 + 376) + *v437);
                v55 = v438 - 2;
                v54 = v437 + 16;
              }

              else
              {
                v56 = 0;
                v57 = "";
              }

              v110 = 3;
              if (v440 != 9)
              {
                v110 = 4;
              }

              if (v55 < v110)
              {
                goto LABEL_365;
              }

              *v418 = v57;
              v425 = v55;
              LODWORD(v458.__first_) = *v54;
              v113 = v458.__first_;
              if (v114)
              {
                v115 = v114;
                if (v53 != 9)
                {
                  v151 = *(v54 + 2);
                  v117 = *(v54 + 3);
                  v412 = *(v54 + 2);
                  if (v53 != 14)
                  {
                    v400 = *(v54 + 3);
                    v241 = getDecodedLinkage(v117);
                    v461 = 261;
                    __p.__r_.__value_.__r.__words[0] = *v418;
                    __p.__r_.__value_.__l.__size_ = v56;
                    v153 = llvm::GlobalIFunc::create(v115, v151, v241, &__p, 0, *(a2 + 432));
                    v154 = 4;
                    v118 = 5;
LABEL_687:
                    v242 = v425;
                    if (v425 == v154)
                    {
                      v118 = v154;
                    }

                    else if ((*(v153 + 32) & 0xFu) - 7 >= 2)
                    {
                      v243 = *&v54[8 * v154];
                      if (v243 == 2)
                      {
                        v244 = 2;
                      }

                      else
                      {
                        v244 = v243 == 1;
                      }

                      llvm::GlobalValue::setVisibility(v153, v244);
                      v242 = v425;
                    }

                    if (v53 != 14 && v53 != 9)
                    {
                      goto LABEL_790;
                    }

                    if (v242 == v118)
                    {
                      v246 = (v153 + 32);
                      v245 = *(v153 + 32);
                      if ((v245 & 0xF) - 7 < 2)
                      {
                        v247 = v118;
LABEL_778:
                        if (v242 == v247)
                        {
                          v271 = v242;
                        }

                        else
                        {
                          v271 = v247 + 1;
                          v272 = *&v54[8 * v247];
                          if (v272 >= 5)
                          {
                            v273 = 1024;
                          }

                          else
                          {
                            v273 = v272 << 10;
                          }

                          v245 = v273 | v245 & 0xFFFFE3FF;
                          *(v153 + 32) = v245;
                          v247 = v271;
                        }

                        if (v242 == v271)
                        {
                          v118 = v247;
                        }

                        else
                        {
                          v118 = v247 + 1;
                          v274 = *&v54[8 * v271];
                          if (v274 == 2)
                          {
                            v275 = 64;
                          }

                          else
                          {
                            v275 = (v274 == 1) << 7;
                          }

                          *(v153 + 32) = v275 | v245 & 0xFFFFFF3F;
                        }

LABEL_790:
                        if (v242 != v118)
                        {
                          v276 = *&v54[8 * v118++];
                          *(v153 + 32) = *(v153 + 32) & 0xFFFFBFFF | ((v276 == 1) << 14);
                        }

                        inferDSOLocal(v153);
                        if (v425 > v118 + 1)
                        {
                          llvm::GlobalValue::setPartition(v153, *(a2 + 376) + *&v54[8 * v118], *&v54[8 * v118 + 8], v277);
                        }

                        llvm::BitcodeReaderValueList::push_back((a2 + 712), v153, v278);
                        v279 = *(a2 + 1400);
                        v280 = *(a2 + 1408);
                        if (v279 >= v280)
                        {
                          v282 = *(a2 + 1392);
                          v283 = (v279 - v282) >> 4;
                          v284 = v283 + 1;
                          a4 = v430;
                          if ((v283 + 1) >> 60)
                          {
                            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                          }

                          v285 = v280 - v282;
                          if (v285 >> 3 > v284)
                          {
                            v284 = v285 >> 3;
                          }

                          if (v285 >= 0x7FFFFFFFFFFFFFF0)
                          {
                            v286 = 0xFFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v286 = v284;
                          }

                          if (v286)
                          {
                            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::GlobalVariable *,unsigned int>>>(v286);
                          }

                          v287 = 16 * v283;
                          *v287 = v153;
                          *(v287 + 8) = v412;
                          v281 = 16 * v283 + 16;
                          v288 = *(a2 + 1392);
                          v289 = *(a2 + 1400) - v288;
                          v290 = 16 * v283 - v289;
                          memcpy((v287 - v289), v288, v289);
                          v291 = *(a2 + 1392);
                          *(a2 + 1392) = v290;
                          *(a2 + 1400) = v281;
                          *(a2 + 1408) = 0;
                          if (v291)
                          {
                            operator delete(v291);
                          }
                        }

                        else
                        {
                          *v279 = v153;
                          *(v279 + 8) = v412;
                          v281 = v279 + 16;
                          a4 = v430;
                        }

                        *(a2 + 1400) = v281;
                        *a1 = 0;
                        goto LABEL_807;
                      }

                      if (v400 == 5)
                      {
                        v260 = 256;
                        v247 = v118;
                      }

                      else
                      {
                        if (v400 != 6)
                        {
                          v247 = v118;
                          goto LABEL_778;
                        }

                        v260 = 512;
                        v247 = v118;
                      }
                    }

                    else
                    {
                      v247 = v118 + 1;
                      v246 = (v153 + 32);
                      v245 = *(v153 + 32);
                      if ((v245 & 0xF) - 7 < 2)
                      {
                        goto LABEL_778;
                      }

                      v261 = *&v54[8 * v118];
                      if (v261 == 2)
                      {
                        v260 = 512;
                      }

                      else
                      {
                        v260 = (v261 == 1) << 8;
                      }
                    }

                    v245 = v260 | v245 & 0xFFFFFCFF;
                    *v246 = v245;
                    goto LABEL_778;
                  }

                  v407 = 4;
                  v403 = *(v54 + 2);
                  v118 = 5;
LABEL_445:
                  LODWORD(v400) = v117;
                  v152 = getDecodedLinkage(v117);
                  v461 = 261;
                  __p.__r_.__value_.__r.__words[0] = *v418;
                  __p.__r_.__value_.__l.__size_ = v56;
                  v153 = llvm::GlobalAlias::create(v115, v403, v152, &__p, *(a2 + 432));
                  v154 = v407;
                  goto LABEL_687;
                }

                if (*(v114 + 8) == 15)
                {
                  v411 = *(v114 + 8);
                  if (v116)
                  {
                    v115 = v116;
                    v403 = v411 >> 8;
                    v117 = *(v54 + 2);
                    v407 = 3;
                    v412 = *(v54 + 1);
                    v118 = 4;
                    goto LABEL_445;
                  }

                  v145 = "Missing element type for old-style indirect symbol";
                }

                else
                {
                  v145 = "Invalid type for value";
                }
              }

              else
              {
                v145 = "Invalid record";
              }

              __p.__r_.__value_.__r.__words[0] = v145;
              v461 = 259;
            case 11:
              memset(&__p, 0, sizeof(__p));
              std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v437, (v437 + 8 * v438));
              v124 = a2 + 496;
LABEL_407:
              std::vector<std::string>::push_back[abi:nn200100](v124, &__p);
              goto LABEL_408;
            case 12:
              v119 = v437;
              v120 = v438;
              v121 = *(a2 + 392);
              if (v121 == 1)
              {
                begin = *(v437 + 1);
                if (begin + *v437 > *(a2 + 384))
                {
                  goto LABEL_420;
                }

                v123 = (*(a2 + 376) + *v437);
                v120 = v438 - 2;
                v119 = v437 + 16;
              }

              else
              {
                begin = 0;
                v123 = "";
              }

              if (v120)
              {
                if ((*v119 - 2) >= 4)
                {
                  v137 = 0;
                }

                else
                {
                  v137 = *v119 - 1;
                }

                memset(&v458, 0, 24);
                if (v121)
                {
LABEL_418:
                  inserted = llvm::Module::getOrInsertComdat(*(a2 + 432), v123, begin);
                  v139 = inserted;
                  *(inserted + 2) = v137;
                  v140 = *(a2 + 800);
                  v141 = *(a2 + 808);
                  if (v140 >= v141)
                  {
                    v248 = *(a2 + 792);
                    v249 = (v140 - v248) >> 3;
                    if ((v249 + 1) >> 61)
                    {
                      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                    }

                    v250 = v141 - v248;
                    v251 = v250 >> 2;
                    if (v250 >> 2 <= (v249 + 1))
                    {
                      v251 = v249 + 1;
                    }

                    if (v250 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v252 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v252 = v251;
                    }

                    if (v252)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v252);
                    }

                    v264 = (8 * v249);
                    *v264 = v139;
                    v142 = 8 * v249 + 8;
                    v265 = *(a2 + 792);
                    v266 = *(a2 + 800) - v265;
                    v267 = v264 - v266;
                    memcpy(v264 - v266, v265, v266);
                    v268 = *(a2 + 792);
                    *(a2 + 792) = v267;
                    *(a2 + 800) = v142;
                    *(a2 + 808) = 0;
                    if (v268)
                    {
                      operator delete(v268);
                    }
                  }

                  else
                  {
                    *v140 = inserted;
                    v142 = (v140 + 1);
                  }

                  *(a2 + 800) = v142;
                  *a1 = 0;
                  if (SHIBYTE(v458.__end_) < 0)
                  {
                    operator delete(v458.__first_);
                  }

LABEL_807:
                  if (*a1)
                  {
                    goto LABEL_169;
                  }

LABEL_808:
                  v18 = 0;
                  LODWORD(v438) = 0;
                  goto LABEL_809;
                }

                if (v120 == 1)
                {
                  v232 = "Invalid record";
                }

                else
                {
                  v253 = v119[2];
                  if (v253 <= v120 - 2)
                  {
                    std::string::reserve(&v458, v119[2]);
                    if (v253)
                    {
                      v262 = 2;
                      do
                      {
                        std::string::push_back(&v458, *&v119[2 * v262++]);
                        --v253;
                      }

                      while (v253);
                    }

                    if (SHIBYTE(v458.__end_) >= 0)
                    {
                      v123 = &v458;
                    }

                    else
                    {
                      v123 = v458.__first_;
                    }

                    if (SHIBYTE(v458.__end_) >= 0)
                    {
                      begin = SHIBYTE(v458.__end_);
                    }

                    else
                    {
                      begin = v458.__begin_;
                    }

                    a4 = v430;
                    goto LABEL_418;
                  }

                  v232 = "Comdat name size too large";
                }

                __p.__r_.__value_.__r.__words[0] = v232;
                v461 = 259;
              }

LABEL_420:
              __p.__r_.__value_.__r.__words[0] = "Invalid record";
              v461 = 259;
            case 13:
              if (!v438)
              {
                v125 = "Invalid record";
LABEL_435:
                __p.__r_.__value_.__r.__words[0] = v125;
                v461 = 259;
              }

              *(a2 + 464) = *v437 - 1;
              goto LABEL_808;
            case 16:
              __p.__r_.__value_.__r.__words[0] = &v460;
              *&__p.__r_.__value_.__r.__words[1] = xmmword_2750C1290;
              llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&__p, v437, v437 + 8 * v438);
              llvm::Module::setSourceFileName(*(a2 + 432), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
              if (__p.__r_.__value_.__l.__data_ != &v460)
              {
                free(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_808;
            default:
              goto LABEL_808;
          }
        }

        if (*a1)
        {
          goto LABEL_29;
        }

LABEL_40:
        goto LABEL_29;
      }

      if (*&v435[4] <= 14)
      {
        if (*&v435[4] > 10)
        {
          if (*&v435[4] == 11)
          {
            if (!*a1)
            {
              goto LABEL_773;
            }

            goto LABEL_29;
          }

          if (*&v435[4] == 12)
          {
            if (*a1)
            {
              goto LABEL_29;
            }

            if ((*(a2 + 1560) & 1) == 0)
            {
              v104 = *(a2 + 1512);
              v105 = *(a2 + 1520);
              if (v104 != v105)
              {
                v106 = (v105 - 8);
                if (v106 > v104)
                {
                  v107 = v104 + 8;
                  do
                  {
                    v108 = *(v107 - 8);
                    *(v107 - 8) = *v106;
                    *v106-- = v108;
                    v192 = v107 >= v106;
                    v107 += 8;
                  }

                  while (!v192);
                }
              }

              if (*a1)
              {
                goto LABEL_29;
              }

              *(a2 + 1560) = 1;
            }

            v109 = *(a2 + 464);
            if (v109)
            {
              if (*(a2 + 456))
              {
                goto LABEL_196;
              }

              if (*a1)
              {
                goto LABEL_29;
              }

              *(a2 + 456) = 1;
            }

            if (*a1)
            {
              goto LABEL_29;
            }

            if (*(a2 + 456) == 1)
            {
              *(a2 + 440) = 8 * *(a2 + 48) - *(a2 + 64);
              goto LABEL_40;
            }
          }

          else
          {
            if (*&v435[4] != 14 || (*(a2 + 456) & 1) != 0)
            {
              goto LABEL_196;
            }

            if (*a1)
            {
              goto LABEL_29;
            }

            *(a2 + 456) = 1;
          }

          v18 = 2;
          goto LABEL_30;
        }

        if (!*&v435[4])
        {
          llvm::BitstreamCursor::ReadBlockInfoBlock((a2 + 32), 0, &__p);
          if (v461)
          {
            v59 = __p.__r_.__value_.__r.__words[0];
            __p.__r_.__value_.__r.__words[0] = 0;
            *a1 = v59;
          }

          else
          {
            if ((v460 & 1) == 0)
            {
              v458.__first_ = "Malformed block";
              LOWORD(v458.__end_cap_.__value_) = 259;
            }

            v112 = __p.__r_.__value_.__r.__words[2];
            v424 = *&__p.__r_.__value_.__l.__data_;
            memset(&__p, 0, sizeof(__p));
            LOBYTE(v458.__end_cap_.__value_) = 1;
            std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__vdeallocate((a2 + 8));
            *(a2 + 8) = v424;
            *(a2 + 24) = v112;
            memset(&v458, 0, 24);
            *a1 = 0;
            v443 = &v458;
            std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__destroy_vector::operator()[abi:nn200100](&v443);
          }

          llvm::Expected<std::optional<llvm::BitstreamBlockInfo>>::~Expected(&__p);
          goto LABEL_773;
        }

        if (*&v435[4] != 9)
        {
          if (*&v435[4] != 10)
          {
            goto LABEL_196;
          }

          llvm::BitstreamCursor::EnterSubBlock((a2 + 32), 0, 10, a1);
          if (*a1)
          {
            goto LABEL_29;
          }

          if (*(a2 + 1480))
          {
            goto LABEL_342;
          }

          __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
          __p.__r_.__value_.__l.__size_ = 0x4000000000;
          while (2)
          {
            llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 32), 0, &v450);
            if (v451)
            {
              v234 = v450;
              goto LABEL_730;
            }

            switch(v450)
            {
              case 2:
                goto LABEL_711;
              case 1:
                goto LABEL_722;
              case 0:
LABEL_711:
                v458.__first_ = "Malformed block";
                LOWORD(v458.__end_cap_.__value_) = 259;
            }

            LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
            llvm::BitstreamCursor::readRecord((a2 + 32), SHIDWORD(v450), &__p, 0, &v447);
            if (v448)
            {
              LOBYTE(v20) = 0;
              v21 = v447;
              v447 = 0;
              *a1 = v21;
              goto LABEL_157;
            }

            if (v447 != 3)
            {
              goto LABEL_156;
            }

            v423 = __p.__r_.__value_.__r.__words[1];
            v22 = LODWORD(__p.__r_.__value_.__r.__words[1]) - 2;
            if (LODWORD(__p.__r_.__value_.__r.__words[1]) <= 2)
            {
              v458.__first_ = "Invalid grp record";
              LOWORD(v458.__end_cap_.__value_) = 259;
            }

            v23 = *__p.__r_.__value_.__l.__data_;
            *v417 = *(__p.__r_.__value_.__r.__words[0] + 8);
            v458.__first_ = *(a2 + 424);
            v458.__begin_ = &v458.__end_cap_;
            v458.__end_ = 0x800000000;
            v24 = 2;
            v406 = v23;
            v410 = 63;
LABEL_59:
            v25 = __p.__r_.__value_.__r.__words[0];
            v26 = *(__p.__r_.__value_.__r.__words[0] + 8 * v24);
            if (v26 > 4)
            {
              if ((v26 - 5) >= 2)
              {
LABEL_150:
                v443 = "Invalid attribute group entry";
                v446 = 259;
              }

              LODWORD(v440) = 0;
              v27 = v24 + 1;
              if (*a1)
              {
                v20 = 0;
                a4 = v430;
                goto LABEL_153;
              }

              v30 = v440;
              if ((v440 - 69) >= 6)
              {
                v443 = "Not a type attribute";
                v446 = 259;
              }

              if (v26 == 6)
              {
                v27 = v24 + 2;
              }

              else
              {
                v31 = 0;
              }

              v29 = v423;
              v42 = llvm::Attribute::get(v458.__first_, v30, v31);
              llvm::AttrBuilder::addAttribute(&v458, v42);
              goto LABEL_144;
            }

            if ((v26 - 3) < 2)
            {
              v443 = &v445;
              v444 = xmmword_2750C1860;
              v440 = v442;
              v441 = xmmword_2750C1860;
              v27 = v24 + 1;
              if (v24 + 1 == v423 || (v32 = *(__p.__r_.__value_.__r.__words[0] + 8 * v27)) == 0)
              {
                v33 = v24;
              }

              else
              {
                do
                {
                  llvm::SmallVectorTemplateBase<char,true>::push_back(&v443, v32);
                  v25 = __p.__r_.__value_.__r.__words[0];
                  v33 = v24 + 1;
                  if (v22 == v24)
                  {
                    break;
                  }

                  v32 = *(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2));
                  ++v24;
                }

                while (v32);
                v27 = v33 + 1;
              }

              v193 = v26 == 4;
              v29 = v423;
              if (v193)
              {
                v27 = v33 + 2;
                if (v33 + 2 != v423)
                {
                  v34 = *(v25 + 8 * v27);
                  if (v34)
                  {
                    v35 = v33 + 3;
                    do
                    {
                      llvm::SmallVectorTemplateBase<char,true>::push_back(&v440, v34);
                      v36 = v35 + 1;
                      if (v423 == v35)
                      {
                        break;
                      }

                      v34 = *(__p.__r_.__value_.__r.__words[0] + 8 * v35++);
                    }

                    while (v34);
                    v27 = v36 - 1;
                  }
                }
              }

              v37 = v443;
              v38 = v444;
              v39 = llvm::Attribute::get(v458.__first_, v443, v444, v440, v441);
              addAttributeImpl<llvm::StringRef>(&v458.__begin_, v37, v38, v39);
              if (v440 != v442)
              {
                free(v440);
              }

              if (v443 != &v445)
              {
                free(v443);
              }

              goto LABEL_144;
            }

            if (v26)
            {
              if (v26 != 1)
              {
                goto LABEL_150;
              }

              LODWORD(v440) = 0;
              if (*a1)
              {
                v20 = 0;
                a4 = v430;
                goto LABEL_153;
              }

              if ((v440 - 75) >= 0xA)
              {
                v443 = "Not an int attribute";
                v446 = 259;
              }

              v27 = v24 + 2;
              v28 = *(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2));
              if (v440 > 79)
              {
                v29 = v423;
                if (v440 <= 81)
                {
                  if (v440 == 80)
                  {
                    llvm::AttrBuilder::addMemoryAttr(&v458, v28);
                  }

                  else
                  {
                    llvm::AttrBuilder::addNoFPClassAttr(&v458, v28 & 0x3FF);
                  }
                }

                else if (v440 == 82)
                {
                  v46 = __clz(*(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2))) ^ 0x13F;
                  if (*(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2)))
                  {
                    v47 = v46;
                  }

                  else
                  {
                    v47 = 0;
                  }

                  llvm::AttrBuilder::addStackAlignmentAttr(&v458, v47);
                }

                else if (v440 == 83)
                {
                  llvm::AttrBuilder::addUWTableAttr(&v458, v28);
                }

                else
                {
                  llvm::AttrBuilder::addVScaleRangeAttrFromRawRepr(&v458, v28);
                }
              }

              else
              {
                v29 = v423;
                if (v440 <= 76)
                {
                  if (v440 == 75)
                  {
                    v44 = __clz(*(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2))) ^ 0x13F;
                    if (*(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2)))
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = 0;
                    }

                    llvm::AttrBuilder::addAlignmentAttr(&v458, v45);
                  }

                  else
                  {
                    llvm::AttrBuilder::addAllocKindAttr(&v458, v28);
                  }
                }

                else if (v440 == 77)
                {
                  llvm::AttrBuilder::addAllocSizeAttrFromRawRepr(&v458, v28);
                }

                else if (v440 == 78)
                {
                  llvm::AttrBuilder::addDereferenceableAttr(&v458, v28);
                }

                else
                {
                  llvm::AttrBuilder::addDereferenceableOrNullAttr(&v458, v28);
                }
              }

LABEL_144:
              v24 = v27 + 1;
              if (v27 + 1 == v29)
              {
                v48 = v410;
                if (v410 != 63)
                {
                  llvm::AttrBuilder::addMemoryAttr(&v458, v410);
                }

                llvm::UpgradeAttributes(&v458, v48);
                v49 = llvm::AttributeList::get(*(a2 + 424), v417[0], &v458);
                LODWORD(v440) = v406;
                v443 = &v440;
                std::__tree<std::__value_type<unsigned int,llvm::AttributeList>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::AttributeList>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::AttributeList>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a2 + 1464, v406)[5] = v49;
                v20 = 1;
                a4 = v430;
LABEL_153:
                if (v458.__begin_ != &v458.__end_cap_)
                {
                  free(v458.__begin_);
                }

                if (v20)
                {
LABEL_156:
                  LOBYTE(v20) = 1;
                }

LABEL_157:
                if (v448)
                {
                  v50 = v447;
                  v447 = 0;
                  if (v50)
                  {
                    (*(*v50 + 8))(v50);
                  }
                }

                if (v451)
                {
                  v51 = v450;
                  v450 = 0;
                  if (v51)
                  {
                    (*(*v51 + 8))(v51);
                  }
                }

                if ((v20 & 1) == 0)
                {
LABEL_771:
                  v230 = __p.__r_.__value_.__r.__words[0];
                  if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
                  {
                    goto LABEL_772;
                  }

                  goto LABEL_773;
                }

                continue;
              }

              goto LABEL_59;
            }

            break;
          }

          LODWORD(v440) = 0;
          v27 = v24 + 1;
          v40 = *(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 1));
          if (*v417 != 0xFFFFFFFFLL)
          {
            goto LABEL_109;
          }

          if (v40 <= 48)
          {
            if (v40 == 20)
            {
              v410 = 0;
              goto LABEL_143;
            }

            if (v40 != 21)
            {
              if (v40 == 45)
              {
                v41 = v410 & 3;
                goto LABEL_142;
              }

LABEL_109:
              if (*a1)
              {
                v20 = 0;
                a4 = v430;
                goto LABEL_153;
              }

              if (v440 > 73)
              {
                if (v440 == 74)
                {
                  llvm::AttrBuilder::addStructRetAttr(&v458, 0);
                  goto LABEL_143;
                }

                if (v440 == 83)
                {
                  llvm::AttrBuilder::addUWTableAttr(&v458, 2);
                  goto LABEL_143;
                }
              }

              else
              {
                if (v440 == 70)
                {
                  llvm::AttrBuilder::addByValAttr(&v458, 0);
                  goto LABEL_143;
                }

                if (v440 == 72)
                {
                  llvm::AttrBuilder::addInAllocaAttr(&v458, 0);
LABEL_143:
                  v29 = v423;
                  goto LABEL_144;
                }
              }

              if ((v440 - 1) > 0x43)
              {
                v443 = "Not an enum attribute";
                v446 = 259;
              }

              llvm::AttrBuilder::addAttribute(&v458, v440);
              goto LABEL_143;
            }

            v43 = 21;
LABEL_140:
            v410 &= v43;
            goto LABEL_143;
          }

          switch(v40)
          {
            case '1':
              v41 = v410 & 0xC;
              break;
            case '2':
              v41 = v410 & 0xF;
              break;
            case '4':
              v43 = 42;
              goto LABEL_140;
            default:
              goto LABEL_109;
          }

LABEL_142:
          v410 = v41;
          goto LABEL_143;
        }

        llvm::BitstreamCursor::EnterSubBlock((a2 + 32), 0, 9, a1);
        if (*a1)
        {
          goto LABEL_29;
        }

        if (*(a2 + 1440) != *(a2 + 1448))
        {
          goto LABEL_342;
        }

        __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
        __p.__r_.__value_.__l.__size_ = 0x4000000000;
        v443 = &v444 + 8;
        *&v444 = 0x800000000;
        while (2)
        {
          llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 32), 0, &v440);
          if (v441)
          {
            *a1 = v440;
            goto LABEL_757;
          }

          switch(v440)
          {
            case 2:
              goto LABEL_731;
            case 1:
              *a1 = 0;
LABEL_757:
              if (v443 != &v444 + 8)
              {
                free(v443);
              }

              goto LABEL_771;
            case 0:
LABEL_731:
              v458.__first_ = "Malformed block";
              LOWORD(v458.__end_cap_.__value_) = 259;
          }

          LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
          llvm::BitstreamCursor::readRecord((a2 + 32), SHIDWORD(v440), &__p, 0, &v450);
          if (v451)
          {
            *a1 = v450;
            if (v441)
            {
              v269 = v440;
              v440 = 0;
              if (v269)
              {
                (*(*v269 + 8))(v269);
              }
            }

            goto LABEL_757;
          }

          if (v450 != 2)
          {
            if (v450 == 1)
            {
              v75 = __p.__r_.__value_.__r.__words[1];
              if (__p.__r_.__value_.__s.__data_[8])
              {
                v458.__first_ = "Invalid parameter attribute record";
                LOWORD(v458.__end_cap_.__value_) = 259;
              }

              if (LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v76 = 0;
                do
                {
                  v458.__first_ = *(a2 + 424);
                  v458.__begin_ = &v458.__end_cap_;
                  v458.__end_ = 0x800000000;
                  v77 = *(__p.__r_.__value_.__r.__words[0] + 8 * (v76 | 1));
                  v78 = *(__p.__r_.__value_.__r.__words[0] + 8 * v76);
                  if ((v77 & 0xFFFF0000) != 0)
                  {
                    llvm::AttrBuilder::addAlignmentAttr(&v458, __clz(WORD1(v77)) ^ 0x13F);
                  }

                  v79 = v77 | ((HIDWORD(v77) & 0xFFFFF) << 21);
                  if (v78 == 0xFFFFFFFFLL)
                  {
                    if ((v77 & 0x200) != 0)
                    {
                      v80 = v77 & 0xFDFF | ((HIDWORD(v77) & 0xFFFFF) << 21) & 0x1FFFFE0FDFFLL;
                    }

                    else
                    {
                      v80 = v77 | ((HIDWORD(v77) & 0xFFFFF) << 21);
                    }

                    if ((v80 & 0x400) != 0)
                    {
                      v79 = v80 & 0x1FFFFE0FBFFLL;
                      if ((v77 & 0x200) != 0)
                      {
                        v81 = 0;
                      }

                      else
                      {
                        v81 = 21;
                      }

LABEL_252:
                      v82 = llvm::Attribute::get(v458.__first_, 80, v81);
                      llvm::AttrBuilder::addAttribute(&v458, v82);
                      if (v79)
                      {
LABEL_253:
                        v83 = 0;
                        while (1)
                        {
                          v84 = 0;
                          switch(v83)
                          {
                            case 3:
                              v84 = 4096;
                              goto LABEL_310;
                            case 4:
                              v84 = 0x20000000000;
                              goto LABEL_310;
                            case 5:
                              v84 = 0x10000000000;
                              goto LABEL_310;
                            case 6:
                              v84 = 0x400000000000;
                              goto LABEL_310;
                            case 10:
                              v84 = 0x2000000000000000;
                              goto LABEL_310;
                            case 11:
                              v84 = 8;
                              goto LABEL_310;
                            case 12:
                              v84 = 0x2000000;
                              goto LABEL_310;
                            case 13:
                              v84 = 0x200000000000;
                              goto LABEL_310;
                            case 14:
                              v84 = 0x200000000;
                              goto LABEL_310;
                            case 16:
                              v84 = 0x1000000;
                              goto LABEL_310;
                            case 17:
                              v84 = 256;
                              goto LABEL_310;
                            case 18:
                              v84 = 64;
                              goto LABEL_310;
                            case 19:
                              v84 = 0x4000000000;
                              goto LABEL_310;
                            case 21:
                              v84 = 0x200000;
                              goto LABEL_310;
                            case 22:
                              v84 = 0x200000000000000;
                              goto LABEL_310;
                            case 23:
                              v84 = 0x400000000;
                              goto LABEL_310;
                            case 24:
                              v84 = 0x8000000000000000;
                              goto LABEL_310;
                            case 25:
                              v84 = 0x800000;
                              goto LABEL_310;
                            case 26:
                              v84 = 2048;
                              goto LABEL_310;
                            case 29:
                              v84 = 0x1000000000000;
                              goto LABEL_310;
                            case 30:
                              v84 = 0x400000;
                              goto LABEL_310;
                            case 31:
                              v84 = 4;
                              goto LABEL_310;
                            case 36:
                              v84 = 32;
                              goto LABEL_310;
                            case 37:
                              v84 = 0x80000000;
                              goto LABEL_310;
                            case 38:
                              v84 = 0x100000000000;
                              goto LABEL_310;
                            case 40:
                              v84 = 0x400000000000000;
                              goto LABEL_310;
                            case 41:
                              v84 = 0x2000;
                              goto LABEL_310;
                            case 42:
                              v84 = 0x40000000000;
                              goto LABEL_310;
                            case 44:
                              v84 = 512;
                              goto LABEL_310;
                            case 45:
                              v84 = 1024;
                              goto LABEL_310;
                            case 46:
                              v84 = 0x8000000000;
                              goto LABEL_310;
                            case 47:
                              v84 = 0x20000000;
                              goto LABEL_310;
                            case 48:
                              v84 = 2;
                              goto LABEL_310;
                            case 49:
                              v84 = 0x800000000000;
                              goto LABEL_310;
                            case 50:
                              v84 = 0x100000000;
                              goto LABEL_310;
                            case 51:
                              v84 = 0x100000000000000;
                              goto LABEL_310;
                            case 53:
                              v84 = 0x2000000000;
                              goto LABEL_310;
                            case 54:
                              v84 = 0x1000000000;
                              goto LABEL_310;
                            case 55:
                              v84 = 0x800000000000000;
                              goto LABEL_310;
                            case 57:
                              v84 = 0x40000000000000;
                              goto LABEL_310;
                            case 58:
                              v84 = 0x1000000000000000;
                              goto LABEL_310;
                            case 59:
                              v84 = 0x4000;
                              goto LABEL_310;
                            case 60:
                              v84 = 0x8000;
                              goto LABEL_310;
                            case 61:
                              v84 = 0x800000000;
                              goto LABEL_310;
                            case 62:
                              v84 = 0x80000000000000;
                              goto LABEL_310;
                            case 64:
                              v84 = 0x10000000000000;
                              goto LABEL_310;
                            case 65:
                              v84 = 0x8000000000000;
                              goto LABEL_310;
                            case 66:
                              v84 = 0x4000000000000000;
                              goto LABEL_310;
                            case 67:
                              v84 = 0x20000000000000;
                              goto LABEL_310;
                            case 68:
                              v84 = 1;
                              goto LABEL_310;
                            case 70:
                              v84 = 128;
                              goto LABEL_310;
                            case 72:
                              v84 = 0x80000000000;
                              goto LABEL_310;
                            case 74:
                              v84 = 16;
                              goto LABEL_310;
                            case 75:
                              v84 = 2031616;
                              goto LABEL_310;
                            case 82:
                              v84 = 469762048;
                              goto LABEL_310;
                            case 83:
                              v84 = 0x40000000;
                              goto LABEL_310;
                            case 85:
                              goto LABEL_326;
                            default:
LABEL_310:
                              v85 = v84 & v79;
                              if (v85)
                              {
                                if (v83 == 82)
                                {
                                  v89 = (v85 >> 26) - 1;
                                  v90 = __clz((1 << v89)) ^ 0x13F;
                                  if (v89 <= 0x1F)
                                  {
                                    v91 = v90;
                                  }

                                  else
                                  {
                                    v91 = 0;
                                  }

                                  llvm::AttrBuilder::addStackAlignmentAttr(&v458, v91);
                                }

                                else if (v83 == 75)
                                {
                                  v86 = (v85 >> 16) - 1;
                                  v87 = __clz((1 << v86)) ^ 0x13F;
                                  if (v86 <= 0x1F)
                                  {
                                    v88 = v87;
                                  }

                                  else
                                  {
                                    v88 = 0;
                                  }

                                  llvm::AttrBuilder::addAlignmentAttr(&v458, v88);
                                }

                                else if ((v83 - 69) > 5)
                                {
                                  v93 = llvm::Attribute::get(v458.__first_, v83, 0);
                                  addAttributeImpl<llvm::Attribute::AttrKind>(&v458.__begin_, v83, v93);
                                }

                                else
                                {
                                  v92 = llvm::Attribute::get(v458.__first_, v83, 0);
                                  llvm::AttrBuilder::addAttribute(&v458, v92);
                                }
                              }

                              ++v83;
                              break;
                          }
                        }
                      }

                      goto LABEL_326;
                    }

                    if ((v77 & 0x200) != 0)
                    {
                      v81 = 0;
                      v79 = v77 & 0xFDFF | ((HIDWORD(v77) & 0xFFFFF) << 21) & 0x1FFFFE0FDFFLL;
                      goto LABEL_252;
                    }
                  }

                  if (v79)
                  {
                    goto LABEL_253;
                  }

LABEL_326:
                  v94 = v76;
                  v95 = *(a2 + 424);
                  v96 = *(__p.__r_.__value_.__r.__words[0] + 8 * v94);
                  Sorted = llvm::AttributeSetNode::getSorted(v95, v458.__begin_, LODWORD(v458.__end_));
                  v98 = llvm::AttributeList::get(v95, v96, Sorted);
                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v98);
                  if (v458.__begin_ != &v458.__end_cap_)
                  {
                    free(v458.__begin_);
                  }

                  v76 = v94 + 2;
                }

                while (v94 + 2 != v75);
              }

              v458.__first_ = llvm::AttributeList::get(*(a2 + 424), v443, v444);
              std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](a2 + 1440, &v458);
              a4 = v430;
LABEL_334:
              LODWORD(v444) = 0;
              if (v451)
              {
                v102 = v450;
                v450 = 0;
                if (v102)
                {
                  (*(*v102 + 8))(v102);
                }
              }
            }

            if (v441)
            {
              v103 = v440;
              v440 = 0;
              if (v103)
              {
                (*(*v103 + 8))(v103);
              }
            }

            continue;
          }

          break;
        }

        if (LODWORD(__p.__r_.__value_.__r.__words[1]))
        {
          v99 = 0;
          v100 = 8 * LODWORD(__p.__r_.__value_.__r.__words[1]);
          do
          {
            LODWORD(v447) = *(__p.__r_.__value_.__r.__words[0] + v99);
            v458.__first_ = &v447;
            v101 = std::__tree<std::__value_type<unsigned int,llvm::AttributeList>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::AttributeList>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::AttributeList>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a2 + 1464, v447);
            llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v101[5]);
            v99 += 8;
          }

          while (v100 != v99);
        }

        v458.__first_ = llvm::AttributeList::get(*(a2 + 424), v443, v444);
        std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](a2 + 1440, &v458);
        goto LABEL_334;
      }

      if (*&v435[4] > 20)
      {
        if (*&v435[4] != 21)
        {
          if (*&v435[4] == 22)
          {
            llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataKinds(*(a2 + 776), a1);
            goto LABEL_773;
          }

          if (*&v435[4] != 26)
          {
            goto LABEL_196;
          }

          llvm::BitstreamCursor::EnterSubBlock((a2 + 32), 0, 26, a1);
          if (!*a1)
          {
            if (!*(a2 + 1808))
            {
              __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
              __p.__r_.__value_.__l.__size_ = 0x4000000000;
              while (1)
              {
                llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 32), 0, &v440);
                if (v441)
                {
                  break;
                }

                switch(v440)
                {
                  case 2:
                    goto LABEL_734;
                  case 1:
                    if (*(a2 + 1808))
                    {
                      *a1 = 0;
LABEL_764:
                      if ((v441 & 1) == 0)
                      {
                        goto LABEL_771;
                      }

                      v270 = v440;
                      v440 = 0;
                      if (!v270)
                      {
                        goto LABEL_771;
                      }

LABEL_770:
                      (*(*v270 + 8))(v270);
                      goto LABEL_771;
                    }

                    v458.__first_ = "Invalid empty synchronization scope names block";
LABEL_735:
                    LOWORD(v458.__end_cap_.__value_) = 259;
                  case 0:
LABEL_734:
                    v458.__first_ = "Malformed block";
                    goto LABEL_735;
                }

                llvm::BitstreamCursor::readRecord((a2 + 32), SHIDWORD(v440), &__p, 0, &v450);
                if (v451)
                {
                  v233 = v450;
                  goto LABEL_672;
                }

                if (v450 != 1)
                {
                  v458.__first_ = "Invalid sync scope record";
                  LOWORD(v458.__end_cap_.__value_) = 259;
                }

                v458.__first_ = &v458.__end_cap_;
                *&v458.__begin_ = xmmword_2750C3D00;
                llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v458, __p.__r_.__value_.__l.__data_, (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1])));
                v155 = **(a2 + 424);
                v156 = *(v155 + 2684);
                v443 = v458.__first_;
                *&v444 = v458.__begin_;
                BYTE8(v444) = v156;
                v157 = llvm::StringMap<unsigned char,llvm::MallocAllocator>::try_emplace<unsigned char>((v155 + 2672), v458.__first_, v458.__begin_, &v444 + 8);
                llvm::SmallVectorTemplateBase<char,true>::push_back((a2 + 1800), *(*v157 + 8));
                LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
                if (v458.__first_ != &v458.__end_cap_)
                {
                  free(v458.__first_);
                }

                if (v451)
                {
                  v158 = v450;
                  v450 = 0;
                  if (v158)
                  {
                    (*(*v158 + 8))(v158);
                  }
                }

                if (v441)
                {
                  v159 = v440;
                  v440 = 0;
                  if (v159)
                  {
                    (*(*v159 + 8))(v159);
                  }
                }
              }

              v233 = v440;
              v440 = 0;
LABEL_672:
              *a1 = v233;
              goto LABEL_764;
            }

            v58 = "Invalid multiple synchronization scope names blocks";
LABEL_343:
            __p.__r_.__value_.__r.__words[0] = v58;
            v461 = 259;
          }

LABEL_29:
          v18 = 1;
          goto LABEL_30;
        }

        llvm::BitstreamCursor::EnterSubBlock((a2 + 32), 0, 21, a1);
        if (*a1)
        {
          goto LABEL_29;
        }

        if (*(a2 + 1776) == *(a2 + 1784))
        {
          __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
          __p.__r_.__value_.__l.__size_ = 0x4000000000;
          while (1)
          {
            llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 32), 0, &v443);
            if (v444)
            {
              v234 = v443;
LABEL_730:
              *a1 = v234;
              goto LABEL_771;
            }

            switch(v443)
            {
              case 2:
                goto LABEL_736;
              case 1:
LABEL_722:
                *a1 = 0;
                goto LABEL_771;
              case 0:
LABEL_736:
                v458.__first_ = "Malformed block";
                LOWORD(v458.__end_cap_.__value_) = 259;
            }

            llvm::BitstreamCursor::readRecord((a2 + 32), SHIDWORD(v443), &__p, 0, &v440);
            if (v441)
            {
              break;
            }

            if (v440 != 1)
            {
              v458.__first_ = "Invalid operand bundle record";
              LOWORD(v458.__end_cap_.__value_) = 259;
            }

            v60 = *(a2 + 1784);
            v61 = *(a2 + 1792);
            if (v60 >= v61)
            {
              v63 = 0xAAAAAAAAAAAAAAABLL * ((v60 - *v422) >> 3);
              v64 = v63 + 1;
              if (v63 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v65 = 0xAAAAAAAAAAAAAAABLL * ((v61 - *v422) >> 3);
              if (2 * v65 > v64)
              {
                v64 = 2 * v65;
              }

              if (v65 >= 0x555555555555555)
              {
                v66 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v66 = v64;
              }

              v458.__end_cap_.__value_ = (a2 + 1776);
              if (v66)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v422, v66);
              }

              v67 = 24 * v63;
              *v67 = 0;
              *(v67 + 8) = 0;
              *(v67 + 16) = 0;
              v62 = 24 * v63 + 24;
              v68 = *(a2 + 1776);
              v69 = *(a2 + 1784) - v68;
              v70 = 24 * v63 - v69;
              memcpy((v67 - v69), v68, v69);
              v71 = *(a2 + 1776);
              *(a2 + 1776) = v70;
              *(a2 + 1784) = v62;
              v72 = *(a2 + 1792);
              *(a2 + 1792) = 0;
              v458.__end_ = v71;
              v458.__end_cap_.__value_ = v72;
              v458.__begin_ = v71;
              v458.__first_ = v71;
              std::__split_buffer<std::string>::~__split_buffer(&v458);
            }

            else
            {
              *v60 = 0;
              v60[1] = 0;
              v62 = (v60 + 3);
              v60[2] = 0;
            }

            *(a2 + 1784) = v62;
            std::string::append[abi:nn200100]<unsigned long long const*,0>((v62 - 24), __p.__r_.__value_.__l.__data_, (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1])));
            LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
            if (v441)
            {
              v73 = v440;
              v440 = 0;
              if (v73)
              {
                (*(*v73 + 8))(v73);
              }
            }

            if (v444)
            {
              v74 = v443;
              v443 = 0;
              if (v74)
              {
                (*(*v74 + 8))(v74);
              }
            }
          }

          *a1 = v440;
          if ((v444 & 1) == 0)
          {
            goto LABEL_771;
          }

          v270 = v443;
          v443 = 0;
          if (!v270)
          {
            goto LABEL_771;
          }

          goto LABEL_770;
        }

LABEL_342:
        v58 = "Invalid multiple blocks";
        goto LABEL_343;
      }

      if (*&v435[4] == 15)
      {
        if (!a4)
        {
          llvm::MetadataLoader::MetadataLoaderImpl::parseMetadata(*(a2 + 776), 1, a1);
          goto LABEL_773;
        }

        __p.__r_.__value_.__r.__words[0] = 8 * *(a2 + 48) - *(a2 + 64);
        std::vector<unsigned long long>::push_back[abi:nn200100]((a2 + 1592), &__p);
        goto LABEL_196;
      }

      if (*&v435[4] != 17)
      {
        if (*&v435[4] == 18)
        {
          goto LABEL_773;
        }

LABEL_196:
        llvm::BitstreamCursor::SkipBlock((a2 + 32), a1);
        goto LABEL_773;
      }

      llvm::BitstreamCursor::EnterSubBlock((a2 + 32), 0, 17, a1);
      if (*a1)
      {
        goto LABEL_29;
      }

      if (*(a2 + 520) != *(a2 + 528))
      {
        goto LABEL_342;
      }

      v160 = 0;
      __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
      __p.__r_.__value_.__l.__size_ = 0x4000000000;
      v434 = 0;
      v458.__first_ = &v458.__end_cap_;
      *&v458.__begin_ = xmmword_2750C1860;
      do
      {
        llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 32), 0, v456);
        if (v457)
        {
          v161 = *v456;
          *v456 = 0;
          *a1 = v161;
LABEL_472:
          v228 = 1;
          goto LABEL_473;
        }

        switch(v456[0])
        {
          case 2u:
            goto LABEL_471;
          case 1u:
            if (v160 != (*(a2 + 528) - *(a2 + 520)) >> 3)
            {
LABEL_471:
              v443 = "Malformed block";
              v446 = 259;
            }

            *a1 = 0;
            goto LABEL_472;
          case 0u:
            goto LABEL_471;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
        v440 = &v441 + 8;
        *&v441 = 0xC00000000;
        llvm::BitstreamCursor::readRecord((a2 + 32), v456[1], &__p, 0, &v454);
        if (v455)
        {
          v162 = v454;
          v454 = 0;
          *a1 = v162;
          v228 = 1;
        }

        else
        {
          switch(v454)
          {
            case 1:
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid numentry record";
                goto LABEL_656;
              }

              std::vector<llvm::BasicBlock *>::resize(v421, *__p.__r_.__value_.__l.__data_);
LABEL_529:
              v228 = 2;
              goto LABEL_658;
            case 2:
              IdentifiedStructType = **(a2 + 424) + 1608;
              goto LABEL_640;
            case 3:
              IdentifiedStructType = **(a2 + 424) + 1704;
              goto LABEL_640;
            case 4:
              IdentifiedStructType = **(a2 + 424) + 1728;
              goto LABEL_640;
            case 5:
              IdentifiedStructType = **(a2 + 424) + 1632;
              goto LABEL_640;
            case 6:
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) != 1)
              {
                v165 = "Invalid opaque type record";
                goto LABEL_656;
              }

              v185 = *(a2 + 520);
              if (v160 >= ((*(a2 + 528) - v185) >> 3))
              {
                goto LABEL_541;
              }

              IdentifiedStructType = *(v185 + 8 * v160);
              if (IdentifiedStructType)
              {
                llvm::StructType::setName(*(v185 + 8 * v160), v458.__first_, v458.__begin_);
                *(*v421 + 8 * v160) = 0;
              }

              else
              {
              }

              v458.__begin_ = 0;
              goto LABEL_640;
            case 7:
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid integer record";
                goto LABEL_656;
              }

              if ((*__p.__r_.__value_.__l.__data_ - 1) >> 23)
              {
                v165 = "Bitwidth for integer type out of range";
                goto LABEL_656;
              }

              v175 = llvm::IntegerType::get(*(a2 + 424), *__p.__r_.__value_.__l.__data_);
              break;
            case 8:
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid pointer record";
                goto LABEL_656;
              }

              if (LODWORD(__p.__r_.__value_.__r.__words[1]) == 2)
              {
                v176 = __p.__r_.__value_.__r.__words[0];
                v177 = *(__p.__r_.__value_.__r.__words[0] + 8);
              }

              else
              {
                v177 = 0;
                v176 = __p.__r_.__value_.__r.__words[0];
              }

              if (!v206 || ((v207 = v206, v208 = *(v206 + 8), v208 <= 0xC) ? (v209 = ((1 << v208) & 0x1380) == 0) : (v209 = 1), v209 ? (v210 = v208 == 11) : (v210 = 1), v210))
              {
                v211 = "Invalid type";
                goto LABEL_643;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v440, *__p.__r_.__value_.__l.__data_);
              v175 = llvm::PointerType::get(v207, v177);
              break;
            case 9:
              v186 = __p.__r_.__value_.__r.__words[1];
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) <= 2)
              {
                goto LABEL_533;
              }

              v443 = &v444 + 8;
              *&v444 = 0x800000000;
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) != 3)
              {
                v204 = 3;
                do
                {
                  if (!v205)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v205);
                  ++v204;
                }

                while (v186 != v204);
              }

              if (!v182 || LODWORD(__p.__r_.__value_.__r.__words[1]) - 3 > v444)
              {
                goto LABEL_581;
              }

              v183 = (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1]));
              v184 = (__p.__r_.__value_.__r.__words[0] + 16);
              goto LABEL_622;
            case 10:
              IdentifiedStructType = **(a2 + 424) + 1656;
              goto LABEL_640;
            case 11:
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) <= 1)
              {
                v165 = "Invalid array type record";
                goto LABEL_656;
              }

              if (!v199)
              {
                goto LABEL_574;
              }

              v200 = v199;
              v201 = *(v199 + 8);
              v202 = v201 > 0xE || ((1 << v201) & 0x5B80) == 0;
              if (!v202 || v201 == 19)
              {
                goto LABEL_574;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v440, *(__p.__r_.__value_.__r.__words[0] + 8));
              llvm::ArrayType::get(v200, *__p.__r_.__value_.__l.__data_);
              break;
            case 12:
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) <= 1)
              {
                v165 = "Invalid vector type record";
LABEL_656:
                v443 = v165;
                v446 = 259;
LABEL_657:
              }

              if (!*__p.__r_.__value_.__l.__data_)
              {
                v165 = "Invalid vector length";
                goto LABEL_656;
              }

              if (!v188)
              {
                goto LABEL_574;
              }

              v189 = v188;
              v190 = *(v188 + 8);
              v191 = v190;
              v192 = v190 != 13 && v190 >= 4u;
              v193 = !v192 || v190 == 5;
              v194 = v190 & 0xFD;
              v195 = v193 || v194 == 4;
              v196 = v195 || v191 == 15;
              if (!v196 && v191 != 20)
              {
LABEL_574:
                v165 = "Invalid type";
                goto LABEL_656;
              }

              if (LODWORD(__p.__r_.__value_.__r.__words[1]) < 3)
              {
                v198 = 0;
              }

              else
              {
                v198 = (*(__p.__r_.__value_.__r.__words[0] + 16) != 0) << 32;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v440, *(__p.__r_.__value_.__r.__words[0] + 8));
              llvm::VectorType::get(v189, (*__p.__r_.__value_.__l.__data_ | v198));
              break;
            case 13:
              IdentifiedStructType = **(a2 + 424) + 1800;
              goto LABEL_640;
            case 14:
              IdentifiedStructType = **(a2 + 424) + 1824;
              goto LABEL_640;
            case 15:
              IdentifiedStructType = **(a2 + 424) + 1848;
              goto LABEL_640;
            case 16:
              IdentifiedStructType = **(a2 + 424) + 1752;
              goto LABEL_640;
            case 17:
              IdentifiedStructType = **(a2 + 424) + 1872;
              goto LABEL_640;
            case 18:
              v178 = __p.__r_.__value_.__r.__words[1];
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid anon struct record";
                goto LABEL_656;
              }

              v443 = &v444 + 8;
              *&v444 = 0x800000000;
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) == 1)
              {
                v179 = 0;
                v180 = 1;
              }

              else
              {
                v212 = 1;
                do
                {
                  if (!v213)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v213);
                  ++v212;
                }

                while (v178 != v212);
                v179 = v444;
                v180 = LODWORD(__p.__r_.__value_.__r.__words[1]);
              }

              v214 = v180 - 1;
              if (v180 - 1 != v179)
              {
                v450 = "Invalid type";
                v453 = 259;
              }

              llvm::SmallVectorImpl<unsigned int>::append<unsigned long long *,void>(&v440, (__p.__r_.__value_.__r.__words[0] + 8), (__p.__r_.__value_.__r.__words[0] + 8 * v180));
              IdentifiedStructType = llvm::StructType::get(*(a2 + 424), v443, v444, (*__p.__r_.__value_.__l.__data_ != 0));
              v228 = 5;
              if (v443 != &v444 + 8)
              {
                free(v443);
              }

              if (v214 == v179)
              {
                goto LABEL_640;
              }

              a4 = v430;
              goto LABEL_658;
            case 19:
              llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v458, __p.__r_.__value_.__l.__data_, (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1])));
              goto LABEL_529;
            case 20:
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid named struct record";
                goto LABEL_656;
              }

              v187 = *(a2 + 520);
              if (v160 >= ((*(a2 + 528) - v187) >> 3))
              {
LABEL_541:
                v165 = "Invalid TYPE table";
                goto LABEL_656;
              }

              IdentifiedStructType = *(v187 + 8 * v160);
              if (IdentifiedStructType)
              {
                llvm::StructType::setName(*(v187 + 8 * v160), v458.__first_, v458.__begin_);
                *(*v421 + 8 * v160) = 0;
              }

              else
              {
              }

              v219 = 0;
              v458.__begin_ = 0;
              v220 = &v444 + 8;
              v443 = &v444 + 8;
              *&v444 = 0x800000000;
              v221 = __p.__r_.__value_.__r.__words[1];
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) != 1)
              {
                v222 = 1;
                do
                {
                  if (!v223)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v223);
                  ++v222;
                }

                while (v221 != v222);
                v219 = v444;
                if (LODWORD(__p.__r_.__value_.__r.__words[1]) - 1 != v444)
                {
                  v450 = "Invalid named struct record";
                  v453 = 259;
                }

                v220 = v443;
              }

              llvm::StructType::setBody(IdentifiedStructType, v220, v219, *__p.__r_.__value_.__l.__data_ != 0);
              llvm::SmallVectorImpl<unsigned int>::append<unsigned long long *,void>(&v440, (__p.__r_.__value_.__r.__words[0] + 8), (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1])));
              goto LABEL_632;
            case 21:
              v181 = __p.__r_.__value_.__r.__words[1];
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) <= 1)
              {
LABEL_533:
                v165 = "Invalid function record";
                goto LABEL_656;
              }

              v443 = &v444 + 8;
              *&v444 = 0x800000000;
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) != 2)
              {
                v215 = 2;
                do
                {
                  if (!v216)
                  {
                    break;
                  }

                  v217 = *(v216 + 8);
                  if (v217 == 7 || v217 == 14)
                  {
                    v450 = "Invalid function argument type";
                    v453 = 259;
                  }

                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v216);
                  ++v215;
                }

                while (v181 != v215);
              }

              if (!v182 || LODWORD(__p.__r_.__value_.__r.__words[1]) - 2 > v444)
              {
LABEL_581:
                v450 = "Invalid type";
                v453 = 259;
              }

              v183 = (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1]));
              v184 = (__p.__r_.__value_.__r.__words[0] + 8);
LABEL_622:
              llvm::SmallVectorImpl<unsigned int>::append<unsigned long long *,void>(&v440, v184, v183);
              IdentifiedStructType = llvm::FunctionType::get(v182, v443, v444, (*__p.__r_.__value_.__l.__data_ != 0));
LABEL_632:
              if (v443 != &v444 + 8)
              {
                free(v443);
              }

              goto LABEL_640;
            case 22:
              IdentifiedStructType = **(a2 + 424) + 1776;
              goto LABEL_640;
            case 23:
              IdentifiedStructType = **(a2 + 424) + 1680;
              goto LABEL_640;
            case 24:
              IdentifiedStructType = **(a2 + 424) + 1896;
              goto LABEL_640;
            case 25:
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) != 1)
              {
                v165 = "Invalid opaque pointer record";
                goto LABEL_656;
              }

              v173 = *(a2 + 424);
              v174 = *v173;
              if (*(*v173 + 2737) == 1)
              {
                if ((*(v174 + 2736) & 1) == 0)
                {
                  goto LABEL_655;
                }
              }

              else
              {
                v227 = byte_2815AC708;
                *(v174 + 2737) = 1;
                *(v174 + 2736) = v227;
                if ((v227 & 1) == 0)
                {
LABEL_655:
                  v165 = "Opaque pointers are only supported in -opaque-pointers mode";
                  goto LABEL_656;
                }
              }

              v175 = llvm::PointerType::get(v173, *__p.__r_.__value_.__l.__data_);
              break;
            case 26:
              v166 = LODWORD(__p.__r_.__value_.__r.__words[1]);
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid target extension type record";
                goto LABEL_656;
              }

              if (v160 >= ((*(a2 + 528) - *(a2 + 520)) >> 3))
              {
                goto LABEL_541;
              }

              v167 = *__p.__r_.__value_.__l.__data_;
              if (*__p.__r_.__value_.__l.__data_ >= LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v211 = "Too many type parameters";
                goto LABEL_643;
              }

              v443 = &v444 + 8;
              *&v444 = 0x400000000;
              v450 = v452;
              v451 = 0x800000000;
              if (!v167)
              {
                goto LABEL_496;
              }

              v168 = 8;
              v169 = v167;
              do
              {
                if (!v170)
                {
                  v226 = "Invalid type";
                  goto LABEL_651;
                }

                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v170);
                v168 += 8;
                --v169;
              }

              while (v169);
              v166 = LODWORD(__p.__r_.__value_.__r.__words[1]);
LABEL_496:
              v171 = v167 + 1;
              if (v171 < v166)
              {
                while (1)
                {
                  v172 = *(__p.__r_.__value_.__r.__words[0] + 8 * v171);
                  if (HIDWORD(v172))
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v450, v172);
                  if (v166 == ++v171)
                  {
                    goto LABEL_499;
                  }
                }

                v226 = "Integer parameter too large";
LABEL_651:
                v447 = v226;
                v449 = 259;
              }

LABEL_499:
              IdentifiedStructType = llvm::TargetExtType::get(*(a2 + 424), v458.__first_, v458.__begin_, v443, v444, v450, v451);
              v458.__begin_ = 0;
              if (v450 != v452)
              {
                free(v450);
              }

              goto LABEL_632;
            default:
              v443 = "Invalid value";
              v446 = 259;
              goto LABEL_657;
          }

          IdentifiedStructType = v175;
LABEL_640:
          v224 = *(a2 + 520);
          if (v160 >= ((*(a2 + 528) - v224) >> 3))
          {
            v443 = "Invalid TYPE table";
            v446 = 259;
          }

          a4 = v430;
          if (*(v224 + 8 * v160))
          {
            v211 = "Invalid TYPE table: Only named structs can be forward referenced";
LABEL_643:
            v443 = v211;
            v446 = 259;
          }

          *(v224 + 8 * v160) = IdentifiedStructType;
          if (v441)
          {
            llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::FindAndConstruct(a2 + 544, &v434);
            llvm::SmallVectorImpl<unsigned int>::operator=(v225 + 8, &v440);
          }

          v228 = 0;
          v434 = ++v160;
        }

LABEL_658:
        if (v455)
        {
          v229 = v454;
          v454 = 0;
          if (v229)
          {
            (*(*v229 + 1))(v229);
          }
        }

        if (v440 != &v441 + 8)
        {
          free(v440);
        }

LABEL_473:
        if (v457)
        {
          v163 = *v456;
          *v456 = 0;
          if (v163)
          {
            (*(*v163 + 1))(v163);
          }
        }
      }

      while ((v228 | 2) == 2);
      if (v458.__first_ != &v458.__end_cap_)
      {
        free(v458.__first_);
      }

      v230 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
      {
LABEL_772:
        free(v230);
      }

LABEL_773:
      if (*a1)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

LABEL_30:
      if (v436)
      {
        v19 = *v435;
        *v435 = 0;
        if (v19)
        {
          (*(*v19 + 1))(v19);
        }
      }

      if ((v18 | 2) != 2)
      {
        if (SHIBYTE(v432.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v432.__r_.__value_.__l.__data_);
        }

        if (v437 != v439)
        {
          free(v437);
        }

        break;
      }
    }
  }

  v390 = *MEMORY[0x277D85DE8];
}

llvm::DataLayout *anonymous namespace::BitcodeReader::parseModule(unsigned long long,BOOL,llvm::ParserCallbacks)::$_0::operator()(llvm::DataLayout *result, uint64_t a2)
{
  v2 = result;
  v38 = *MEMORY[0x277D85DE8];
  if (**a2 == 1)
  {
    *result = 0;
LABEL_35:
    v33 = *MEMORY[0x277D85DE8];
    return result;
  }

  v4 = *(a2 + 16);
  **a2 = 1;
  v5 = *(a2 + 8);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = *(v4 + 432);
  v12 = *(v9 + 208);
  v10 = v9 + 208;
  v11 = v12;
  v13 = *(v10 + 23);
  if (v13 >= 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(v10 + 8);
  if (v13 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v15;
  }

  llvm::UpgradeDataLayoutString(v7, v8, v14, v16, &__str);
  v17 = *(a2 + 8);
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  v18 = *&__str.__r_.__value_.__l.__data_;
  *(v17 + 16) = *(&__str.__r_.__value_.__l + 2);
  *v17 = v18;
  v19 = *(a2 + 24);
  if (*(v19 + 32) != 1)
  {
LABEL_25:
    v28 = *(a2 + 8);
    v29 = *(v28 + 23);
    if (v29 >= 0)
    {
      v30 = *(a2 + 8);
    }

    else
    {
      v30 = *v28;
    }

    if (v29 >= 0)
    {
      v31 = *(v28 + 23);
    }

    else
    {
      v31 = *(v28 + 8);
    }

    llvm::DataLayout::parse(v30, v31, &__str);
    if (v37)
    {
      v32 = __str.__r_.__value_.__r.__words[0];
      __str.__r_.__value_.__r.__words[0] = 0;
    }

    else
    {
      llvm::DataLayout::operator=(*(v4 + 432) + 256, &__str);
      v32 = 0;
    }

    *v2 = v32;
    result = llvm::Expected<llvm::DataLayout>::~Expected(&__str);
    goto LABEL_35;
  }

  v20 = *(v4 + 432);
  v21 = *(v20 + 208);
  v20 += 208;
  v22 = *(v20 + 23);
  v23 = *(v20 + 8);
  v24 = *(a2 + 8);
  v25 = v24[1];
  if (*(v24 + 23) < 0)
  {
    v26 = *v24;
  }

  v27 = *(v19 + 24);
  if (v27)
  {
    (*(*v27 + 48))(&__str);
    if (v36 == 1)
    {
      std::string::operator=(*(a2 + 8), &__str);
      if ((v36 & 1) != 0 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_25;
  }

  v34 = std::__throw_bad_function_call[abi:nn200100]();
}

void anonymous namespace::BitcodeReader::globalCleanup(_anonymous_namespace_::BitcodeReader *this, uint64_t a2)
{
  if (*this)
  {
    return;
  }

  if (*(a2 + 1368) != *(a2 + 1376) || *(a2 + 1392) != *(a2 + 1400))
  {
    v23[0] = "Malformed global initializer set";
    v24 = 259;
  }

  v5 = *(a2 + 432);
  v6 = v5 + 24;
  v7 = *(v5 + 32);
  if (v7 != v5 + 24)
  {
    while (1)
    {
      if (v7)
      {
        v10 = (v7 - 56);
      }

      else
      {
        v10 = 0;
      }

      llvm::MetadataLoader::MetadataLoaderImpl::upgradeDeclareExpressions(*(a2 + 776), v10);
      v22 = 0;
      if (!llvm::UpgradeIntrinsicFunction(v10, &v22, v11))
      {
        goto LABEL_21;
      }

      v12 = v22;
      v23[0] = 0;
      v13 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(a2 + 1536), *(a2 + 1552), v10, v23);
      v9 = v23[0];
      if ((v13 & 1) == 0)
      {
        break;
      }

LABEL_20:
      *(v9 + 1) = v12;
LABEL_21:
      llvm::UpgradeFunctionAttributes(v10, v8);
      v7 = *(v7 + 8);
      if (v7 == v6)
      {
        v5 = *(a2 + 432);
        goto LABEL_23;
      }
    }

    v14 = *(a2 + 1544);
    v8 = *(a2 + 1552);
    if (4 * v14 + 4 >= (3 * v8))
    {
      LODWORD(v8) = 2 * v8;
    }

    else if (v8 + ~v14 - *(a2 + 1548) > v8 >> 3)
    {
      goto LABEL_17;
    }

    llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::grow(a2 + 1536, v8);
    v23[0] = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(a2 + 1536), *(a2 + 1552), v10, v23);
    v9 = v23[0];
LABEL_17:
    ++*(a2 + 1544);
    if (*v9 != -4096)
    {
      --*(a2 + 1548);
    }

    *v9 = v10;
    *(v9 + 1) = 0;
    goto LABEL_20;
  }

LABEL_23:
  v15 = v5 + 8;
  v16 = *(v5 + 16);
  if (v16 != v5 + 8)
  {
    do
    {
      if (v16)
      {
        v17 = (v16 - 56);
      }

      else
      {
        v17 = 0;
      }

      if (llvm::UpgradeGlobalVariable(v17, v4))
      {
        operator new();
      }

      v16 = *(v16 + 8);
    }

    while (v16 != v15);
  }

  v18 = (a2 + 1368);
  v19 = *(a2 + 1368);
  v20 = a2 + 1392;
  v18[1] = 0;
  v18[2] = 0;
  *v18 = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v21 = *v20;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *v20 = 0;
  if (v21)
  {
    operator delete(v21);
  }

  *this = 0;
}

void anonymous namespace::BitcodeReader::resolveGlobalAndIndirectSymbolInits(_anonymous_namespace_::BitcodeReader *this, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 1368);
  v4 = *(a2 + 1376);
  *(a2 + 1368) = 0u;
  *(a2 + 1384) = 0;
  v5 = *(a2 + 1392);
  v6 = *(a2 + 1400);
  *(a2 + 1392) = 0u;
  v7 = *(a2 + 1416);
  *(a2 + 1408) = 0u;
  v56 = *(a2 + 1424);
  *(a2 + 1424) = 0u;
  while (v4 != v3)
  {
    v8 = *(v4 - 2);
    v4 -= 2;
    if (v8 >= ((*(a2 + 720) - *(a2 + 712)) >> 5))
    {
      v9 = *(a2 + 1376);
      v10 = *(a2 + 1384);
      if (v9 >= v10)
      {
        v12 = *(a2 + 1368);
        v13 = (v9 - v12) >> 4;
        v14 = v13 + 1;
        if ((v13 + 1) >> 60)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v15 = v10 - v12;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::GlobalVariable *,unsigned int>>>(v16);
        }

        v17 = (16 * v13);
        *v17 = *v4;
        v11 = 16 * v13 + 16;
        v18 = *(a2 + 1368);
        v19 = *(a2 + 1376) - v18;
        v20 = 16 * v13 - v19;
        memcpy(v17 - v19, v18, v19);
        v21 = *(a2 + 1368);
        *(a2 + 1368) = v20;
        *(a2 + 1376) = v11;
        *(a2 + 1384) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v9 = *v4;
        v11 = (v9 + 1);
      }

      *(a2 + 1376) = v11;
    }

    else
    {
      if (v59)
      {
        *this = v58;
        if (!v7)
        {
          goto LABEL_73;
        }

LABEL_72:
        operator delete(v7);
        goto LABEL_73;
      }

      llvm::GlobalVariable::setInitializer(*v4, v58);
    }
  }

  while (v6 != v5)
  {
    v22 = *(v6 - 2);
    v6 -= 2;
    if (v22 >= ((*(a2 + 720) - *(a2 + 712)) >> 5))
    {
      v30 = *(a2 + 1400);
      v31 = *(a2 + 1408);
      if (v30 >= v31)
      {
        v33 = *(a2 + 1392);
        v34 = (v30 - v33) >> 4;
        v35 = v34 + 1;
        if ((v34 + 1) >> 60)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v36 = v31 - v33;
        if (v36 >> 3 > v35)
        {
          v35 = v36 >> 3;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v35;
        }

        if (v37)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::GlobalVariable *,unsigned int>>>(v37);
        }

        v38 = (16 * v34);
        *v38 = *v6;
        v32 = 16 * v34 + 16;
        v39 = *(a2 + 1392);
        v40 = *(a2 + 1400) - v39;
        v41 = 16 * v34 - v40;
        memcpy(v38 - v40, v39, v40);
        v42 = *(a2 + 1392);
        *(a2 + 1392) = v41;
        *(a2 + 1400) = v32;
        *(a2 + 1408) = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v30 = *v6;
        v32 = (v30 + 1);
      }

      *(a2 + 1400) = v32;
    }

    else
    {
      FoldedCast = v58;
      if (v59)
      {
        *this = v58;
        if (!v7)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      v24 = *v6;
      v25 = *(*v6 + 16);
      if (*v6)
      {
        v26 = v25 == 1;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        if (*v58 != *v24)
        {
          v55 = "Alias and aliasee types don't match";
LABEL_80:
          v58 = v55;
          v60 = 259;
        }

        llvm::GlobalIFunc::setResolver(*v6, v58);
      }

      else
      {
        if (!v24 || v25 != 2)
        {
          v55 = "Expected an alias or an ifunc";
          goto LABEL_80;
        }

        v27 = llvm::PointerType::get(v24[3], 0);
        v28 = llvm::FunctionType::get(v27, 0, 0, 0);
        v29 = llvm::PointerType::get(v28, (*(*v24 + 2) >> 8));
        if (*FoldedCast != v29)
        {
          FoldedCast = getFoldedCast(0x31, FoldedCast, v29, 0);
        }

        llvm::GlobalIFunc::setResolver(v24, FoldedCast);
      }
    }
  }

  if (v7 == v56)
  {
LABEL_65:
    *this = 0;
    if (!v7)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v43 = v56 - 24;
  while (1)
  {
    v44 = *(v43 + 2);
    if (v44)
    {
      v45 = (v44 - 1);
      if (v45 < ((*(a2 + 720) - *(a2 + 712)) >> 5))
      {
        v46 = v58;
        if (v59)
        {
          goto LABEL_69;
        }

        v47 = *v43;
        llvm::Function::setHungoffOperand<0>(*v43, v58);
        *(v47 + 18) = *(v47 + 18) & 0xFFF7 | (8 * (v46 != 0));
        *(v43 + 2) = 0;
      }
    }

    v48 = *(v43 + 3);
    if (v48)
    {
      v49 = (v48 - 1);
      if (v49 < ((*(a2 + 720) - *(a2 + 712)) >> 5))
      {
        v46 = v58;
        if (v59)
        {
          goto LABEL_69;
        }

        v50 = *v43;
        llvm::Function::setHungoffOperand<1>(*v43, v58);
        v48 = 0;
        *(v50 + 18) = *(v50 + 18) & 0xFFFD | (2 * (v46 != 0));
        *(v43 + 3) = 0;
      }
    }

    v51 = *(v43 + 4);
    if (v51)
    {
      break;
    }

LABEL_61:
    if (*(v43 + 2) | v48)
    {
LABEL_62:
    }

    v26 = v43 == v7;
    v43 -= 24;
    if (v26)
    {
      goto LABEL_65;
    }
  }

  v52 = (v51 - 1);
  if (v52 >= ((*(a2 + 720) - *(a2 + 712)) >> 5))
  {
    goto LABEL_62;
  }

  v46 = v58;
  if ((v59 & 1) == 0)
  {
    v53 = *v43;
    llvm::Function::setHungoffOperand<2>(*v43, v58);
    *(v53 + 18) = *(v53 + 18) & 0xFFFB | (4 * (v46 != 0));
    *(v43 + 4) = 0;
    v48 = *(v43 + 3);
    goto LABEL_61;
  }

LABEL_69:
  *this = v46;
  if (v7)
  {
    goto LABEL_72;
  }

LABEL_73:
  if (v5)
  {
    operator delete(v5);
  }

  if (v3)
  {
    operator delete(v3);
  }

  v54 = *MEMORY[0x277D85DE8];
}

char *llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::grow(uint64_t a1, int a2)
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
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), v20, &v30);
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

void std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<llvm::BitstreamBlockInfo::BlockInfo>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t llvm::Expected<std::optional<llvm::BitstreamBlockInfo>>::~Expected(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else if (*(a1 + 24) == 1)
  {
    v4 = a1;
    std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__destroy_vector::operator()[abi:nn200100](&v4);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,llvm::AttributeList>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::AttributeList>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::AttributeList>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
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
      v4 = *(v2 + 32);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

_anonymous_namespace_::BitcodeReaderBase *anonymous namespace::BitcodeReader::parseAttrKind(_anonymous_namespace_::BitcodeReaderBase *result, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = a3;
  v4 = 75;
  switch(a3)
  {
    case 1:
      break;
    case 2:
      v4 = 3;
      break;
    case 3:
      v4 = 70;
      break;
    case 4:
      v4 = 12;
      break;
    case 5:
      v4 = 11;
      break;
    case 6:
      v4 = 14;
      break;
    case 7:
      v4 = 16;
      break;
    case 8:
      v4 = 17;
      break;
    case 9:
      v4 = 18;
      break;
    case 10:
      v4 = 19;
      break;
    case 11:
      v4 = 21;
      break;
    case 12:
      v4 = 23;
      break;
    case 13:
      v4 = 25;
      break;
    case 14:
      v4 = 26;
      break;
    case 15:
      v4 = 37;
      break;
    case 16:
      v4 = 30;
      break;
    case 17:
      v4 = 31;
      break;
    case 18:
      v4 = 36;
      break;
    case 19:
      v4 = 41;
      break;
    case 20:
      v4 = 44;
      break;
    case 21:
      v4 = 45;
      break;
    case 22:
      v4 = 46;
      break;
    case 23:
      v4 = 47;
      break;
    case 24:
      v4 = 48;
      break;
    case 25:
      v4 = 82;
      break;
    case 26:
      v4 = 59;
      break;
    case 27:
      v4 = 60;
      break;
    case 28:
      v4 = 61;
      break;
    case 29:
      v4 = 74;
      break;
    case 30:
      v4 = 50;
      break;
    case 31:
      v4 = 54;
      break;
    case 32:
      v4 = 53;
      break;
    case 33:
      v4 = 83;
      break;
    case 34:
      v4 = 68;
      break;
    case 35:
      v4 = 4;
      break;
    case 36:
      v4 = 5;
      break;
    case 37:
      v4 = 42;
      break;
    case 38:
      v4 = 72;
      break;
    case 39:
      v4 = 38;
      break;
    case 40:
      v4 = 13;
      break;
    case 41:
      v4 = 78;
      break;
    case 42:
      v4 = 79;
      break;
    case 43:
      v4 = 6;
      break;
    case 44:
      v4 = 49;
      break;
    case 46:
      v4 = 65;
      break;
    case 47:
      v4 = 64;
      break;
    case 48:
      v4 = 29;
      break;
    case 51:
      v4 = 77;
      break;
    case 52:
      v4 = 67;
      break;
    case 53:
      v4 = 57;
      break;
    case 54:
      v4 = 62;
      break;
    case 55:
      v4 = 51;
      break;
    case 56:
      v4 = 22;
      break;
    case 57:
      v4 = 40;
      break;
    case 58:
      v4 = 55;
      break;
    case 59:
      v4 = 58;
      break;
    case 60:
      v4 = 10;
      break;
    case 61:
      v4 = 66;
      break;
    case 62:
      v4 = 24;
      break;
    case 63:
      v4 = 34;
      break;
    case 64:
      v4 = 52;
      break;
    case 65:
      v4 = 73;
      break;
    case 66:
      v4 = 27;
      break;
    case 67:
      v4 = 39;
      break;
    case 68:
      v4 = 35;
      break;
    case 69:
      v4 = 69;
      break;
    case 70:
      v4 = 15;
      break;
    case 71:
      v4 = 20;
      break;
    case 72:
      v4 = 9;
      break;
    case 73:
      v4 = 28;
      break;
    case 74:
      v4 = 84;
      break;
    case 75:
      v4 = 63;
      break;
    case 76:
      v4 = 33;
      break;
    case 77:
      v4 = 71;
      break;
    case 78:
      v4 = 7;
      break;
    case 79:
      v4 = 32;
      break;
    case 80:
      v4 = 1;
      break;
    case 81:
      v4 = 2;
      break;
    case 82:
      v4 = 76;
      break;
    case 83:
      v4 = 43;
      break;
    case 84:
      v4 = 8;
      break;
    case 85:
      v4 = 56;
      break;
    case 86:
      v4 = 80;
      break;
    case 87:
      v4 = 81;
      break;
    default:
      *a4 = 0;
      v5[0] = "Unknown attribute kind (";
      v5[2] = &v9;
      v6 = 3075;
      v7[0] = v5;
      v7[2] = ")";
      v8 = 770;
  }

  *a4 = v4;
  *result = 0;
  return result;
}

unint64_t anonymous namespace::BitcodeReader::createIdentifiedStructType(uint64_t a1, void *a2, _BYTE *a3, unint64_t a4)
{
  v5 = llvm::StructType::create(a2, a3, a4);
  v7 = v5;
  std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](a1 + 1872, &v7);
  return v5;
}

void std::vector<anonymous namespace::BitcodeReader::FunctionOperandInfo>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v12 = 8 * ((v3 - *a1) >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = 24 * v8 + 24;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::GlobalVariable *,unsigned int>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t getDecodedLinkage(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return dword_2750C8100[a1 - 1];
  }
}

uint64_t inferDSOLocal(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if ((v2 & 0xFu) - 7 < 2)
  {
    goto LABEL_5;
  }

  if ((v2 & 0x30) != 0)
  {
    result = llvm::GlobalValue::hasExternalWeakLinkage(result);
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 32);
LABEL_5:
      *(v1 + 32) = v2 | 0x4000;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>,llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a2, *(a2 + 16), *a3, &v12);
  v7 = v12;
  v8 = *(a2 + 16);
  if (result)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v10 = *(a2 + 8);
  if (4 * v10 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_10;
  }

  if (v8 + ~v10 - *(a2 + 12) <= v8 >> 3)
  {
LABEL_10:
    llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::grow(a2, v8);
    v12 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a2, *(a2 + 16), *a3, &v12);
    v7 = v12;
  }

  ++*(a2 + 8);
  if (*v7 != -4096)
  {
    --*(a2 + 12);
  }

  *v7 = *a3;
  v8 = *(a2 + 16);
  v9 = 1;
LABEL_8:
  v11 = *a2 + 8 * v8;
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v9;
  return result;
}

uint64_t std::function<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()(unsigned int)>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x274FAADE4);
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t std::__function::__func<anonymous namespace::BitcodeReader::callValueTypeCallback(llvm::Value *,unsigned int)::$_0,std::allocator<anonymous namespace::BitcodeReader::callValueTypeCallback(llvm::Value *,unsigned int)::$_0>,llvm::Type * ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883EFC20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::BitcodeReader::callValueTypeCallback(llvm::Value *,unsigned int)::$_1,std::allocator<anonymous namespace::BitcodeReader::callValueTypeCallback(llvm::Value *,unsigned int)::$_1>,unsigned int ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883EFC68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<llvm::Type * ()(unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

char **llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[32 * v3 - 24];
    v5 = -32 * v3;
    do
    {
      v7 = v4;
      std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v7);
      v4 -= 4;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t std::__function::__func<anonymous namespace::BitcodeReader::parseBitcodeInto(llvm::Module *,BOOL,BOOL,llvm::ParserCallbacks)::$_0,std::allocator<anonymous namespace::BitcodeReader::parseBitcodeInto(llvm::Module *,BOOL,BOOL,llvm::ParserCallbacks)::$_0>,llvm::Type * ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883EFCB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::BitcodeReader::parseBitcodeInto(llvm::Module *,BOOL,BOOL,llvm::ParserCallbacks)::$_1,std::allocator<anonymous namespace::BitcodeReader::parseBitcodeInto(llvm::Module *,BOOL,BOOL,llvm::ParserCallbacks)::$_1>,unsigned int ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883EFCF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()(unsigned int)>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<llvm::Type * ()(unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()(unsigned int)>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::BitcodeModule>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t _GLOBAL__sub_I_BitcodeReader_cpp()
{
  v0 = llvm::cl::Option::Option(&_MergedGlobals_37, 0, 0);
  byte_2815AA1E0 = 0;
  qword_2815AA1E8 = &unk_2883EAB68;
  *&word_2815AA1F0 = 0;
  _MergedGlobals_37 = &unk_2883EAB00;
  qword_2815AA1F8 = &unk_2883EA848;
  qword_2815AA200 = &unk_2883EAB88;
  qword_2815AA218 = &qword_2815AA200;
  llvm::cl::Option::setArgStr(v0, "print-summary-global-ids", 0x18uLL);
  byte_2815AA1E0 = 0;
  word_2815AA1F0 = 256;
  word_2815AA16A = word_2815AA16A & 0xFF9F | 0x20;
  qword_2815AA180 = "Print the global id for each value when reading the module summary";
  unk_2815AA188 = 66;
  llvm::cl::Option::addArgument(&_MergedGlobals_37);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_37, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&qword_2815AA220, 0, 0);
  byte_2815AA2A0 = 0;
  qword_2815AA2A8 = &unk_2883EAB68;
  unk_2815AA2B0 = 0;
  qword_2815AA220 = &unk_2883EAB00;
  qword_2815AA2B8 = &unk_2883EA848;
  qword_2815AA2C0 = &unk_2883EAB88;
  qword_2815AA2D8 = &qword_2815AA2C0;
  llvm::cl::Option::setArgStr(v1, "expand-constant-exprs", 0x15uLL);
  word_2815AA22A = word_2815AA22A & 0xFF9F | 0x20;
  qword_2815AA240 = "Expand constant expressions to instructions for testing purposes";
  unk_2815AA248 = 64;
  llvm::cl::Option::addArgument(&qword_2815AA220);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815AA220, &dword_274E5C000);
}

void llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadModuleMetadataBlock(llvm::MetadataLoader::MetadataLoaderImpl *this, uint64_t a2)
{
  v57[64] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 200);
  v7 = (a2 + 328);
  v8 = *(v6 + 32);
  v9 = *(v6 + 16);
  *(a2 + 328) = *v6;
  *(a2 + 344) = v9;
  *(a2 + 360) = v8;
  *(a2 + 364) = *(v6 + 36);
  if (a2 + 328 != v6)
  {
    std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__assign_with_size[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev>*,std::shared_ptr<llvm::BitCodeAbbrev>*>((a2 + 368), *(v6 + 40), *(v6 + 48), (*(v6 + 48) - *(v6 + 40)) >> 4);
  }

  llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::operator=(a2 + 392, v6 + 64);
  *(a2 + 664) = *(v6 + 336);
  v55 = v57;
  v56 = 0x4000000000;
  *(a2 + 720) = 0;
  v43 = *this;
  v44 = (a2 + 696);
  for (i = *(this + 8); ; i = v42)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          do
          {
            while (1)
            {
              v11 = *(a2 + 344);
              v12 = *(a2 + 360);
              llvm::BitstreamCursor::advanceSkippingSubblocks(v7, 1, &v51);
              if (v52)
              {
                v13 = v51;
                if (v51)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v2 = v51;
                v3 = HIDWORD(v51);
              }

              if (v2 > 2)
              {
                break;
              }

              switch(v2)
              {
                case 0:
                  goto LABEL_73;
                case 1:
                  *this = v43;
                  *(this + 8) = i & 0xFE;
                  *this = 1;
                  goto LABEL_81;
                case 2:
LABEL_73:
                  v51 = "Malformed block";
                  v54 = 259;
                  error(&v48);
              }
            }
          }

          while (v2 != 3);
          v14 = *(a2 + 344);
          v15 = *(a2 + 360);
          llvm::BitstreamCursor::skipRecord(v7, v3, &v51);
          if ((v52 & 1) == 0)
          {
            break;
          }

          v13 = v51;
          v2 = 3;
          if (v51)
          {
            goto LABEL_79;
          }
        }

        v16 = 8 * v14 - v15;
        v2 = 3;
        if (v51 > 34)
        {
          break;
        }

        if (v51 > 4)
        {
          if ((v51 - 12) < 0x17 || (v51 - 5) < 5)
          {
LABEL_72:
            *this = v43;
            *(a2 + 680) = *(a2 + 672);
            *(a2 + 704) = *(a2 + 696);
            *(this + 8) = i & 0xFE;
            *this = 0;
            goto LABEL_81;
          }
        }

        else if (v51 == 4)
        {
          llvm::SimpleBitstreamCursor::JumpToBit(v7, v16, &v51);
          v13 = v51;
          if (v51)
          {
            goto LABEL_79;
          }

          LODWORD(v56) = 0;
          llvm::BitstreamCursor::readRecord(v7, v3, &v55, 0, &v51);
          if (v52)
          {
            goto LABEL_77;
          }

          v51 = &v53;
          v52 = xmmword_2750C12B0;
          llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v51, v55, v55 + 8 * v56);
          llvm::BitstreamCursor::ReadCode(v7, &MDNodeFwdRefOrNull);
          if (v50 & 1) != 0 || (LODWORD(v56) = 0, llvm::BitstreamCursor::readRecord(v7, MDNodeFwdRefOrNull, &v55, 0, &MDNodeFwdRefOrNull), (v50))
          {
            v36 = MDNodeFwdRefOrNull;
            *(this + 8) = i | 1;
            *this = v36;
            if (v51 != &v53)
            {
              free(v51);
            }

            goto LABEL_81;
          }

          v17 = v56;
          inserted = llvm::Module::getOrInsertNamedMetadata(*(a2 + 216), v51, v52);
          if (v17)
          {
            v19 = inserted;
            v20 = 0;
            v21 = 8 * v17;
            do
            {
              llvm::SmallVectorImpl<llvm::TrackingMDRef>::emplace_back<llvm::MDNode *&>(*(v19 + 48), &MDNodeFwdRefOrNull);
              v20 += 8;
            }

            while (v21 != v20);
          }

          if (v51 != &v53)
          {
            free(v51);
          }

          v2 = 3;
        }

        else if ((v51 - 1) < 3)
        {
          goto LABEL_72;
        }
      }

      if (v51 > 0x2F)
      {
        goto LABEL_31;
      }

      if (v51 == 38)
      {
        break;
      }

      if (((1 << v51) & 0xB32000000000) != 0)
      {
        goto LABEL_72;
      }

      if (v51 == 39)
      {
        v51 = "Corrupted Metadata block";
        v54 = 259;
        error(&v45);
      }

LABEL_31:
      if (v51 == 36)
      {
        if (!*(a2 + 720))
        {
          *(a2 + 720) = 8 * v11 - v12;
        }
      }

      else if (v51 == 35)
      {
        llvm::SimpleBitstreamCursor::JumpToBit(v7, v16, &v51);
        v13 = v51;
        if (v51)
        {
          goto LABEL_79;
        }

        v51 = 0;
        *&v52 = 0;
        LODWORD(v56) = 0;
        llvm::BitstreamCursor::readRecord(v7, v3, &v55, &v51, &MDNodeFwdRefOrNull);
        if (v50)
        {
          v13 = MDNodeFwdRefOrNull;
          goto LABEL_79;
        }

        std::vector<llvm::StringRef>::reserve((a2 + 672), *v55);
        MDNodeFwdRefOrNull = a2;
        llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataStrings(&v47, v55, v56, v51, v52, llvm::function_ref<void ()(llvm::StringRef)>::callback_fn<llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadModuleMetadataBlock(void)::$_0>, &MDNodeFwdRefOrNull);
        v13 = v47;
        if (v47)
        {
          goto LABEL_79;
        }
      }
    }

    llvm::SimpleBitstreamCursor::JumpToBit(v7, v16, &v51);
    v13 = v51;
    if (v51)
    {
      goto LABEL_79;
    }

    LODWORD(v56) = 0;
    llvm::BitstreamCursor::readRecord(v7, v3, &v55, 0, &v51);
    if (v52)
    {
LABEL_77:
      v13 = v51;
LABEL_79:
      v37 = i | 1;
      goto LABEL_80;
    }

    if (v56 != 2)
    {
      v51 = "Invalid record";
      v54 = 259;
      error(&v46);
    }

    v42 = i;
    v22 = 8 * *(a2 + 344) - *(a2 + 360);
    llvm::SimpleBitstreamCursor::JumpToBit(v7, *v55 + (*(v55 + 1) << 32) + v22, &v51);
    v13 = v51;
    if (v51)
    {
      goto LABEL_86;
    }

    llvm::BitstreamCursor::advanceSkippingSubblocks(v7, 1, &v51);
    if (v52)
    {
      v13 = v51;
LABEL_86:
      v37 = v42 | 1;
LABEL_80:
      *(this + 8) = v37;
      *this = v13;
      goto LABEL_81;
    }

    v2 = v51;
    v3 = HIDWORD(v51);
    LODWORD(v56) = 0;
    llvm::BitstreamCursor::readRecord(v7, SHIDWORD(v51), &v55, 0, &MDNodeFwdRefOrNull);
    if (v50)
    {
      break;
    }

    v41 = this;
    std::vector<llvm::orc::ExecutorAddr>::reserve(v44, v56);
    if (v56)
    {
      v23 = v55;
      v24 = *(a2 + 704);
      v25 = 8 * v56;
      do
      {
        v22 += *v23;
        v26 = *(a2 + 712);
        if (v24 >= v26)
        {
          v27 = *v44;
          v28 = v24 - *v44;
          v29 = (v28 >> 3) + 1;
          if (v29 >> 61)
          {
            *(v41 + 8) = v42;
            *v41 = v43;
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v30 = v26 - v27;
          if (v30 >> 2 > v29)
          {
            v29 = v30 >> 2;
          }

          v31 = v30 >= 0x7FFFFFFFFFFFFFF8;
          v32 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v31)
          {
            v32 = v29;
          }

          if (v32)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorAddr>>(v44, v32);
          }

          v33 = (8 * (v28 >> 3));
          *v33 = v22;
          v24 = v33 + 1;
          memcpy(0, v27, v28);
          v34 = *(a2 + 696);
          *(a2 + 696) = 0;
          *(a2 + 704) = v24;
          *(a2 + 712) = 0;
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          *v24++ = v22;
        }

        *(a2 + 704) = v24;
        ++v23;
        v25 -= 8;
      }

      while (v25);
    }

    if (v52)
    {
      v35 = v51;
      v51 = 0;
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }
    }

    this = v41;
  }

  v39 = MDNodeFwdRefOrNull;
  *(this + 8) = v42 | 1;
  *this = v39;
  if (v52)
  {
    v40 = v51;
    v51 = 0;
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }
  }

LABEL_81:
  if (v55 != v57)
  {
    free(v55);
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataStrings(llvm::Twine *a1, int *a2, uint64_t a3, const char *a4, unint64_t a5, uint64_t (*a6)(uint64_t, const char *, unint64_t), uint64_t a7)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3 != 2)
  {
    v11 = "Invalid record: metadata strings layout";
    goto LABEL_7;
  }

  v8 = *a2;
  if (!*a2)
  {
    v11 = "Invalid record: metadata strings with no strings";
    goto LABEL_7;
  }

  v9 = a2[2];
  v10 = a5 - v9;
  if (a5 < v9)
  {
    v11 = "Invalid record: metadata strings corrupt offset";
LABEL_7:
    v21 = v11;
    LOWORD(v25) = 259;
    goto LABEL_8;
  }

  v21 = a4;
  v22 = v9;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v15 = &a4[v9];
  v16 = *a1;
  do
  {
    if (!v25 && v22 <= v23)
    {
      *a1 = v16;
      v20 = "Invalid record: metadata strings bad length";
LABEL_23:
      v26 = v20;
      v28 = 259;
LABEL_8:
      error(a1);
    }

    result = llvm::SimpleBitstreamCursor::ReadVBR(&v21, 6u, &v26);
    if (v27)
    {
      if (v26)
      {
        *a1 = v26;
        goto LABEL_9;
      }

      v18 = 0;
    }

    else
    {
      v18 = v26;
    }

    v19 = v10 >= v18;
    v10 -= v18;
    if (!v19)
    {
      *a1 = 0;
      v20 = "Invalid record: metadata strings truncated chars";
      goto LABEL_23;
    }

    result = a6(a7, v15, v18);
    v16 = 0;
    v15 += v18;
    --v8;
  }

  while (v8);
  *a1 = 0;
LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::MDNode *anonymous namespace::BitcodeReaderMetadataList::getMDNodeFwdRefOrNull(_anonymous_namespace_::BitcodeReaderMetadataList *this, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    if (llvm::MDNode::classof(result))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void llvm::MetadataLoader::MetadataLoaderImpl::loadGlobalDeclAttachments(llvm::MetadataLoader::MetadataLoaderImpl *this, uint64_t a2)
{
  v37[33] = *MEMORY[0x277D85DE8];
  if (*(a2 + 720))
  {
    v5 = *(a2 + 200);
    v7 = *v5;
    v6 = v5[1];
    v34 = *(v5 + 4);
    v32 = v7;
    v33 = v6;
    HIDWORD(v34) = *(v5 + 9);
    memset(v35, 0, sizeof(v35));
    std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__init_with_size[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev>*,std::shared_ptr<llvm::BitCodeAbbrev>*>(v35, *(v5 + 5), *(v5 + 6), (*(v5 + 6) - *(v5 + 5)) >> 4);
    v36[0] = v37;
    v36[1] = 0x800000000;
    if (*(v5 + 18))
    {
      llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::operator=(v36, (v5 + 4));
    }

    v37[32] = *(v5 + 42);
    v29 = v31;
    v30 = 0x4000000000;
    llvm::SimpleBitstreamCursor::JumpToBit(&v32, *(a2 + 720), &v26);
    v8 = v26;
    if (v26)
    {
LABEL_5:
      *(this + 8) |= 1u;
      *this = v8;
    }

    else
    {
      while (1)
      {
        llvm::BitstreamCursor::advanceSkippingSubblocks(&v32, 1, &v26);
        if (v27)
        {
          v8 = v26;
          if (v26)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v2 = v26;
          LODWORD(v5) = HIDWORD(v26);
        }

        switch(v2)
        {
          case 2:
LABEL_33:
            v26 = "Malformed block";
            v28 = 259;
            error(&v23);
          case 1:
            *(this + 8) &= ~1u;
            *this = 1;
            goto LABEL_6;
          case 0:
            goto LABEL_33;
        }

        v10 = v33;
        v11 = v34;
        llvm::BitstreamCursor::skipRecord(&v32, v5, &v24);
        if (v25)
        {
          v12 = v24;
          v24 = 0;
          goto LABEL_38;
        }

        if (v24 != 36)
        {
          *(this + 8) &= ~1u;
          *this = 1;
          goto LABEL_39;
        }

        llvm::SimpleBitstreamCursor::JumpToBit(&v32, 8 * v10 - v11, &v26);
        v12 = v26;
        if (v26)
        {
          goto LABEL_38;
        }

        LODWORD(v30) = 0;
        llvm::BitstreamCursor::readRecord(&v32, v5, &v29, 0, &v26);
        if (v27)
        {
          break;
        }

        if ((v30 & 1) == 0)
        {
          v26 = "Invalid record";
          v28 = 259;
          error(&v22);
        }

        v13 = **(a2 + 192);
        if (((*(*(a2 + 192) + 8) - v13) >> 5) <= *v29)
        {
          v26 = "Invalid record";
          v28 = 259;
          error(&v21);
        }

        v14 = *(v13 + 32 * *v29 + 16);
        v15 = *(v14 + 16);
        if (v15 <= 3 && v15 != 1)
        {
          v17 = v33;
          v18 = v34;
          llvm::MetadataLoader::MetadataLoaderImpl::parseGlobalObjectAttachment(&v26, a2, v14, v29 + 8, v30 - 1);
          v12 = v26;
          if (v26)
          {
            goto LABEL_38;
          }

          llvm::SimpleBitstreamCursor::JumpToBit(&v32, 8 * v17 - v18, &v26);
          v12 = v26;
          if (v26)
          {
            goto LABEL_38;
          }
        }

        if (v25)
        {
          v19 = v24;
          v24 = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }
        }
      }

      v12 = v26;
LABEL_38:
      *(this + 8) |= 1u;
      *this = v12;
LABEL_39:
      if (v25)
      {
        v20 = v24;
        v24 = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }
    }

LABEL_6:
    if (v29 != v31)
    {
      free(v29);
    }

    llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(v36);
    v29 = v35;
    std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v29);
  }

  else
  {
    *(this + 8) &= ~1u;
    *this = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::MetadataLoader::MetadataLoaderImpl::parseGlobalObjectAttachment(uint64_t result, uint64_t a2, uint64_t ***a3, uint64_t a4, int a5)
{
  v6 = result;
  if (a5)
  {
    v10 = 0;
    while (1)
    {
      v17 = *(a4 + 8 * v10);
      v15 = 0;
      if (!llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>((a2 + 1016), &v17, &v15))
      {
        break;
      }

      v11 = v15;
      if (v15 == (*(a2 + 1016) + 8 * *(a2 + 1032)))
      {
        break;
      }

      MetadataFwdRefOrLoad = llvm::MetadataLoader::MetadataLoaderImpl::getMetadataFwdRefOrLoad(a2, *(a4 + 8 * (v10 + 1)));
      if (!MetadataFwdRefOrLoad || (v13 = MetadataFwdRefOrLoad, (llvm::MDNode::classof(MetadataFwdRefOrLoad) & 1) == 0))
      {
        v14 = "Invalid metadata attachment: expect fwd ref to MDNode";
        goto LABEL_11;
      }

      result = llvm::Value::addMetadata(a3, *(v11 + 1), v13);
      v10 += 2;
      if (a5 == v10)
      {
        goto LABEL_8;
      }
    }

    v14 = "Invalid ID";
LABEL_11:
    v15 = v14;
    v16 = 259;
    error(v6);
  }

LABEL_8:
  *v6 = 0;
  return result;
}

uint64_t llvm::MetadataLoader::MetadataLoaderImpl::callMDTypeCallback(uint64_t result, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(result + 320) != 1)
  {
    goto LABEL_4;
  }

  v5 = result;
  std::__function::__value_func<llvm::Type * ()>::__value_func[abi:nn200100](v13, result + 224);
  std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::__value_func[abi:nn200100](v12, v5 + 256);
  v6 = *(v5 + 312);
  v11 = a2;
  v10 = a3;
  if (v6)
  {
    (*(*v6 + 48))(v6, &v11, &v10, v13, v12);
    std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](v12);
    result = std::__function::__value_func<llvm::Type * ()>::~__value_func[abi:nn200100](v13);
LABEL_4:
    v7 = *MEMORY[0x277D85DE8];
    return result;
  }

  v8 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::MetadataLoader::MetadataLoaderImpl::parseMetadata(v8, v9);
}

void llvm::MetadataLoader::MetadataLoaderImpl::parseMetadata(llvm::MetadataLoader::MetadataLoaderImpl *this@<X0>, int a2@<W1>, const llvm::Twine *a3@<X8>)
{
  v3 = a2;
  v33 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0 && *(this + 6) >= 2u)
  {
    v30 = "Invalid metadata: fwd refs into function blocks";
    v32[8] = 259;
    error(a3);
  }

  v6 = *(this + 25);
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  llvm::BitstreamCursor::EnterSubBlock(v6, 0, 15, a3);
  if (!*a3)
  {
    v30 = v32;
    v31 = 0x4000000000;
    memset(v24, 0, sizeof(v24));
    if (!v3 || *(this + 1044) != 1 || *(this + 2) || (byte_2815AA420 & 1) != 0)
    {
LABEL_9:
      v22 = *(this + 2);
      while (1)
      {
        llvm::BitstreamCursor::advanceSkippingSubblocks(*(this + 25), 0, &v25);
        if (v26)
        {
          v9 = v25;
          *a3 = v25;
          if (v9)
          {
            goto LABEL_26;
          }
        }

        else
        {
          LODWORD(v8) = v25;
          v3 = HIDWORD(v25);
          *a3 = 0;
        }

        switch(v8)
        {
          case 2:
LABEL_23:
            v25 = "Malformed block";
            v27 = 259;
            error(a3);
          case 1:
            llvm::MetadataLoader::MetadataLoaderImpl::resolveForwardRefsAndPlaceholders(this, v24);
            llvm::MetadataLoader::MetadataLoaderImpl::upgradeCUSubprograms(this, v12, v13, v14);
            llvm::MetadataLoader::MetadataLoaderImpl::upgradeCUVariables(this);
            *a3 = 0;
            goto LABEL_26;
          case 0:
            goto LABEL_23;
        }

        LODWORD(v31) = 0;
        v25 = 0;
        v26 = 0;
        llvm::BitstreamCursor::readRecord(*(this + 25), v3, &v30, &v25, &v28);
        if (v29)
        {
          break;
        }

        llvm::MetadataLoader::MetadataLoaderImpl::parseOneMetadata(a3, this, &v30, v28, v24, v25, v26, &v22);
        v10 = *a3;
        if (v29)
        {
          v11 = v28;
          v28 = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }
        }

        if (v10)
        {
          goto LABEL_26;
        }
      }

      *a3 = v28;
      goto LABEL_26;
    }

    llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadModuleMetadataBlock(&v25, this);
    if (v26)
    {
      goto LABEL_30;
    }

    if (v25 != 1)
    {
      goto LABEL_9;
    }

    llvm::SmallVectorImpl<llvm::TrackingMDRef>::resizeImpl<false>(this, ((*(this + 88) - *(this + 87)) >> 3) + ((*(this + 85) - *(this + 84)) >> 4));
    llvm::MetadataLoader::MetadataLoaderImpl::loadGlobalDeclAttachments(&v28, this);
    llvm::Expected<BOOL>::moveAssign<BOOL>(&v25, &v28);
    if (v29)
    {
      v18 = v28;
      v28 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    if (v26)
    {
LABEL_30:
      v16 = v25;
      v25 = 0;
      *a3 = v16;
    }

    else
    {
      llvm::MetadataLoader::MetadataLoaderImpl::resolveForwardRefsAndPlaceholders(this, v24);
      llvm::MetadataLoader::MetadataLoaderImpl::upgradeCUSubprograms(this, v19, v20, v21);
      llvm::MetadataLoader::MetadataLoaderImpl::upgradeCUVariables(this);
      llvm::BitstreamCursor::ReadBlockEnd(*(this + 25));
      llvm::SimpleBitstreamCursor::JumpToBit(this + 328, 8 * v7 - v8, a3);
      if (!*a3)
      {
        llvm::BitstreamCursor::SkipBlock(*(this + 25), &v28);
        if (v28)
        {
          v23 = v28;
          v28 = 0;
          llvm::consumeError(&v23);
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          *a3 = 0;
          if (v28)
          {
            (*(*v28 + 8))(v28);
          }
        }

        else
        {
          *a3 = 0;
        }
      }
    }

    if (v26)
    {
      v17 = v25;
      v25 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

LABEL_26:
    std::deque<llvm::DistinctMDOperandPlaceholder>::~deque[abi:nn200100](v24);
    if (v30 != v32)
    {
      free(v30);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::MetadataLoader::MetadataLoaderImpl::resolveForwardRefsAndPlaceholders(unint64_t a1, uint64_t a2)
{
  v131 = 0;
  v132 = 0;
  v133 = 0;
  while (1)
  {
    v4 = *(a2 + 8);
    if (*(a2 + 16) != v4)
    {
      v5 = *(a2 + 32);
      v6 = (v4 + 8 * (v5 >> 8));
      v7 = *v6 + 16 * v5;
      v8 = *(v4 + (((*(a2 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a2 + 40) + v5);
      while (v7 != v8)
      {
        v9 = *(v7 + 4);
        v134 = v9;
        if (*(a1 + 8) <= v9 || (v10 = *(*a1 + 8 * v9)) == 0 || llvm::MDNode::classof(*(*a1 + 8 * v9)) && (*(v10 + 1) & 0x7F) == 2)
        {
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v131, &v134, v135);
        }

        v7 += 16;
        if (v7 - *v6 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }
    }

    if (!v132)
    {
      break;
    }

    if (v133)
    {
      v12 = 4 * v133;
      v13 = v131;
      while (*v13 >= 0xFFFFFFFE)
      {
        ++v13;
        v12 -= 4;
        if (!v12)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v13 = v131;
    }

    v15 = &v131[v133];
LABEL_24:
    if (v13 != v15)
    {
      v16 = *v13++;
      llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadOneMetadata(a1, v16, a2);
      while (v13 != v15)
      {
        if (*v13 < 0xFFFFFFFE)
        {
          goto LABEL_24;
        }

        ++v13;
      }
    }

LABEL_19:
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::clear(&v131);
    if (*(a1 + 24) >= 2u)
    {
      do
      {
        v14 = llvm::detail::DenseSetImpl<unsigned int,llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,llvm::DenseMapInfo<unsigned int,void>>::begin((a1 + 24));
        llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadOneMetadata(a1, *v14, a2);
      }

      while (*(a1 + 24) > 1u);
    }
  }

  if (*(a1 + 24) > 1u)
  {
    goto LABEL_19;
  }

  v17 = *(a1 + 120);
  if (v17 > 1)
  {
    if (v17)
    {
      v21 = (a1 + 128);
      v23 = (a1 + 144);
    }

    else
    {
      v21 = *(a1 + 128);
      v22 = *(a1 + 136);
      v23 = &v21[2 * v22];
      if (!v22)
      {
        v24 = 0;
        v19 = *(a1 + 128);
LABEL_45:
        v25 = &v21[2 * v24];
        goto LABEL_46;
      }
    }

    v19 = v21;
    while ((*v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v19 += 2;
      if (v19 == v23)
      {
        v19 = v23;
        break;
      }
    }

    if (v17)
    {
      goto LABEL_41;
    }

LABEL_44:
    v21 = *(a1 + 128);
    v24 = *(a1 + 136);
    goto LABEL_45;
  }

  if (v17)
  {
    v18 = a1 + 128;
    v19 = (a1 + 144);
    v20 = 1;
  }

  else
  {
    v18 = *(a1 + 128);
    v20 = *(a1 + 136);
    v19 = (v18 + 16 * v20);
  }

  v23 = (v18 + 16 * v20);
  v26 = *(a1 + 120);
  if (!v17)
  {
    goto LABEL_44;
  }

LABEL_41:
  v25 = (a1 + 144);
LABEL_46:
  if (v19 != v25)
  {
    do
    {
      v135[0] = 0;
      if ((llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(a1 + 96, *v19, v135) & 1) == 0)
      {
        v27 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::InsertIntoBucketImpl<llvm::MDString *>((a1 + 96), v19, v135[0]);
        *v27 = *v19;
        v27[1] = v19[1];
      }

      do
      {
        v19 += 2;
      }

      while (v19 != v23 && (*v19 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v19 != v25);
    v17 = *(a1 + 120);
  }

  if (v17 <= 1 && !*(a1 + 124))
  {
    goto LABEL_82;
  }

  if (v17)
  {
    v38 = a1 + 128;
    v39 = a1 + 144;
    goto LABEL_74;
  }

  v28 = *(a1 + 136);
  if (v28 <= 2 * v17 || v28 < 0x41)
  {
    if (!v28)
    {
      v45 = 0;
LABEL_81:
      *(a1 + 120) = v45;
      *(a1 + 124) = 0;
      goto LABEL_82;
    }

    v38 = *(a1 + 128);
    v39 = v38 + 16 * v28;
LABEL_74:
    v40 = 0;
    v41 = (v39 - v38 - 16) >> 4;
    v42 = vdupq_n_s64(v41);
    v43 = (v38 + 16);
    do
    {
      v44 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(vdupq_n_s64(v40), xmmword_2750C1210)));
      if (v44.i8[0])
      {
        *(v43 - 2) = -4096;
      }

      if (v44.i8[4])
      {
        *v43 = -4096;
      }

      v40 += 2;
      v43 += 4;
    }

    while (((v41 + 2) & 0x1FFFFFFFFFFFFFFELL) != v40);
    v45 = *(a1 + 120) & 1;
    goto LABEL_81;
  }

  v29 = 1 << (33 - __clz((v17 >> 1) - 1));
  if (v17 < 0x22)
  {
    v29 = 64;
  }

  if (v17 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30 == v28)
  {
    v31 = 0;
    *(a1 + 120) = 0;
    v32 = v28 + 0xFFFFFFFFFFFFFFFLL;
    v33 = v32 & 0xFFFFFFFFFFFFFFFLL;
    v34 = (v32 & 0xFFFFFFFFFFFFFFFLL) - (v32 & 1) + 2;
    v35 = vdupq_n_s64(v33);
    v36 = (*(a1 + 128) + 16);
    do
    {
      v37 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v31), xmmword_2750C1210)));
      if (v37.i8[0])
      {
        *(v36 - 2) = -4096;
      }

      if (v37.i8[4])
      {
        *v36 = -4096;
      }

      v31 += 2;
      v36 += 4;
    }

    while (v34 != v31);
    goto LABEL_82;
  }

  v88 = (a1 + 128);
  MEMORY[0x277C69E30](*(a1 + 128), 8);
  if (v30 <= 1)
  {
    *(a1 + 120) = 1;
    goto LABEL_191;
  }

  *(a1 + 120) &= ~1u;
  v89 = operator new(16 * v30, 8uLL);
  *(a1 + 128) = v89;
  *(a1 + 136) = v30;
  v90 = *(a1 + 120);
  *(a1 + 120) = v90 & 1;
  if (v90)
  {
LABEL_191:
    v91 = (a1 + 144);
    goto LABEL_192;
  }

  v91 = &v89[16 * v30];
  v88 = v89;
LABEL_192:
  v105 = 0;
  v106 = (v91 - v88 - 16) >> 4;
  v107 = (v106 + 2) & 0x1FFFFFFFFFFFFFFELL;
  v108 = vdupq_n_s64(v106);
  v109 = v88 + 16;
  do
  {
    v110 = vmovn_s64(vcgeq_u64(v108, vorrq_s8(vdupq_n_s64(v105), xmmword_2750C1210)));
    if (v110.i8[0])
    {
      *(v109 - 2) = -4096;
    }

    if (v110.i8[4])
    {
      *v109 = -4096;
    }

    v105 += 2;
    v109 += 4;
  }

  while (v107 != v105);
LABEL_82:
  v46 = *(a1 + 144);
  v47 = *(a1 + 152);
  if (v47)
  {
    v48 = 16 * v47;
    v49 = v46 + 1;
    do
    {
      v50 = *v49;
      v52 = *(v50 + 8);
      if ((v52 & 4) != 0)
      {
        llvm::ReplaceableMetadataImpl::replaceAllUsesWith(v52 & 0xFFFFFFFFFFFFFFF8, v51);
      }

      v49 += 2;
      v48 -= 16;
    }

    while (v48);
    v46 = *(a1 + 144);
    v53 = *(a1 + 152);
  }

  else
  {
    v53 = 0;
  }

  llvm::SmallVectorTemplateBase<std::pair<llvm::TrackingMDRef,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>,false>::destroy_range(v46, &v46[2 * v53]);
  *(a1 + 152) = 0;
  v55 = *(a1 + 72);
  if (v55 > 1)
  {
    if (v55)
    {
      v59 = (a1 + 80);
      v61 = (a1 + 96);
    }

    else
    {
      v59 = *(a1 + 80);
      v60 = *(a1 + 88);
      v61 = &v59[2 * v60];
      if (!v60)
      {
        v62 = 0;
        v57 = *(a1 + 80);
LABEL_105:
        v63 = &v59[2 * v62];
        goto LABEL_106;
      }
    }

    v57 = v59;
    while ((*v57 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v57 += 2;
      if (v57 == v61)
      {
        v57 = v61;
        break;
      }
    }

    if (v55)
    {
      goto LABEL_101;
    }

LABEL_104:
    v59 = *(a1 + 80);
    v62 = *(a1 + 88);
    goto LABEL_105;
  }

  if (v55)
  {
    v56 = a1 + 80;
    v57 = (a1 + 96);
    v58 = 1;
  }

  else
  {
    v56 = *(a1 + 80);
    v58 = *(a1 + 88);
    v57 = (v56 + 16 * v58);
  }

  v61 = (v56 + 16 * v58);
  v64 = *(a1 + 72);
  if (!v55)
  {
    goto LABEL_104;
  }

LABEL_101:
  v63 = (a1 + 96);
LABEL_106:
  if (v57 != v63)
  {
    while (2)
    {
      v65 = *v57;
      v135[0] = 0;
      if ((llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(a1 + 96, v65, v135) & 1) != 0 && (v54 = v135[0][1]) != 0)
      {
        v66 = *(v57[1] + 8);
        if ((v66 & 4) != 0)
        {
LABEL_113:
          llvm::ReplaceableMetadataImpl::replaceAllUsesWith(v66 & 0xFFFFFFFFFFFFFFF8, v54);
        }
      }

      else
      {
        v66 = *(v57[1] + 8);
        if ((v66 & 4) != 0)
        {
          v54 = *v57;
          goto LABEL_113;
        }
      }

      do
      {
        v57 += 2;
      }

      while (v57 != v61 && (*v57 | 0x1000) == 0xFFFFFFFFFFFFF000);
      if (v57 == v63)
      {
        v55 = *(a1 + 72);
        break;
      }

      continue;
    }
  }

  if (v55 <= 1 && !*(a1 + 76))
  {
    goto LABEL_136;
  }

  if (v55)
  {
    v69 = (a1 + 80);
    v70 = (a1 + 96);
    goto LABEL_128;
  }

  v67 = *(a1 + 88);
  if (v67 > 2 * v55 && v67 >= 0x41)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>,llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>::destroyAll(a1 + 72, v54);
    if (v55 >= 2)
    {
      v92 = 1 << (33 - __clz((v55 >> 1) - 1));
      if (v55 >= 0x22)
      {
        v68 = v92;
      }

      else
      {
        v68 = 64;
      }
    }

    else
    {
      v68 = 0;
    }

    v93 = *(a1 + 72);
    if ((v93 & 1) != 0 && v68 < 2)
    {
      *(a1 + 72) = 1;
      v94 = a1 + 80;
      v95 = a1 + 96;
LABEL_174:
      v96 = 0;
      v97 = (v95 - v94 - 16) >> 4;
      v98 = vdupq_n_s64(v97);
      v99 = (v94 + 16);
      do
      {
        v100 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(vdupq_n_s64(v96), xmmword_2750C1210)));
        if (v100.i8[0])
        {
          *(v99 - 2) = -4096;
        }

        if (v100.i8[4])
        {
          *v99 = -4096;
        }

        v96 += 2;
        v99 += 4;
      }

      while (((v97 + 2) & 0x1FFFFFFFFFFFFFFELL) != v96);
      goto LABEL_136;
    }

    if ((v93 & 1) == 0)
    {
      if (v68 == *(a1 + 88))
      {
        *(a1 + 72) = 0;
        if (!v68)
        {
          goto LABEL_136;
        }

        v94 = *(a1 + 80);
        v95 = v94 + 16 * v68;
        goto LABEL_174;
      }

      MEMORY[0x277C69E30](*(a1 + 80), 8);
    }

    if (v68 <= 1)
    {
      *(a1 + 72) = 1;
    }

    else
    {
      *(a1 + 72) &= ~1u;
      v122 = operator new(16 * v68, 8uLL);
      *(a1 + 80) = v122;
      *(a1 + 88) = v68;
      v123 = *(a1 + 72);
      *(a1 + 72) = v123 & 1;
      if ((v123 & 1) == 0)
      {
        v124 = &v122[16 * v68];
        goto LABEL_224;
      }
    }

    v122 = (a1 + 80);
    v124 = (a1 + 96);
LABEL_224:
    v125 = 0;
    v126 = (v124 - v122 - 16) >> 4;
    v127 = (v126 + 2) & 0x1FFFFFFFFFFFFFFELL;
    v128 = vdupq_n_s64(v126);
    v129 = v122 + 16;
    do
    {
      v130 = vmovn_s64(vcgeq_u64(v128, vorrq_s8(vdupq_n_s64(v125), xmmword_2750C1210)));
      if (v130.i8[0])
      {
        *(v129 - 2) = -4096;
      }

      if (v130.i8[4])
      {
        *v129 = -4096;
      }

      v125 += 2;
      v129 += 4;
    }

    while (v127 != v125);
    goto LABEL_136;
  }

  if (!v67)
  {
    goto LABEL_135;
  }

  v69 = *(a1 + 80);
  v70 = &v69[2 * v67];
LABEL_128:
  while (2)
  {
    if (*v69 == -8192)
    {
LABEL_132:
      *v69 = -4096;
    }

    else if (*v69 != -4096)
    {
      v71 = v69[1];
      v69[1] = 0;
      if (v71)
      {
        llvm::MDNode::deleteTemporary(v71, v54);
      }

      goto LABEL_132;
    }

    v69 += 2;
    if (v69 != v70)
    {
      continue;
    }

    break;
  }

  LODWORD(v67) = *(a1 + 72) & 1;
LABEL_135:
  *(a1 + 72) = v67;
  *(a1 + 76) = 0;
LABEL_136:
  v72 = (a1 + 48);
  v73 = *(a1 + 48);
  if (v73 >= 2)
  {
    v74 = llvm::detail::DenseSetImpl<unsigned int,llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,llvm::DenseMapInfo<unsigned int,void>>::begin((a1 + 48));
    v75 = v74;
    v77 = v76;
    if (v73)
    {
      v78 = a1 + 60;
    }

    else
    {
      v78 = *(a1 + 56) + 4 * *(a1 + 64);
    }

    if (v78 == v74)
    {
      goto LABEL_151;
    }

    do
    {
      v79 = *v75;
      v80 = *(*a1 + 8 * v79);
      if (v80 && llvm::MDNode::classof(*(*a1 + 8 * v79)))
      {
        llvm::MDNode::resolveCycles(v80);
      }

      do
      {
        ++v75;
      }

      while (v75 != v77 && *v75 >= 0xFFFFFFFE);
    }

    while (v75 != v78);
    v73 = *v72;
    if (*v72 > 1)
    {
LABEL_151:
      v81 = 0;
      if ((v73 & 1) == 0)
      {
        goto LABEL_152;
      }

LABEL_150:
      v82 = (a1 + 56);
      v83 = 1;
LABEL_163:
      memset(v82, 255, 4 * v83);
      LODWORD(v83) = *v72 & 1;
    }

    else
    {
      if (!*(a1 + 52))
      {
        goto LABEL_202;
      }

      v81 = 1;
      if (v73)
      {
        goto LABEL_150;
      }

LABEL_152:
      v83 = *(a1 + 64);
      if (v83 > 2 * v73 && v83 >= 0x41)
      {
        v84 = 1 << (33 - __clz((v73 >> 1) - 1));
        if (v73 < 0x22)
        {
          v84 = 64;
        }

        if (v81)
        {
          v85 = 0;
        }

        else
        {
          v85 = v84;
        }

        if (v85 == v83)
        {
          *(a1 + 48) = 0;
          v86 = 4 * v83;
          v87 = *(a1 + 56);
        }

        else
        {
          v101 = (a1 + 56);
          v102 = 4;
          MEMORY[0x277C69E30](*(a1 + 56), 4);
          if (v85 < 2)
          {
            v104 = 1;
          }

          else
          {
            *(a1 + 48) &= ~1u;
            v102 = 4 * v85;
            v103 = operator new(v102, 4uLL);
            *(a1 + 56) = v103;
            *(a1 + 64) = v85;
            v104 = *(a1 + 48) & 1;
            if (v104)
            {
              v102 = 4;
            }

            else
            {
              v101 = v103;
            }
          }

          *(a1 + 48) = v104;
          *(a1 + 52) = 0;
          v87 = v101;
          v86 = v102;
        }

        memset(v87, 255, v86);
        goto LABEL_202;
      }

      if (v83)
      {
        v82 = *(a1 + 56);
        goto LABEL_163;
      }
    }

    *(a1 + 48) = v83;
    *(a1 + 52) = 0;
  }

LABEL_202:
  if (*(a2 + 40))
  {
    v111 = *(a2 + 32);
    do
    {
      v112 = *(*(a2 + 8) + ((v111 >> 5) & 0x7FFFFFFFFFFFFF8));
      v113 = v112 + 16 * v111;
      v114 = *(v113 + 4);
      if (*(a1 + 8) <= v114)
      {
        v115 = 0;
      }

      else
      {
        v115 = *(*a1 + 8 * v114);
      }

      v116 = *(v113 + 8);
      if (v116)
      {
        *v116 = v115;
        v117 = *(v113 + 8);
        if (*v117)
        {
          llvm::MetadataTracking::track(v117, *v117, 2);
        }

        v135[0] = v113;
        llvm::MetadataTracking::untrack(v135, v113);
        v111 = *(a2 + 32);
        v118 = v111;
        v112 = *(*(a2 + 8) + ((v111 >> 5) & 0x7FFFFFFFFFFFFF8));
      }

      else
      {
        v118 = v111;
      }

      v119 = *(v112 + 16 * v118 + 8);
      if (v119)
      {
        *v119 = 0;
      }

      v120 = *(a2 + 40) - 1;
      *(a2 + 32) = ++v111;
      *(a2 + 40) = v120;
      if (v111 >= 0x200)
      {
        operator delete(**(a2 + 8));
        *(a2 + 8) += 8;
        v120 = *(a2 + 40);
        v111 = *(a2 + 32) - 256;
        *(a2 + 32) = v111;
      }
    }

    while (v120);
  }

  return MEMORY[0x277C69E30](v131, 4);
}

void llvm::MetadataLoader::MetadataLoaderImpl::parseOneMetadata(llvm::Twine *a1, unint64_t a2, unsigned int **a3, int a4, llvm::MetadataLoader::MetadataLoaderImpl *a5, const char *a6, unint64_t a7, llvm::MetadataLoader::MetadataLoaderImpl *a8)
{
  v8 = a1;
  v950 = *MEMORY[0x277D85DE8];
  v940 = 0;
  v939[0] = a2;
  v939[1] = &v940;
  v939[2] = a8;
  v939[3] = a5;
  switch(a4)
  {
    case 1:
      std::string::__init_with_size[abi:nn200100]<unsigned long long *,unsigned long long *>(&v945, *a3, &(*a3)[2 * *(a3 + 2)], *(a3 + 2));
      if (v946[0] >= 0)
      {
        v12 = &v945;
      }

      else
      {
        v12 = v945.n128_u64[0];
      }

      if (v946[0] >= 0)
      {
        v13 = SHIBYTE(v946[0]);
      }

      else
      {
        v13 = v945.n128_u64[1];
      }

      v14 = v13 >= 0x10 && v12->n128_u64[0] == 0x6365762E6D766C6CLL && v12->n128_u64[1] == 0x2E72657A69726F74;
      *(a2 + 1041) |= v14;
      v219 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((**(a2 + 208) + 312), v12, v13);
      if (v220)
      {
        *(v219 + 16) = v219;
      }

      ++*a8;
      if (SHIBYTE(v946[0]) < 0)
      {
        operator delete(v945.n128_u64[0]);
      }

      goto LABEL_1065;
    case 2:
      if (*(a3 + 2) != 2)
      {
        goto LABEL_272;
      }

      v139 = **a3;
      v140 = std::function<llvm::Type * ()>::operator()(*(a2 + 248), v139);
      v141 = v140[8];
      if (v141 == 9 || v141 == 7)
      {
        goto LABEL_272;
      }

      ValueFwdRef = llvm::BitcodeReaderValueList::getValueFwdRef(*(a2 + 192), (*a3)[2], v140, v139, 0);
      if (ValueFwdRef)
      {
        v945.n128_u64[0] = llvm::ValueAsMetadata::get(ValueFwdRef, v144);
        llvm::MetadataLoader::MetadataLoaderImpl::callMDTypeCallback(a2, &v945, v139);
        v145 = v945.n128_u64[0];
LABEL_1063:
        v745 = *a8;
        v746 = a2;
LABEL_1064:
        ++*a8;
        goto LABEL_1065;
      }

      v91 = "Invalid value reference from metadata";
      goto LABEL_273;
    case 3:
      goto LABEL_124;
    case 4:
      v170 = *a3;
      v171 = &(*a3)[2 * *(a3 + 2)];
      v15 = &v943;
      v941 = &v943;
      v942 = xmmword_2750C12B0;
      llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v941, v170, v171);
      *(a3 + 2) = 0;
      llvm::BitstreamCursor::ReadCode(*(a2 + 200), &v945);
      if (v945.n128_u8[8])
      {
        v172 = v945.n128_u64[0];
        *v8 = v945.n128_u64[0];
        if (v172)
        {
          goto LABEL_229;
        }

        v173 = 4;
      }

      else
      {
        v173 = v945.n128_u32[0];
        *v8 = 0;
      }

      llvm::BitstreamCursor::readRecord(*(a2 + 200), v173, a3, 0, &v948);
      if ((v949 & 1) == 0)
      {
        if (v948 != 10)
        {
          v945.n128_u64[0] = "METADATA_NAME not followed by METADATA_NAMED_NODE";
          v947 = 259;
          error(v8);
        }

        v228 = *(a3 + 2);
        inserted = llvm::Module::getOrInsertNamedMetadata(*(a2 + 216), v941, v942);
        if (v228)
        {
          v230 = inserted;
          v231 = 0;
          v232 = 8 * v228;
          do
          {
            if (!MDNodeFwdRefOrNull)
            {
              v945.n128_u64[0] = "Invalid named metadata: expect fwd ref to MDNode";
              v947 = 259;
              error(v8);
            }

            v945.n128_u64[0] = MDNodeFwdRefOrNull;
            llvm::SmallVectorImpl<llvm::TrackingMDRef>::emplace_back<llvm::MDNode *&>(*(v230 + 48), &v945);
            v231 += 8;
          }

          while (v232 != v231);
        }

        v129 = v941;
        goto LABEL_134;
      }

      *v8 = v948;
LABEL_229:
      v32 = v941;
      if (v941 == &v943)
      {
        goto LABEL_1066;
      }

      goto LABEL_425;
    case 5:
      v940 = 1;
LABEL_124:
      v15 = v946;
      v945.n128_u64[0] = v946;
      v945.n128_u64[1] = 0x800000000;
      v125 = *(a3 + 2);
      if (v125 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v945, v946, v125, 8);
        LODWORD(v125) = *(a3 + 2);
      }

      if (v125)
      {
        v126 = *a3;
        v127 = 8 * v125;
        do
        {
          if (*v126)
          {
          }

          else
          {
            v128 = 0;
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v945, v128);
          ++v126;
          v127 -= 8;
        }

        while (v127);
      }

      Impl = llvm::MDTuple::getImpl(*(a2 + 208), v945.n128_u64[0], v945.n128_u32[2], v940, 1);
      goto LABEL_133;
    case 6:
      llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataKindRecord(a1, a2, *a3, *(a3 + 2));
      goto LABEL_102;
    case 7:
      if (*(a3 + 2) - 5 >= 2)
      {
        goto LABEL_272;
      }

      v101 = *a3;
      v940 = **a3 != 0;
      v102 = *(v101 + 2);
      v103 = *(v101 + 4);
      v105 = (*a3)[8];
      if (v105)
      {
      }

      else
      {
        v106 = 0;
      }

      v269 = *(a3 + 2) == 6 && *(*a3 + 5) != 0;
      v94 = llvm::DILocation::getImpl(*(a2 + 208), v102, v103, v104, v106, v269, v940, 1);
      goto LABEL_1062;
    case 8:
      v80 = *(a3 + 2);
      if (v80)
      {
        goto LABEL_272;
      }

      v945.n128_u64[0] = v946;
      v945.n128_u64[1] = 0x800000000;
      if (v80)
      {
        v81 = 0;
        while (1)
        {
          v82 = *&(*a3)[2 * v81];
          v83 = std::function<llvm::Type * ()>::operator()(*(a2 + 248), v82);
          if (!v83)
          {
            break;
          }

          v84 = v83[8];
          if (v84 == 7)
          {
            v85 = 0;
          }

          else if (v84 == 9)
          {
          }

          else
          {
            v86 = llvm::BitcodeReaderValueList::getValueFwdRef(*(a2 + 192), *&(*a3)[2 * (v81 + 1)], v83, v82, 0);
            if (!v86)
            {
              v340 = "Invalid value reference from old metadata";
LABEL_958:
              v941 = v340;
              v944 = 259;
              error(v8);
            }

            v941 = llvm::ValueAsMetadata::get(v86, v87);
            llvm::MetadataLoader::MetadataLoaderImpl::callMDTypeCallback(a2, &v941, v82);
            v85 = v941;
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v945, v85);
          v81 += 2;
          if (v80 == v81)
          {
            v88 = v945.n128_u64[0];
            v89 = v945.n128_u32[2];
            goto LABEL_308;
          }
        }

        v340 = "Invalid record";
        goto LABEL_958;
      }

      v89 = 0;
      v88 = v946;
LABEL_308:
      v268 = llvm::MDTuple::getImpl(*(a2 + 208), v88, v89, 0, 1);
      ++*a8;
      v129 = v945.n128_u64[0];
      if (v945.n128_u64[0] == v946)
      {
        goto LABEL_1065;
      }

      goto LABEL_135;
    case 9:
      v96 = *(a3 + 2);
      if (v96)
      {
        goto LABEL_272;
      }

      v941 = a2;
      *&v942 = a8;
      if (v96 != 2 || ((v97 = **a3, v98 = std::function<llvm::Type * ()>::operator()(*(a2 + 248), v97), v99 = v98[8], v99 != 7) ? (v100 = v99 == 9) : (v100 = 1), v100))
      {
        goto LABEL_1065;
      }

      v512 = llvm::BitcodeReaderValueList::getValueFwdRef(*(a2 + 192), (*a3)[2], v98, v97, 0);
      if (v512)
      {
        v94 = llvm::ValueAsMetadata::get(v512, v513);
        goto LABEL_1062;
      }

      v91 = "Invalid value reference from old fn metadata";
      goto LABEL_273;
    case 12:
      v39 = *(a3 + 2);
      if (v39 <= 3)
      {
        goto LABEL_272;
      }

      v40 = *a3;
      v940 = **a3 != 0;
      v41 = *(v40 + 2);
      if (HIWORD(v41))
      {
        v42 = 0;
      }

      else
      {
        v42 = *(v40 + 4) == 0;
        *(v40 + 4);
      }

      if (!v42)
      {
        goto LABEL_272;
      }

      v43 = *(v40 + 6);
      if (v43)
      {
        v39 = *(a3 + 2);
      }

      else
      {
        v44 = 0;
      }

      v945.n128_u64[0] = v946;
      v945.n128_u64[1] = 0x800000000;
      if (v39 == 4)
      {
        v458 = 0;
        v459 = v946;
      }

      else
      {
        for (i = 4; i != v39; ++i)
        {
          v461 = *&(*a3)[2 * i];
          if (v461)
          {
          }

          else
          {
            v462 = 0;
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v945, v462);
        }

        v459 = v945.n128_u64[0];
        v458 = v945.n128_u32[2];
      }

      v463 = llvm::GenericDINode::getImpl(*(a2 + 208), v41, v44, v459, v458, v940, 1);
      ++*a8;
      v129 = v945.n128_u64[0];
      if (v945.n128_u64[0] == v946)
      {
        goto LABEL_1065;
      }

      goto LABEL_135;
    case 13:
      v92 = *a3;
      v93 = **a3 >> 1;
      switch(v93)
      {
        case 2:
          v253 = *(a2 + 208);
          v254 = *(v92 + 2);
          if (v254)
          {
            v92 = *a3;
          }

          else
          {
            v255 = 0;
          }

          v464 = *(v92 + 4);
          if (v464)
          {
            v92 = *a3;
          }

          else
          {
            v465 = 0;
          }

          v466 = *(v92 + 6);
          if (v466)
          {
            v92 = *a3;
          }

          else
          {
            v467 = 0;
          }

          v468 = *(v92 + 8);
          if (v468)
          {
          }

          else
          {
            v469 = 0;
          }

          v94 = llvm::DISubrange::getImpl(v253, v255, v465, v467, v469, 0, 1);
          goto LABEL_1062;
        case 1:
          v250 = *(a2 + 208);
          v251 = *(v92 + 2);
          if (v251)
          {
            v92 = *a3;
          }

          else
          {
            v252 = 0;
          }

          v94 = llvm::DISubrange::getImpl(v250, v252, -(v92[2] & 1) ^ (v92[2] >> 1), 0, 1);
          goto LABEL_1062;
        case 0:
          v94 = llvm::DISubrange::getImpl(*(a2 + 208), v92[1], -(v92[2] & 1) ^ (v92[2] >> 1), 0, 1);
LABEL_1062:
          v145 = v94;
          goto LABEL_1063;
      }

      v91 = "Invalid record: Unsupported version of DISubrange";
      goto LABEL_273;
    case 14:
      v146 = *(a3 + 2);
      if (v146 <= 2)
      {
        goto LABEL_272;
      }

      v147 = *a3;
      v149 = **a3;
      v148 = *(*a3 + 1);
      v940 = **a3 & 1;
      if ((v149 & 4) != 0)
      {
        llvm::readWideAPInt(v147 + 3, v146 - 3, v148, &v945);
        v150 = v945.n128_u64[0];
        v151 = *(a2 + 208);
        if (v940)
        {
          v938 = v945.n128_u32[2];
          if (v945.n128_u32[2] > 0x40)
          {
            operator new[]();
          }

LABEL_291:
          v937 = v150;
          v611 = (*a3)[4];
          if (v611)
          {
          }

          else
          {
            v612 = 0;
          }

          v613 = llvm::DIEnumerator::getImpl(v151, &v937, (v149 >> 1) & 1, v612, 1, 1);
          if (v938 < 0x41 || (v614 = v937) == 0)
          {
LABEL_828:
            ++*a8;
            goto LABEL_1065;
          }

LABEL_827:
          MEMORY[0x277C69E10](v614, 0x1000C8000313F17);
          goto LABEL_828;
        }

        v936 = v945.n128_u32[2];
        if (v945.n128_u32[2] > 0x40)
        {
          operator new[]();
        }
      }

      else
      {
        v150 = -(v148 & 1) ^ (v148 >> 1);
        v151 = *(a2 + 208);
        if (v149)
        {
          v938 = 64;
          goto LABEL_291;
        }

        v936 = 64;
      }

      v935 = v150;
      v615 = (*a3)[4];
      if (v615)
      {
      }

      else
      {
        v616 = 0;
      }

      v617 = llvm::DIEnumerator::getImpl(v151, &v935, (v149 >> 1) & 1, v616, 0, 1);
      if (v936 < 0x41)
      {
        goto LABEL_828;
      }

      v614 = v935;
      if (!v935)
      {
        goto LABEL_828;
      }

      goto LABEL_827;
    case 15:
      v130 = *(a3 + 2);
      if (v130 - 8 <= 0xFFFFFFFD)
      {
        goto LABEL_272;
      }

      v131 = *a3;
      v132 = **a3;
      v940 = v132 != 0;
      if (v130 < 7)
      {
        v133 = 0;
      }

      else
      {
        v133 = *(v131 + 12);
      }

      v256 = *(a2 + 208);
      v257 = *(v131 + 2);
      v258 = *(v131 + 4);
      if (v132)
      {
        if (v258)
        {
          v131 = *a3;
        }

        else
        {
          v259 = 0;
        }

        v94 = llvm::DIBasicType::getImpl(v256, v257, v259, v131[3], *(v131 + 8), *(v131 + 10), v133, 1, 1);
      }

      else
      {
        if (v258)
        {
          v131 = *a3;
        }

        else
        {
          v274 = 0;
        }

        v94 = llvm::DIBasicType::getImpl(v256, v257, v274, v131[3], *(v131 + 8), *(v131 + 10), v133, 0, 1);
      }

      goto LABEL_1062;
    case 16:
      v54 = *(a3 + 2);
      if ((v54 - 5) < 2)
      {
        v55 = *a3;
        v56 = **a3;
        v940 = v56 != 0;
        v57 = v55[3];
        if (v57)
        {
          v58 = v55[4];
          if (v58)
          {
            if (v58)
            {
              v59 = v57 & 0xFFFFFF00;
              LODWORD(v57) = v57;
              v55 = *a3;
              v60 = 1;
              if ((v940 & 1) == 0)
              {
LABEL_59:
                v61 = *(a2 + 208);
                v62 = *(v55 + 2);
                if (v62)
                {
                  v55 = *a3;
                }

                else
                {
                  v63 = 0;
                }

                v426 = *(v55 + 4);
                if (v426)
                {
                }

                else
                {
                  v427 = 0;
                }

                v428 = v57 | v59;
                if (*(a3 + 2) >= 6u && (v429 = (*a3)[10]) != 0)
                {
                }

                else
                {
                  v331 = 0;
                }

                v945.n128_u32[0] = v428;
                v945.n128_u64[1] = v923;
                LOBYTE(v946[0]) = v60;
                v332 = v61;
                v333 = v63;
                v334 = v427;
                v335 = 0;
LABEL_533:
                v94 = llvm::DIFile::getImpl(v332, v333, v334, &v945, v331, v335, 1);
                goto LABEL_1062;
              }
            }

            else
            {
              v923 = 0;
              v59 = v57 & 0xFFFFFF00;
              LODWORD(v57) = v55[3];
              v60 = 1;
              if (!v56)
              {
                goto LABEL_59;
              }
            }

LABEL_256:
            v238 = *(a2 + 208);
            v239 = *(v55 + 2);
            if (v239)
            {
              v55 = *a3;
            }

            else
            {
              v240 = 0;
            }

            v327 = *(v55 + 4);
            if (v327)
            {
            }

            else
            {
              v328 = 0;
            }

            v329 = v57 | v59;
            if (*(a3 + 2) >= 6u && (v330 = (*a3)[10]) != 0)
            {
            }

            else
            {
              v331 = 0;
            }

            v945.n128_u32[0] = v329;
            v945.n128_u64[1] = v923;
            LOBYTE(v946[0]) = v60;
            v332 = v238;
            v333 = v240;
            v334 = v328;
            v335 = 1;
            goto LABEL_533;
          }
        }

        v59 = 0;
        LODWORD(v57) = 0;
        v60 = 0;
LABEL_255:
        if (!v56)
        {
          goto LABEL_59;
        }

        goto LABEL_256;
      }

      if (v54 == 3)
      {
        v59 = 0;
        LODWORD(v57) = 0;
        v60 = 0;
        v55 = *a3;
        v56 = **a3;
        v940 = v56 != 0;
        goto LABEL_255;
      }

      goto LABEL_272;
    case 17:
      v174 = *(a3 + 2);
      if (v174 - 16 <= 0xFFFFFFFB)
      {
        goto LABEL_272;
      }

      v175 = *a3;
      if (v174 < 0xD)
      {
        v179 = 0;
        v177 = 0;
        v178 = 0;
        v871 = 0;
        v913 = *(a3 + 2);
        v927 = 0;
        v901 = v913;
      }

      else
      {
        v176 = v175[12];
        v177 = v176 != 0;
        v901 = (v176 - 1) >> 8;
        if (v176)
        {
          v178 = v176 - 1;
        }

        else
        {
          v178 = 0;
        }

        if (v174 == 13)
        {
          v179 = 0;
          v871 = 0;
          v913 = 13;
          v927 = 0;
        }

        else
        {
          v351 = v175[13];
          v179 = v351 != 0;
          v913 = v351 >> 8;
          v927 = v351;
          if (v174 >= 0xF && (v352 = v175[14]) != 0 && v352)
          {
            v175 = *a3;
          }

          else
          {
            v871 = 0;
          }
        }
      }

      v430 = *v175;
      v940 = *v175 != 0;
      v879 = *(v175 + 20);
      v431 = *(v175 + 4);
      v892 = *(a2 + 208);
      v885 = *(v175 + 2);
      if (v430)
      {
        if (v431)
        {
          v175 = *a3;
        }

        else
        {
          v866 = 0;
        }

        v432 = *(v175 + 6);
        if (v432)
        {
          v175 = *a3;
        }

        else
        {
          v861 = 0;
        }

        v854 = *(v175 + 8);
        v433 = *(v175 + 10);
        v434 = v179;
        if (v433)
        {
        }

        else
        {
          v435 = 0;
        }

        v437 = (*a3)[12];
        v848 = v436;
        if (v437)
        {
        }

        else
        {
          v438 = 0;
        }

        v440 = *a3;
        v441 = *(*a3 + 7);
        v442 = *(v440 + 16);
        v443 = v440[9];
        v444 = 0x100000000;
        if (v177)
        {
          v445 = 0x100000000;
        }

        else
        {
          v445 = 0;
        }

        v446 = v178 | ((v901 & 0xFFFFFF) << 8) | v445;
        if (!v434)
        {
          v444 = 0;
        }

        v447 = v444 | v927 | ((*&v913 & 0xFFFFFFLL) << 8);
        v448 = *(v440 + 22);
        if (v448)
        {
        }

        else
        {
          v449 = 0;
        }

        v94 = llvm::DIDerivedType::getImpl(v892, v885, v866, v861, v854, v848, v439, v441, v442, v443, v446, v447, v879, v818, v871, 1, 1);
      }

      else
      {
        if (v431)
        {
          v175 = *a3;
        }

        else
        {
          v867 = 0;
        }

        v581 = *(v175 + 6);
        if (v581)
        {
          v175 = *a3;
        }

        else
        {
          v862 = 0;
        }

        v856 = *(v175 + 8);
        v582 = *(v175 + 10);
        if (v582)
        {
        }

        else
        {
          v583 = 0;
        }

        v584 = (*a3)[12];
        v585 = v177;
        if (v584)
        {
        }

        else
        {
          v586 = 0;
        }

        v588 = *a3;
        v589 = *(*a3 + 7);
        v590 = *(v588 + 16);
        v591 = v588[9];
        v592 = 0x100000000;
        if (v585)
        {
          v593 = 0x100000000;
        }

        else
        {
          v593 = 0;
        }

        v594 = v178 | ((v901 & 0xFFFFFF) << 8) | v593;
        if (!v179)
        {
          v592 = 0;
        }

        v595 = v592 | v927 | ((*&v913 & 0xFFFFFFLL) << 8);
        v596 = *(v588 + 22);
        if (v596)
        {
        }

        else
        {
          v597 = 0;
        }

        v94 = llvm::DIDerivedType::getImpl(v892, v885, v867, v862, v856, v850, v587, v589, v590, v591, v594, v595, v879, v598, v871, 0, 1);
      }

      goto LABEL_1062;
    case 18:
      if ((*(a3 + 2) - 23) <= 0xFFFFFFF8)
      {
        goto LABEL_272;
      }

      v180 = *a3;
      v181 = **a3;
      v940 = v181 & 1;
      v182 = *(v180 + 2);
      v183 = *(v180 + 4);
      if (v183)
      {
        v180 = *a3;
      }

      else
      {
        v184 = 0;
      }

      v294 = *(v180 + 6);
      if (v294)
      {
        v180 = *a3;
      }

      else
      {
        v295 = 0;
      }

      v296 = *(v180 + 8);
      v297 = *(v180 + 10);
      if (v297)
      {
      }

      else
      {
        v298 = 0;
      }

      v300 = *a3;
      if (HIDWORD(*(*a3 + 8)))
      {
        goto LABEL_361;
      }

      v301 = v299;
      v859 = v182;
      v876 = *(*a3 + 8);
      v882 = v300[7];
      v916 = *(v300 + 20);
      v872 = *(v300 + 24);
      v302 = *(v300 + 30);
      if (v302)
      {
      }

      else
      {
        v929 = 0;
      }

      v855 = v181;
      v849 = v296;
      v842 = v301;
      v846 = v8;
      v838 = v295;
      if (*(a2 + 1044) == 1 && (byte_2815AA360 & 1) == 0 && v929 && v182 <= 0x17 && ((1 << v182) & 0x880014) != 0)
      {
        v470 = v916 | 4;
        if (!v184)
        {
          v479 = 0;
          v480 = 0;
          v868 = 0;
          v481 = 0;
          v478 = 0;
          v526 = 0;
          v529 = 0;
          v527 = 0;
          v528 = 0;
          v530 = 0;
          v531 = 0;
          v532 = v882;
          goto LABEL_1148;
        }

        v916 |= 4u;
        v471 = *(v184 + 1);
        v474 = *v471;
        v472 = v471 + 3;
        v473 = v474;
        if ((!v474 || (v475 = memchr(v472, 60, v473)) == 0 || v475 - v472 == -1 || v473 >= 5 && (*v472 == 1314149215 ? (v476 = v472[4] == 124) : (v476 = 0), v476)) && (v477 = (*a3)[28]) != 0)
        {
          v479 = 0;
          v480 = 0;
          v868 = 0;
          v481 = 0;
        }

        else
        {
          v479 = 0;
          v480 = 0;
          v868 = 0;
          v481 = 0;
          v478 = 0;
        }

        v526 = 0;
        v529 = 0;
        v527 = 0;
        v528 = 0;
        v530 = 0;
        v531 = 0;
        v532 = v882;
LABEL_1147:
        v470 = v916;
LABEL_1148:
        v922 = v470;
        v822 = v528;
        v826 = v531;
        v836 = v526;
        v898 = v481;
        v910 = v480;
        v815 = v532;
        v798 = v478;
        v799 = v529;
        v800 = llvm::DICompositeType::buildODRType(*(a2 + 208), v929, v859, v184, v838, v849, v842, v479, v815, v876, v480, v470, v868, v872, v481, v478, v526, v529, v527, v528, v530, v531);
        v801 = v849;
        v802 = v868;
        v803 = v838;
        v804 = v184;
        v805 = v872;
        v807 = v876;
        v806 = v882;
        v528 = v822;
        v531 = v826;
        v808 = v842;
        v809 = v922;
        v529 = v799;
        v526 = v836;
        v478 = v798;
        v810 = v800;
        v811 = v859;
        v481 = v898;
        v480 = v910;
        v812 = 1;
        if (v800)
        {
          goto LABEL_1152;
        }

LABEL_1151:
        v810 = llvm::DICompositeType::getImpl(*(a2 + 208), v811, v804, v803, v801, v808, v479, v806, v807, v480, v809, v802, v805, v481, v478, v929, v526, v529, v527, v528, v530, v531, v940, 1);
LABEL_1152:
        v8 = v846;
        if (v855 <= 1 && v812)
        {
        }

        v745 = *a8;
        v746 = a2;
        v145 = v810;
        goto LABEL_1064;
      }

      v482 = (*a3)[12];
      if (v482)
      {
      }

      else
      {
        v483 = 0;
      }

      v518 = *a3;
      v906 = *(*a3 + 9);
      v519 = (*a3)[22];
      if (v519)
      {
        v518 = *a3;
      }

      else
      {
        v520 = 0;
      }

      v868 = v520;
      v521 = *(v518 + 26);
      if (v521)
      {
      }

      else
      {
        v522 = 0;
      }

      v523 = (*a3)[28];
      if (v523)
      {
      }

      else
      {
        v478 = 0;
      }

      v524 = *(a3 + 2);
      if (v524 < 0x11)
      {
        v527 = 0;
        v528 = 0;
        v526 = 0;
        v529 = 0;
        v530 = 0;
        v531 = 0;
        v532 = v882;
        goto LABEL_1146;
      }

      v827 = v478;
      v525 = (*a3)[32];
      if (v525)
      {
        v524 = *(a3 + 2);
      }

      else
      {
        v526 = 0;
      }

      if (v524 < 0x12)
      {
        v529 = 0;
        v528 = 0;
        v527 = 0;
        v532 = v882;
        v478 = v827;
      }

      else
      {
        v835 = v526;
        v682 = (*a3)[34];
        if (v682)
        {
          v524 = *(a3 + 2);
        }

        else
        {
          v529 = 0;
        }

        v478 = v827;
        if (v524 < 0x14)
        {
          v528 = 0;
          v527 = 0;
          v532 = v882;
        }

        else
        {
          v825 = v529;
          v748 = *a3;
          v749 = (*a3)[36];
          if (v749)
          {
            v748 = *a3;
          }

          else
          {
            v527 = 0;
          }

          v785 = *(v748 + 38);
          if (v785)
          {
          }

          else
          {
            v528 = 0;
          }

          v532 = v882;
          v529 = v825;
          v478 = v827;
        }

        v526 = v835;
      }

      v786 = *(a3 + 2);
      if (v786 < 0x15)
      {
        v530 = 0;
      }

      else
      {
        v787 = (*a3)[40];
        if (v787)
        {
          v788 = v526;
          v789 = v527;
          v790 = v529;
          v791 = v528;
          v528 = v791;
          v529 = v790;
          v527 = v789;
          v526 = v788;
          v478 = v827;
          v530 = v792;
          v786 = *(a3 + 2);
        }

        else
        {
          v530 = 0;
        }

        if (v786 >= 0x16)
        {
          v793 = (*a3)[42];
          if (v793)
          {
            v794 = v526;
            v795 = v529;
            v796 = v528;
            v528 = v796;
            v529 = v795;
            v526 = v794;
            v478 = v827;
            v531 = v797;
            goto LABEL_1146;
          }
        }
      }

      v531 = 0;
LABEL_1146:
      v481 = v893;
      v480 = v906;
      v479 = v830;
      if (!v929)
      {
        v811 = v859;
        v812 = 0;
        v804 = v184;
        v803 = v838;
        v808 = v842;
        v806 = v532;
        v801 = v849;
        v807 = v876;
        v805 = v872;
        v809 = v916;
        v802 = v868;
        goto LABEL_1151;
      }

      goto LABEL_1147;
    case 19:
      v196 = *(a3 + 2);
      if (v196 - 5 <= 0xFFFFFFFD)
      {
        goto LABEL_272;
      }

      v197 = *a3;
      v198 = **a3;
      if (v196 < 4)
      {
        v199 = 0;
      }

      else
      {
        v199 = *(v197 + 24);
      }

      v940 = v198 & 1;
      v260 = *(v197 + 2);
      v261 = *(v197 + 4);
      if (v261)
      {
      }

      else
      {
        v262 = 0;
      }

      if (v198 <= 1)
      {
      }

      v94 = llvm::DISubroutineType::getImpl(*(a2 + 208), v260, v199, v262, v940, 1);
      goto LABEL_1062;
    case 20:
      if ((*(a3 + 2) - 23) <= 0xFFFFFFF6)
      {
        goto LABEL_272;
      }

      v940 = 1;
      v191 = *(a2 + 208);
      v192 = *a3;
      v193 = (*a3)[2];
      v194 = (*a3)[4];
      if (v194)
      {
        v192 = *a3;
      }

      else
      {
        v195 = 0;
      }

      v303 = *(v192 + 6);
      if (v303)
      {
        v192 = *a3;
      }

      else
      {
        v304 = 0;
      }

      v305 = *(v192 + 10);
      v877 = v192[4];
      if (v305)
      {
        v192 = *a3;
      }

      else
      {
        v890 = 0;
      }

      v306 = *(v192 + 12);
      v307 = *(v192 + 14);
      if (v307)
      {
        v192 = *a3;
      }

      else
      {
        v873 = 0;
      }

      v308 = *(v192 + 16);
      v309 = *(v192 + 18);
      if (v309)
      {
        v192 = *a3;
      }

      else
      {
        v860 = 0;
      }

      v310 = *(v192 + 20);
      if (v310)
      {
        v192 = *a3;
      }

      else
      {
        v853 = 0;
      }

      v311 = *(v192 + 24);
      if (v311)
      {
        v192 = *a3;
      }

      else
      {
        v847 = 0;
      }

      v312 = *(v192 + 26);
      if (v312)
      {
      }

      else
      {
        v313 = 0;
      }

      v314 = *(a3 + 2);
      v930 = v193;
      v902 = v304;
      v917 = v195;
      v883 = v306;
      v865 = v308;
      if (v314 >= 0x10)
      {
        v316 = *a3;
        v317 = (*a3)[30];
        if (!v317)
        {
          v315 = 0;
          goto LABEL_621;
        }

        v318 = v191;
        v319 = v313;
        v313 = v319;
        v191 = v318;
        v315 = v320;
        v314 = *(a3 + 2);
      }

      else
      {
        v315 = 0;
      }

      if (v314 < 0xF)
      {
        v321 = v191;
        v322 = 0;
        v323 = 0;
        v324 = 0;
LABEL_623:
        v487 = 0;
        v488 = 0;
        v489 = 0;
        v490 = 1;
        goto LABEL_968;
      }

      v316 = *a3;
LABEL_621:
      v324 = v316[14];
      if (v314 < 0x11)
      {
        v321 = v191;
        v322 = 0;
        v323 = 0;
        goto LABEL_623;
      }

      v490 = v316[16] != 0;
      if (v314 == 17)
      {
        v321 = v191;
        v322 = 0;
        v323 = 0;
        v487 = 0;
      }

      else
      {
        v487 = v316[17] != 0;
        if (v314 >= 0x13)
        {
          v323 = *(v316 + 36);
          if (v314 != 19)
          {
            v488 = v316[19] != 0;
            if (v314 >= 0x15)
            {
              v837 = v316[14];
              v841 = v315;
              v845 = v313;
              v321 = v191;
              v813 = *(v316 + 40);
              if (v813)
              {
                v314 = *(a3 + 2);
              }

              else
              {
                v322 = 0;
              }

              if (v314 >= 0x16 && (v814 = (*a3)[42]) != 0)
              {
              }

              else
              {
                v489 = 0;
              }

              v315 = v841;
              v313 = v845;
              v324 = v837;
LABEL_968:
              *&v817 = v847;
              *(&v817 + 1) = v313;
              *&v816 = v860;
              *(&v816 + 1) = v853;
              v683 = llvm::DICompileUnit::getImpl(v321, v930, v917, v902, v877 != 0, v890, v883, v873, v865, v816, v817, v315, v324, v490, v487, v323, v488, v322, v489, 1);
              ++*a8;
              v684 = (*a3)[22];
              if (v684)
              {
                if (MetadataFwdRef)
                {
                  v945.n128_u64[0] = v683;
                  v945.n128_u64[1] = MetadataFwdRef;
                  std::vector<std::pair<llvm::DICompileUnit *,llvm::Metadata *>>::emplace_back<std::pair<llvm::DICompileUnit *,llvm::Metadata *>>(a2 + 728, &v945);
                }
              }

              goto LABEL_1065;
            }

            v321 = v191;
            v322 = 0;
LABEL_967:
            v489 = 0;
            goto LABEL_968;
          }

          v321 = v191;
          v322 = 0;
        }

        else
        {
          v321 = v191;
          v322 = 0;
          v323 = 0;
        }
      }

      v488 = 0;
      goto LABEL_967;
    case 21:
      v33 = *(a3 + 2);
      if (v33 - 22 <= 0xFFFFFFFB)
      {
        goto LABEL_272;
      }

      v34 = *a3;
      v35 = **a3;
      if ((v35 & 4) != 0)
      {
        v248 = *(v34 + 22);
        v38 = (v248 & 0x200000) != 0 ? *(v34 + 18) | 0x100 : *(v34 + 18);
        v37 = (v248 & 0x200000) != 0 ? v248 & 0x3FDFFFFF : *(v34 + 22);
      }

      else
      {
        v36 = *(v34 + 26);
        v37 = (v36 & 0x200000) != 0 ? v36 & 0x3FDFFFFF : *(v34 + 26);
        v38 = ((v36 & 0x200000u) >> 13) | (4 * (v34[7] != 0)) | (8 * (v34[8] != 0)) | (16 * (v34[14] != 0)) | v34[11] & 3;
      }

      v940 = v35 & 1 | ((v38 & 8) != 0);
      if ((v35 & 6) == 4)
      {
        goto LABEL_272;
      }

      if ((v35 & 6) == 2)
      {
        if (v33 <= 0x12)
        {
          goto LABEL_272;
        }
      }

      else if ((v35 & 4) != 0)
      {
        v918 = v37;
        v337 = 0;
        v338 = 0;
        v884 = v33 > 0x12;
        v891 = v33 > 0x13;
        v339 = 1;
        v878 = 1;
        v903 = 1;
        goto LABEL_650;
      }

      v918 = v37;
      v891 = 0;
      v884 = 0;
      v336 = (v35 >> 1) & 1;
      v337 = 2;
      if (v33 < 0x13)
      {
        v338 = 2;
      }

      else
      {
        v338 = 3;
      }

      if (v33 < 0x13)
      {
        LOBYTE(v336) = 1;
      }

      v903 = v336;
      v878 = v33 > 0x13;
      v339 = v33 > 0x14;
LABEL_650:
      v507 = v34[v338 | 0xC];
      if (v507)
      {
        v34 = *a3;
        if (v940)
        {
LABEL_652:
          v874 = *(a2 + 208);
          v508 = *(v34 + 2);
          if (v508)
          {
          }

          else
          {
            v509 = 0;
          }

          v629 = *a3;
          v630 = (*a3)[4];
          if (v630)
          {
            v629 = *a3;
          }

          else
          {
            v863 = 0;
          }

          v633 = *(v629 + 6);
          if (v633)
          {
            v629 = *a3;
          }

          else
          {
            v857 = 0;
          }

          v635 = *(v629 + 8);
          if (v635)
          {
            v629 = *a3;
          }

          else
          {
            v851 = 0;
          }

          v843 = *(v629 + 10);
          v637 = *(v629 + 12);
          if (v637)
          {
            v629 = *a3;
          }

          else
          {
            v839 = 0;
          }

          v833 = v629[v337 + 7];
          v639 = v629[v337 | 8];
          if (v639)
          {
          }

          else
          {
            v640 = 0;
          }

          v643 = *a3;
          if (v878)
          {
            v880 = v643[v338 | 0x10];
          }

          else
          {
            LODWORD(v880) = 0;
          }

          v644 = v339;
          v828 = (*a3)[2 * v337 + 20];
          v645 = v933;
          if ((v35 & 2) == 0)
          {
            v645 = 0;
          }

          v823 = v645;
          v646 = v338;
          v647 = v643[v338 + 13];
          if (v647)
          {
            v643 = *a3;
          }

          else
          {
            v820 = 0;
          }

          v653 = v643[v338 + 14];
          if (v653)
          {
            v643 = *a3;
          }

          else
          {
            v654 = 0;
          }

          v657 = v643[v338 + 15];
          if (v657)
          {
          }

          else
          {
            v658 = 0;
          }

          if (v644 && (v661 = (*a3)[2 * v646 + 34]) != 0)
          {
          }

          else
          {
            v662 = 0;
          }

          if (v884 && (v663 = (*a3)[2 * v646 + 36]) != 0)
          {
          }

          else
          {
            v664 = 0;
          }

          if (v891 && (v665 = (*a3)[2 * v646 + 38]) != 0)
          {
          }

          else
          {
            v666 = 0;
          }

          v667 = v903;
          v668 = llvm::DISubprogram::getImpl(v874, v869, v863, v857, v851, v843, v839, v833, v831, v828, v880, v918, v38, v823, v820, v654, v658, v662, v664, v666, 1, 1);
LABEL_933:
          v675 = v668;
          ++*a8;
          if (v933)
          {
            v676 = v667;
          }

          else
          {
            v676 = 1;
          }

          if ((v676 & 1) == 0 && *v933 == 1)
          {
            v677 = *(*(v933 + 16) + 16) ? 0 : *(v933 + 16);
            v945.n128_u64[0] = v677;
            if (v677)
            {
              if (*(v677 + 35))
              {
                llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Function *,llvm::DISubprogram *,16u,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>,llvm::Function *,llvm::DISubprogram *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>::FindAndConstruct((a2 + 752), &v945)[1] = v675;
              }

              else if (*(v677 + 72) != v677 + 72)
              {
                llvm::Value::setMetadata(v677, 0, v675);
              }
            }
          }

          goto LABEL_1065;
        }
      }

      else
      {
        v933 = 0;
        if ((v35 | ((v38 & 8) >> 3)))
        {
          goto LABEL_652;
        }
      }

      v875 = *(a2 + 208);
      v510 = *(v34 + 2);
      if (v510)
      {
      }

      else
      {
        v511 = 0;
      }

      v631 = *a3;
      v632 = (*a3)[4];
      if (v632)
      {
        v631 = *a3;
      }

      else
      {
        v864 = 0;
      }

      v634 = *(v631 + 6);
      if (v634)
      {
        v631 = *a3;
      }

      else
      {
        v858 = 0;
      }

      v636 = *(v631 + 8);
      if (v636)
      {
        v631 = *a3;
      }

      else
      {
        v852 = 0;
      }

      v844 = *(v631 + 10);
      v638 = *(v631 + 12);
      if (v638)
      {
        v631 = *a3;
      }

      else
      {
        v840 = 0;
      }

      v834 = v631[v337 + 7];
      v641 = v631[v337 | 8];
      if (v641)
      {
      }

      else
      {
        v642 = 0;
      }

      v648 = *a3;
      if (v878)
      {
        v881 = v648[v338 | 0x10];
      }

      else
      {
        LODWORD(v881) = 0;
      }

      v649 = v339;
      v829 = (*a3)[2 * v337 + 20];
      v650 = v933;
      if ((v35 & 2) == 0)
      {
        v650 = 0;
      }

      v824 = v650;
      v651 = v338;
      v652 = v648[v338 + 13];
      if (v652)
      {
        v648 = *a3;
      }

      else
      {
        v821 = 0;
      }

      v655 = v648[v338 + 14];
      if (v655)
      {
        v648 = *a3;
      }

      else
      {
        v656 = 0;
      }

      v659 = v648[v338 + 15];
      if (v659)
      {
      }

      else
      {
        v660 = 0;
      }

      if (v649 && (v669 = (*a3)[2 * v651 + 34]) != 0)
      {
      }

      else
      {
        v670 = 0;
      }

      if (v884 && (v671 = (*a3)[2 * v651 + 36]) != 0)
      {
      }

      else
      {
        v672 = 0;
      }

      if (v891 && (v673 = (*a3)[2 * v651 + 38]) != 0)
      {
      }

      else
      {
        v674 = 0;
      }

      v667 = v903;
      v668 = llvm::DISubprogram::getImpl(v875, v870, v864, v858, v852, v844, v840, v834, v832, v829, v881, v918, v38, v824, v821, v656, v660, v670, v672, v674, 0, 1);
      goto LABEL_933;
    case 22:
      if (*(a3 + 2) != 5)
      {
        goto LABEL_272;
      }

      v134 = *a3;
      v135 = **a3;
      v940 = v135 != 0;
      v136 = *(a2 + 208);
      v137 = *(v134 + 2);
      if (v135)
      {
        if (v137)
        {
          v134 = *a3;
        }

        else
        {
          v138 = 0;
        }

        v395 = *(v134 + 4);
        if (v395)
        {
          v134 = *a3;
        }

        else
        {
          v396 = 0;
        }

        v397 = *(v134 + 6);
        v398 = *(v134 + 8);
        v399 = v136;
        v400 = v138;
        v401 = 1;
      }

      else
      {
        if (v137)
        {
          v134 = *a3;
        }

        else
        {
          v275 = 0;
        }

        v579 = *(v134 + 4);
        if (v579)
        {
          v134 = *a3;
        }

        else
        {
          v396 = 0;
        }

        v397 = *(v134 + 6);
        v398 = *(v134 + 8);
        v399 = v136;
        v400 = v275;
        v401 = 0;
      }

      v94 = llvm::DILexicalBlock::getImpl(v399, v400, v396, v397, v398, v401, 1);
      goto LABEL_1062;
    case 23:
      if (*(a3 + 2) != 4)
      {
        goto LABEL_272;
      }

      v200 = *a3;
      v201 = **a3;
      v940 = v201 != 0;
      v202 = *(a2 + 208);
      v203 = *(v200 + 2);
      if (v201)
      {
        if (v203)
        {
          v200 = *a3;
        }

        else
        {
          v204 = 0;
        }

        v409 = *(v200 + 4);
        if (v409)
        {
          v200 = *a3;
        }

        else
        {
          v410 = 0;
        }

        v411 = *(v200 + 6);
        v412 = v202;
        v413 = v204;
        v414 = 1;
      }

      else
      {
        if (v203)
        {
          v200 = *a3;
        }

        else
        {
          v325 = 0;
        }

        v599 = *(v200 + 4);
        if (v599)
        {
          v200 = *a3;
        }

        else
        {
          v410 = 0;
        }

        v411 = *(v200 + 6);
        v412 = v202;
        v413 = v325;
        v414 = 0;
      }

      v94 = llvm::DILexicalBlockFile::getImpl(v412, v413, v410, v411, v414, 1);
      goto LABEL_1062;
    case 24:
      v50 = *(a3 + 2);
      if (v50 == 5)
      {
        v51 = *a3;
        v52 = (*a3)[6];
        if (v52)
        {
LABEL_53:
          v51 = *a3;
LABEL_249:
          v234 = *v51;
          v940 = *v51 & 1;
          v235 = *(a2 + 208);
          v236 = *(v51 + 2);
          if (v234)
          {
            if (v236)
            {
            }

            else
            {
              v237 = 0;
            }

            v343 = (v234 >> 1) & 1;
            v344 = v235;
            v345 = v53;
            v346 = 1;
          }

          else
          {
            if (v236)
            {
            }

            else
            {
              v237 = 0;
            }

            v343 = (v234 >> 1) & 1;
            v344 = v235;
            v345 = v53;
            v346 = 0;
          }

          v94 = llvm::DINamespace::getImpl(v344, v237, v345, v343, v346, 1);
          goto LABEL_1062;
        }
      }

      else
      {
        if (v50 != 3)
        {
LABEL_272:
          v91 = "Invalid record";
          goto LABEL_273;
        }

        v51 = *a3;
        v52 = (*a3)[4];
        if (v52)
        {
          goto LABEL_53;
        }
      }

      v53 = 0;
      goto LABEL_249;
    case 25:
      if ((*(a3 + 2) - 5) <= 0xFFFFFFFD)
      {
        goto LABEL_272;
      }

      v120 = *a3;
      v121 = **a3;
      v940 = v121 != 0;
      v122 = *(a2 + 208);
      v123 = *(v120 + 2);
      if (v121)
      {
        if (v123)
        {
          v120 = *a3;
        }

        else
        {
          v124 = 0;
        }

        v386 = *(v120 + 4);
        if (v386)
        {
        }

        else
        {
          v387 = 0;
        }

        v391 = v122;
        v392 = v124;
        v393 = v388;
        v394 = 1;
      }

      else
      {
        if (v123)
        {
          v120 = *a3;
        }

        else
        {
          v273 = 0;
        }

        v575 = *(v120 + 4);
        if (v575)
        {
        }

        else
        {
          v576 = 0;
        }

        v391 = v122;
        v392 = v273;
        v393 = v577;
        v394 = 0;
      }

      v94 = llvm::DITemplateTypeParameter::getImpl(v391, v392, v393, v390, v394, 1);
      goto LABEL_1062;
    case 26:
      if ((*(a3 + 2) - 7) <= 0xFFFFFFFD)
      {
        goto LABEL_272;
      }

      v74 = *a3;
      v75 = **a3;
      v940 = v75 != 0;
      v76 = *(a2 + 208);
      v77 = *(v74 + 2);
      v78 = *(v74 + 4);
      if (v75)
      {
        if (v78)
        {
          v74 = *a3;
        }

        else
        {
          v79 = 0;
        }

        v353 = *(v74 + 6);
        if (v353)
        {
        }

        else
        {
          v354 = 0;
        }

        if (*(a3 + 2) == 6)
        {
          v356 = *a3;
          v357 = (*a3)[8];
          if (!v357)
          {
            v358 = 0;
LABEL_833:
            v359 = *(v356 + 10);
            if (!v359)
            {
              goto LABEL_834;
            }

            goto LABEL_453;
          }

          if (*(a3 + 2) == 6)
          {
            v356 = *a3;
            goto LABEL_833;
          }
        }

        else
        {
          v358 = 0;
        }

        v359 = (*a3)[8];
        if (!v359)
        {
LABEL_834:
          v360 = 0;
          goto LABEL_835;
        }

LABEL_453:
LABEL_835:
        v618 = v76;
        v619 = v77;
        v620 = v79;
        v621 = v355;
        v622 = v358;
        v623 = 1;
        goto LABEL_975;
      }

      if (v78)
      {
        v74 = *a3;
      }

      else
      {
        v267 = 0;
      }

      v549 = *(v74 + 6);
      if (v549)
      {
      }

      else
      {
        v550 = 0;
      }

      if (*(a3 + 2) == 6)
      {
        v552 = *a3;
        v553 = (*a3)[8];
        if (!v553)
        {
          v554 = 0;
LABEL_972:
          v555 = *(v552 + 10);
          if (!v555)
          {
            goto LABEL_973;
          }

          goto LABEL_719;
        }

        if (*(a3 + 2) == 6)
        {
          v552 = *a3;
          goto LABEL_972;
        }
      }

      else
      {
        v554 = 0;
      }

      v555 = (*a3)[8];
      if (!v555)
      {
LABEL_973:
        v360 = 0;
LABEL_974:
        v618 = v76;
        v619 = v77;
        v620 = v267;
        v621 = v551;
        v622 = v554;
        v623 = 0;
LABEL_975:
        v94 = llvm::DITemplateValueParameter::getImpl(v618, v619, v620, v621, v622, v360, v623, 1);
        goto LABEL_1062;
      }

LABEL_719:
      goto LABEL_974;
    case 27:
      v152 = *(a3 + 2);
      if (v152 - 14 <= 0xFFFFFFFC)
      {
        goto LABEL_272;
      }

      v153 = *a3;
      v154 = **a3;
      v940 = v154 & 1;
      v155 = v154 >> 1;
      if ((v154 >> 1))
      {
        if (v155 == 1)
        {
          v347 = *(a2 + 208);
          v348 = *(v153 + 2);
          if (v154)
          {
            if (v348)
            {
              v153 = *a3;
            }

            else
            {
              v931 = 0;
            }

            v690 = *(v153 + 4);
            if (v690)
            {
              v153 = *a3;
            }

            else
            {
              v920 = 0;
            }

            v692 = *(v153 + 6);
            if (v692)
            {
              v153 = *a3;
            }

            else
            {
              v907 = 0;
            }

            v694 = *(v153 + 8);
            if (v694)
            {
              v153 = *a3;
            }

            else
            {
              v695 = 0;
            }

            v697 = *(v153 + 10);
            v698 = *(v153 + 12);
            if (v698)
            {
            }

            else
            {
              v699 = 0;
            }

            v703 = *a3;
            v704 = *(*a3 + 7);
            v705 = *(*a3 + 8);
            v706 = (*a3)[20];
            if (v706)
            {
              v703 = *a3;
            }

            else
            {
              v707 = 0;
            }

            v712 = v705 != 0;
            v713 = v704 != 0;
            v714 = v703[11];
            v819[4] = 1;
            *v819 = 1;
          }

          else
          {
            if (v348)
            {
              v153 = *a3;
            }

            else
            {
              v931 = 0;
            }

            v691 = *(v153 + 4);
            if (v691)
            {
              v153 = *a3;
            }

            else
            {
              v920 = 0;
            }

            v693 = *(v153 + 6);
            if (v693)
            {
              v153 = *a3;
            }

            else
            {
              v907 = 0;
            }

            v696 = *(v153 + 8);
            if (v696)
            {
              v153 = *a3;
            }

            else
            {
              v695 = 0;
            }

            v697 = *(v153 + 10);
            v700 = *(v153 + 12);
            if (v700)
            {
            }

            else
            {
              v701 = 0;
            }

            v708 = *a3;
            v709 = *(*a3 + 7);
            v710 = *(*a3 + 8);
            v711 = (*a3)[20];
            if (v711)
            {
              v708 = *a3;
            }

            else
            {
              v707 = 0;
            }

            v712 = v710 != 0;
            v713 = v709 != 0;
            v714 = v708[11];
            v819[4] = 1;
            *v819 = 0;
          }

          v94 = llvm::DIGlobalVariable::getImpl(v347, v931, v920, v907, v695, v697, v702, v713, v712, v707, 0, v714, 0, *v819, v819[4]);
          goto LABEL_1062;
        }

        if (v155 != 2)
        {
          goto LABEL_272;
        }

        if (v152 >= 0xD && (v156 = *(v153 + 24)) != 0)
        {
          v153 = *a3;
          if ((v940 & 1) == 0)
          {
LABEL_161:
            v912 = *(a2 + 208);
            v926 = v157;
            v158 = *(v153 + 2);
            if (v158)
            {
              v153 = *a3;
            }

            else
            {
              v900 = 0;
            }

            v715 = *(v153 + 4);
            if (v715)
            {
              v153 = *a3;
            }

            else
            {
              v894 = 0;
            }

            v717 = *(v153 + 6);
            if (v717)
            {
              v153 = *a3;
            }

            else
            {
              v886 = 0;
            }

            v719 = *(v153 + 8);
            if (v719)
            {
              v153 = *a3;
            }

            else
            {
              v720 = 0;
            }

            v723 = *(v153 + 10);
            v724 = *(v153 + 12);
            if (v724)
            {
            }

            else
            {
              v725 = 0;
            }

            v730 = *a3;
            v731 = *(*a3 + 7);
            v732 = *(*a3 + 8);
            v733 = (*a3)[18];
            if (v733)
            {
              v730 = *a3;
            }

            else
            {
              v734 = 0;
            }

            v741 = *(v730 + 20);
            if (v741)
            {
              v730 = *a3;
            }

            else
            {
              v742 = 0;
            }

            v94 = llvm::DIGlobalVariable::getImpl(v912, v900, v894, v886, v720, v723, v729, v731 != 0, v732 != 0, v734, v742, v730[11], v926, 0, 1);
            goto LABEL_1062;
          }
        }

        else
        {
          v157 = 0;
          if ((v154 & 1) == 0)
          {
            goto LABEL_161;
          }
        }

        v919 = *(a2 + 208);
        v932 = v157;
        v506 = *(v153 + 2);
        if (v506)
        {
          v153 = *a3;
        }

        else
        {
          v905 = 0;
        }

        v716 = *(v153 + 4);
        if (v716)
        {
          v153 = *a3;
        }

        else
        {
          v895 = 0;
        }

        v718 = *(v153 + 6);
        if (v718)
        {
          v153 = *a3;
        }

        else
        {
          v887 = 0;
        }

        v721 = *(v153 + 8);
        if (v721)
        {
          v153 = *a3;
        }

        else
        {
          v722 = 0;
        }

        v726 = *(v153 + 10);
        v727 = *(v153 + 12);
        if (v727)
        {
        }

        else
        {
          v728 = 0;
        }

        v736 = *a3;
        v737 = *(*a3 + 7);
        v738 = *(*a3 + 8);
        v739 = (*a3)[18];
        if (v739)
        {
          v736 = *a3;
        }

        else
        {
          v740 = 0;
        }

        v743 = *(v736 + 20);
        if (v743)
        {
          v736 = *a3;
        }

        else
        {
          v744 = 0;
        }

        v94 = llvm::DIGlobalVariable::getImpl(v919, v905, v895, v887, v722, v726, v735, v737 != 0, v738 != 0, v740, v744, v736[11], v932, 1, 1);
        goto LABEL_1062;
      }

      *(a2 + 1042) = 1;
      v349 = *(v153 + 18);
      if (v349)
      {
        v152 = *(a3 + 2);
      }

      else
      {
        v350 = 0;
      }

      if (v152 < 0xC)
      {
        LODWORD(v678) = 0;
LABEL_952:
        if (v350 && *v350 == 1)
        {
          v679 = *(v350 + 16);
          v680 = *(v679 + 16);
          if (v679 && v680 == 3)
          {
            v350 = 0;
            v681 = v679;
            goto LABEL_1084;
          }

          v350 = 0;
          v681 = 0;
          if (!v679 || v680 != 16)
          {
LABEL_1084:
            v752 = *a3;
            v753 = (*a3)[2];
            v921 = *(a2 + 208);
            v934 = v681;
            if (v940 == 1)
            {
              if (v753)
              {
                v752 = *a3;
              }

              else
              {
                v908 = 0;
              }

              v754 = *(v752 + 4);
              if (v754)
              {
                v752 = *a3;
              }

              else
              {
                v896 = 0;
              }

              v756 = *(v752 + 6);
              if (v756)
              {
                v752 = *a3;
              }

              else
              {
                v888 = 0;
              }

              v758 = *(v752 + 8);
              if (v758)
              {
                v752 = *a3;
              }

              else
              {
                v759 = 0;
              }

              v762 = *(v752 + 10);
              v763 = *(v752 + 12);
              if (v763)
              {
              }

              else
              {
                v764 = 0;
              }

              v769 = *a3;
              v770 = *(*a3 + 7);
              v771 = v769[8];
              v772 = *(v769 + 20);
              if (v772)
              {
              }

              else
              {
                v773 = 0;
              }

              v780 = llvm::DIGlobalVariable::getImpl(v921, v908, v896, v888, v759, v762, v768, v770 != 0, v771 != 0, v773, 0, v678, 0, 1, 1);
            }

            else
            {
              if (v753)
              {
                v752 = *a3;
              }

              else
              {
                v909 = 0;
              }

              v755 = *(v752 + 4);
              if (v755)
              {
                v752 = *a3;
              }

              else
              {
                v897 = 0;
              }

              v757 = *(v752 + 6);
              if (v757)
              {
                v752 = *a3;
              }

              else
              {
                v889 = 0;
              }

              v760 = *(v752 + 8);
              if (v760)
              {
                v752 = *a3;
              }

              else
              {
                v761 = 0;
              }

              v765 = *(v752 + 10);
              v766 = *(v752 + 12);
              if (v766)
              {
              }

              else
              {
                v767 = 0;
              }

              v775 = *a3;
              v776 = *(*a3 + 7);
              v777 = v775[8];
              v778 = *(v775 + 20);
              if (v778)
              {
              }

              else
              {
                v779 = 0;
              }

              v780 = llvm::DIGlobalVariable::getImpl(v921, v909, v897, v889, v761, v765, v774, v776 != 0, v777 != 0, v779, 0, v678, 0, 0, 1);
            }

            v781 = v780;
            if (!(v934 | v350))
            {
              goto LABEL_1129;
            }

            v782 = *(a2 + 208);
            v783 = v350;
            if (!v350)
            {
              v783 = llvm::DIExpression::getImpl(*(a2 + 208), 0, 0, 0, 1);
            }

            v784 = llvm::DIGlobalVariableExpression::getImpl(v782, v781, v783, 1, 1);
            if (v934)
            {
              llvm::Value::addMetadata(v934, 0, v784);
            }

            if (!v350)
            {
LABEL_1129:
              v784 = v781;
            }

            v745 = *a8;
            v746 = a2;
            v145 = v784;
            goto LABEL_1064;
          }

          v750 = *(a2 + 208);
          v945.n128_u64[0] = 16;
          v751 = (v679 + 24);
          if (*(v679 + 32) >= 0x41u)
          {
            v751 = *v751;
          }

          v945.n128_u64[1] = *v751;
          v946[0] = 159;
          v350 = llvm::DIExpression::getImpl(v750, &v945, 3, 0, 1);
        }

        v681 = 0;
        goto LABEL_1084;
      }

      v678 = *(*a3 + 11);
      if (!HIDWORD(v678))
      {
        goto LABEL_952;
      }

      goto LABEL_361;
    case 28:
      v64 = *(a3 + 2);
      if (v64 - 11 <= 0xFFFFFFFC)
      {
        goto LABEL_272;
      }

      v65 = *a3;
      v66 = **a3;
      v940 = **a3 & 1;
      if ((v66 & 2) == 0)
      {
        LODWORD(v67) = 0;
        v68 = v64 > 8;
        v69 = v64 > 8;
        v70 = 7;
        if (v68)
        {
          v70 = 8;
        }

        v911 = 0;
        LODWORD(v924) = v65[v70];
        if (v66)
        {
          goto LABEL_66;
        }

LABEL_644:
        v904 = *(a2 + 208);
        v503 = v69;
        v504 = v65[v69 + 1];
        if (v504)
        {
          v65 = *a3;
        }

        else
        {
          v505 = 0;
        }

        v535 = v65[v503 | 2];
        if (v535)
        {
          v65 = *a3;
        }

        else
        {
          v536 = 0;
        }

        v539 = v65[v503 + 3];
        if (v539)
        {
          v65 = *a3;
        }

        else
        {
          v540 = 0;
        }

        v544 = v65[v503 | 4];
        v545 = v65[v503 + 5];
        if (v545)
        {
        }

        else
        {
          v546 = 0;
        }

        v94 = llvm::DILocalVariable::getImpl(v904, v505, v536, v540, v544, v548, *&(*a3)[2 * (v503 | 6)], v924, v67, v911, 0, 1);
        goto LABEL_1062;
      }

      v67 = v65[8];
      if (HIDWORD(v67))
      {
LABEL_361:
        v91 = "Alignment value is too large";
LABEL_273:
        v945.n128_u64[0] = v91;
        v947 = 259;
        error(v8);
      }

      v924 = v65[7];
      if (v64 >= 0xA && (v249 = *(v65 + 18)) != 0)
      {
        v69 = 0;
        v65 = *a3;
        if ((v940 & 1) == 0)
        {
          goto LABEL_644;
        }
      }

      else
      {
        v911 = 0;
        v69 = 0;
        if ((v66 & 1) == 0)
        {
          goto LABEL_644;
        }
      }

LABEL_66:
      v899 = *(a2 + 208);
      v71 = v69;
      v72 = v65[v69 + 1];
      if (v72)
      {
        v65 = *a3;
      }

      else
      {
        v73 = 0;
      }

      v533 = v65[v71 | 2];
      if (v533)
      {
        v65 = *a3;
      }

      else
      {
        v534 = 0;
      }

      v537 = v65[v71 + 3];
      if (v537)
      {
        v65 = *a3;
      }

      else
      {
        v538 = 0;
      }

      v541 = v65[v71 | 4];
      v542 = v65[v71 + 5];
      if (v542)
      {
      }

      else
      {
        v543 = 0;
      }

      v94 = llvm::DILocalVariable::getImpl(v899, v73, v534, v538, v541, v547, *&(*a3)[2 * (v71 | 6)], v924, v67, v911, 1, 1);
      goto LABEL_1062;
    case 29:
      v29 = *(a3 + 2);
      if (!v29)
      {
        goto LABEL_272;
      }

      v30 = (*a3 + 2);
      v31 = **a3;
      v940 = **a3 & 1;
      v941 = v30;
      *&v942 = v29 - 1;
      v945.n128_u64[0] = v946;
      v945.n128_u64[1] = 0x600000000;
      llvm::MetadataLoader::MetadataLoaderImpl::upgradeDIExpression(a1, a2, v31 >> 1, &v941, &v945);
      if (*v8)
      {
        v32 = v945.n128_u64[0];
        if (v945.n128_u64[0] != v946)
        {
LABEL_425:
          free(v32);
        }

        goto LABEL_1066;
      }

      v264 = llvm::DIExpression::getImpl(*(a2 + 208), v941, v942, v940, 1);
      ++*a8;
      v129 = v945.n128_u64[0];
      if (v945.n128_u64[0] != v946)
      {
        goto LABEL_135;
      }

      goto LABEL_1065;
    case 30:
      if (*(a3 + 2) != 8)
      {
        goto LABEL_272;
      }

      v205 = *a3;
      v206 = **a3;
      v940 = v206 != 0;
      v207 = *(a2 + 208);
      v208 = *(v205 + 2);
      if (v206)
      {
        if (v208)
        {
          v205 = *a3;
        }

        else
        {
          v209 = 0;
        }

        v415 = *(v205 + 4);
        if (v415)
        {
          v205 = *a3;
        }

        else
        {
          v416 = 0;
        }

        v417 = *(v205 + 6);
        v418 = *(v205 + 8);
        if (v418)
        {
          v205 = *a3;
        }

        else
        {
          v419 = 0;
        }

        v420 = *(v205 + 10);
        if (v420)
        {
          v205 = *a3;
        }

        else
        {
          v421 = 0;
        }

        v422 = *(v205 + 12);
        v423 = *(v205 + 14);
        if (v423)
        {
        }

        else
        {
          v424 = 0;
        }

        v94 = llvm::DIObjCProperty::getImpl(v207, v209, v416, v417, v419, v421, v422, v425, 1, 1);
      }

      else
      {
        if (v208)
        {
          v205 = *a3;
        }

        else
        {
          v326 = 0;
        }

        v600 = *(v205 + 4);
        if (v600)
        {
          v205 = *a3;
        }

        else
        {
          v601 = 0;
        }

        v602 = *(v205 + 6);
        v603 = *(v205 + 8);
        if (v603)
        {
          v205 = *a3;
        }

        else
        {
          v604 = 0;
        }

        v605 = *(v205 + 10);
        if (v605)
        {
          v205 = *a3;
        }

        else
        {
          v606 = 0;
        }

        v607 = *(v205 + 12);
        v608 = *(v205 + 14);
        if (v608)
        {
        }

        else
        {
          v609 = 0;
        }

        v94 = llvm::DIObjCProperty::getImpl(v207, v326, v601, v602, v604, v606, v607, v610, 0, 1);
      }

      goto LABEL_1062;
    case 31:
      v95 = *(a3 + 2);
      if (v95 - 9 > 0xFFFFFFFC)
      {
        v214 = *a3;
        v215 = **a3;
        v940 = v215 != 0;
        v216 = *(a2 + 208);
        v928 = *(v214 + 2);
        v217 = *(v214 + 4);
        if (v215)
        {
          if (v217)
          {
            v214 = *a3;
          }

          else
          {
            v914 = 0;
          }

          v361 = *(v214 + 6);
          if (v361)
          {
          }

          else
          {
            v362 = 0;
          }

          v364 = *a3;
          if (v95 < 7)
          {
            v366 = 0;
            v367 = 0;
          }

          else
          {
            v365 = *(v364 + 12);
            if (v365)
            {
              v364 = *a3;
            }

            else
            {
              v366 = 0;
            }

            v367 = *(v364 + 8);
          }

          v624 = v216;
          v625 = *(v364 + 10);
          if (v625)
          {
          }

          else
          {
            v626 = 0;
          }

          if (v95 >= 8 && (v627 = (*a3)[14]) != 0)
          {
          }

          else
          {
            v628 = 0;
          }

          v94 = llvm::DIImportedEntity::getImpl(v624, v928, v914, v363, v366, v367, v626, v628, 1, 1);
        }

        else
        {
          if (v217)
          {
            v214 = *a3;
          }

          else
          {
            v915 = 0;
          }

          v556 = *(v214 + 6);
          if (v556)
          {
          }

          else
          {
            v557 = 0;
          }

          v559 = *a3;
          if (v95 < 7)
          {
            v561 = 0;
            v562 = 0;
          }

          else
          {
            v560 = *(v559 + 12);
            if (v560)
            {
              v559 = *a3;
            }

            else
            {
              v561 = 0;
            }

            v562 = *(v559 + 8);
          }

          v686 = *(v559 + 10);
          if (v686)
          {
          }

          else
          {
            v687 = 0;
          }

          if (v95 >= 8 && (v688 = (*a3)[14]) != 0)
          {
          }

          else
          {
            v689 = 0;
          }

          v94 = llvm::DIImportedEntity::getImpl(v216, v928, v915, v558, v561, v562, v687, v689, 0, 1);
        }

        goto LABEL_1062;
      }

      v91 = "Invalid DIImportedEntity record";
      goto LABEL_273;
    case 32:
      v107 = *(a3 + 2);
      if (v107 - 10 <= 0xFFFFFFFA)
      {
        goto LABEL_272;
      }

      if (v107 <= 7)
      {
        v108 = 1;
      }

      else
      {
        v108 = 2;
      }

      v109 = *a3;
      v110 = **a3;
      v940 = v110 != 0;
      v925 = *(a2 + 208);
      if (v110)
      {
        if (v107 >= 8 && (v111 = *(v109 + 2)) != 0)
        {
          v109 = *a3;
        }

        else
        {
          v112 = 0;
        }

        v265 = v109[v108];
        if (v265)
        {
          v109 = *a3;
        }

        else
        {
          v266 = 0;
        }

        v368 = v109[v108 + 1];
        if (v368)
        {
          v109 = *a3;
        }

        else
        {
          v369 = 0;
        }

        v370 = v109[v108 + 2];
        if (v370)
        {
          v109 = *a3;
        }

        else
        {
          v371 = 0;
        }

        v372 = v109[v108 + 3];
        if (v372)
        {
          v109 = *a3;
        }

        else
        {
          v373 = 0;
        }

        v374 = v109[v108 | 4];
        if (v374)
        {
        }

        else
        {
          v375 = 0;
        }

        v376 = *(a3 + 2);
        if (v376 >= 8)
        {
          v377 = (*a3)[14];
          if (v376 != 8)
          {
            v378 = *(*a3 + 8) != 0;
            goto LABEL_660;
          }
        }

        else
        {
          v377 = 0;
        }

        v378 = 0;
LABEL_660:
        v94 = llvm::DIModule::getImpl(v925, v112, v266, v369, v371, v373, v375, v377, v378, 1, 1);
        goto LABEL_1062;
      }

      if (v107 >= 8 && (v270 = *(v109 + 2)) != 0)
      {
        v109 = *a3;
      }

      else
      {
        v271 = 0;
      }

      v341 = v109[v108];
      if (v341)
      {
        v109 = *a3;
      }

      else
      {
        v342 = 0;
      }

      v563 = v109[v108 + 1];
      if (v563)
      {
        v109 = *a3;
      }

      else
      {
        v564 = 0;
      }

      v565 = v109[v108 + 2];
      if (v565)
      {
        v109 = *a3;
      }

      else
      {
        v566 = 0;
      }

      v567 = v109[v108 + 3];
      if (v567)
      {
        v109 = *a3;
      }

      else
      {
        v568 = 0;
      }

      v569 = v109[v108 | 4];
      if (v569)
      {
      }

      else
      {
        v570 = 0;
      }

      v571 = *(a3 + 2);
      if (v571 >= 8)
      {
        v572 = (*a3)[14];
        if (v571 != 8)
        {
          v573 = *(*a3 + 8) != 0;
          goto LABEL_946;
        }
      }

      else
      {
        v572 = 0;
      }

      v573 = 0;
LABEL_946:
      v94 = llvm::DIModule::getImpl(v925, v271, v342, v564, v566, v568, v570, v572, v573, 0, 1);
      goto LABEL_1062;
    case 33:
      if (*(a3 + 2) != 5)
      {
        goto LABEL_272;
      }

      v163 = *a3;
      v164 = **a3;
      v940 = v164 != 0;
      v165 = *(a2 + 208);
      v166 = *(v163 + 2);
      v167 = *(v163 + 4);
      v168 = *(v163 + 6);
      if (v164)
      {
        if (v168)
        {
          v163 = *a3;
        }

        else
        {
          v169 = 0;
        }

        v402 = *(v163 + 8);
        if (v402)
        {
        }

        else
        {
          v403 = 0;
        }

        v404 = v165;
        v405 = v166;
        v406 = v167;
        v407 = v169;
        v408 = 1;
      }

      else
      {
        if (v168)
        {
          v163 = *a3;
        }

        else
        {
          v293 = 0;
        }

        v580 = *(v163 + 8);
        if (v580)
        {
        }

        else
        {
          v403 = 0;
        }

        v404 = v165;
        v405 = v166;
        v406 = v167;
        v407 = v293;
        v408 = 0;
      }

      v94 = llvm::DIMacro::getImpl(v404, v405, v406, v407, v403, v408, 1);
      goto LABEL_1062;
    case 34:
      if (*(a3 + 2) != 5)
      {
        goto LABEL_272;
      }

      v113 = *a3;
      v114 = **a3;
      v940 = v114 != 0;
      v115 = *(a2 + 208);
      v116 = *(v113 + 2);
      v117 = *(v113 + 4);
      v118 = *(v113 + 6);
      if (v114)
      {
        if (v118)
        {
          v113 = *a3;
        }

        else
        {
          v119 = 0;
        }

        v379 = *(v113 + 8);
        if (v379)
        {
        }

        else
        {
          v380 = 0;
        }

        v381 = v115;
        v382 = v116;
        v383 = v117;
        v384 = v119;
        v385 = 1;
      }

      else
      {
        if (v118)
        {
          v113 = *a3;
        }

        else
        {
          v272 = 0;
        }

        v574 = *(v113 + 8);
        if (v574)
        {
        }

        else
        {
          v380 = 0;
        }

        v381 = v115;
        v382 = v116;
        v383 = v117;
        v384 = v272;
        v385 = 0;
      }

      v94 = llvm::DIMacroFile::getImpl(v381, v382, v383, v384, v380, v385, 1);
      goto LABEL_1062;
    case 35:
      v945.n128_u64[0] = a2;
      v945.n128_u64[1] = a8;
      goto LABEL_102;
    case 36:
      if ((a3[1] & 1) == 0)
      {
        goto LABEL_272;
      }

      v45 = **a3;
      v46 = **(a2 + 192);
      if (((*(*(a2 + 192) + 8) - v46) >> 5) <= v45)
      {
        goto LABEL_272;
      }

      v47 = *(*(v46 + 32 * v45 + 16) + 16);
      if (v47 > 3 || v47 == 1)
      {
        goto LABEL_1065;
      }

      v49 = (*a3 + 2);
      llvm::MetadataLoader::MetadataLoaderImpl::parseGlobalObjectAttachment(a1, a2);
LABEL_102:
      if (!*v8)
      {
        goto LABEL_1065;
      }

      goto LABEL_1066;
    case 37:
      if (*(a3 + 2) != 3)
      {
        goto LABEL_272;
      }

      v185 = *a3;
      v940 = **a3 != 0;
      v186 = *(v185 + 4);
      {
        v187 = llvm::DIExpression::getImpl(*(a2 + 208), 0, 0, 0, 1);
      }

      v188 = *(a2 + 208);
      v189 = (*a3)[2];
      if (v940 == 1)
      {
        if (v189)
        {
        }

        else
        {
          v190 = 0;
        }

        v484 = v188;
        v485 = v187;
        v486 = 1;
      }

      else
      {
        if (v189)
        {
        }

        else
        {
          v190 = 0;
        }

        v484 = v188;
        v485 = v187;
        v486 = 0;
      }

      v94 = llvm::DIGlobalVariableExpression::getImpl(v484, v190, v485, v486, 1);
      goto LABEL_1062;
    case 40:
      if (*(a3 + 2) != 5)
      {
        goto LABEL_272;
      }

      v210 = *a3;
      v940 = **a3 & 1;
      v211 = *(a2 + 208);
      v212 = *(v210 + 2);
      if (v940)
      {
        if (v212)
        {
          v210 = *a3;
        }

        else
        {
          v263 = 0;
        }

        v493 = *(v210 + 4);
        if (v493)
        {
          v210 = *a3;
        }

        else
        {
          v494 = 0;
        }

        v497 = *(v210 + 6);
        if (v497)
        {
          v210 = *a3;
        }

        else
        {
          v496 = 0;
        }

        v498 = *(v210 + 8);
        v499 = v211;
        v500 = v263;
        v501 = v494;
        v502 = 1;
      }

      else
      {
        if (v212)
        {
          v210 = *a3;
        }

        else
        {
          v213 = 0;
        }

        v491 = *(v210 + 4);
        if (v491)
        {
          v210 = *a3;
        }

        else
        {
          v492 = 0;
        }

        v495 = *(v210 + 6);
        if (v495)
        {
          v210 = *a3;
        }

        else
        {
          v496 = 0;
        }

        v498 = *(v210 + 8);
        v499 = v211;
        v500 = v213;
        v501 = v492;
        v502 = 0;
      }

      v94 = llvm::DILabel::getImpl(v499, v500, v501, v496, v498, v502, 1);
      goto LABEL_1062;
    case 41:
      v25 = *(a3 + 2);
      if ((v25 - 10) <= 0xFFFFFFFD)
      {
        goto LABEL_272;
      }

      v26 = *a3;
      v27 = **a3;
      v940 = v27 != 0;
      if (v25 == 8)
      {
        v28 = 5;
      }

      else
      {
        v242 = *(v26 + 10);
        if (v242)
        {
          v26 = *a3;
          v28 = 6;
          if (v940)
          {
LABEL_561:
            v450 = *(a2 + 208);
            v451 = *(v26 + 2);
            v452 = *(v26 + 4);
            if (v452)
            {
              v26 = *a3;
            }

            else
            {
              v453 = 0;
            }

            v454 = *(v26 + 6);
            if (v454)
            {
              v26 = *a3;
            }

            else
            {
              v455 = 0;
            }

            v456 = *(v26 + 8);
            if (v456)
            {
              v26 = *a3;
            }

            else
            {
              v457 = 0;
            }

            v94 = llvm::DIStringType::getImpl(v450, v451, v453, v455, v457, v243, v26[v28], v26[v28 + 1], v26[v28 + 2], 1, 1);
            goto LABEL_1062;
          }

LABEL_261:
          v244 = *(a2 + 208);
          v245 = *(v26 + 2);
          v246 = *(v26 + 4);
          if (v246)
          {
            v26 = *a3;
          }

          else
          {
            v247 = 0;
          }

          v514 = *(v26 + 6);
          if (v514)
          {
            v26 = *a3;
          }

          else
          {
            v515 = 0;
          }

          v516 = *(v26 + 8);
          if (v516)
          {
            v26 = *a3;
          }

          else
          {
            v517 = 0;
          }

          v94 = llvm::DIStringType::getImpl(v244, v245, v247, v515, v517, v243, v26[v28], v26[v28 + 1], v26[v28 + 2], 0, 1);
          goto LABEL_1062;
        }

        v28 = 6;
      }

      v243 = 0;
      if (v27)
      {
        goto LABEL_561;
      }

      goto LABEL_261;
    case 44:
      v159 = *a3;
      v940 = **a3 & 1;
      v160 = *(a2 + 208);
      v161 = *(v159 + 2);
      if (v940)
      {
        if (v161)
        {
          v159 = *a3;
        }

        else
        {
          v221 = 0;
        }

        v278 = *(v159 + 4);
        if (v278)
        {
          v159 = *a3;
        }

        else
        {
          v279 = 0;
        }

        v282 = *(v159 + 6);
        if (v282)
        {
          v159 = *a3;
        }

        else
        {
          v283 = 0;
        }

        v286 = *(v159 + 8);
        if (v286)
        {
          v159 = *a3;
        }

        else
        {
          v285 = 0;
        }

        v287 = *(v159 + 10);
        v288 = v160;
        v289 = v221;
        v290 = v279;
        v291 = v283;
        v292 = 1;
      }

      else
      {
        if (v161)
        {
          v159 = *a3;
        }

        else
        {
          v162 = 0;
        }

        v276 = *(v159 + 4);
        if (v276)
        {
          v159 = *a3;
        }

        else
        {
          v277 = 0;
        }

        v280 = *(v159 + 6);
        if (v280)
        {
          v159 = *a3;
        }

        else
        {
          v281 = 0;
        }

        v284 = *(v159 + 8);
        if (v284)
        {
          v159 = *a3;
        }

        else
        {
          v285 = 0;
        }

        v287 = *(v159 + 10);
        v288 = v160;
        v289 = v162;
        v290 = v277;
        v291 = v281;
        v292 = 0;
      }

      v94 = llvm::DICommonBlock::getImpl(v288, v289, v290, v291, v285, v287, v292, 1);
      goto LABEL_1062;
    case 45:
      v21 = *(a2 + 208);
      v22 = *a3;
      v23 = (*a3)[2];
      if (v23)
      {
        v22 = *a3;
      }

      else
      {
        v24 = 0;
      }

      v222 = *(v22 + 4);
      if (v222)
      {
        v22 = *a3;
      }

      else
      {
        v223 = 0;
      }

      v224 = *(v22 + 6);
      if (v224)
      {
        v22 = *a3;
      }

      else
      {
        v225 = 0;
      }

      v226 = *(v22 + 8);
      if (v226)
      {
      }

      else
      {
        v227 = 0;
      }

      v94 = llvm::DIGenericSubrange::getImpl(v21, v24, v223, v225, v227, 0, 1);
      goto LABEL_1062;
    case 46:
      v15 = v946;
      v945.n128_u64[0] = v946;
      v945.n128_u64[1] = 0x400000000;
      v16 = *(a3 + 2);
      if (v16 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v945, v946, v16, 8);
        LODWORD(v16) = *(a3 + 2);
      }

      if (!v16)
      {
        goto LABEL_19;
      }

      v17 = *a3;
      v18 = 8 * v16;
      break;
    case 47:
      if (*(a3 + 2) == 1)
      {
        v90 = **a3;
        v940 = **a3 & 1;
        if (v90)
        {
          v94 = llvm::DIAssignID::getImpl(*(a2 + 208), 1);
          goto LABEL_1062;
        }

        v91 = "Invalid DIAssignID record. Must be distinct";
      }

      else
      {
        v91 = "Invalid DIAssignID record.";
      }

      goto LABEL_273;
    default:
      goto LABEL_1065;
  }

  do
  {
    if (llvm::MDNode::classof(v19) && (*(v19 + 1) & 0x7F) == 2)
    {
      v241 = "Invalid record: DIArgList should not contain forward refs";
LABEL_423:
      v941 = v241;
      v944 = 259;
      error(v8);
    }

    if (*v19 - 1 >= 2)
    {
      v241 = "Invalid record";
      goto LABEL_423;
    }

    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v945, v19);
    ++v17;
    v18 -= 8;
  }

  while (v18);
LABEL_19:
  Impl = llvm::DIArgList::getImpl(*(a2 + 208), v945.n128_u64[0], v945.n128_u32[2], 0, 1);
LABEL_133:
  ++*a8;
  v129 = v945.n128_u64[0];
LABEL_134:
  if (v129 != v15)
  {
LABEL_135:
    free(v129);
  }

LABEL_1065:
  *v8 = 0;
LABEL_1066:
  v747 = *MEMORY[0x277D85DE8];
}