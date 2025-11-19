uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,llvm::orc::DynamicThreadPoolTaskDispatcher::dispatch(std::unique_ptr<llvm::orc::Task>)::$_0>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    v2[2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x277C69E40](v4, 0x1020C4034AC6F07);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x277C69BF0]();
    MEMORY[0x277C69E40](v3, 0x20C4093837F09);
  }

  return a1;
}

llvm::Module **std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](llvm::Module **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    llvm::Module::~Module(v2);
    MEMORY[0x277C69E40]();
  }

  return a1;
}

uint64_t llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(uint64_t a1)
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
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()(unsigned int)>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()(unsigned int)>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::jitlink::DWARFRecordSectionSplitter::operator()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, void *a4@<X8>)
{
  v56[8] = *MEMORY[0x277D85DE8];
  result = llvm::jitlink::LinkGraph::findSectionByName(a2, *a1, a1[1], a3);
  if (result)
  {
    v8 = result;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v9 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(result + 32);
    v11 = *(v8 + 32) + 8 * *(v8 + 48);
    if (v11 != v9)
    {
      v12 = v9;
      v13 = v10;
      do
      {
        v51[0] = *v12;
        v55[0] = v56;
        v55[1] = 0x800000000;
        v14 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::FindAndConstruct(&v48, v51);
        std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>::operator=[abi:nn200100]<llvm::SmallVector<llvm::jitlink::Symbol *,8u>,void>((v14 + 1), v55);
        if (v55[0] != v56)
        {
          free(v55[0]);
        }

        do
        {
          ++v12;
        }

        while (v12 != v13 && (*v12 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v12 != v11);
    }

    v15 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 56);
    v17 = *(v8 + 56) + 8 * *(v8 + 72);
    if (v17 != v15)
    {
      v18 = v15;
      v19 = v16;
      do
      {
        v20 = *v18;
        v51[0] = *(*v18 + 8);
        v21 = v51[0];
        v55[0] = 0;
        v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::LookupBucketFor<llvm::jitlink::Block *>(v48, v50, v51[0], v55);
        v23 = v55[0];
        if ((v22 & 1) == 0)
        {
          v23 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::InsertIntoBucketImpl<llvm::jitlink::Block *>(&v48, v51, v55[0]);
          *v23 = v21;
          *(v23 + 8) = 0;
          *(v23 + 88) = 0;
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(v23 + 2, v20);
        do
        {
          ++v18;
        }

        while (v18 != v19 && (*v18 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v18 != v17);
    }

    v24 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 32);
    v26 = *(v8 + 32) + 8 * *(v8 + 48);
    if (v26 != v24)
    {
      v27 = v24;
      v28 = v25;
      do
      {
        v29 = *v27++;
        v55[0] = v29;
        v30 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::FindAndConstruct(&v48, v55);
        v31 = *(v30 + 4);
        v32 = 126 - 2 * __clz(v31);
        if (v31)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,false>(v30[1], (v30[1] + 8 * v31), v33, 1);
        while (v27 != v28 && (*v27 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          ++v27;
        }
      }

      while (v27 != v26);
    }

    v34 = v48;
    v35 = v50;
    v36 = 3 * v50;
    if (v49)
    {
      v37 = v48;
      if (v50)
      {
        v38 = 96 * v50;
        v37 = v48;
        while ((*v37 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v37 += 96;
          v38 -= 96;
          if (!v38)
          {
            goto LABEL_43;
          }
        }
      }

      v39 = v48 + 96 * v50;
      if (v37 != v39)
      {
        v47 = v48;
LABEL_36:
        if (!*(*v37 + 24))
        {
          v54 = 1283;
          v44 = *a1;
          v45 = a1[1];
          v51[0] = "Unexpected zero-fill block in ";
          v52 = v44;
          v53 = v45;
          operator new();
        }

        if (*(*v37 + 32))
        {
          v40 = *(a2 + 188);
          v55[0] = &unk_2883EA5B0;
          llvm::BinaryStreamRef::BinaryStreamRef();
        }

        *a4 = 0;
        v34 = v47;
        while (1)
        {
          v37 += 96;
          if (v37 == v39)
          {
            break;
          }

          if ((*v37 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            if (v37 != v39)
            {
              goto LABEL_36;
            }

            break;
          }
        }
      }
    }

LABEL_43:
    *a4 = 0;
    if (v35)
    {
      v41 = 32 * v36;
      v42 = v34;
      do
      {
        if ((*v42 | 0x1000) != 0xFFFFFFFFFFFFF000 && *(v42 + 88) == 1)
        {
          v43 = *(v42 + 8);
          if ((v42 + 24) != v43)
          {
            free(v43);
          }
        }

        v42 += 96;
        v41 -= 96;
      }

      while (v41);
    }

    result = MEMORY[0x277C69E30](v34, 8);
  }

  else
  {
    *a4 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>::operator=[abi:nn200100]<llvm::SmallVector<llvm::jitlink::Symbol *,8u>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1)
  {
    llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=(a1, a2);
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x800000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=(a1, a2);
    }

    *(a1 + 80) = 1;
  }

  return a1;
}

uint64_t llvm::BinaryStreamReader::readInteger<unsigned int>@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  result = llvm::BinaryStreamRef::readBytes(a1 + 8, *(a1 + 56), 4, a3);
  if (!*a3)
  {
    *(a1 + 56) += 4;
    result = (*(**(a1 + 24) + 16))(*(a1 + 24));
    v7 = MEMORY[0];
    v8 = bswap32(MEMORY[0]);
    if ((result - 1) >= 2)
    {
      v7 = v8;
    }

    *a2 = v7;
    *a3 = 0;
  }

  return result;
}

uint64_t llvm::BinaryStreamReader::readInteger<unsigned long long>@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  result = llvm::BinaryStreamRef::readBytes(a1 + 8, *(a1 + 56), 8, a3);
  if (!*a3)
  {
    *(a1 + 56) += 8;
    result = (*(**(a1 + 24) + 16))(*(a1 + 24));
    v7 = MEMORY[0];
    v8 = bswap64(MEMORY[0]);
    if ((result - 1) >= 2)
    {
      v7 = v8;
    }

    *a2 = v7;
    *a3 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::InsertIntoBucketImpl<llvm::jitlink::Block *>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 8) = 0;
    *(v5 + 88) = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::LookupBucketFor<llvm::jitlink::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 96 * v5);
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
        v6 = (a1 + 96 * (v13 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::InsertIntoBucketImpl<llvm::jitlink::Block *>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

void *llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::grow(uint64_t a1, int a2)
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
  result = operator new(96 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 96 * v10 - 96;
      v13 = vdupq_n_s64(v12 / 0x60);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[12] = -4096;
        }

        v11 += 2;
        result += 24;
      }

      while (((v12 / 0x60 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 96 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *v16;
          *(v18 + 8) = 0;
          *(v18 + 88) = 0;
          if (*(v16 + 88) == 1)
          {
            v18[1] = v18 + 3;
            v18[2] = 0x800000000;
            if (*(v16 + 16))
            {
              llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=((v18 + 1), v16 + 8);
            }

            *(v18 + 88) = 1;
            v19 = *(v16 + 88);
            ++*(a1 + 8);
            if (v19)
            {
              v20 = *(v16 + 8);
              if ((v16 + 24) != v20)
              {
                free(v20);
              }
            }
          }

          else
          {
            ++*(a1 + 8);
          }
        }

        v16 += 96;
        v15 -= 96;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 96 * v21 - 96;
    v24 = vdupq_n_s64(v23 / 0x60);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_2750C1210)));
      if (v25.i8[0])
      {
        *result = -4096;
      }

      if (v25.i8[4])
      {
        result[12] = -4096;
      }

      v22 += 2;
      result += 24;
    }

    while (((v23 / 0x60 + 2) & 0x7FFFFFFFFFFFFFELL) != v22);
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v73 = *(a2 - 1);
        v74 = *v8;
        if ((*(v73 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v8 = v73;
          *(a2 - 1) = v74;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v80 = v8 + 1;
      v81 = v8[1];
      v82 = v8 + 2;
      v83 = v8[2];
      v84 = *v8;
      v85 = *(v81 + 16) & 0x1FFFFFFFFFFFFFFLL;
      v86 = *(v83 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v85 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v86 <= v85)
        {
          goto LABEL_176;
        }

        *v80 = v83;
        *v82 = v81;
        v87 = v8;
        v88 = (v8 + 1);
        result = v81;
        if ((*(v83 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v84 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          goto LABEL_169;
        }
      }

      else
      {
        v87 = v8;
        v88 = (v8 + 2);
        result = *v8;
        if (v86 <= v85)
        {
          *v8 = v81;
          v8[1] = v84;
          v87 = v8 + 1;
          v88 = (v8 + 2);
          result = v84;
          if ((*(v83 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v84 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
LABEL_176:
            v81 = v83;
            goto LABEL_177;
          }
        }

LABEL_169:
        *v87 = v83;
        *v88 = v84;
        v81 = result;
      }

LABEL_177:
      v132 = *(a2 - 1);
      if ((*(v132 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v81 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        *v82 = v132;
        *(a2 - 1) = v81;
        v133 = *v82;
        v134 = *v80;
        if ((*(v133 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v134 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          v8[1] = v133;
          v8[2] = v134;
          v135 = *v8;
          if ((*(v133 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            *v8 = v133;
            v8[1] = v135;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v89 = v8 + 1;
      v91 = v8 == a2 || v89 == a2;
      if (a4)
      {
        if (!v91)
        {
          v92 = 8;
          v93 = v8;
          do
          {
            v95 = *v93;
            v94 = v93[1];
            v93 = v89;
            if ((*(v94 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v95 + 16) & 0x1FFFFFFFFFFFFFFuLL))
            {
              v96 = v92;
              while (1)
              {
                *(v8 + v96) = v95;
                v97 = v96 - 8;
                if (v96 == 8)
                {
                  break;
                }

                v95 = *(v8 + v96 - 16);
                v96 -= 8;
                if ((*(v94 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v95 + 16) & 0x1FFFFFFFFFFFFFFuLL))
                {
                  v98 = (v8 + v97);
                  goto LABEL_130;
                }
              }

              v98 = v8;
LABEL_130:
              *v98 = v94;
            }

            v89 = v93 + 1;
            v92 += 8;
          }

          while (v93 + 1 != a2);
        }
      }

      else if (!v91)
      {
        do
        {
          v131 = *v7;
          v130 = v7[1];
          v7 = v89;
          if ((*(v130 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v131 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            do
            {
              *v89 = v131;
              v131 = *(v89 - 2);
              --v89;
            }

            while ((*(v130 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v131 + 16) & 0x1FFFFFFFFFFFFFFuLL));
            *v89 = v130;
          }

          v89 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v99 = (v9 - 2) >> 1;
        v100 = v99;
        do
        {
          v101 = v100;
          if (v99 >= v100)
          {
            v102 = (2 * v100) | 1;
            v103 = &v8[v102];
            v104 = *v103;
            if (2 * v101 + 2 < v9)
            {
              result = *(v103[1] + 16) & 0x1FFFFFFFFFFFFFFLL;
              if ((*(v104 + 16) & 0x1FFFFFFFFFFFFFFuLL) > result)
              {
                v104 = v103[1];
                ++v103;
                v102 = 2 * v101 + 2;
              }
            }

            v105 = &v8[v101];
            v106 = *v105;
            if ((*(v104 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(*v105 + 16) & 0x1FFFFFFFFFFFFFFuLL))
            {
              do
              {
                v107 = v103;
                *v105 = v104;
                if (v99 < v102)
                {
                  break;
                }

                v108 = (2 * v102) | 1;
                v103 = &v8[v108];
                v109 = 2 * v102 + 2;
                v104 = *v103;
                if (v109 < v9 && (*(v104 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v103[1] + 16) & 0x1FFFFFFFFFFFFFFuLL))
                {
                  v104 = v103[1];
                  ++v103;
                  v108 = v109;
                }

                result = *(v104 + 16) & 0x1FFFFFFFFFFFFFFLL;
                v105 = v107;
                v102 = v108;
              }

              while (result <= (*(v106 + 16) & 0x1FFFFFFFFFFFFFFuLL));
              *v107 = v106;
            }
          }

          v100 = v101 - 1;
        }

        while (v101);
        do
        {
          v110 = 0;
          v111 = *v8;
          v112 = v8;
          do
          {
            v113 = &v112[v110];
            v114 = v113 + 1;
            v115 = v113[1];
            v116 = (2 * v110) | 1;
            v110 = 2 * v110 + 2;
            if (v110 >= v9)
            {
              v110 = v116;
            }

            else
            {
              v119 = v113[2];
              v117 = v113 + 2;
              v118 = v119;
              result = *(v115 + 16) & 0x1FFFFFFFFFFFFFFLL;
              if (result <= (*(v119 + 16) & 0x1FFFFFFFFFFFFFFuLL))
              {
                v110 = v116;
              }

              else
              {
                v115 = v118;
                v114 = v117;
              }
            }

            *v112 = v115;
            v112 = v114;
          }

          while (v110 <= ((v9 - 2) >> 1));
          if (v114 == --a2)
          {
            *v114 = v111;
          }

          else
          {
            *v114 = *a2;
            *a2 = v111;
            v120 = (v114 - v8 + 8) >> 3;
            v121 = v120 < 2;
            v122 = v120 - 2;
            if (!v121)
            {
              v123 = v122 >> 1;
              v124 = &v8[v123];
              v125 = *v124;
              v126 = *v114;
              if ((*(*v124 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v114 + 16) & 0x1FFFFFFFFFFFFFFuLL))
              {
                do
                {
                  v127 = v124;
                  *v114 = v125;
                  if (!v123)
                  {
                    break;
                  }

                  v123 = (v123 - 1) >> 1;
                  v124 = &v8[v123];
                  v125 = *v124;
                  v114 = v127;
                }

                while ((*(*v124 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v126 + 16) & 0x1FFFFFFFFFFFFFFuLL));
                *v127 = v126;
              }
            }
          }

          v121 = v9-- <= 2;
        }

        while (!v121);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 16) & 0x1FFFFFFFFFFFFFFLL;
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v16 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v13 > v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v20 = *v8;
          if ((*(*v10 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            *v8 = *v10;
            *v10 = v20;
          }
        }
      }

      else
      {
        if (v13 > v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v22 = *(a2 - 1);
        if ((*(v22 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v15 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v10 = v22;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v23 = v10 - 1;
      v24 = *(v10 - 1);
      v25 = v8[1];
      v26 = *(v24 + 16) & 0x1FFFFFFFFFFFFFFLL;
      v27 = *(a2 - 2);
      v28 = *(v27 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v26 <= (*(v25 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v28 > v26)
        {
          *v23 = v27;
          *(a2 - 2) = v24;
          v29 = v8[1];
          if ((*(*v23 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v29 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            v8[1] = *v23;
            *v23 = v29;
          }
        }
      }

      else
      {
        if (v28 > v26)
        {
          v8[1] = v27;
          goto LABEL_39;
        }

        v8[1] = v24;
        *v23 = v25;
        v31 = *(a2 - 2);
        if ((*(v31 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v25 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v23 = v31;
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v34 = v10[1];
      v32 = v10 + 1;
      v33 = v34;
      v35 = v8[2];
      v36 = *(v34 + 16) & 0x1FFFFFFFFFFFFFFLL;
      v37 = *(a2 - 3);
      v38 = *(v37 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v36 <= (*(v35 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v38 > v36)
        {
          *v32 = v37;
          *(a2 - 3) = v33;
          v39 = v8[2];
          if ((*(*v32 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v39 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            v8[2] = *v32;
            *v32 = v39;
          }
        }
      }

      else
      {
        if (v38 > v36)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v8[2] = v33;
        *v32 = v35;
        v40 = *(a2 - 3);
        if ((*(v40 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v35 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v32 = v40;
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v41 = *v11;
      v42 = *v23;
      v43 = *(*v11 + 16) & 0x1FFFFFFFFFFFFFFLL;
      v44 = *v32;
      v45 = *(*v32 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v43 <= (*(*v23 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v45 <= v43)
        {
          goto LABEL_56;
        }

        *v11 = v44;
        *v32 = v41;
        v32 = v11;
        v41 = v42;
        if ((*(v44 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v42 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          v41 = v44;
          goto LABEL_56;
        }
      }

      else if (v45 <= v43)
      {
        *v23 = v41;
        *v11 = v42;
        v23 = v11;
        v41 = v44;
        if ((*(v44 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v42 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          v41 = v42;
LABEL_56:
          v46 = *v8;
          *v8 = v41;
          *v11 = v46;
          goto LABEL_57;
        }
      }

      *v23 = v44;
      *v32 = v42;
      goto LABEL_56;
    }

    v17 = *v8;
    v18 = *v11;
    v19 = *(*v8 + 16) & 0x1FFFFFFFFFFFFFFLL;
    if (v19 <= (*(*v11 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      if (v13 > v19)
      {
        *v8 = v12;
        *(a2 - 1) = v17;
        v21 = *v11;
        if ((*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v11 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v11 = *v8;
          *v8 = v21;
        }
      }

      goto LABEL_57;
    }

    if (v13 > v19)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v18;
      goto LABEL_57;
    }

    *v11 = v17;
    *v8 = v18;
    v30 = *(a2 - 1);
    if ((*(v30 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v18 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      *v8 = v30;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v47 = *v8;
    if (a4)
    {
      v48 = *(v47 + 16) & 0x1FFFFFFFFFFFFFFLL;
LABEL_60:
      v49 = 0;
      do
      {
        v50 = v8[++v49];
      }

      while ((*(v50 + 16) & 0x1FFFFFFFFFFFFFFuLL) > v48);
      v51 = &v8[v49];
      v52 = a2;
      if (v49 == 1)
      {
        v52 = a2;
        do
        {
          if (v51 >= v52)
          {
            break;
          }

          v54 = *--v52;
        }

        while ((*(v54 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= v48);
      }

      else
      {
        do
        {
          v53 = *--v52;
        }

        while ((*(v53 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= v48);
      }

      if (v51 >= v52)
      {
        v61 = v51 - 1;
      }

      else
      {
        v55 = *v52;
        v56 = &v8[v49];
        v57 = v52;
        do
        {
          *v56 = v55;
          *v57 = v50;
          v58 = *(v47 + 16) & 0x1FFFFFFFFFFFFFFLL;
          do
          {
            v59 = v56[1];
            ++v56;
            v50 = v59;
          }

          while ((*(v59 + 16) & 0x1FFFFFFFFFFFFFFuLL) > v58);
          do
          {
            v60 = *--v57;
            v55 = v60;
          }

          while ((*(v60 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= v58);
        }

        while (v56 < v57);
        v61 = v56 - 1;
      }

      if (v61 != v8)
      {
        *v8 = *v61;
      }

      *v61 = v47;
      if (v51 < v52)
      {
        goto LABEL_81;
      }

      v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **>(v8, v61);
      v8 = v61 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **>(v61 + 1, a2);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,false>(v7, v61, a3, a4 & 1);
        a4 = 0;
        v8 = v61 + 1;
      }
    }

    else
    {
      v48 = *(v47 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if ((*(*(v8 - 1) + 16) & 0x1FFFFFFFFFFFFFFuLL) > v48)
      {
        goto LABEL_60;
      }

      if (v48 <= (*(*(a2 - 1) + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        v64 = v8 + 1;
        do
        {
          v8 = v64;
          if (v64 >= a2)
          {
            break;
          }

          ++v64;
        }

        while (v48 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL));
      }

      else
      {
        do
        {
          v63 = v8[1];
          ++v8;
        }

        while (v48 <= (*(v63 + 16) & 0x1FFFFFFFFFFFFFFuLL));
      }

      v65 = a2;
      if (v8 < a2)
      {
        v65 = a2;
        do
        {
          v66 = *--v65;
        }

        while (v48 > (*(v66 + 16) & 0x1FFFFFFFFFFFFFFuLL));
      }

      if (v8 < v65)
      {
        v67 = *v8;
        v68 = *v65;
        do
        {
          *v8 = v68;
          *v65 = v67;
          v69 = *(v47 + 16) & 0x1FFFFFFFFFFFFFFLL;
          do
          {
            v70 = v8[1];
            ++v8;
            v67 = v70;
          }

          while (v69 <= (*(v70 + 16) & 0x1FFFFFFFFFFFFFFuLL));
          do
          {
            v71 = *--v65;
            v68 = v71;
          }

          while (v69 > (*(v71 + 16) & 0x1FFFFFFFFFFFFFFuLL));
        }

        while (v8 < v65);
      }

      v72 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v72;
      }

      a4 = 0;
      *v72 = v47;
    }
  }

  v75 = *v8;
  v76 = v8[1];
  v77 = *(v76 + 16) & 0x1FFFFFFFFFFFFFFLL;
  v78 = *(a2 - 1);
  v79 = *(v78 + 16) & 0x1FFFFFFFFFFFFFFLL;
  if (v77 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
  {
    if (v79 > v77)
    {
      v8[1] = v78;
      *(a2 - 1) = v76;
      v129 = *v8;
      v128 = v8[1];
      if ((*(v128 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        *v8 = v128;
        v8[1] = v129;
      }
    }
  }

  else
  {
    if (v79 <= v77)
    {
      *v8 = v76;
      v8[1] = v75;
      v136 = *(a2 - 1);
      if ((*(v136 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v75 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        return result;
      }

      v8[1] = v136;
    }

    else
    {
      *v8 = v78;
    }

    *(a2 - 1) = v75;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 16) & 0x1FFFFFFFFFFFFFFLL;
  v8 = *a3;
  v9 = *(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL;
  if (v7 <= (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL))
  {
    if (v9 <= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v5;
      v10 = *result;
      if ((*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        *result = *a2;
        *a2 = v10;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v9 > v7)
    {
      *result = v8;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if ((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v6 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if ((*(*a4 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v5 + 16) & 0x1FFFFFFFFFFFFFFuLL))
  {
    *a3 = *a4;
    *a4 = v5;
    v11 = *a2;
    if ((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      *a2 = *a3;
      *a3 = v11;
      v12 = *result;
      if ((*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        *result = *a2;
        *a2 = v12;
      }
    }
  }

  v13 = *a4;
  if ((*(*a5 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a4 + 16) & 0x1FFFFFFFFFFFFFFuLL))
  {
    *a4 = *a5;
    *a5 = v13;
    v14 = *a3;
    if ((*(*a4 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      *a3 = *a4;
      *a4 = v14;
      v15 = *a2;
      if ((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        *a2 = *a3;
        *a3 = v15;
        v16 = *result;
        if ((*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *result = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 16) & 0x1FFFFFFFFFFFFFFLL;
      v8 = *(a2 - 1);
      v9 = *(v8 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v7 <= (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v9 > v7)
        {
          a1[1] = v8;
          *(a2 - 1) = v6;
          v31 = *a1;
          v30 = a1[1];
          if ((*(v30 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            *a1 = v30;
            a1[1] = v31;
          }
        }

        return 1;
      }

      if (v9 <= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v44 = *(a2 - 1);
        if ((*(v44 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v5 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          return 1;
        }

        a1[1] = v44;
      }

      else
      {
        *a1 = v8;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v26 = *(v23 + 16) & 0x1FFFFFFFFFFFFFFLL;
    if (v25 <= (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      if (v26 <= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v27 = a1;
      v28 = a1 + 1;
      v29 = v21;
      if ((*(v23 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v24 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
LABEL_42:
        v40 = *(a2 - 1);
        if ((*(v40 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v21 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v22 = v40;
          *(a2 - 1) = v21;
          v41 = *v22;
          v42 = *v20;
          if ((*(v41 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v42 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            a1[1] = v41;
            a1[2] = v42;
            v43 = *a1;
            if ((*(v41 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
            {
              *a1 = v41;
              a1[1] = v43;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v27 = a1;
      v28 = a1 + 2;
      v29 = *a1;
      if (v26 <= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v27 = a1 + 1;
        v28 = a1 + 2;
        v29 = v24;
        if ((*(v23 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v24 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          goto LABEL_41;
        }
      }
    }

    *v27 = v23;
    *v28 = v24;
    v21 = v29;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if ((*(v3 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  v10 = a1[2];
  v12 = a1[1];
  v13 = *a1;
  v14 = *(v12 + 16) & 0x1FFFFFFFFFFFFFFLL;
  v15 = *(v10 + 16) & 0x1FFFFFFFFFFFFFFLL;
  if (v14 <= (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
  {
    if (v15 <= v14)
    {
      goto LABEL_27;
    }

    a1[1] = v10;
    *v11 = v12;
    v18 = *(v10 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v19 = *(v13 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v16 = a1;
    v17 = a1 + 1;
LABEL_25:
    if (v18 <= v19)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v16 = a1;
  v17 = a1 + 2;
  if (v15 <= v14)
  {
    *a1 = v12;
    a1[1] = v13;
    v18 = *(v10 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v19 = *(v13 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v16 = a1 + 1;
    v17 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v16 = v10;
  *v17 = v13;
LABEL_27:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v33 = 0;
  for (i = 24; ; i += 8)
  {
    v35 = *v32;
    v36 = *v11;
    if ((*(*v32 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v36 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      v37 = i;
      while (1)
      {
        *(a1 + v37) = v36;
        v38 = v37 - 8;
        if (v37 == 8)
        {
          break;
        }

        v36 = *(a1 + v37 - 16);
        v37 -= 8;
        if ((*(v35 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v36 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          v39 = (a1 + v38);
          goto LABEL_35;
        }
      }

      v39 = a1;
LABEL_35:
      *v39 = v35;
      if (++v33 == 8)
      {
        break;
      }
    }

    v11 = v32++;
    if (v32 == a2)
    {
      return 1;
    }
  }

  return v32 + 1 == a2;
}

uint64_t llvm::jitlink::EHFrameEdgeFixer::operator()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, void *a4@<X8>)
{
  v145 = *MEMORY[0x277D85DE8];
  result = llvm::jitlink::LinkGraph::findSectionByName(a2, *a1, a1[1], a3);
  if (result)
  {
    v8 = *(a2 + 184);
    v9 = v8 == 4 || v8 == 8;
    if (!v9)
    {
      v14 = *MEMORY[0x277D85DE8];

      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
    }

    v10 = result;
    v107 = a1;
    v116 = 0;
    v117 = 0;
    v115 = a2;
    v118 = 0;
    v119 = v120;
    v120[0] = 0;
    v121[0] = 0;
    v121[1] = 0;
    v120[1] = 0;
    v122 = 0;
    if (*(a2 + 208))
    {
      v11 = *(a2 + 216);
      if (v11)
      {
        v12 = 24 * v11;
        v13 = *(a2 + 200);
        while (*v13 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v13 += 3;
          v12 -= 24;
          if (!v12)
          {
            goto LABEL_115;
          }
        }
      }

      else
      {
        v13 = *(a2 + 200);
      }

      v15 = *(a2 + 200) + 24 * v11;
      if (v13 != v15)
      {
        v108 = v15;
        v110 = result;
        while (1)
        {
          v16 = v13[2];
          v17 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v16 + 56);
          v19 = *(v16 + 56) + 8 * *(v16 + 72);
          if (v19 != v17)
          {
            break;
          }

LABEL_52:
          v36 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v16 + 32);
          v38 = *(v16 + 32) + 8 * *(v16 + 48);
          if (v36 != v38)
          {
            v39 = v36;
            do
            {
              v40 = *v39;
              v41 = **v39;
              if (v41)
              {
                v42 = v120[0];
                v43 = v120;
                if (v120[0])
                {
                  v43 = v120;
                  v44 = v120[0];
                  do
                  {
                    if (v41 < v44[4])
                    {
                      v43 = v44;
                    }

                    v44 = v44[v41 >= v44[4]];
                  }

                  while (v44);
                  if (v43 != v120)
                  {
                    v45 = v40[4];
                    v46 = v43[5];
                    v47 = *v46;
                    if (v45 + v41 > *v46)
                    {
                      v48 = v46[4];
                      goto LABEL_70;
                    }
                  }
                }

                if (v43 != v119)
                {
                  v49 = *v43;
                  v50 = v43;
                  if (*v43)
                  {
                    do
                    {
                      v51 = v49;
                      v49 = v49[1];
                    }

                    while (v49);
                  }

                  else
                  {
                    do
                    {
                      v51 = v50[2];
                      v9 = *v51 == v50;
                      v50 = v51;
                    }

                    while (v9);
                  }

                  v52 = v51[5];
                  v47 = *v52;
                  v48 = v52[4];
                  if (v48 + *v52 > v41)
                  {
                    v45 = v40[4];
LABEL_70:
                    llvm::jitlink::BlockAddressMap::overlapError(a4, **v39, v45, v47, v48);
                  }
                }

                if (v120 == v43 || (v53 = v43[4], v53 > v41))
                {
                  v54 = *v43;
                  v55 = v43;
                  if (v43 == v119)
                  {
                    goto LABEL_79;
                  }

                  v56 = *v43;
                  v57 = v43;
                  if (v54)
                  {
                    do
                    {
                      v55 = v56;
                      v56 = v56[1];
                    }

                    while (v56);
                  }

                  else
                  {
                    do
                    {
                      v55 = v57[2];
                      v9 = *v55 == v57;
                      v57 = v55;
                    }

                    while (v9);
                  }

                  if (v55[4] < v41)
                  {
LABEL_79:
                    if (v54)
                    {
                      v58 = v55 + 1;
                    }

                    else
                    {
                      v58 = v43;
                    }

                    if (!*v58)
                    {
                      goto LABEL_105;
                    }
                  }

                  else
                  {
                    if (!v120[0])
                    {
                      goto LABEL_105;
                    }

                    while (1)
                    {
                      while (1)
                      {
                        v62 = v42;
                        v63 = v42[4];
                        if (v63 <= v41)
                        {
                          break;
                        }

                        v42 = *v62;
                        if (!*v62)
                        {
                          goto LABEL_105;
                        }
                      }

                      if (v63 >= v41)
                      {
                        break;
                      }

                      v42 = v62[1];
                      if (!v42)
                      {
                        goto LABEL_105;
                      }
                    }
                  }
                }

                else if (v53 < v41)
                {
                  v59 = v43[1];
                  if (v59)
                  {
                    do
                    {
                      v60 = v59;
                      v59 = *v59;
                      v61 = v60;
                    }

                    while (v59);
                  }

                  else
                  {
                    v61 = v43;
                    do
                    {
                      v64 = v61;
                      v61 = v61[2];
                    }

                    while (*v61 != v64);
                  }

                  if (v61 == v120 || (v65 = v61[4], !v120[0]) || v65 > v41)
                  {
LABEL_105:
                    operator new();
                  }

                  while (1)
                  {
                    while (1)
                    {
                      v66 = v42;
                      v67 = v42[4];
                      if (v67 <= v41)
                      {
                        break;
                      }

                      v42 = *v66;
                      if (!*v66)
                      {
                        goto LABEL_105;
                      }
                    }

                    if (v67 >= v41)
                    {
                      break;
                    }

                    v42 = v66[1];
                    if (!v42)
                    {
                      goto LABEL_105;
                    }
                  }
                }
              }

              *a4 = 0;
              do
              {
                ++v39;
              }

              while (v39 != v37 && (*v39 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v39 != v38);
          }

          *a4 = 0;
          v13 += 3;
          v10 = v110;
          if (v13 != v108)
          {
            while (*v13 >= 0xFFFFFFFFFFFFFFFELL)
            {
              v13 += 3;
              if (v13 == v108)
              {
                goto LABEL_115;
              }
            }

            if (v13 != v108)
            {
              continue;
            }
          }

          goto LABEL_115;
        }

        v20 = v17;
        v21 = v18;
        while (1)
        {
          v22 = *v20;
          v136[0] = (*(*v20 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v20 + 8);
          v23 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>,llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>::FindAndConstruct(v121, v136);
          v24 = v23[1];
          if (!v24)
          {
            goto LABEL_37;
          }

          v25 = v22[2];
          v26 = *v22;
          v27 = *v22 - 1;
          if (v27 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v26 + 8), 1uLL);
            v24 = v23[1];
          }

          v28 = v24[2];
          v29 = *v24;
          if (v29 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v29 + 8), 1uLL);
          }

          v30 = (v25 >> 57) & 1;
          v31 = (v28 >> 57) & 1;
          if (v30 < v31)
          {
            break;
          }

          if (v31 < v30)
          {
            goto LABEL_30;
          }

          v33 = (v25 >> 58) & 3;
          v34 = (v28 >> 58) & 3;
          if (v33 < v34)
          {
            break;
          }

          if (v34 < v33)
          {
LABEL_30:
            v32 = 0;
          }

          else
          {
            if (v26 && !v29)
            {
              break;
            }

            if (v26)
            {
              v35 = v26 >= v29;
            }

            else
            {
              v35 = 1;
            }

            v32 = !v35;
          }

LABEL_31:
          if (v29 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v29 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          if (v27 > 0xFFFFFFFFFFFFFFDFLL)
          {
            if (!v32)
            {
              goto LABEL_38;
            }
          }

          else
          {
            atomic_fetch_add((v26 + 8), 0xFFFFFFFFFFFFFFFFLL);
            if ((v32 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

LABEL_37:
          v23[1] = v22;
          do
          {
LABEL_38:
            ++v20;
          }

          while (v20 != v21 && (*v20 | 0x1000) == 0xFFFFFFFFFFFFF000);
          if (v20 == v19)
          {
            goto LABEL_52;
          }
        }

        v32 = 1;
        goto LABEL_31;
      }
    }

LABEL_115:
    __p = 0;
    v113 = 0;
    v114 = 0;
    v68 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v10 + 32);
    v70 = *(v10 + 32) + 8 * *(v10 + 48);
    if (v70 == v68)
    {
      v73 = 0;
      v81 = 0;
    }

    else
    {
      v71 = v68;
      v72 = v69;
      v73 = 0;
      do
      {
        v74 = *v71;
        if (v73 >= v114)
        {
          v75 = (v73 - __p) >> 3;
          if ((v75 + 1) >> 61)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v76 = (v114 - __p) >> 2;
          if (v76 <= v75 + 1)
          {
            v76 = v75 + 1;
          }

          if (v114 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v77 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v77 = v76;
          }

          if (v77)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&__p, v77);
          }

          v78 = (8 * v75);
          *v78 = v74;
          v73 = (8 * v75 + 8);
          v79 = v78 - (v113 - __p);
          memcpy(v79, __p, v113 - __p);
          v80 = __p;
          __p = v79;
          v113 = v73;
          v114 = 0;
          if (v80)
          {
            operator delete(v80);
          }
        }

        else
        {
          *v73++ = v74;
        }

        v113 = v73;
        do
        {
          ++v71;
        }

        while (v71 != v72 && (*v71 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v71 != v70);
      v81 = __p;
    }

    v82 = 126 - 2 * __clz(v73 - v81);
    if (v73 == v81)
    {
      v83 = 0;
    }

    else
    {
      v83 = v82;
    }

    std::__introsort<std::_ClassicAlgPolicy,llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_1 &,llvm::jitlink::Block **,false>(v81, v73, v83, 1);
    v84 = __p;
    v109 = v113;
    if (__p != v113)
    {
      while (1)
      {
        v85 = *v84;
        if (!*(*v84 + 24))
        {
          LOWORD(v127[0]) = 1283;
          v104 = *v107;
          v105 = v107[1];
          v123 = "Unexpected zero-fill block in ";
          v125 = v104;
          v126 = v105;
          operator new();
        }

        v111 = v84;
        if (v85[4])
        {
          break;
        }

        *a4 = 0;
        v84 += 8;
        if (v111 + 8 == v109)
        {
          goto LABEL_161;
        }
      }

      v129 = 0;
      v130 = 0;
      v131 = 0;
      v86 = v85[5];
      v87 = v85[6];
      if (v86 == v87)
      {
        goto LABEL_158;
      }

      v88 = 0;
      while (*(v86 + 24) < 2u)
      {
LABEL_152:
        v86 += 4;
        if (v86 == v87)
        {
          v97 = v85[3];
          v98 = v85[4];
LABEL_158:
          v99 = *(v115 + 188);
          v123 = &unk_2883EA5B0;
          llvm::BinaryStreamRef::BinaryStreamRef();
        }
      }

      v89 = *(v86 + 2);
      v136[0] = 0;
      v90 = v131;
      if (llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(v88, v131, v89, v136))
      {
        v100 = *(v86 + 2);
        v136[0] = "{0:x16}";
        v136[1] = 7;
        v136[2] = &v139;
        v136[3] = 1;
        v137 = &unk_2883ECC68;
        LODWORD(v138) = v100;
        v139 = &v137;
        v140[0] = "Multiple relocations at offset ";
        v140[2] = v136;
        v141 = 1539;
        v132[0] = v140;
        v132[2] = " in ";
        v133 = 770;
        v102 = *v107;
        v101 = v107[1];
        v134[0] = v132;
        v134[2] = v102;
        v134[3] = v101;
        v135 = 1282;
        v142 = v134;
        v143 = " block at address ";
        v144 = 770;
        v103 = *v85;
        v123 = "{0:x16}";
        v124 = 7;
        v125 = &v128;
        v126 = 1;
        v127[0] = &unk_2883EC4C0;
        v127[1] = v103;
        v128 = v127;
        operator new();
      }

      v91 = *v86;
      v92 = v86[2];
      v93 = *(v86 + 2);
      v136[0] = 0;
      v94 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(v88, v90, v93, v136);
      v95 = v136[0];
      if (v94)
      {
LABEL_151:
        *(v95 + 8) = v91;
        *(v95 + 16) = v92;
        goto LABEL_152;
      }

      if (4 * v130 + 4 >= 3 * v90)
      {
        v96 = 2 * v90;
      }

      else
      {
        if (v90 + ~v130 - HIDWORD(v130) > v90 >> 3)
        {
LABEL_148:
          LODWORD(v130) = v130 + 1;
          if (*v95 != -1)
          {
            --HIDWORD(v130);
          }

          *v95 = v93;
          *(v95 + 8) = 0;
          *(v95 + 16) = 0;
          goto LABEL_151;
        }

        v96 = v90;
      }

      llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::grow(&v129, v96);
      v136[0] = 0;
      v88 = v129;
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(v129, v131, v93, v136);
      v95 = v136[0];
      goto LABEL_148;
    }

LABEL_161:
    *a4 = 0;
    if (__p)
    {
      v113 = __p;
      operator delete(__p);
    }

    MEMORY[0x277C69E30](v121[0], 8);
    std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(v120[0]);
    result = MEMORY[0x277C69E30](v116, 8);
  }

  else
  {
    *a4 = 0;
  }

  v106 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::BinaryStreamReader::readInteger<unsigned char>(void *a1, uint64_t a2, _BYTE *a3)
{
  result = llvm::BinaryStreamRef::readBytes(a2 + 8, *(a2 + 56), 1, a1);
  if (!*a1)
  {
    ++*(a2 + 56);
    result = (*(**(a2 + 24) + 16))(*(a2 + 24));
    *a3 = MEMORY[0];
    *a1 = 0;
  }

  return result;
}

uint64_t llvm::jitlink::EHFrameEdgeFixer::readPointerEncoding(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v30 = 0;
  result = llvm::BinaryStreamReader::readInteger<unsigned char>(v15, a2, &v30);
  v8 = v15[0];
  if (v15[0])
  {
    *(a1 + 8) |= 1u;
    *a1 = v8;
    return result;
  }

  v9 = v30;
  if ((((v30 & 0xF) - 1) & 0xFFFFFFF6) == 0 || (v30 & 0x60u) - 96 > 0xFFFFFFBF)
  {
    v15[0] = "{0:x2}";
    v15[1] = 6;
    v15[2] = &v17;
    v15[3] = 1;
    v16[0] = &unk_2883ECC98;
    v16[1] = &v30;
    v17 = v16;
    v18[0] = "Unsupported pointer encoding ";
    v18[2] = v15;
    v19 = 1539;
    *&v20 = v18;
    *&v21 = " for ";
    LOWORD(v22) = 770;
    if (*a4)
    {
      v10 = &v20;
      *&v23 = &v20;
      *&v24 = a4;
      LOWORD(v25) = 770;
      v11 = 2;
      v12 = &v23;
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25 = v22;
      v11 = v22;
      if (v22 == 1)
      {
        v26 = "in CFI record at ";
        v29 = 259;
LABEL_9:
        v13 = *a3;
        v14[0] = &unk_2883EC4C0;
        v14[1] = v13;
        v14[2] = v14;
        operator new();
      }

      v10 = *(&v23 + 1);
      v12 = &v23;
      if (BYTE1(v25) == 1)
      {
        v12 = v23;
      }

      else
      {
        v11 = 2;
      }
    }

    v26 = v12;
    v27 = v10;
    v28 = "in CFI record at ";
    LOBYTE(v29) = v11;
    HIBYTE(v29) = 3;
    goto LABEL_9;
  }

  *(a1 + 8) &= ~1u;
  *a1 = v9;
  return result;
}

void llvm::jitlink::EHFrameEdgeFixer::getOrCreateEncodedPointerEdge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::BinaryStreamReader *a5, llvm::BinaryStreamReader *a6, void *a7, uint64_t a8)
{
  if (a5 == 255)
  {
    *(a1 + 8) &= ~1u;
    *a1 = 0;
    return;
  }

  v12 = a5;
  v16 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::find(a4, a8);
  if (*a4 + 24 * *(a4 + 16) != v16)
  {
    v17 = v16;
    llvm::jitlink::EHFrameEdgeFixer::skipEncodedPointer(v41, a2, v12, a6);
    v18 = v41[0];
    if (!v41[0])
    {
      *(a1 + 8) &= ~1u;
      v18 = *(v17 + 8);
LABEL_18:
      *a1 = v18;
      return;
    }

LABEL_17:
    *(a1 + 8) |= 1u;
    goto LABEL_18;
  }

  if ((v12 & 0xF) == 0)
  {
    if (*(a2 + 16) == 8)
    {
      v19 = 4;
    }

    else
    {
      v19 = 3;
    }

    LOBYTE(v12) = v19 | v12;
  }

  v40 = 0;
  v20 = v12 & 0xF;
  if (v20 > 0xA)
  {
    if (v20 == 11)
    {
      goto LABEL_13;
    }

LABEL_16:
    llvm::BinaryStreamReader::readInteger<unsigned long long>(a6, &v40, v41);
    v18 = v41[0];
    if (v41[0])
    {
      goto LABEL_17;
    }

    v21 = v40;
    v22 = 21;
    v23 = 23;
    goto LABEL_20;
  }

  if (v20 != 3)
  {
    goto LABEL_16;
  }

LABEL_13:
  v45[0] = 0;
  llvm::BinaryStreamReader::readInteger<unsigned int>(a6, v45, v41);
  v18 = v41[0];
  if (v41[0])
  {
    goto LABEL_17;
  }

  v21 = v45[0];
  v40 = v45[0];
  v22 = 20;
  v23 = 22;
LABEL_20:
  v24 = v12 & 0x70;
  v25 = v24 == 16;
  if (v24 == 16)
  {
    v26 = *a7 + a8;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v22 = v23;
  }

  v27 = *(a2 + v22);
  v28 = v26 + v21;
  v44 = v26 + v21;
  v30 = a3 + 56;
  v29 = *(a3 + 56);
  v41[0] = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(v29, *(a3 + 72), v26 + v21, v41) || v41[0] == *(a3 + 56) + 16 * *(a3 + 72))
  {
    v32 = (a3 + 40);
    for (i = *(a3 + 40); i; i = i[v36])
    {
      v34 = i[4];
      v35 = v34 > v28;
      v36 = v34 <= v28;
      if (v35)
      {
        v32 = i;
      }
    }

    if (v32 == *(a3 + 32))
    {
      goto LABEL_40;
    }

    v37 = *v32;
    if (*v32)
    {
      do
      {
        v38 = v37;
        v37 = v37[1];
      }

      while (v37);
    }

    else
    {
      do
      {
        v38 = v32[2];
        v25 = *v38 == v32;
        v32 = v38;
      }

      while (v25);
    }

    v39 = v38[5];
    if (v39[4] + *v39 <= v28)
    {
LABEL_40:
      v41[0] = "{0:x16}";
      v41[1] = 7;
      v41[2] = &v43;
      v41[3] = 1;
      v42[0] = &unk_2883EBA18;
      v42[1] = &v44;
      v43 = v42;
      operator new();
    }

    v31 = llvm::jitlink::LinkGraph::addAnonymousSymbol(*a3, v39, v28 - *v39, 0, 0, 0);
    v41[0] = (v31[2] & 0x1FFFFFFFFFFFFFFLL) + *v31[1];
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>,llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>::FindAndConstruct(v30, v41)[1] = v31;
  }

  else
  {
    v31 = *(v41[0] + 8);
  }

  llvm::jitlink::Block::addEdge(a7, v27, a8, v31, 0);
  *(a1 + 8) &= ~1u;
  *a1 = v31;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::find(uint64_t a1, int a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), a2, &v4))
  {
    return v4;
  }

  else
  {
    return *a1 + 24 * *(a1 + 16);
  }
}

uint64_t llvm::jitlink::EHFrameEdgeFixer::ParseContext::findCIEInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a3;
  v8[0] = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(*(a2 + 8), *(a2 + 24), a3, v8);
  if (result)
  {
    v6 = v8[0] == *(a2 + 8) + 24 * *(a2 + 24);
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v8[0] = "{0:x16}";
    v8[1] = 7;
    v8[2] = &v10;
    v8[3] = 1;
    v9[0] = &unk_2883EBA18;
    v9[1] = &v11;
    v10 = v9;
    operator new();
  }

  v7 = v8[0] + 8;
  *(a1 + 8) &= ~1u;
  *a1 = v7;
  return result;
}

unint64_t llvm::jitlink::EHFrameEdgeFixer::skipEncodedPointer(llvm::jitlink::EHFrameEdgeFixer *this, uint64_t a2, llvm::BinaryStreamReader *a3, llvm::BinaryStreamReader *a4)
{
  if ((a3 & 0xFu) <= 3)
  {
    if ((a3 & 0xF) != 0 || *(a2 + 16) != 8)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = this;
    v6 = a4;
    v7 = 8;
    goto LABEL_8;
  }

  if ((a3 & 0xF) != 0xB)
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = this;
  v6 = a4;
  v7 = 4;
LABEL_8:
  result = llvm::BinaryStreamReader::skip(v6, v7, v5);
  if (!*this)
  {
    *this = 0;
  }

  return result;
}

uint64_t llvm::jitlink::EHFrameNullTerminator::operator()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, void *a4@<X8>)
{
  result = llvm::jitlink::LinkGraph::findSectionByName(a2, *a1, a1[1], a3);
  if (result)
  {
    v11[0] = &llvm::jitlink::EHFrameNullTerminator::NullTerminatorBlockContent;
    v11[1] = 4;
    v9 = 1;
    v10 = -5;
    v8 = 0;
    v7 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, result, v11, &v10, &v9, &v8);
    result = llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v7, 0, 4, 0, 1);
  }

  *a4 = 0;
  return result;
}

uint64_t llvm::Twine::concat(uint64_t this, const llvm::Twine *a2, uint64_t *a3)
{
  v3 = *(a2 + 32);
  if (!*(a2 + 32) || (v4 = *(a3 + 32), !*(a3 + 32)))
  {
    *(this + 32) = 256;
    return this;
  }

  if (v3 == 1)
  {
    v5 = *(a3 + 1);
    *this = *a3;
    *(this + 16) = v5;
    v6 = a3[4];
LABEL_8:
    *(this + 32) = v6;
    return this;
  }

  if (v4 == 1)
  {
    v7 = *(a2 + 1);
    *this = *a2;
    *(this + 16) = v7;
    v6 = *(a2 + 4);
    goto LABEL_8;
  }

  v8 = *(a2 + 33);
  if (v8 == 1)
  {
    v9 = a2;
    a2 = *a2;
    v8 = *(v9 + 1);
  }

  else
  {
    LOBYTE(v3) = 2;
  }

  v10 = a3[1];
  if (*(a3 + 33) == 1)
  {
    v11 = *a3;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = a3;
  }

  *this = a2;
  *(this + 8) = v8;
  *(this + 16) = v11;
  *(this + 24) = v10;
  *(this + 32) = v3;
  *(this + 33) = v4;
  return this;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>,llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), *a2, &v8);
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
    llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -1)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  return result;
}

char *llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>::grow(uint64_t a1, int a2)
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
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          v22 = v19[1];
          *v31 = *v19;
          v21[1] = v22;
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
        *(v29 - 2) = -1;
      }

      if (v30.i8[4])
      {
        *v29 = -1;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

void llvm::jitlink::BlockAddressMap::overlapError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = "{0:x16} -- {1:x16}";
  v12[1] = 18;
  v12[2] = v15;
  v12[3] = 2;
  v13[0] = &unk_2883EB9E8;
  v13[1] = a2;
  v14[0] = &unk_2883EB9E8;
  v14[1] = a3 + a2;
  v15[0] = v13;
  v15[1] = v14;
  v16[0] = "Block at ";
  v16[2] = v12;
  v17 = 1539;
  v18 = v16;
  v19 = " overlaps ";
  v20 = 770;
  v5 = "{0:x16} -- {1:x16}";
  v6 = 18;
  v7 = v11;
  v8 = 2;
  v9[0] = &unk_2883EB9E8;
  v9[1] = a4;
  v10[0] = &unk_2883EB9E8;
  v10[1] = a5 + a4;
  v11[0] = v9;
  v11[1] = v10;
  operator new();
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
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

char *llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::grow(uint64_t a1, int a2)
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
      v14 = result + 48;
      do
      {
        v15 = vdupq_n_s64(v11);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1210)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 12) = -1;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 6) = -1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1830)))).i32[1])
        {
          *v14 = -1;
          v14[6] = -1;
        }

        v11 += 4;
        v14 += 24;
      }

      while (((v12 / 0x18 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v11);
    }

    if (v3)
    {
      v17 = 24 * v3;
      v18 = v4;
      do
      {
        v19 = *v18;
        if (*v18 <= 0xFFFFFFFD)
        {
          v28 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v19, &v28);
          v20 = v28;
          *v28 = *v18;
          *(v20 + 2) = *(v18 + 8);
          ++*(a1 + 8);
        }

        v18 += 24;
        v17 -= 24;
      }

      while (v17);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 24 * v21 - 24;
    v24 = vdupq_n_s64(v23 / 0x18);
    v25 = result + 48;
    do
    {
      v26 = vdupq_n_s64(v22);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_2750C1210)));
      if (vuzp1_s16(v27, *v24.i8).u8[0])
      {
        *(v25 - 12) = -1;
      }

      if (vuzp1_s16(v27, *&v24).i8[2])
      {
        *(v25 - 6) = -1;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_2750C1830)))).i32[1])
      {
        *v25 = -1;
        v25[6] = -1;
      }

      v22 += 4;
      v25 += 24;
    }

    while (((v23 / 0x18 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v22);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation>>,llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(*a1, *(a1 + 16), *a2, &v9);
  result = v9;
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
    llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation>>::grow(a1, v7);
    v9 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(*a1, *(a1 + 16), *a2, &v9);
    result = v9;
  }

  ++*(a1 + 8);
  if (*result != -1)
  {
    --*(a1 + 12);
  }

  v8 = *a2;
  result[1] = 0;
  result[2] = 0;
  *result = v8;
  return result;
}

void *llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation>>::grow(uint64_t a1, int a2)
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
      v16 = v4;
      do
      {
        v17 = *v16;
        if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *v16;
          *(v18 + 1) = *(v16 + 8);
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

llvm::raw_ostream *llvm::format_provider<unsigned char,void>::format(unsigned __int8 *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v15 = 0;
  if (!llvm::detail::HelperFunctions::consumeHexStyle(&v16, &v15))
  {
    if (v17)
    {
      v12 = 0;
      v13 = *v16;
      if (v13 <= 0x63)
      {
        if (v13 != 68)
        {
          if (v13 != 78)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_17:
        v12 = 0;
        ++v16;
        goto LABEL_18;
      }

      if (v13 == 100)
      {
        goto LABEL_17;
      }

      if (v13 == 110)
      {
LABEL_16:
        ++v16;
        v12 = 1;
LABEL_18:
        --v17;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
    v18 = 0;
    if (llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6))
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }

    return llvm::write_integer(a2, *a1, v14, v12);
  }

  v7 = v15;
  v18 = 0;
  v8 = llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6);
  v9 = v18;
  if (v8)
  {
    v9 = 0;
  }

  if ((v7 & 0xFFFFFFFE) == 2)
  {
    v10 = v9 + 2;
  }

  else
  {
    v10 = v9;
  }

  return llvm::write_hex(a2, *a1, v7, v10, 1);
}

llvm::raw_ostream *llvm::jitlink::JITLinkError::log(llvm::jitlink::JITLinkError *this, llvm::raw_ostream *a2)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  v6 = v3[23];
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = v3[23];
  }

  else
  {
    v8 = *(v3 + 1);
  }

  return llvm::raw_ostream::write(a2, v7, v8);
}

uint64_t llvm::jitlink::JITLinkError::convertToErrorCode(llvm::jitlink::JITLinkError *this)
{
  {
  }

  return 1;
}

const char *llvm::jitlink::getGenericEdgeKindName(llvm::jitlink *this)
{
  v1 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v1 = "Keep-Alive";
  }

  if (this)
  {
    return v1;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

void llvm::jitlink::Section::~Section(llvm::jitlink::Section *this)
{
  v2 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(this + 56);
  v4 = *(this + 7) + 8 * *(this + 18);
  if (v4 != v2)
  {
    do
    {
      v5 = **v2;
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      do
      {
        ++v2;
      }

      while (v2 != v3 && (*v2 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v2 != v4);
  }

  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(this + 32);
  v8 = *(this + 4) + 8 * *(this + 12);
  if (v8 != v6)
  {
    v9 = v6;
    v10 = v7;
    do
    {
      v11 = *(*v9 + 40);
      if (v11)
      {
        *(*v9 + 48) = v11;
        operator delete(v11);
      }

      do
      {
        ++v9;
      }

      while (v9 != v10 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v9 != v8);
  }

  MEMORY[0x277C69E30](*(this + 7), 8);
  MEMORY[0x277C69E30](*(this + 4), 8);
}

void llvm::jitlink::LinkGraph::~LinkGraph(llvm::jitlink::LinkGraph *this)
{
  v2 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(this + 248);
  v4 = *(this + 31) + 8 * *(this + 66);
  if (v4 != v2)
  {
    do
    {
      v5 = **v2;
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      do
      {
        ++v2;
      }

      while (v2 != v3 && (*v2 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v2 != v4);
  }

  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(this + 224);
  v8 = *(this + 28) + 8 * *(this + 60);
  if (v8 != v6)
  {
    do
    {
      v9 = **v6;
      if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v9 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      do
      {
        ++v6;
      }

      while (v6 != v7 && (*v6 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v6 != v8);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::clear(this + 224);
  v16 = (this + 272);
  std::vector<llvm::orc::shared::AllocActionCallPair>::__destroy_vector::operator()[abi:nn200100](&v16);
  MEMORY[0x277C69E30](*(this + 31), 8);
  MEMORY[0x277C69E30](*(this + 28), 8);
  v10 = *(this + 54);
  v11 = *(this + 25);
  if (v10)
  {
    v12 = 24 * v10;
    v13 = (v11 + 16);
    do
    {
      if (*(v13 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = *v13;
        *v13 = 0;
        if (v14)
        {
          llvm::jitlink::Section::~Section(v14);
          MEMORY[0x277C69E40]();
        }
      }

      v13 += 3;
      v12 -= 24;
    }

    while (v12);
    v11 = *(this + 25);
  }

  MEMORY[0x277C69E30](v11, 8);
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  v15 = *(this + 16);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this);
}

void llvm::jitlink::LinkGraph::splitBlockImpl(uint64_t **a1@<X1>, void **a2@<X2>, uint64_t **a3@<X8>, __n128 a4@<Q0>)
{
  v5 = a1;
  v98 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = a1[1];
  v8 = **a1;
  v9 = v8[3];
  v10 = v8[4];
  if (v7 - *a1 != 8)
  {
    v11 = 0;
    do
    {
      v12 = &v6[v11];
      v13 = *v12;
      v14 = *(*v12 + 8);
      v15 = *v12[1] - **v12;
      v13[3] = v9 + *v13 - **v6;
      v13[4] = v15;
      v13[1] = v14 & 0xFFFFFFFFFFFFFFFBLL;
      v6 = *a1;
      v7 = a1[1];
      v16 = v11++ == ((v7 - *a1) >> 3) - 2;
    }

    while (!v16);
    v8 = *v6;
  }

  v17 = *(v7 - 1);
  v18 = v17[1];
  v19 = *v17 - *v8;
  v17[3] = v9 + v19;
  v17[4] = v10 - v19;
  v17[1] = v18 & 0xFFFFFFFFFFFFFFFBLL;
  v20 = *a1;
  v21 = a1[1];
  if (*a1 != v21)
  {
    v22 = *(*v20 + 8) & 4;
    do
    {
      v23 = *v20++;
      *(v23 + 8) = *(v23 + 8) & 0xFFFFFFFFFFFFFFFBLL | v22;
    }

    while (v20 != v21);
  }

  LOBYTE(v95[0]) = 0;
  v97 = 0;
  if (a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = v95;
  }

  if ((v24[10] & 1) == 0)
  {
    v93[0] = v94;
    v93[1] = 0x800000000;
    std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>::operator=[abi:nn200100]<llvm::SmallVector<llvm::jitlink::Symbol *,8u>,void>(v24, v93);
    if (v93[0] != v94)
    {
      free(v93[0]);
    }

    v25 = *(**v5 + 16);
    v26 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v25 + 56);
    v28 = *(v25 + 56) + 8 * *(v25 + 72);
    if (v28 != v26)
    {
      v29 = v26;
      v30 = v27;
      do
      {
        if (*(*v29 + 8) == **v5)
        {
          llvm::SmallVectorTemplateBase<void *,true>::push_back(v24, *v29);
        }

        do
        {
          ++v29;
        }

        while (v29 != v30 && (*v29 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v29 != v28);
    }

    v31 = v95;
    if (a2)
    {
      v31 = a2;
    }

    v32 = *(v31 + 2);
    v33 = 126 - 2 * __clz(v32);
    if (v32)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,false>(*v24, *v24 + v32, v34, 1);
  }

  if (a2)
  {
    v35 = a2;
  }

  else
  {
    v35 = v95;
  }

  v36 = *v5;
  v37 = *(v35 + 2);
  if (v5[1] - *v5 != 8)
  {
    v38 = 0;
    do
    {
      if (!v37)
      {
        break;
      }

      v39 = *(*v24 + v37 - 1);
      v40 = *(v39 + 16);
      v41 = **(v39 + 8);
      v42 = (v40 & 0x1FFFFFFFFFFFFFFLL) + v41;
      while (1)
      {
        v43 = &v36[v38];
        if (v42 >= *v43[1])
        {
          break;
        }

        v44 = *v43;
        v45 = v40 + v41 - **v43;
        *(v39 + 8) = *v43;
        *(v39 + 16) = v40 & 0xFE00000000000000 | v45 & 0x1FFFFFFFFFFFFFFLL;
        v46 = v44[4];
        if (*(v39 + 24) > v46)
        {
          *(v39 + 24) = v46 - (v45 & 0x1FFFFFFFFFFFFFFLL);
        }

        v37 = *(v35 + 2) - 1;
        *(v35 + 2) = v37;
        if (!v37)
        {
          v36 = *v5;
          break;
        }

        v39 = *(*v24 + v37 - 1);
        v40 = *(v39 + 16);
        v41 = **(v39 + 8);
        v42 = (v40 & 0x1FFFFFFFFFFFFFFLL) + v41;
        v36 = *v5;
      }

      v16 = v38++ == v5[1] - v36 - 2;
    }

    while (!v16);
  }

  for (; v37; v37 = *(v35 + 2))
  {
    v47 = *(*v24 + v37 - 1);
    *(v35 + 2) = v37 - 1;
    v48 = *(v5[1] - 1);
    v49 = *(v47 + 16);
    v50 = v49 + **(v47 + 8) - *v48;
    *(v47 + 8) = v48;
    *(v47 + 16) = v49 & 0xFE00000000000000 | v50 & 0x1FFFFFFFFFFFFFFLL;
    v51 = v48[4];
    if (*(v47 + 24) > v51)
    {
      *(v47 + 24) = v51 - (v50 & 0x1FFFFFFFFFFFFFFLL);
    }
  }

  if (v97 == 1 && v95[0] != &v96)
  {
    free(v95[0]);
  }

  v52 = **v5;
  v53 = *(v52 + 40);
  v54 = *(v52 + 48);
  v55 = 126 - 2 * __clz((v54 - v53) >> 5);
  if (v54 == v53)
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,false>(v53, v54, v56, 1, a4);
  v57 = *v5;
  v58 = v5[1];
  v59 = v58 - *v5;
  v60 = v59 - 1;
  if (v59 != 1)
  {
    v61 = *(v52 + 40);
    v62 = *(v52 + 48);
    v92 = v5;
    do
    {
      if (v61 == v62)
      {
        break;
      }

      v63 = v57[v60];
      v64 = *v63 - **v57;
      if (*(v62 - 24) >= v64)
      {
        v65 = (v62 - 56);
        v66 = ((v62 - v61) >> 5) - 1;
        v67 = v62 - v61 - 32;
        do
        {
          v68 = v66;
          v69 = v67;
          if (!v66)
          {
            break;
          }

          v70 = *v65;
          v65 -= 8;
          --v66;
          v67 -= 32;
        }

        while (v70 >= v64);
        if (v68 == (v62 - v61) >> 5)
        {
          v71 = (v62 - v61) >> 5;
        }

        else
        {
          v72 = *(v63 + 6);
          v71 = v68;
          do
          {
            v73 = (v61 + v69);
            v74 = *(v63 + 7);
            if (v72 >= v74)
            {
              v77 = *(v63 + 5);
              v78 = (v72 - v77) >> 5;
              if ((v78 + 1) >> 59)
              {
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v79 = v74 - v77;
              v80 = v79 >> 4;
              if (v79 >> 4 <= (v78 + 1))
              {
                v80 = v78 + 1;
              }

              if (v79 >= 0x7FFFFFFFFFFFFFE0)
              {
                v81 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v81 = v80;
              }

              if (v81)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>((v63 + 10), v81);
              }

              v82 = (32 * v78);
              v83 = v73[1];
              *v82 = *v73;
              v82[1] = v83;
              v76 = 32 * v78 + 32;
              v84 = *(v63 + 5);
              v85 = *(v63 + 6) - v84;
              v86 = v82 - v85;
              memcpy(v82 - v85, v84, v85);
              v87 = *(v63 + 5);
              *(v63 + 5) = v86;
              *(v63 + 6) = v76;
              *(v63 + 7) = 0;
              if (v87)
              {
                operator delete(v87);
              }

              v5 = v92;
            }

            else
            {
              v75 = v73[1];
              *v72 = *v73;
              v72[1] = v75;
              v76 = (v72 + 2);
            }

            *(v63 + 6) = v76;
            v57 = *v5;
            v63 = (*v5)[v60];
            v72 = *(v63 + 6);
            *(v72 - 6) -= v64;
            ++v71;
            v61 = *(v52 + 40);
            v62 = *(v52 + 48);
            v69 += 32;
          }

          while (v71 != (v62 - v61) >> 5);
        }

        if (v71 > v68)
        {
          v88 = v62 - v61 - 32;
          do
          {
            v62 -= 32;
            v89 = v68 >= v88 >> 5;
            v88 -= 32;
          }

          while (!v89);
          *(v52 + 48) = v62;
        }
      }

      --v60;
    }

    while (v60);
    v58 = v5[1];
  }

  *a3 = v57;
  a3[1] = v58;
  a3[2] = v5[2];
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v90 = *MEMORY[0x277D85DE8];
}

void llvm::jitlink::markAllSymbolsLive(llvm::jitlink *this@<X0>, void *a2@<X8>)
{
  llvm::jitlink::LinkGraph::defined_symbols(this, v11);
  v9[0] = v11[0];
  v9[1] = v11[1];
  v9[2] = v11[2];
  v10 = v12;
  v4 = v13;
  v5 = v14;
  v6 = v12;
  if (*&v11[0] != v13 || v12 != v14)
  {
    do
    {
      *(*v6 + 16) |= 0x1000000000000000uLL;
      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v9, &v8);
      v6 = v10;
    }

    while (*&v9[0] != v4 || v10 != v5);
  }

  *a2 = 0;
}

void llvm::jitlink::makeTargetOutOfRangeError(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  memset(v70, 0, sizeof(v70));
  v62 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 1;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v61 = &unk_2883EB8F0;
  v69 = v70;
  llvm::raw_ostream::SetUnbuffered(&v61);
  v6 = a2[2];
  v7 = v65;
  if ((v64 - v65) > 8)
  {
    v65[8] = 32;
    *v7 = *"In graph ";
    v65 += 9;
  }

  else
  {
    llvm::raw_ostream::write(&v61, "In graph ", 9uLL);
  }

  v8 = *(a1 + 119);
  if (v8 >= 0)
  {
    v9 = (a1 + 96);
  }

  else
  {
    v9 = *(a1 + 96);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 119);
  }

  else
  {
    v10 = *(a1 + 104);
  }

  llvm::raw_ostream::write(&v61, v9, v10);
  v11 = v65;
  if ((v64 - v65) > 9)
  {
    *(v65 + 4) = 8302;
    *v11 = *", section ";
    v65 += 10;
  }

  else
  {
    llvm::raw_ostream::write(&v61, ", section ", 0xAuLL);
  }

  v12 = llvm::raw_ostream::operator<<(&v61, *v6, *(v6 + 8));
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 0x13)
  {
    *(v13 + 16) = 544499047;
    *v13 = *": relocation target ";
    *(v12 + 4) += 20;
  }

  else
  {
    llvm::raw_ostream::write(v12, ": relocation target ", 0x14uLL);
  }

  if (**a3)
  {
    if (v64 == v65)
    {
      llvm::raw_ostream::write(&v61, "", 1uLL);
    }

    else
    {
      *v65++ = 34;
    }

    v18 = llvm::raw_ostream::operator<<(&v61, (**a3 + 16), ***a3);
    v19 = *(v18 + 4);
    if (*(v18 + 3) == v19)
    {
      llvm::raw_ostream::write(v18, "", 1uLL);
    }

    else
    {
      *v19 = 34;
      ++*(v18 + 4);
    }
  }

  else
  {
    v14 = *(*(*a3 + 8) + 16);
    v15 = llvm::raw_ostream::operator<<(&v61, *v14, *(v14 + 8));
    v16 = v15;
    v17 = *(v15 + 4);
    if ((*(v15 + 3) - v17) > 2)
    {
      *(v17 + 2) = 32;
      *v17 = 11040;
      *(v15 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v15, " + ", 3uLL);
    }

    v20 = *(a3 + 8);
    v54 = "{0:x}";
    v55 = 5;
    v56 = &v60;
    v57 = 1;
    v58 = &unk_2883ECC68;
    LODWORD(v59) = v20;
    v60 = &v58;
    llvm::formatv_object_base::format(&v54, v16);
  }

  v21 = v65;
  if ((v64 - v65) > 0xB)
  {
    *(v65 + 2) = 544437093;
    *v21 = *" at address ";
    v65 += 12;
  }

  else
  {
    llvm::raw_ostream::write(&v61, " at address ", 0xCuLL);
  }

  v22 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*a3 + 8);
  v54 = "{0:x}";
  v55 = 5;
  v56 = &v60;
  v57 = 1;
  v58 = &unk_2883EC4C0;
  v59 = v22;
  v60 = &v58;
  llvm::formatv_object_base::format(&v54, &v61);
  v23 = v65;
  if ((v64 - v65) > 0x13)
  {
    *(v65 + 4) = 543584032;
    *v23 = *" is out of range of ";
    v65 += 20;
  }

  else
  {
    llvm::raw_ostream::write(&v61, " is out of range of ", 0x14uLL);
  }

  v24 = (*(a1 + 192))(*(a3 + 24));
  v25 = llvm::raw_ostream::operator<<(&v61, v24);
  v26 = v25;
  v27 = *(v25 + 4);
  if ((*(v25 + 3) - v27) > 9)
  {
    *(v27 + 8) = 8308;
    *v27 = *" fixup at ";
    *(v25 + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(v25, " fixup at ", 0xAuLL);
  }

  v28 = *a2 + *(a3 + 8);
  v47 = "{0:x}";
  v48 = 5;
  v49 = &v53;
  v50 = 1;
  v51 = &unk_2883EC4C0;
  v52 = v28;
  v53 = &v51;
  llvm::formatv_object_base::format(&v47, v26);
  v29 = *(v26 + 4);
  if (*(v26 + 3) - v29 > 1uLL)
  {
    *v29 = 10272;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, " (", 2uLL);
  }

  v30 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v6 + 56);
  v32 = *(v6 + 56) + 8 * *(v6 + 72);
  if (v32 == v30)
  {
    goto LABEL_57;
  }

  v33 = 0;
  do
  {
    v34 = *v30;
    if (*(*v30 + 8) == a2)
    {
      if (*v34)
      {
        v35 = v34[2];
        if ((v35 & 0x1FFFFFFFFFFFFFFLL) == 0)
        {
          if (!v33 || ((v36 = v33[2], v38 = ((v35 >> 58) & 3) >= ((v36 >> 58) & 3), v37 = (v35 >> 57) & 1, v38) ? (v38 = v37 >= ((v36 & 0x200000000000000) != 0)) : (v38 = 0), !v38))
          {
            v33 = *v30;
          }
        }
      }
    }

    do
    {
      ++v30;
    }

    while (v30 != v31 && (*v30 | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (v30 != v32);
  if (!v33)
  {
LABEL_57:
    v43 = v65;
    if ((v64 - v65) <= 0x13)
    {
      v41 = "<anonymous block> @ ";
      v39 = &v61;
      v42 = 20;
      goto LABEL_59;
    }

    *(v65 + 4) = 541073470;
    *v43 = *"<anonymous block> @ ";
    v65 += 20;
  }

  else
  {
    v39 = llvm::raw_ostream::operator<<(&v61, *v33 + 2, **v33);
    v40 = *(v39 + 4);
    if (*(v39 + 3) - v40 <= 1uLL)
    {
      v41 = ", ";
      v42 = 2;
LABEL_59:
      llvm::raw_ostream::write(v39, v41, v42);
      goto LABEL_62;
    }

    *v40 = 8236;
    *(v39 + 4) += 2;
  }

LABEL_62:
  v44 = *a2;
  v54 = "{0:x}";
  v55 = 5;
  v56 = &v60;
  v57 = 1;
  v58 = &unk_2883EC4C0;
  v59 = v44;
  v60 = &v58;
  llvm::formatv_object_base::format(&v54, &v61);
  v45 = v65;
  if ((v64 - v65) > 2)
  {
    v65[2] = 32;
    *v45 = 11040;
    v65 += 3;
  }

  else
  {
    llvm::raw_ostream::write(&v61, " + ", 3uLL);
  }

  v46 = *(a3 + 8);
  v47 = "{0:x}";
  v48 = 5;
  v49 = &v53;
  v50 = 1;
  v51 = &unk_2883ECC68;
  LODWORD(v52) = v46;
  v53 = &v51;
  llvm::formatv_object_base::format(&v47, &v61);
  if (v64 == v65)
  {
    llvm::raw_ostream::write(&v61, ")", 1uLL);
  }

  else
  {
    *v65++ = 41;
  }

  llvm::raw_ostream::~raw_ostream(&v61);
  llvm::make_error<llvm::jitlink::JITLinkError,std::string>();
}

void llvm::jitlink::makeAlignmentError(unint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = v43 + 1;
    do
    {
      *--v7 = llvm::hexdigit(unsigned int,BOOL)::LUT[a1 & 0xF];
      v8 = a1 > 0xF;
      a1 >>= 4;
    }

    while (v8);
  }

  else
  {
    v7 = v43;
    LOBYTE(v43[0]) = 48;
  }

  std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, v7, v43 + 1, v43 + 1 - v7);
  v9 = std::string::insert(&__dst, 0, "0x");
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v24, " improper alignment for relocation ");
  v12 = v11->__r_.__value_.__r.__words[2];
  *v25 = *&v11->__r_.__value_.__l.__data_;
  v26 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  LOBYTE(v12) = *(a4 + 24);
  v42[0] = "{0:d}";
  v42[1] = 5;
  v43[0] = &v46;
  v43[1] = 1;
  v44 = &unk_2883ECD40;
  v45 = v12;
  v46 = &v44;
  v27[0] = v25;
  v27[2] = v42;
  v28 = 1540;
  v29[0] = v27;
  v29[2] = ": 0x";
  v30 = 770;
  if (a2)
  {
    v13 = v48;
    do
    {
      *--v13 = llvm::hexdigit(unsigned int,BOOL)::LUT[a2 & 0xF];
      v8 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v8);
  }

  else
  {
    v13 = v47;
    v47[0] = 48;
  }

  v14 = __p;
  std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, v13, v48, v48 - v13);
  v15 = v30;
  if (v30 == 1)
  {
    v31 = __p;
    v33 = v22;
    v34 = 260;
    v35 = v20;
    v36 = v21;
    v16 = 4;
    v17 = v32;
  }

  else
  {
    if (!v30)
    {
      v34 = 256;
      v38 = 256;
      v41 = 256;
      goto LABEL_19;
    }

    v18 = v29[0];
    v16 = 2;
    if (HIBYTE(v30) != 1)
    {
      v15 = 2;
      v18 = v29;
    }

    v31 = v18;
    v32 = v29[1];
    *&v33 = __p;
    LOBYTE(v34) = v15;
    v17 = 4;
    HIBYTE(v34) = 4;
    v14 = &v31;
  }

  v37[0] = v14;
  v37[1] = v17;
  v37[2] = " is not aligned to ";
  LOBYTE(v38) = v16;
  HIBYTE(v38) = 3;
  v39 = v37;
  v40 = a3;
  v41 = 2306;
LABEL_19:
  operator new();
}

void llvm::jitlink::createLinkGraphFromObject(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = llvm::identify_magic(*a1, *(a1 + 1));
  if (v6 != 4)
  {
    if (v6 != 24)
    {
      if (v6 == 9)
      {
        v7 = a1[1];
        v13 = *a1;
        v14 = v7;
        v12 = *a2;
        *a2 = 0;
        *(a2 + 8) = 0;
        llvm::jitlink::createLinkGraphFromMachOObject(&v13, &v12);
      }

      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
    }

    v8 = a1[1];
    v13 = *a1;
    v14 = v8;
    v10 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    llvm::jitlink::createLinkGraphFromCOFFObject(&v13, &v10);
  }

  v9 = a1[1];
  v13 = *a1;
  v14 = v9;
  v11 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  llvm::jitlink::createLinkGraphFromELFObject(&v13, &v11, a3);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v11 + 1));
  }
}

void llvm::jitlink::absoluteSymbolsLinkGraph(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24);
  if (v1 - 1 <= 0x3B)
  {
    v2 = dword_2750C4060[v1 - 1];
  }

  if (v1 <= 0x26 && (((1 << v1) & 0x2008000002) != 0 || ((1 << v1) & 0x4010000008) != 0))
  {
    std::to_string(&v8, atomic_fetch_add_explicit(&llvm::jitlink::absoluteSymbolsLinkGraph(llvm::Triple const&,std::shared_ptr<llvm::orc::SymbolStringPool>,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>)::Counter, 1uLL, memory_order_relaxed));
    v3 = std::string::insert(&v8, 0, "<Absolute Symbols ");
    v4 = v3->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = *&v3->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v9, ">");
    v6 = v5->__r_.__value_.__r.__words[0];
    v10[0] = v5->__r_.__value_.__l.__size_;
    *(v10 + 7) = *(&v5->__r_.__value_.__r.__words[1] + 7);
    v7 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    operator new();
  }

  llvm::report_fatal_error("unhandled target architecture", 1);
}

llvm::jitlink::LinkGraph **llvm::jitlink::link(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 180);
  switch(v3)
  {
    case 1:
      *a1 = 0;
      v12 = v2;
      v8 = *a2;
      *a2 = 0;
      v11 = v8;
      llvm::jitlink::link_COFF(&v12, &v11);
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      v5 = &v12;
      break;
    case 3:
      *a1 = 0;
      v14 = v2;
      v6 = *a2;
      *a2 = 0;
      v13 = v6;
      llvm::jitlink::link_ELF(&v14, &v13);
      v7 = v13;
      v13 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v5 = &v14;
      break;
    case 5:
      *a1 = 0;
      v16 = v2;
      v4 = *a2;
      *a2 = 0;
      v15 = v4;
      llvm::jitlink::link_MachO(&v16, &v15);
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      v5 = &v16;
      break;
    default:
      v10 = *a2;
      operator new();
  }

  return std::unique_ptr<llvm::jitlink::LinkGraph>::~unique_ptr[abi:nn200100](v5);
}

void llvm::jitlink::JITLinkError::~JITLinkError(void **this)
{
  *this = &unk_2883ECD70;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883ECD70;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::JITLinkerErrorCategory::~JITLinkerErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x277C69E40);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v78 = *(a2 - 1);
        v79 = *v8;
        if ((*(v78 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v78 + 8) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8))
        {
          *v8 = v78;
          *(a2 - 1) = v79;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,0>(v8, v8 + 1, v8 + 2, a2 - 1);
    }

    if (v9 == 5)
    {
      result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,0>(v8, v8 + 1, v8 + 2, v8 + 3);
      v73 = *(a2 - 1);
      v74 = v8[3];
      if ((*(v73 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v73 + 8) <= (*(v74 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v74 + 8))
      {
        return result;
      }

      v8[3] = v73;
      *(a2 - 1) = v74;
      v76 = v8[2];
      v75 = v8[3];
      if ((*(v75 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v75 + 8) <= (*(v76 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v76 + 8))
      {
        return result;
      }

      v8[2] = v75;
      v8[3] = v76;
      v77 = v8[1];
      if ((*(v75 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v75 + 8) <= (*(v77 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v77 + 8))
      {
        return result;
      }

      v8[1] = v75;
      v8[2] = v77;
      goto LABEL_166;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v85 = v8 + 1;
      v87 = v8 == a2 || v85 == a2;
      if (a4)
      {
        if (!v87)
        {
          v88 = 8;
          v89 = v8;
          do
          {
            v91 = *v89;
            v90 = v89[1];
            v89 = v85;
            if ((*(v90 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v90 + 8) > (*(v91 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v91 + 8))
            {
              v92 = v88;
              while (1)
              {
                *(v8 + v92) = v91;
                v93 = v92 - 8;
                if (v92 == 8)
                {
                  break;
                }

                v91 = *(v8 + v92 - 16);
                v92 -= 8;
                if ((*(v90 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v90 + 8) <= (*(v91 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v91 + 8))
                {
                  v94 = (v8 + v93);
                  goto LABEL_130;
                }
              }

              v94 = v8;
LABEL_130:
              *v94 = v90;
            }

            v85 = v89 + 1;
            v88 += 8;
          }

          while (v89 + 1 != a2);
        }
      }

      else if (!v87)
      {
        do
        {
          v126 = *v7;
          v125 = v7[1];
          v7 = v85;
          if ((*(v125 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v125 + 8) > (*(v126 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v126 + 8))
          {
            v127 = v85;
            do
            {
              *v127 = v126;
              v126 = *(v127 - 2);
              --v127;
            }

            while ((*(v125 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v125 + 8) > (*(v126 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v126 + 8));
            *v127 = v125;
          }

          ++v85;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v95 = (v9 - 2) >> 1;
        v96 = v95;
        do
        {
          v97 = v96;
          if (v95 >= v96)
          {
            v98 = (2 * v96) | 1;
            v99 = &v8[v98];
            v100 = *v99;
            if (2 * v97 + 2 < v9 && (*(v100 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v100 + 8) > (*(v99[1] + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v99[1] + 8))
            {
              v100 = v99[1];
              ++v99;
              v98 = 2 * v97 + 2;
            }

            v101 = &v8[v97];
            v102 = *v101;
            result = *(*v101 + 16) & 0x1FFFFFFFFFFFFFFLL;
            if ((*(v100 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v100 + 8) <= result + **(*v101 + 8))
            {
              do
              {
                v103 = v99;
                *v101 = v100;
                if (v95 < v98)
                {
                  break;
                }

                v104 = (2 * v98) | 1;
                v99 = &v8[v104];
                v105 = 2 * v98 + 2;
                v100 = *v99;
                if (v105 < v9 && (*(v100 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v100 + 8) > (*(v99[1] + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v99[1] + 8))
                {
                  v100 = v99[1];
                  ++v99;
                  v104 = v105;
                }

                result = (*(v100 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v100 + 8);
                v101 = v103;
                v98 = v104;
              }

              while (result <= (*(v102 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v102 + 8));
              *v103 = v102;
            }
          }

          v96 = v97 - 1;
        }

        while (v97);
        do
        {
          v106 = 0;
          v107 = *v8;
          v108 = v8;
          do
          {
            v109 = &v108[v106];
            v110 = v109 + 1;
            v111 = v109[1];
            v112 = (2 * v106) | 1;
            v106 = 2 * v106 + 2;
            if (v106 >= v9)
            {
              v106 = v112;
            }

            else
            {
              v115 = v109[2];
              v113 = v109 + 2;
              v114 = v115;
              result = (*(v111 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v111 + 8);
              if (result <= (*(v115 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v115 + 8))
              {
                v106 = v112;
              }

              else
              {
                v111 = v114;
                v110 = v113;
              }
            }

            *v108 = v111;
            v108 = v110;
          }

          while (v106 <= ((v9 - 2) >> 1));
          if (v110 == --a2)
          {
            *v110 = v107;
          }

          else
          {
            *v110 = *a2;
            *a2 = v107;
            v116 = (v110 - v8 + 8) >> 3;
            v117 = v116 < 2;
            v118 = v116 - 2;
            if (!v117)
            {
              v119 = v118 >> 1;
              v120 = &v8[v119];
              v121 = *v120;
              v122 = *v110;
              if ((*(*v120 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v120 + 8) > (*(*v110 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v110 + 8))
              {
                do
                {
                  v123 = v120;
                  *v110 = v121;
                  if (!v119)
                  {
                    break;
                  }

                  v119 = (v119 - 1) >> 1;
                  v120 = &v8[v119];
                  v121 = *v120;
                  v110 = v123;
                }

                while ((*(*v120 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v120 + 8) > (*(v122 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v122 + 8));
                *v123 = v122;
              }
            }
          }

          v117 = v9-- <= 2;
        }

        while (!v117);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = (*(v12 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v12 + 8);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = (*(*v10 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v10 + 8);
      if (v16 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8))
      {
        if (v13 > v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v20 = *v8;
          if ((*(*v10 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v10 + 8) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8))
          {
            *v8 = *v10;
            *v10 = v20;
          }
        }
      }

      else
      {
        if (v13 > v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v22 = *(a2 - 1);
        if ((*(v22 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v22 + 8) > (*(v15 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v15 + 8))
        {
          *v10 = v22;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v23 = v10 - 1;
      v24 = *(v10 - 1);
      v25 = v8[1];
      v26 = (*(v24 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v24 + 8);
      v27 = *(a2 - 2);
      v28 = (*(v27 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v27 + 8);
      if (v26 <= (*(v25 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v25 + 8))
      {
        if (v28 > v26)
        {
          *v23 = v27;
          *(a2 - 2) = v24;
          v29 = v8[1];
          if ((*(*v23 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v23 + 8) > (*(v29 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v29 + 8))
          {
            v8[1] = *v23;
            *v23 = v29;
          }
        }
      }

      else
      {
        if (v28 > v26)
        {
          v8[1] = v27;
          goto LABEL_39;
        }

        v8[1] = v24;
        *v23 = v25;
        v31 = *(a2 - 2);
        if ((*(v31 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v31 + 8) > (*(v25 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v25 + 8))
        {
          *v23 = v31;
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v34 = v10[1];
      v32 = v10 + 1;
      v33 = v34;
      v35 = v8[2];
      v36 = (*(v34 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v34 + 8);
      v37 = *(a2 - 3);
      v38 = (*(v37 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v37 + 8);
      if (v36 <= (*(v35 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v35 + 8))
      {
        if (v38 > v36)
        {
          *v32 = v37;
          *(a2 - 3) = v33;
          v39 = v8[2];
          if ((*(*v32 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v32 + 8) > (*(v39 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v39 + 8))
          {
            v8[2] = *v32;
            *v32 = v39;
          }
        }
      }

      else
      {
        if (v38 > v36)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v8[2] = v33;
        *v32 = v35;
        v40 = *(a2 - 3);
        if ((*(v40 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v40 + 8) > (*(v35 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v35 + 8))
        {
          *v32 = v40;
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v41 = *v11;
      v42 = *v23;
      v43 = (*(*v11 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v11 + 8);
      v44 = *v32;
      v45 = (*(*v32 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v32 + 8);
      if (v43 <= (*(*v23 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v23 + 8))
      {
        if (v45 <= v43)
        {
          goto LABEL_56;
        }

        *v11 = v44;
        *v32 = v41;
        v32 = v11;
        v41 = v42;
        if ((*(v44 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v44 + 8) <= (*(v42 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v42 + 8))
        {
          v41 = v44;
          goto LABEL_56;
        }
      }

      else if (v45 <= v43)
      {
        *v23 = v41;
        *v11 = v42;
        v23 = v11;
        v41 = v44;
        if ((*(v44 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v44 + 8) <= (*(v42 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v42 + 8))
        {
          v41 = v42;
LABEL_56:
          v46 = *v8;
          *v8 = v41;
          *v11 = v46;
          goto LABEL_57;
        }
      }

      *v23 = v44;
      *v32 = v42;
      goto LABEL_56;
    }

    v17 = *v8;
    v18 = *v11;
    v19 = (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v8 + 8);
    if (v19 <= (*(*v11 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v11 + 8))
    {
      if (v13 > v19)
      {
        *v8 = v12;
        *(a2 - 1) = v17;
        v21 = *v11;
        if ((*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8) > (*(*v11 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v11 + 8))
        {
          *v11 = *v8;
          *v8 = v21;
        }
      }

      goto LABEL_57;
    }

    if (v13 > v19)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v18;
      goto LABEL_57;
    }

    *v11 = v17;
    *v8 = v18;
    v30 = *(a2 - 1);
    if ((*(v30 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v30 + 8) > (*(v18 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v18 + 8))
    {
      *v8 = v30;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v47 = *v8;
    if (a4)
    {
      v48 = (*(v47 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v47 + 8);
LABEL_60:
      v49 = 0;
      do
      {
        v50 = v8[++v49];
      }

      while ((*(v50 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v50 + 8) > v48);
      v51 = &v8[v49];
      v52 = a2;
      if (v49 == 1)
      {
        v52 = a2;
        do
        {
          if (v51 >= v52)
          {
            break;
          }

          v54 = *--v52;
        }

        while ((*(v54 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v54 + 8) <= v48);
      }

      else
      {
        do
        {
          v53 = *--v52;
        }

        while ((*(v53 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v53 + 8) <= v48);
      }

      if (v51 >= v52)
      {
        v61 = v51 - 1;
      }

      else
      {
        v55 = *v52;
        v56 = &v8[v49];
        v57 = v52;
        do
        {
          *v56 = v55;
          *v57 = v50;
          v58 = (*(v47 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v47 + 8);
          do
          {
            v59 = v56[1];
            ++v56;
            v50 = v59;
          }

          while ((*(v59 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v59 + 8) > v58);
          do
          {
            v60 = *--v57;
            v55 = v60;
          }

          while ((*(v60 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v60 + 8) <= v58);
        }

        while (v56 < v57);
        v61 = v56 - 1;
      }

      if (v61 != v8)
      {
        *v8 = *v61;
      }

      *v61 = v47;
      if (v51 < v52)
      {
        goto LABEL_81;
      }

      v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **>(v8, v61);
      v8 = v61 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **>(v61 + 1, a2);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,false>(v7, v61, a3, a4 & 1);
        a4 = 0;
        v8 = v61 + 1;
      }
    }

    else
    {
      v48 = (*(v47 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v47 + 8);
      if ((*(*(v8 - 1) + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*(v8 - 1) + 8) > v48)
      {
        goto LABEL_60;
      }

      if (v48 <= (*(*(a2 - 1) + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*(a2 - 1) + 8))
      {
        v64 = v8 + 1;
        do
        {
          v8 = v64;
          if (v64 >= a2)
          {
            break;
          }

          ++v64;
        }

        while (v48 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8));
      }

      else
      {
        do
        {
          v63 = v8[1];
          ++v8;
        }

        while (v48 <= (*(v63 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v63 + 8));
      }

      v65 = a2;
      if (v8 < a2)
      {
        v65 = a2;
        do
        {
          v66 = *--v65;
        }

        while (v48 > (*(v66 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v66 + 8));
      }

      if (v8 < v65)
      {
        v67 = *v8;
        v68 = *v65;
        do
        {
          *v8 = v68;
          *v65 = v67;
          v69 = (*(v47 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v47 + 8);
          do
          {
            v70 = v8[1];
            ++v8;
            v67 = v70;
          }

          while (v69 <= (*(v70 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v70 + 8));
          do
          {
            v71 = *--v65;
            v68 = v71;
          }

          while (v69 > (*(v71 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v71 + 8));
        }

        while (v8 < v65);
      }

      v72 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v72;
      }

      a4 = 0;
      *v72 = v47;
    }
  }

  v80 = *v8;
  v81 = v8[1];
  v82 = (*(v81 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v81 + 8);
  v83 = *(a2 - 1);
  v84 = (*(v83 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v83 + 8);
  if (v82 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8))
  {
    if (v84 <= v82)
    {
      return result;
    }

    v8[1] = v83;
    *(a2 - 1) = v81;
    v75 = v8[1];
LABEL_166:
    v124 = *v8;
    if ((*(v75 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v75 + 8) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8))
    {
      *v8 = v75;
      v8[1] = v124;
    }

    return result;
  }

  if (v84 <= v82)
  {
    *v8 = v81;
    v8[1] = v80;
    v128 = *(a2 - 1);
    if ((*(v128 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v128 + 8) <= (*(v80 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v80 + 8))
    {
      return result;
    }

    v8[1] = v128;
  }

  else
  {
    *v8 = v83;
  }

  *(a2 - 1) = v80;
  return result;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = (*(*a2 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*a2 + 8);
  v7 = *a3;
  v8 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*a3 + 8);
  if (v6 <= (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*result + 8))
  {
    if (v8 <= v6)
    {
      v4 = *a3;
    }

    else
    {
      *a2 = v7;
      *a3 = v4;
      v9 = *result;
      if ((*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a2 + 8) > (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*result + 8))
      {
        *result = *a2;
        *a2 = v9;
        v4 = *a3;
      }
    }
  }

  else
  {
    if (v8 > v6)
    {
      *result = v7;
LABEL_9:
      *a3 = v5;
      v4 = v5;
      goto LABEL_11;
    }

    *result = v4;
    *a2 = v5;
    v4 = *a3;
    if ((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a3 + 8) > (*(v5 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v5 + 8))
    {
      *a2 = v4;
      goto LABEL_9;
    }
  }

LABEL_11:
  if ((*(*a4 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a4 + 8) > (*(v4 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v4 + 8))
  {
    *a3 = *a4;
    *a4 = v4;
    v10 = *a2;
    if ((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a3 + 8) > (*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a2 + 8))
    {
      *a2 = *a3;
      *a3 = v10;
      v11 = *result;
      if ((*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a2 + 8) > (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*result + 8))
      {
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *a1;
        v13 = a1[1];
        v14 = (*(v13 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v13 + 8);
        v15 = *(a2 - 1);
        v16 = (*(v15 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v15 + 8);
        if (v14 > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a1 + 8))
        {
          if (v16 <= v14)
          {
            *a1 = v13;
            a1[1] = v12;
            v36 = *(a2 - 1);
            if ((*(v36 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v36 + 8) <= (*(v12 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v12 + 8))
            {
              return 1;
            }

            a1[1] = v36;
          }

          else
          {
            *a1 = v15;
          }

          *(a2 - 1) = v12;
          return 1;
        }

        if (v16 <= v14)
        {
          return 1;
        }

        a1[1] = v15;
        *(a2 - 1) = v13;
        v9 = a1[1];
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v7 = *(a2 - 1);
        v8 = a1[3];
        if ((*(v7 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v7 + 8) <= (*(v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v8 + 8))
        {
          return 1;
        }

        a1[3] = v7;
        *(a2 - 1) = v8;
        v10 = a1[2];
        v9 = a1[3];
        if ((*(v9 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v9 + 8) <= (*(v10 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v10 + 8))
        {
          return 1;
        }

        a1[2] = v9;
        a1[3] = v10;
        v11 = a1[1];
        if ((*(v9 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v9 + 8) <= (*(v11 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v11 + 8))
        {
          return 1;
        }

        a1[1] = v9;
        a1[2] = v11;
        break;
      default:
        goto LABEL_16;
    }

    v27 = *a1;
    if ((*(v9 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v9 + 8) > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a1 + 8))
    {
      *a1 = v9;
      a1[1] = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if ((*(v5 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v5 + 8) > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a1 + 8))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_16:
  v17 = a1 + 2;
  v18 = a1[2];
  v19 = a1[1];
  v20 = *a1;
  v21 = (*(v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v19 + 8);
  v22 = (*(v18 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v18 + 8);
  if (v21 <= (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a1 + 8))
  {
    if (v22 <= v21)
    {
      goto LABEL_28;
    }

    a1[1] = v18;
    *v17 = v19;
    v25 = (*(v18 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v18 + 8);
    v26 = (*(v20 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v20 + 8);
    v23 = a1;
    v24 = a1 + 1;
LABEL_26:
    if (v25 <= v26)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v22 <= v21)
  {
    *a1 = v19;
    a1[1] = v20;
    v25 = (*(v18 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v18 + 8);
    v26 = (*(v20 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v20 + 8);
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_26;
  }

LABEL_27:
  *v23 = v18;
  *v24 = v20;
LABEL_28:
  v28 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v29 = 0;
  for (i = 24; ; i += 8)
  {
    v31 = *v28;
    v32 = *v17;
    if ((*(*v28 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v28 + 8) > (*(v32 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v32 + 8))
    {
      v33 = i;
      while (1)
      {
        *(a1 + v33) = v32;
        v34 = v33 - 8;
        if (v33 == 8)
        {
          break;
        }

        v32 = *(a1 + v33 - 16);
        v33 -= 8;
        if ((*(v31 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v31 + 8) <= (*(v32 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v32 + 8))
        {
          v35 = (a1 + v34);
          goto LABEL_36;
        }
      }

      v35 = a1;
LABEL_36:
      *v35 = v31;
      if (++v29 == 8)
      {
        break;
      }
    }

    v17 = v28++;
    if (v28 == a2)
    {
      return 1;
    }
  }

  return v28 + 1 == a2;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,false>(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (*(a2 - 6) < *(v12 + 8))
        {
          *v165 = *v12;
          *&v165[16] = *(v12 + 16);
          v76 = *(a2 - 2);
          *(v12 + 9) = *(a2 - 23);
          *v12 = v76;
          result = *v165;
          *(a2 - 23) = *&v165[9];
          *(a2 - 2) = *v165;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v80 = *(v12 + 40);
      v81 = *(v12 + 72);
      if (v80 >= *(v12 + 8))
      {
        if (v81 < v80)
        {
          *v172 = *(v12 + 32);
          *&v172[16] = *(v12 + 48);
          *(v12 + 32) = *(v12 + 64);
          *(v12 + 41) = *(v12 + 73);
          *(v12 + 64) = *v172;
          result = *&v172[9];
          *(v12 + 73) = *&v172[9];
          if (*(v12 + 40) < *(v12 + 8))
          {
            *v173 = *v12;
            *&v173[16] = *(v12 + 16);
            *v12 = *(v12 + 32);
            *(v12 + 9) = *(v12 + 41);
            *(v12 + 32) = *v173;
            result = *&v173[9];
            *(v12 + 41) = *&v173[9];
          }
        }
      }

      else
      {
        if (v81 < v80)
        {
          *v167 = *v12;
          *&v167[16] = *(v12 + 16);
          *v12 = *(v12 + 64);
          *(v12 + 9) = *(v12 + 73);
          v82 = *v167;
          goto LABEL_182;
        }

        *v176 = *v12;
        *&v176[16] = *(v12 + 16);
        *v12 = *(v12 + 32);
        *(v12 + 9) = *(v12 + 41);
        *(v12 + 32) = *v176;
        result = *&v176[9];
        *(v12 + 41) = *&v176[9];
        if (v81 < *(v12 + 40))
        {
          v82 = *(v12 + 32);
          *&v167[8] = *(&v82 + 1);
          *&v167[16] = *(v12 + 48);
          *(v12 + 32) = *(v12 + 64);
          *(v12 + 41) = *(v12 + 73);
LABEL_182:
          *(v12 + 64) = v82;
          result = *&v167[9];
          *(v12 + 73) = *&v167[9];
        }
      }

      if (*(a2 - 6) >= *(v12 + 72))
      {
        return result;
      }

      *v177 = *(v12 + 64);
      result = *v177;
      *&v177[16] = *(v12 + 80);
      v135 = *(a2 - 23);
      *(v12 + 64) = *v9;
      *(v12 + 73) = v135;
      *(a2 - 23) = *&v177[9];
      *v9 = *v177;
      if (*(v12 + 72) >= *(v12 + 40))
      {
        return result;
      }

      *v178 = *(v12 + 32);
      *&v178[16] = *(v12 + 48);
      *(v12 + 32) = *(v12 + 64);
      *(v12 + 41) = *(v12 + 73);
      *(v12 + 64) = *v178;
      result = *&v178[9];
      *(v12 + 73) = *&v178[9];
LABEL_186:
      if (*(v12 + 40) < *(v12 + 8))
      {
        *v179 = *v12;
        *&v179[16] = *(v12 + 16);
        *v12 = *(v12 + 32);
        *(v12 + 9) = *(v12 + 41);
        *(v12 + 32) = *v179;
        result = *&v179[9];
        *(v12 + 41) = *&v179[9];
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,0>(v12, (v12 + 32), (v12 + 64), (v12 + 96), a2 - 2, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v83 = (v12 + 32);
      v85 = v12 == a2 || v83 == a2;
      if (a4)
      {
        if (!v85)
        {
          v86 = 0;
          v87 = v12;
          do
          {
            v88 = v83;
            v89 = *(v87 + 10);
            if (v89 < *(v87 + 2))
            {
              v90 = *v88;
              v168 = *(v87 + 44);
              v180 = *(v87 + 15);
              v91 = v86;
              while (1)
              {
                v92 = v12 + v91;
                *(v92 + 32) = *(v12 + v91);
                result = *(v12 + v91 + 9);
                *(v92 + 41) = result;
                if (!v91)
                {
                  break;
                }

                v91 -= 32;
                if (v89 >= *(v92 - 24))
                {
                  v93 = v12 + v91 + 32;
                  goto LABEL_129;
                }
              }

              v93 = v12;
LABEL_129:
              *v93 = v90;
              *(v93 + 8) = v89;
              *(v93 + 12) = v168;
              *(v93 + 17) = *(&v168 + 5);
            }

            v83 = v88 + 4;
            v86 += 32;
            v87 = v88;
          }

          while (v88 + 4 != a2);
        }
      }

      else if (!v85)
      {
        do
        {
          v129 = v83;
          v130 = *(a1 + 40);
          if (v130 < *(a1 + 8))
          {
            v131 = *v83;
            v174 = *(a1 + 44);
            v182 = *(a1 + 60);
            v132 = v129;
            do
            {
              *v132 = *(v132 - 2);
              result = *(v132 - 23);
              *(v132 + 9) = result;
              v133 = *(v132 - 14);
              v132 -= 4;
            }

            while (v130 < v133);
            *v132 = v131;
            *(v132 + 2) = v130;
            *(v132 + 17) = *(&v174 + 5);
            *(v132 + 12) = v174;
          }

          v83 = v129 + 4;
          a1 = v129;
        }

        while (v129 + 4 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v94 = (v13 - 2) >> 1;
        v95 = v94;
        do
        {
          v96 = v95;
          if (v94 >= v95)
          {
            v97 = (2 * v95) | 1;
            v98 = v12 + 32 * v97;
            if (2 * v96 + 2 < v13)
            {
              v99 = *(v98 + 8);
              v100 = *(v98 + 40);
              v98 += 32 * (v99 < v100);
              if (v99 < v100)
              {
                v97 = 2 * v96 + 2;
              }
            }

            v101 = v12 + 32 * v96;
            v102 = *(v101 + 8);
            if (*(v98 + 8) >= v102)
            {
              v103 = *v101;
              v181 = *(v101 + 28);
              v169 = *(v101 + 12);
              do
              {
                v104 = v101;
                v101 = v98;
                v105 = *v98;
                *(v104 + 9) = *(v98 + 9);
                *v104 = v105;
                if (v94 < v97)
                {
                  break;
                }

                v106 = (2 * v97) | 1;
                v98 = v12 + 32 * v106;
                v107 = 2 * v97 + 2;
                if (v107 < v13)
                {
                  v108 = *(v98 + 8);
                  v109 = *(v98 + 40);
                  v98 += 32 * (v108 < v109);
                  if (v108 < v109)
                  {
                    v106 = v107;
                  }
                }

                v97 = v106;
              }

              while (*(v98 + 8) >= v102);
              *v101 = v103;
              *(v101 + 8) = v102;
              *(v101 + 12) = v169;
              *(v101 + 17) = *(&v169 + 5);
            }
          }

          v95 = v96 - 1;
        }

        while (v96);
        do
        {
          v110 = 0;
          *v170 = *v12;
          *&v170[16] = *(v12 + 16);
          v111 = v12;
          do
          {
            v112 = &v111[2 * v110];
            v113 = v112 + 2;
            v114 = (2 * v110) | 1;
            v110 = 2 * v110 + 2;
            if (v110 >= v13)
            {
              v110 = v114;
            }

            else
            {
              v115 = *(v112 + 10);
              v116 = *(v112 + 18);
              v117 = v112 + 4;
              if (v115 >= v116)
              {
                v110 = v114;
              }

              else
              {
                v113 = v117;
              }
            }

            v118 = *v113;
            *(v111 + 9) = *(v113 + 9);
            *v111 = v118;
            v111 = v113;
          }

          while (v110 <= ((v13 - 2) >> 1));
          a2 -= 2;
          if (v113 == a2)
          {
            result = *v170;
            *(v113 + 9) = *&v170[9];
            *v113 = *v170;
          }

          else
          {
            v119 = *a2;
            *(v113 + 9) = *(a2 + 9);
            *v113 = v119;
            result = *v170;
            *(a2 + 9) = *&v170[9];
            *a2 = *v170;
            v120 = (v113 - v12 + 32) >> 5;
            v121 = v120 < 2;
            v122 = v120 - 2;
            if (!v121)
            {
              v123 = v122 >> 1;
              v124 = v12 + 32 * (v122 >> 1);
              v125 = *(v113 + 2);
              if (*(v124 + 8) < v125)
              {
                v126 = *v113;
                v138 = *(v113 + 12);
                v141 = *(v113 + 7);
                do
                {
                  v127 = v113;
                  v113 = v124;
                  result = *v124;
                  *(v127 + 9) = *(v124 + 9);
                  *v127 = result;
                  if (!v123)
                  {
                    break;
                  }

                  v123 = (v123 - 1) >> 1;
                  v124 = v12 + 32 * v123;
                }

                while (*(v124 + 8) < v125);
                *v113 = v126;
                *(v113 + 2) = v125;
                *(v113 + 12) = v138;
                *(v113 + 17) = *(&v138 + 5);
              }
            }
          }

          v121 = v13-- <= 2;
        }

        while (!v121);
      }

      return result;
    }

    v14 = v12 + 32 * (v13 >> 1);
    v15 = *(a2 - 6);
    if (v13 >= 0x81)
    {
      v16 = *(v14 + 8);
      if (v16 >= *(v12 + 8))
      {
        if (v15 < v16)
        {
          *v144 = *v14;
          *&v144[16] = *(v14 + 16);
          v20 = *v9;
          *(v14 + 9) = *(a2 - 23);
          *v14 = v20;
          *(a2 - 23) = *&v144[9];
          *v9 = *v144;
          if (*(v14 + 8) < *(v12 + 8))
          {
            *v145 = *v12;
            *&v145[16] = *(v12 + 16);
            v21 = *v14;
            *(v12 + 9) = *(v14 + 9);
            *v12 = v21;
            *(v14 + 9) = *&v145[9];
            *v14 = *v145;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v142 = *v12;
          *&v142[16] = *(v12 + 16);
          v17 = *v9;
          *(v12 + 9) = *(a2 - 23);
          *v12 = v17;
          goto LABEL_26;
        }

        *v148 = *v12;
        *&v148[16] = *(v12 + 16);
        v24 = *v14;
        *(v12 + 9) = *(v14 + 9);
        *v12 = v24;
        *(v14 + 9) = *&v148[9];
        *v14 = *v148;
        if (*(a2 - 6) < *(v14 + 8))
        {
          *v142 = *v14;
          *&v142[16] = *(v14 + 16);
          v25 = *v9;
          *(v14 + 9) = *(a2 - 23);
          *v14 = v25;
LABEL_26:
          *(a2 - 23) = *&v142[9];
          *v9 = *v142;
        }
      }

      v26 = (v14 - 32);
      v27 = *(v14 - 24);
      v28 = *(a2 - 14);
      if (v27 >= *(v12 + 40))
      {
        if (v28 < v27)
        {
          *v150 = *v26;
          *&v150[16] = *(v14 - 16);
          v31 = *v10;
          *(v14 - 23) = *(a2 - 55);
          *v26 = v31;
          *(a2 - 55) = *&v150[9];
          *v10 = *v150;
          if (*(v14 - 24) < *(v12 + 40))
          {
            *v151 = *(v12 + 32);
            *&v151[16] = *(v12 + 48);
            v32 = *(v14 - 23);
            *(v12 + 32) = *v26;
            *(v12 + 41) = v32;
            *(v14 - 23) = *&v151[9];
            *v26 = *v151;
          }
        }
      }

      else
      {
        if (v28 < v27)
        {
          v29 = *(v12 + 32);
          *&v149[8] = *(&v29 + 1);
          *&v149[16] = *(v12 + 48);
          v30 = *(a2 - 55);
          *(v12 + 32) = *v10;
          *(v12 + 41) = v30;
          goto LABEL_38;
        }

        *v153 = *(v12 + 32);
        *&v153[16] = *(v12 + 48);
        v35 = *(v14 - 23);
        *(v12 + 32) = *v26;
        *(v12 + 41) = v35;
        *(v14 - 23) = *&v153[9];
        *v26 = *v153;
        if (*(a2 - 14) < *(v14 - 24))
        {
          *v149 = *v26;
          *&v149[16] = *(v14 - 16);
          v36 = *v10;
          *(v14 - 23) = *(a2 - 55);
          *v26 = v36;
          v29 = *v149;
LABEL_38:
          *(a2 - 55) = *&v149[9];
          *v10 = v29;
        }
      }

      v37 = *(v14 + 40);
      v38 = *(a2 - 22);
      if (v37 >= *(v12 + 72))
      {
        if (v38 < v37)
        {
          *v155 = *(v14 + 32);
          *&v155[16] = *(v14 + 48);
          v41 = *v11;
          *(v14 + 41) = *(a2 - 87);
          *(v14 + 32) = v41;
          *(a2 - 87) = *&v155[9];
          *v11 = *v155;
          if (*(v14 + 40) < *(v12 + 72))
          {
            *v156 = *(v12 + 64);
            *&v156[16] = *(v12 + 80);
            v42 = *(v14 + 41);
            *(v12 + 64) = *(v14 + 32);
            *(v12 + 73) = v42;
            *(v14 + 41) = *&v156[9];
            *(v14 + 32) = *v156;
          }
        }
      }

      else
      {
        if (v38 < v37)
        {
          v39 = *(v12 + 64);
          *&v154[8] = *(&v39 + 1);
          *&v154[16] = *(v12 + 80);
          v40 = *(a2 - 87);
          *(v12 + 64) = *v11;
          *(v12 + 73) = v40;
          goto LABEL_47;
        }

        *v157 = *(v12 + 64);
        *&v157[16] = *(v12 + 80);
        v43 = *(v14 + 41);
        *(v12 + 64) = *(v14 + 32);
        *(v12 + 73) = v43;
        *(v14 + 41) = *&v157[9];
        *(v14 + 32) = *v157;
        if (*(a2 - 22) < *(v14 + 40))
        {
          *v154 = *(v14 + 32);
          *&v154[16] = *(v14 + 48);
          v44 = *v11;
          *(v14 + 41) = *(a2 - 87);
          *(v14 + 32) = v44;
          v39 = *v154;
LABEL_47:
          *(a2 - 87) = *&v154[9];
          *v11 = v39;
        }
      }

      v45 = *(v14 + 8);
      v46 = *(v14 + 40);
      if (v45 >= *(v14 - 24))
      {
        if (v46 < v45)
        {
          *v159 = *v14;
          *&v159[16] = *(v14 + 16);
          *v14 = *(v14 + 32);
          *(v14 + 9) = *(v14 + 41);
          *(v14 + 41) = *&v159[9];
          *(v14 + 32) = *v159;
          if (*(v14 + 8) < *(v14 - 24))
          {
            *v160 = *v26;
            *&v160[16] = *(v14 - 16);
            *v26 = *v14;
            *(v14 - 23) = *(v14 + 9);
            *(v14 + 9) = *&v160[9];
            *v14 = *v160;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          *v158 = *v26;
          *&v158[16] = *(v14 - 16);
          *v26 = *(v14 + 32);
          *(v14 - 23) = *(v14 + 41);
          goto LABEL_56;
        }

        *v161 = *v26;
        *&v161[16] = *(v14 - 16);
        *v26 = *v14;
        *(v14 - 23) = *(v14 + 9);
        *(v14 + 9) = *&v161[9];
        *v14 = *v161;
        if (*(v14 + 40) < *(v14 + 8))
        {
          *v158 = *v14;
          *&v158[16] = *(v14 + 16);
          *v14 = *(v14 + 32);
          *(v14 + 9) = *(v14 + 41);
LABEL_56:
          *(v14 + 41) = *&v158[9];
          *(v14 + 32) = *v158;
        }
      }

      *v162 = *v12;
      *&v162[16] = *(v12 + 16);
      v47 = *v14;
      *(v12 + 9) = *(v14 + 9);
      *v12 = v47;
      *(v14 + 9) = *&v162[9];
      *v14 = *v162;
      goto LABEL_58;
    }

    v18 = *(v12 + 8);
    if (v18 >= *(v14 + 8))
    {
      if (v15 < v18)
      {
        *v146 = *v12;
        *&v146[16] = *(v12 + 16);
        v22 = *v9;
        *(v12 + 9) = *(a2 - 23);
        *v12 = v22;
        *(a2 - 23) = *&v146[9];
        *v9 = *v146;
        if (*(v12 + 8) < *(v14 + 8))
        {
          *v147 = *v14;
          *&v147[16] = *(v14 + 16);
          v23 = *v12;
          *(v14 + 9) = *(v12 + 9);
          *v14 = v23;
          *(v12 + 9) = *&v147[9];
          *v12 = *v147;
        }
      }

      goto LABEL_58;
    }

    if (v15 < v18)
    {
      *v143 = *v14;
      *&v143[16] = *(v14 + 16);
      v19 = *v9;
      *(v14 + 9) = *(a2 - 23);
      *v14 = v19;
LABEL_35:
      *(a2 - 23) = *&v143[9];
      *v9 = *v143;
      goto LABEL_58;
    }

    *v152 = *v14;
    *&v152[16] = *(v14 + 16);
    v33 = *v12;
    *(v14 + 9) = *(v12 + 9);
    *v14 = v33;
    *(v12 + 9) = *&v152[9];
    *v12 = *v152;
    if (*(a2 - 6) < *(v12 + 8))
    {
      *v143 = *v12;
      *&v143[16] = *(v12 + 16);
      v34 = *v9;
      *(v12 + 9) = *(a2 - 23);
      *v12 = v34;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v48 = *(v12 + 8);
LABEL_61:
      v49 = 0;
      v50 = *v12;
      v51 = *(v12 + 12);
      v136 = v51;
      v139 = *(v12 + 28);
      do
      {
        v52 = *(v12 + v49 + 40);
        v49 += 32;
      }

      while (v52 < v48);
      v53 = v12 + v49;
      v54 = a2;
      if (v49 == 32)
      {
        v57 = a2;
        while (v53 < v57)
        {
          v55 = v57 - 2;
          v58 = *(v57 - 6);
          v57 -= 2;
          if (v58 < v48)
          {
            goto LABEL_71;
          }
        }

        v55 = v57;
      }

      else
      {
        do
        {
          v55 = v54 - 2;
          v56 = *(v54 - 6);
          v54 -= 2;
        }

        while (v56 >= v48);
      }

LABEL_71:
      v12 = v53;
      if (v53 < v55)
      {
        v59 = v55;
        do
        {
          *v163 = *v12;
          *&v163[16] = *(v12 + 16);
          v60 = *v59;
          *(v12 + 9) = *(v59 + 9);
          *v12 = v60;
          v51 = *v163;
          *(v59 + 9) = *&v163[9];
          *v59 = *v163;
          do
          {
            v61 = *(v12 + 40);
            v12 += 32;
          }

          while (v61 < v48);
          do
          {
            v62 = *(v59 - 6);
            v59 -= 2;
          }

          while (v62 >= v48);
        }

        while (v12 < v59);
      }

      if (v12 - 32 != a1)
      {
        v51 = *(v12 - 32);
        *(a1 + 9) = *(v12 - 23);
        *a1 = v51;
      }

      *(v12 - 32) = v50;
      *(v12 - 24) = v48;
      *(v12 - 15) = *(v136.n128_u64 + 5);
      *(v12 - 20) = v136.n128_u64[0];
      if (v53 < v55)
      {
        goto LABEL_82;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *>(a1, v12 - 32, v51);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *>(v12, a2, v64))
      {
        a2 = (v12 - 32);
        if (!v63)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v63)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,false>(a1, v12 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v48 = *(v12 + 8);
      if (*(v12 - 24) < v48)
      {
        goto LABEL_61;
      }

      v65 = *v12;
      result = *(v12 + 12);
      v137 = result;
      v140 = *(v12 + 28);
      if (v48 >= *(a2 - 6))
      {
        v68 = v12 + 32;
        do
        {
          v12 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v69 = *(v68 + 8);
          v68 += 32;
        }

        while (v48 >= v69);
      }

      else
      {
        v66 = v12;
        do
        {
          v12 = v66 + 32;
          v67 = *(v66 + 40);
          v66 += 32;
        }

        while (v48 >= v67);
      }

      v70 = a2;
      if (v12 < a2)
      {
        v71 = a2;
        do
        {
          v70 = v71 - 2;
          v72 = *(v71 - 6);
          v71 -= 2;
        }

        while (v48 < v72);
      }

      while (v12 < v70)
      {
        *v164 = *v12;
        *&v164[16] = *(v12 + 16);
        v73 = *v70;
        *(v12 + 9) = *(v70 + 9);
        *v12 = v73;
        result = *v164;
        *(v70 + 9) = *&v164[9];
        *v70 = *v164;
        do
        {
          v74 = *(v12 + 40);
          v12 += 32;
        }

        while (v48 >= v74);
        do
        {
          v75 = *(v70 - 6);
          v70 -= 2;
        }

        while (v48 < v75);
      }

      if (v12 - 32 != a1)
      {
        result = *(v12 - 32);
        *(a1 + 9) = *(v12 - 23);
        *a1 = result;
      }

      a4 = 0;
      *(v12 - 32) = v65;
      *(v12 - 24) = v48;
      *(v12 - 15) = *(v137.n128_u64 + 5);
      *(v12 - 20) = v137.n128_u64[0];
    }
  }

  v77 = *(v12 + 40);
  v78 = *(a2 - 6);
  if (v77 >= *(v12 + 8))
  {
    if (v78 >= v77)
    {
      return result;
    }

    *v171 = *(v12 + 32);
    result = *v171;
    *&v171[16] = *(v12 + 48);
    v128 = *(a2 - 23);
    *(v12 + 32) = *v9;
    *(v12 + 41) = v128;
    *(a2 - 23) = *&v171[9];
    *v9 = *v171;
    goto LABEL_186;
  }

  if (v78 >= v77)
  {
    *v175 = *v12;
    *&v175[16] = *(v12 + 16);
    *v12 = *(v12 + 32);
    *(v12 + 9) = *(v12 + 41);
    *(v12 + 32) = *v175;
    result = *&v175[9];
    *(v12 + 41) = *&v175[9];
    if (*(a2 - 6) >= *(v12 + 40))
    {
      return result;
    }

    result = *(v12 + 32);
    *&v166[8] = result.n128_u64[1];
    *&v166[16] = *(v12 + 48);
    v134 = *(a2 - 23);
    *(v12 + 32) = *v9;
    *(v12 + 41) = v134;
  }

  else
  {
    *v166 = *v12;
    *&v166[16] = *(v12 + 16);
    v79 = *v9;
    *(v12 + 9) = *(a2 - 23);
    *v12 = v79;
    result = *v166;
  }

  *(a2 - 23) = *&v166[9];
  *v9 = result;
  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __n128 result)
{
  v6 = *(a2 + 2);
  v7 = *(a3 + 2);
  if (v6 >= *(a1 + 2))
  {
    if (v7 < v6)
    {
      *v32 = *a2;
      v10 = *a2;
      *&v32[16] = a2[1];
      v11 = *(a3 + 9);
      *a2 = *a3;
      *(a2 + 9) = v11;
      *a3 = v10;
      result = *&v32[9];
      *(a3 + 9) = *&v32[9];
      if (*(a2 + 2) < *(a1 + 2))
      {
        *v33 = *a1;
        v12 = *a1;
        *&v33[16] = a1[1];
        v13 = *(a2 + 9);
        *a1 = *a2;
        *(a1 + 9) = v13;
        *a2 = v12;
        result = *&v33[9];
        *(a2 + 9) = *&v33[9];
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      *v31 = *a1;
      *&v31[16] = a1[1];
      v9 = *(a3 + 9);
      *a1 = *a3;
      *(a1 + 9) = v9;
LABEL_9:
      *a3 = v8;
      result = *&v31[9];
      *(a3 + 9) = *&v31[9];
      goto LABEL_10;
    }

    *v34 = *a1;
    v14 = *a1;
    *&v34[16] = a1[1];
    v15 = *(a2 + 9);
    *a1 = *a2;
    *(a1 + 9) = v15;
    *a2 = v14;
    result = *&v34[9];
    *(a2 + 9) = *&v34[9];
    if (*(a3 + 2) < *(a2 + 2))
    {
      v8 = *a2;
      *v31 = *a2;
      *&v31[16] = a2[1];
      v16 = *(a3 + 9);
      *a2 = *a3;
      *(a2 + 9) = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 2) < *(a3 + 2))
  {
    *v35 = *a3;
    v17 = *a3;
    *&v35[16] = a3[1];
    v18 = *(a4 + 9);
    *a3 = *a4;
    *(a3 + 9) = v18;
    *a4 = v17;
    result = *&v35[9];
    *(a4 + 9) = *&v35[9];
    if (*(a3 + 2) < *(a2 + 2))
    {
      *v36 = *a2;
      v19 = *a2;
      *&v36[16] = a2[1];
      v20 = *(a3 + 9);
      *a2 = *a3;
      *(a2 + 9) = v20;
      *a3 = v19;
      result = *&v36[9];
      *(a3 + 9) = *&v36[9];
      if (*(a2 + 2) < *(a1 + 2))
      {
        *v37 = *a1;
        v21 = *a1;
        *&v37[16] = a1[1];
        v22 = *(a2 + 9);
        *a1 = *a2;
        *(a1 + 9) = v22;
        *a2 = v21;
        result = *&v37[9];
        *(a2 + 9) = *&v37[9];
      }
    }
  }

  if (*(a5 + 2) < *(a4 + 2))
  {
    *v38 = *a4;
    v23 = *a4;
    *&v38[16] = a4[1];
    v24 = *(a5 + 9);
    *a4 = *a5;
    *(a4 + 9) = v24;
    *a5 = v23;
    result = *&v38[9];
    *(a5 + 9) = *&v38[9];
    if (*(a4 + 2) < *(a3 + 2))
    {
      *v39 = *a3;
      v25 = *a3;
      *&v39[16] = a3[1];
      v26 = *(a4 + 9);
      *a3 = *a4;
      *(a3 + 9) = v26;
      *a4 = v25;
      result = *&v39[9];
      *(a4 + 9) = *&v39[9];
      if (*(a3 + 2) < *(a2 + 2))
      {
        *v40 = *a2;
        v27 = *a2;
        *&v40[16] = a2[1];
        v28 = *(a3 + 9);
        *a2 = *a3;
        *(a2 + 9) = v28;
        *a3 = v27;
        result = *&v40[9];
        *(a3 + 9) = *&v40[9];
        if (*(a2 + 2) < *(a1 + 2))
        {
          *v41 = *a1;
          v29 = *a1;
          *&v41[16] = a1[1];
          v30 = *(a2 + 9);
          *a1 = *a2;
          *(a1 + 9) = v30;
          *a2 = v29;
          result = *&v41[9];
          *(a2 + 9) = *&v41[9];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a2 - 32);
      v7 = *(a1 + 40);
      v8 = *(a2 - 24);
      if (v7 < *(a1 + 8))
      {
        if (v8 >= v7)
        {
          *v48 = *a1;
          v23 = *a1;
          *&v48[16] = *(a1 + 16);
          *a1 = *(a1 + 32);
          *(a1 + 9) = *(a1 + 41);
          *(a1 + 32) = v23;
          *(a1 + 41) = *&v48[9];
          if (*(a2 - 24) >= *(a1 + 40))
          {
            return 1;
          }

          v9 = *(a1 + 32);
          *&v40[8] = *(&v9 + 1);
          *&v40[16] = *(a1 + 48);
          v24 = *(a2 - 23);
          *(a1 + 32) = *v6;
          *(a1 + 41) = v24;
        }

        else
        {
          v9 = *a1;
          *v40 = *a1;
          *&v40[16] = *(a1 + 16);
          v10 = *(a2 - 23);
          *a1 = *v6;
          *(a1 + 9) = v10;
        }

        *v6 = v9;
        *(a2 - 23) = *&v40[9];
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      *v43 = *(a1 + 32);
      *&v43[16] = *(a1 + 48);
      v20 = *(a2 - 23);
      *(a1 + 32) = *v6;
      *(a1 + 41) = v20;
      *v6 = *v43;
      *(a2 - 23) = *&v43[9];
LABEL_50:
      if (*(a1 + 40) < *(a1 + 8))
      {
        *v54 = *a1;
        v37 = *a1;
        *&v54[16] = *(a1 + 16);
        *a1 = *(a1 + 32);
        *(a1 + 9) = *(a1 + 41);
        *(a1 + 32) = v37;
        *(a1 + 41) = *&v54[9];
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
      return 1;
    }

    v16 = *(a1 + 40);
    v17 = *(a1 + 8);
    v18 = *(a1 + 72);
    if (v16 >= v17)
    {
      if (v18 < v16)
      {
        *v46 = *(a1 + 32);
        *&v46[16] = *(a1 + 48);
        *(a1 + 32) = *(a1 + 64);
        *(a1 + 41) = *(a1 + 73);
        *(a1 + 64) = *v46;
        *(a1 + 73) = *&v46[9];
        if (*(a1 + 40) < v17)
        {
          *v47 = *a1;
          v22 = *a1;
          *&v47[16] = *(a1 + 16);
          *a1 = *(a1 + 32);
          *(a1 + 9) = *(a1 + 41);
          *(a1 + 32) = v22;
          *(a1 + 41) = *&v47[9];
        }
      }

      goto LABEL_47;
    }

    if (v18 >= v16)
    {
      *v51 = *a1;
      v34 = *a1;
      *&v51[16] = *(a1 + 16);
      *a1 = *(a1 + 32);
      *(a1 + 9) = *(a1 + 41);
      *(a1 + 32) = v34;
      *(a1 + 41) = *&v51[9];
      if (v18 >= *(a1 + 40))
      {
        goto LABEL_47;
      }

      v19 = *(a1 + 32);
      *&v42[8] = *(&v19 + 1);
      *&v42[16] = *(a1 + 48);
      *(a1 + 32) = *(a1 + 64);
      *(a1 + 41) = *(a1 + 73);
    }

    else
    {
      v19 = *a1;
      *v42 = *a1;
      *&v42[16] = *(a1 + 16);
      *a1 = *(a1 + 64);
      *(a1 + 9) = *(a1 + 73);
    }

    *(a1 + 64) = v19;
    *(a1 + 73) = *&v42[9];
LABEL_47:
    if (*(a2 - 24) >= *(a1 + 72))
    {
      return 1;
    }

    v35 = (a2 - 32);
    *v52 = *(a1 + 64);
    *&v52[16] = *(a1 + 80);
    v36 = *(a2 - 23);
    *(a1 + 64) = *(a2 - 32);
    *(a1 + 73) = v36;
    *v35 = *v52;
    *(v35 + 9) = *&v52[9];
    if (*(a1 + 72) >= *(a1 + 40))
    {
      return 1;
    }

    *v53 = *(a1 + 32);
    *&v53[16] = *(a1 + 48);
    *(a1 + 32) = *(a1 + 64);
    *(a1 + 41) = *(a1 + 73);
    *(a1 + 64) = *v53;
    *(a1 + 73) = *&v53[9];
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 24) < *(a1 + 8))
    {
      *v39 = *a1;
      v4 = *a1;
      *&v39[16] = *(a1 + 16);
      v5 = *(a2 - 23);
      *a1 = *(a2 - 32);
      *(a1 + 9) = v5;
      *(a2 - 32) = v4;
      *(a2 - 23) = *&v39[9];
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 64;
  v12 = *(a1 + 40);
  v13 = *(a1 + 8);
  v14 = *(a1 + 72);
  if (v12 >= v13)
  {
    if (v14 < v12)
    {
      *v44 = *(a1 + 32);
      *&v44[16] = *(a1 + 48);
      *(a1 + 32) = *v11;
      *(a1 + 41) = *(a1 + 73);
      *v11 = *v44;
      *(a1 + 73) = *&v44[9];
      if (*(a1 + 40) < v13)
      {
        *v45 = *a1;
        v21 = *a1;
        *&v45[16] = *(a1 + 16);
        *a1 = *(a1 + 32);
        *(a1 + 9) = *(a1 + 41);
        *(a1 + 32) = v21;
        *(a1 + 41) = *&v45[9];
      }
    }
  }

  else
  {
    if (v14 >= v12)
    {
      *v49 = *a1;
      v25 = *a1;
      *&v49[16] = *(a1 + 16);
      *a1 = *(a1 + 32);
      *(a1 + 9) = *(a1 + 41);
      *(a1 + 32) = v25;
      *(a1 + 41) = *&v49[9];
      if (v14 >= *(a1 + 40))
      {
        goto LABEL_33;
      }

      v15 = *(a1 + 32);
      *&v41[8] = *(&v15 + 1);
      *&v41[16] = *(a1 + 48);
      *(a1 + 32) = *v11;
      *(a1 + 41) = *(a1 + 73);
    }

    else
    {
      v15 = *a1;
      *v41 = *a1;
      *&v41[16] = *(a1 + 16);
      *a1 = *v11;
      *(a1 + 9) = *(a1 + 73);
    }

    *v11 = v15;
    *(a1 + 73) = *&v41[9];
  }

LABEL_33:
  v26 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    v29 = *(v26 + 8);
    if (v29 < *(v11 + 8))
    {
      v30 = *v26;
      v50 = *(v26 + 12);
      v55 = *(v26 + 28);
      v31 = v27;
      while (1)
      {
        v32 = a1 + v31;
        *(v32 + 96) = *(a1 + v31 + 64);
        *(v32 + 105) = *(a1 + v31 + 73);
        if (v31 == -64)
        {
          break;
        }

        v31 -= 32;
        if (v29 >= *(v32 + 40))
        {
          v33 = a1 + v31 + 96;
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v30;
      *(v33 + 8) = v29;
      *(v33 + 12) = v50;
      *(v33 + 17) = *(&v50 + 5);
      if (++v28 == 8)
      {
        return v26 + 32 == a2;
      }
    }

    v11 = v26;
    v27 += 32;
    v26 += 32;
    if (v26 == a2)
    {
      return 1;
    }
  }
}

llvm::raw_ostream *llvm::format_provider<long long,void>::format(unint64_t *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v15 = 0;
  if (!llvm::detail::HelperFunctions::consumeHexStyle(&v16, &v15))
  {
    if (v17)
    {
      v12 = 0;
      v13 = *v16;
      if (v13 <= 0x63)
      {
        if (v13 != 68)
        {
          if (v13 != 78)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_17:
        v12 = 0;
        ++v16;
        goto LABEL_18;
      }

      if (v13 == 100)
      {
        goto LABEL_17;
      }

      if (v13 == 110)
      {
LABEL_16:
        ++v16;
        v12 = 1;
LABEL_18:
        --v17;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
    v18 = 0;
    if (llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6))
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }

    return llvm::write_integer(a2, *a1, v14, v12);
  }

  v7 = v15;
  v18 = 0;
  v8 = llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6);
  v9 = v18;
  if (v8)
  {
    v9 = 0;
  }

  if ((v7 & 0xFFFFFFFE) == 2)
  {
    v10 = v9 + 2;
  }

  else
  {
    v10 = v9;
  }

  return llvm::write_hex(a2, *a1, v7, v10, 1);
}

void llvm::jitlink::JITLinkerBase::~JITLinkerBase(llvm::jitlink::JITLinkerBase *this)
{
  *this = &unk_2883ECDC0;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v5 = (this + 120);
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 96);
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 72);
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 48);
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 24);
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    llvm::jitlink::LinkGraph::~LinkGraph(v3);
    MEMORY[0x277C69E40]();
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void *llvm::jitlink::JITLinkerBase::linkPhase1(uint64_t a1, uint64_t *a2)
{
  v99 = *MEMORY[0x277D85DE8];
  llvm::jitlink::JITLinkerBase::runPasses(&v84, a1, *(a1 + 24), *(a1 + 32));
  if (v84)
  {
    v4 = *(a1 + 8);
    v75 = v84;
    *&v84 = 0;
    (*(*v4 + 24))(v4, &v75);
    v5 = v75;
    if (!v75)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v90[0] = 0;
  v90[1] = 0;
  v91 = 0;
  llvm::jitlink::LinkGraph::defined_symbols(v8, &v84);
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v83 = v87;
  v9 = v88;
  v10 = v89;
  v11 = v87;
  if (v84 != v88 || v87 != v89)
  {
    do
    {
      v79[0] = *v11;
      if ((*(v79[0] + 23) & 0x10) != 0)
      {
        std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&v92, v79);
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(&v80, v79);
      v11 = v83;
    }

    while (v80 != v9 || v83 != v10);
    for (i = v93; v92 != v93; i = v93)
    {
      v14 = *(i - 1);
      v93 = i - 8;
      v15 = *(v14 + 8);
      *&v84 = v15;
      *&v80 = 0;
      if ((llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v90, &v84, &v80) & 1) == 0)
      {
        *&v80 = v15;
        llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v90, &v80, &v84);
        v16 = *(v14 + 8);
        v17 = *(v16 + 40);
        v18 = *(v16 + 48);
        while (v17 != v18)
        {
          v19 = *v17;
          if ((*(*(*v17 + 8) + 8) & 1) != 0 && (*(v19 + 23) & 0x10) == 0)
          {
            v20 = v93;
            if (v93 >= v94)
            {
              v22 = (v93 - v92) >> 3;
              if ((v22 + 1) >> 61)
              {
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v23 = (v94 - v92) >> 2;
              if (v23 <= v22 + 1)
              {
                v23 = v22 + 1;
              }

              if (v94 - v92 >= 0x7FFFFFFFFFFFFFF8)
              {
                v24 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v23;
              }

              if (v24)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&v92, v24);
              }

              v25 = (8 * v22);
              *v25 = v19;
              v21 = 8 * v22 + 8;
              v26 = v25 - (v93 - v92);
              memcpy(v26, v92, v93 - v92);
              v27 = v92;
              v92 = v26;
              v93 = v21;
              v94 = 0;
              if (v27)
              {
                operator delete(v27);
              }
            }

            else
            {
              *v93 = v19;
              v21 = (v20 + 8);
            }

            v93 = v21;
            v19 = *v17;
          }

          *(v19 + 16) |= 0x1000000000000000uLL;
          v17 += 4;
        }
      }
    }
  }

  __p = 0;
  v77 = 0;
  v78 = 0;
  llvm::jitlink::LinkGraph::defined_symbols(v8, &v84);
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v83 = v87;
  v28 = v88;
  v29 = v89;
  v30 = v87;
  if (v84 != v88 || v87 != v89)
  {
    do
    {
      v79[0] = *v30;
      if ((*(v79[0] + 23) & 0x10) == 0)
      {
        std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&__p, v79);
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(&v80, v79);
      v30 = v83;
    }

    while (v80 != v28 || v83 != v29);
  }

  v32 = __p;
  v33 = v77;
  if (__p != v77)
  {
    do
    {
      v35 = *(*(*v32 + 8) + 16);
      *&v84 = *v32;
      v34 = v84;
      llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v35 + 56, &v84);
      if ((*v34 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v34 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v32 += 8;
    }

    while (v32 != v33);
    v32 = __p;
  }

  if (v32)
  {
    v77 = v32;
    operator delete(v32);
  }

  __p = 0;
  v77 = 0;
  v78 = 0;
  llvm::jitlink::LinkGraph::blocks(v8, &v84);
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v83 = v87;
  v36 = v88;
  v37 = v89;
  v38 = v87;
  if (v84 != v88 || v87 != v89)
  {
    do
    {
      v39 = *v38;
      v79[0] = *v38;
      v95 = 0;
      if ((llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v90, v79, &v95) & 1) == 0)
      {
        v40 = v77;
        if (v77 >= v78)
        {
          v42 = (v77 - __p) >> 3;
          if ((v42 + 1) >> 61)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v43 = (v78 - __p) >> 2;
          if (v43 <= v42 + 1)
          {
            v43 = v42 + 1;
          }

          if (v78 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v44 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v43;
          }

          if (v44)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&__p, v44);
          }

          v45 = (8 * v42);
          *v45 = v39;
          v41 = 8 * v42 + 8;
          v46 = v45 - (v77 - __p);
          memcpy(v46, __p, v77 - __p);
          v47 = __p;
          __p = v46;
          v77 = v41;
          v78 = 0;
          if (v47)
          {
            operator delete(v47);
          }
        }

        else
        {
          *v77 = v39;
          v41 = (v40 + 8);
        }

        v77 = v41;
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(&v80, v79);
      v38 = v83;
    }

    while (v80 != v36 || v83 != v37);
  }

  v49 = __p;
  v50 = v77;
  if (__p != v77)
  {
    do
    {
      v51 = *v49;
      v49 += 8;
      llvm::jitlink::LinkGraph::removeBlock(v8, v51);
    }

    while (v49 != v50);
    v49 = __p;
  }

  if (v49)
  {
    v77 = v49;
    operator delete(v49);
  }

  v84 = 0uLL;
  *&v85 = 0;
  v52 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 224);
  v55 = *(v8 + 224) + 8 * *(v8 + 240);
  if (v55 != v52)
  {
    v56 = v52;
    v57 = v53;
    do
    {
      *&v80 = *v56;
      if ((*(v80 + 23) & 0x10) == 0)
      {
        std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&v84, &v80);
      }

      do
      {
        ++v56;
      }

      while (v56 != v57 && (*v56 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v56 != v55);
    v59 = *(&v84 + 1);
    v58 = v84;
    if (v84 != *(&v84 + 1))
    {
      do
      {
        *&v80 = *v58;
        v60 = v80;
        v54.n128_u64[0] = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v8 + 224, &v80);
        if ((*v60 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v60 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        ++v58;
      }

      while (v58 != v59);
      v58 = v84;
    }

    if (v58)
    {
      *(&v84 + 1) = v58;
      operator delete(v58);
    }
  }

  MEMORY[0x277C69E30](v90[0], 8, v54);
  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  llvm::jitlink::JITLinkerBase::runPasses(&v84, a1, *(a1 + 48), *(a1 + 56));
  if (v84)
  {
    v61 = *(a1 + 8);
    v74 = v84;
    *&v84 = 0;
    (*(*v61 + 24))(v61, &v74);
    v5 = v74;
    if (!v74)
    {
LABEL_4:
      result = v84;
      if (v84)
      {
        result = (*(*v84 + 8))(v84);
      }

      goto LABEL_6;
    }

LABEL_3:
    (*(*v5 + 8))(v5);
    goto LABEL_4;
  }

  v62 = *(a1 + 16);
  if (*(v62 + 272) != *(v62 + 280))
  {
LABEL_100:
    v63 = (*(**(a1 + 8) + 16))(*(a1 + 8));
    v64 = *(a1 + 16);
    v65 = *(*(a1 + 8) + 8);
    v66 = *a2;
    *a2 = 0;
    v96[0] = v66;
    v96[3] = llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>>::CallbacksHolder<llvm::jitlink::JITLinkerBase::linkPhase1(std::unique_ptr<llvm::jitlink::JITLinkerBase>)::$_1,llvm::jitlink::JITLinkerBase::linkPhase1(std::unique_ptr<llvm::jitlink::JITLinkerBase>)::$_1,void>::Callbacks + 6;
    (*(*v63 + 16))(v63, v65, v64, v96);
    result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v96);
    goto LABEL_6;
  }

  if (*(v62 + 208))
  {
    v67 = *(v62 + 200);
    v68 = *(v62 + 216);
    if (v68)
    {
      v69 = 24 * v68;
      v70 = *(v62 + 200);
      while (*v70 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v70 += 3;
        v69 -= 24;
        if (!v69)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      v70 = *(v62 + 200);
    }

    v72 = (v67 + 24 * v68);
LABEL_110:
    if (v70 != v72)
    {
      if (*(v70[2] + 20) != 2)
      {
        goto LABEL_100;
      }

      while (1)
      {
        v70 += 3;
        if (v70 == v72)
        {
          break;
        }

        if (*v70 < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_110;
        }
      }
    }
  }

LABEL_106:
  v71 = *a2;
  *a2 = 0;
  v73 = v71;
  v98 = 0;
  v97 = 0;
  llvm::jitlink::JITLinkerBase::linkPhase2(a1, &v73, &v97);
  llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(&v97);
  result = v73;
  if (v73)
  {
    result = (*(*v73 + 8))(v73);
  }

LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::jitlink::JITLinkerBase::runPasses(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  v4 = result;
  if (a3 == a4)
  {
LABEL_7:
    *v4 = 0;
  }

  else
  {
    v6 = a3;
    while (1)
    {
      v8 = v6[3];
      v9 = v6;
      if ((v8 & 2) == 0)
      {
        v9 = *v6;
      }

      result = (*(v8 & 0xFFFFFFFFFFFFFFF8))(v9, *(a2 + 16));
      if (*v4)
      {
        break;
      }

      v6 += 4;
      if (v6 == a4)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t *llvm::jitlink::JITLinkerBase::linkPhase2(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a3[1])
  {
    v4 = *(a1 + 8);
    v5 = *a3;
    *a3 = 0;
    v30 = v5;
    (*(*v4 + 24))(v4, &v30);
    result = v30;
    if (!v30)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = *a3;
  *a3 = 0;
  v9 = *(a1 + 144);
  *(a1 + 144) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  llvm::jitlink::JITLinkerBase::runPasses(&v27, a1, *(a1 + 72), *(a1 + 80));
  v10 = v27;
  if (v27 || (v11 = *(a1 + 16), (*(**(a1 + 8) + 40))(&v27), (v10 = v27) != 0))
  {
    v12 = *a2;
    *a2 = 0;
    *&v27 = 0;
    v13 = *(a1 + 144);
    v34 = v12;
    v35 = v10;
    v37 = off_2815A4360 + 6;
    (*(*v13 + 16))(v13, &v34);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v34);
    result = v27;
    if (v27)
    {
LABEL_9:
      result = (*(*result + 8))(result);
    }
  }

  else
  {
    v15 = *(a1 + 16);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v16 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v15 + 224);
    v19 = *(v15 + 224) + 8 * *(v15 + 240);
    if (v19 != v16)
    {
      v20 = v16;
      v21 = v17;
      do
      {
        v22 = *v20++;
        v23 = (v22[2] >> 62) & 1;
        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::FindAndConstruct(&v34, v22)[2] = v23;
        while (v20 != v21 && (*v20 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          ++v20;
        }
      }

      while (v20 != v19);
      if (v35)
      {
        v24 = *(a1 + 8);
        v25 = *a2;
        *a2 = 0;
        operator new();
      }
    }

    *&v18 = 0;
    v26 = *a2;
    *a2 = 0;
    v29 = v26;
    v33 = 0;
    v31 = v18;
    v27 = v18;
    v32 = 0;
    v28 = 0;
    llvm::jitlink::JITLinkerBase::linkPhase3(v26, &v29, &v31);
    llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(&v31);
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v27);
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    result = llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v34);
  }

LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::jitlink::JITLinkerBase::linkPhase3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a3[3])
  {
    v6 = 0;
    v7 = *a2;
    *a2 = 0;
    if (a3[3])
    {
      v6 = *a3;
      *a3 = 0;
    }

    v8 = *(a1 + 144);
    v39 = v7;
    v40 = v6;
    v41 = off_2815A4360 + 6;
    (*(*v8 + 16))(v8, &v39);
    result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v39);
  }

  else
  {
    v33 = 0;
    v34 = 0;
    MEMORY[0x277C69E30](0, 8);
    v10 = *(a3 + 4);
    v35 = v10;
    if (v10)
    {
      v11 = operator new(24 * v10, 8uLL);
      v12 = 0;
      v13 = 0;
      v33 = v11;
      v34 = a3[1];
      do
      {
        v14 = *(*a3 + v12);
        *&v11[v12] = v14;
        if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v14 + 8), 1uLL);
          v11 = v33;
          v14 = *&v33[v12];
        }

        if ((v14 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          *&v11[v12 + 8] = *(*a3 + v12 + 8);
        }

        ++v13;
        v12 += 24;
      }

      while (v13 < v35);
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v15 = *(a1 + 16);
    v16 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v15 + 224);
    v18 = *(v15 + 224) + 8 * *(v15 + 240);
    if (v18 != v16)
    {
      v19 = v16;
      v20 = v17;
      do
      {
        v21 = *v19;
        v39 = 0;
        v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(&v33, v21, &v39);
        v23 = v39;
        if (v22)
        {
          v24 = v39 == &v33[24 * v35];
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          **(v21 + 8) = *(v39 + 1);
          v25 = *(v21 + 16) & 0xFDFFFFFFFFFFFFFFLL | (((v23[17] & 2) != 0) << 57);
          *(v21 + 16) = v25;
          *(v21 + 16) = v25 & 0xF3FFFFFFFFFFFFFFLL | ((((v23[17] >> 4) & 1) == 0) << 58);
        }

        do
        {
          ++v19;
        }

        while (v19 != v20 && (*v19 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v19 != v18);
    }

    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v33);
    llvm::jitlink::JITLinkerBase::runPasses(&v32, a1, *(a1 + 96), *(a1 + 104));
    v26 = v32;
    if (v32 || ((*(*a1 + 16))(&v32, a1, *(a1 + 16)), (v26 = v32) != 0) || (llvm::jitlink::JITLinkerBase::runPasses(&v32, a1, *(a1 + 120), *(a1 + 128)), (v26 = v32) != 0))
    {
      v27 = *a2;
      *a2 = 0;
      v32 = 0;
      v28 = *(a1 + 144);
      v39 = v27;
      v40 = v26;
      v41 = off_2815A4360 + 6;
      (*(*v28 + 16))(v28, &v39);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v39);
      result = v32;
      if (v32)
      {
        result = (*(*v32 + 8))(v32);
      }
    }

    else
    {
      v30 = *(a1 + 144);
      v31 = *a2;
      *a2 = 0;
      if (v30)
      {
        v36[0] = v31;
        v36[3] = _MergedGlobals_7 + 6;
        (*(*v30 + 24))(v30, v36);
        result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v36);
      }

      else
      {
        v38 = 0;
        v37 = -1;
        result = llvm::jitlink::JITLinkerBase::linkPhase4(*(a1 + 8), &v37);
        if (v38)
        {
          result = v37;
          if (v37)
          {
            result = (*(*v37 + 8))(v37);
          }
        }

        if (v31)
        {
          result = (*(*v31 + 8))(v31);
        }
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::jitlink::JITLinkerBase::linkPhase4(uint64_t a1, uint64_t *a2)
{
  if (a2[1])
  {
    v2 = *a2;
    *a2 = 0;
    v5 = v2;
    (*(*a1 + 24))(a1, &v5);
    result = v5;
    if (v5)
    {
      return (*(*v5 + 8))(v5);
    }
  }

  else
  {
    v4 = *a2;
    *a2 = -1;
    return (*(*a1 + 48))(a1, &v4);
  }

  return result;
}

void std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v4 - 4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>>::CallImpl<llvm::jitlink::JITLinkerBase::linkPhase1(std::unique_ptr<llvm::jitlink::JITLinkerBase>)::$_1>(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8) & 1;
  v2 = v9;
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = 0;
  v7 = v4;
  v8 = 0;
  v11 = v2;
  v10 = v3;
  llvm::jitlink::JITLinkerBase::linkPhase2(v4, &v7, &v10);
  llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(&v10);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  result = llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>>::MoveImpl<llvm::jitlink::JITLinkerBase::linkPhase1(std::unique_ptr<llvm::jitlink::JITLinkerBase>)::$_1>(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>>::DestroyImpl<llvm::jitlink::JITLinkerBase::linkPhase1(std::unique_ptr<llvm::jitlink::JITLinkerBase>)::$_1>(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t llvm::jitlink::createLookupContinuation<llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0>(llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0)::Impl::~Impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void llvm::jitlink::createLookupContinuation<llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0>(llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0)::Impl::~Impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::jitlink::createLookupContinuation<llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0>(llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0)::Impl::run(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24) & 1;
  v12 = v2;
  v3 = *a2;
  if (v2)
  {
    *a2 = 0;
    v4 = *(a1 + 8);
  }

  else
  {
    v5 = *(a2 + 16);
    *(a2 + 16) = 0;
    *a2 = 0;
    v4 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    v13[1] = v6;
    v10[1] = 0;
    v14 = v5;
    v11 = 0;
  }

  *(a1 + 8) = 0;
  v9 = v4;
  v10[0] = 0;
  v15 = v2;
  v13[0] = v3;
  llvm::jitlink::JITLinkerBase::linkPhase3(v4, &v9, v13);
  llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v13);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  result = llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v10);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>::CallImpl<llvm::jitlink::JITLinkerBase::linkPhase3(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)::$_0>(uint64_t **a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 8) & 1;
  v3 = *a2;
  *a2 = -!v2;
  v4 = *a1;
  *a1 = 0;
  v9 = v2;
  v8 = v3;
  llvm::jitlink::JITLinkerBase::linkPhase4(v4[1], &v8);
  if ((v9 & 1) != 0 && v8)
  {
    (*(*v8 + 8))(v8);
  }

  v5 = *(*v4 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5(v4);
}

void *llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>::MoveImpl<llvm::jitlink::JITLinkerBase::linkPhase3(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)::$_0>(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>::DestroyImpl<llvm::jitlink::JITLinkerBase::linkPhase3(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)::$_0>(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(a1, v7, a2);
  }

  return v5;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(uint64_t a1, void *a2, uint64_t *a3)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = *a3;
  *result = *a3;
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v5 + 8), 1uLL);
  }

  result[2] = 0;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -8)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x277C69E30);
  }

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

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -8;
      }

      if (v13.i8[4])
      {
        *v12 = -8;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v16 = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v5, v4, &v16);
        v15 = v16;
        if ((*v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        v14 = 0;
        *v15 = 0;
        *v15 = *v4;
        *v4 = 0;
        *(v15 + 8) = *(v4 + 2);
        ++*(v5 + 8);
      }

      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t *llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<llvm::jitlink::JITLinkerBase::abandonAllocAndBailOut(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Error)::$_0>(void *a1, uint64_t **a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = a1[1];
  v4 = *(*a1 + 8);
  a1[1] = 0;
  v7 = v2;
  v8 = v3;
  llvm::ErrorList::join(&v8, &v7, &v6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  (*(*v4 + 24))(v4, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *llvm::detail::UniqueFunctionBase<void,llvm::Error>::MoveImpl<llvm::jitlink::JITLinkerBase::abandonAllocAndBailOut(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Error)::$_0>(void *result, uint64_t *a2)
{
  result[1] = 0;
  v2 = *a2;
  result[1] = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::DestroyImpl<llvm::jitlink::JITLinkerBase::abandonAllocAndBailOut(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Error)::$_0>(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *a1;
  *a1 = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

llvm::jitlink::BasicLayout *llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::BasicLayout *this, llvm::jitlink::LinkGraph *a2)
{
  v2 = this;
  v97 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = this + 24;
  v88 = this + 8;
  *(this + 2) = 0x400000000;
  if (*(a2 + 52))
  {
    v3 = *(a2 + 54);
    if (v3)
    {
      v4 = 24 * v3;
      v5 = *(a2 + 25);
      while (*v5 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v5 += 3;
        v4 -= 24;
        if (!v4)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      v5 = *(a2 + 25);
    }

    v6 = *(a2 + 25) + 24 * v3;
    if (v5 != v6)
    {
      do
      {
        v7 = v5[2];
        if ((*(v7 + 32) + 8 * *(v7 + 48)) != llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v7 + 32) && *(v7 + 20) != 2)
        {
          v8 = *(v7 + 16) | (8 * (*(v7 + 20) & 0x1F));
          v9 = *(this + 1);
          v10 = *(this + 4);
          if (v10)
          {
            v11 = *(this + 1);
            v12 = *(this + 4);
            do
            {
              v13 = v12 >> 1;
              v14 = &v11[104 * (v12 >> 1)];
              v16 = *v14;
              v15 = v14 + 104;
              v12 += ~(v12 >> 1);
              if (v16 < v8)
              {
                v11 = v15;
              }

              else
              {
                v12 = v13;
              }
            }

            while (v12);
            v17 = *(this + 4);
          }

          else
          {
            v17 = 0;
            v11 = *(this + 1);
          }

          if (v11 == (v9 + 104 * v17) || *v11 != v8)
          {
            v96 = 0;
            memset(&v95[7], 0, 32);
            v90 = *v95;
            v89[0] = v8;
            v89[8] = 0;
            *v91 = *&v95[16];
            *&v91[15] = 0uLL;
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            if ((v9 + 104 * v10) == v11)
            {
              v36 = llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>>(v88, v89);
              v37 = *(this + 1) + 104 * *(this + 4);
              *v37 = *v36;
              v38 = *(v36 + 24);
              v39 = *(v36 + 8);
              *(v37 + 40) = *(v36 + 40);
              *(v37 + 8) = v39;
              *(v37 + 24) = v38;
              *(v37 + 64) = 0;
              *(v37 + 72) = 0;
              *(v37 + 56) = 0;
              *(v37 + 56) = *(v36 + 56);
              *(v37 + 72) = *(v36 + 72);
              *(v36 + 56) = 0;
              *(v36 + 64) = 0;
              *(v36 + 72) = 0;
              *(v37 + 88) = 0;
              *(v37 + 96) = 0;
              *(v37 + 80) = 0;
              *(v37 + 80) = *(v36 + 80);
              *(v37 + 96) = *(v36 + 96);
              *(v36 + 80) = 0;
              *(v36 + 88) = 0;
              *(v36 + 96) = 0;
              LODWORD(v37) = *(this + 4) + 1;
              *(this + 4) = v37;
              v11 = (*(this + 1) + 104 * v37 - 104);
            }

            else
            {
              v18 = &v11[-v9];
              v19 = llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>>(v88, v89);
              v20 = *(this + 1);
              v21 = v20 + 104 * *(this + 4);
              v22 = *(v21 - 48);
              *(v21 + 40) = *(v21 - 64);
              v23 = *(v21 - 96);
              *(v21 + 24) = *(v21 - 80);
              *(v21 + 8) = v23;
              v11 = &v18[v20];
              *v21 = *(v21 - 104);
              *(v21 + 56) = v22;
              *(v21 + 72) = *(v21 - 32);
              *(v21 - 48) = 0;
              *(v21 - 40) = 0;
              *(v21 + 80) = *(v21 - 24);
              *(v21 + 96) = *(v21 - 8);
              *(v21 - 32) = 0;
              *(v21 - 24) = 0;
              *(v21 - 16) = 0;
              *(v21 - 8) = 0;
              v24 = *(this + 1);
              v25 = *(this + 4);
              v26 = v24 + 104 * v25 - 104;
              if (v26 != v11)
              {
                v27 = v24 + 104 * v25 - 104;
                do
                {
                  v28 = *(v27 - 104);
                  v27 -= 104;
                  *v26 = v28;
                  v29 = *(v26 - 80);
                  *(v26 + 8) = *(v26 - 96);
                  *(v26 + 24) = v29;
                  *(v26 + 40) = *(v26 - 64);
                  std::vector<llvm::jitlink::Block *>::__move_assign(v26 + 56, (v26 - 48));
                  std::vector<llvm::jitlink::Block *>::__move_assign(v26 + 80, (v26 - 24));
                  v26 = v27;
                }

                while (v27 != v11);
                v25 = *(this + 4);
                v24 = *(this + 1);
              }

              v30 = v25 + 1;
              *(this + 4) = v30;
              if (v19 < v24 + 104 * v30 && v19 >= v11)
              {
                v32 = 104;
              }

              else
              {
                v32 = 0;
              }

              v33 = (v19 + v32);
              *v11 = *(v19 + v32);
              v34 = *(v19 + v32 + 8);
              v35 = *(v19 + v32 + 24);
              *(v11 + 40) = *(v19 + v32 + 40);
              *(v11 + 24) = v35;
              *(v11 + 8) = v34;
              std::vector<llvm::jitlink::Block *>::__move_assign((v11 + 56), (v19 + v32 + 56));
              std::vector<llvm::jitlink::Block *>::__move_assign((v11 + 80), v33 + 5);
            }

            if (*(&v93 + 1))
            {
              *&v94 = *(&v93 + 1);
              operator delete(*(&v93 + 1));
            }

            if (v92)
            {
              *(&v92 + 1) = v92;
              operator delete(v92);
            }
          }

          v40 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v7 + 32);
          v42 = *(v7 + 32) + 8 * *(v7 + 48);
          if (v42 != v40)
          {
            v43 = v40;
            v44 = v41;
            v45 = v11 + 8;
            do
            {
              v46 = *v43;
              v47 = 48;
              if (!*(*v43 + 24))
              {
                v47 = 72;
              }

              v48 = &v45[v47];
              v50 = *&v45[v47 + 8];
              v49 = *&v45[v47 + 16];
              if (v50 >= v49)
              {
                v52 = (v50 - *v48) >> 3;
                if ((v52 + 1) >> 61)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v53 = v49 - *v48;
                v54 = v53 >> 2;
                if (v53 >> 2 <= (v52 + 1))
                {
                  v54 = v52 + 1;
                }

                if (v53 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v55 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v54;
                }

                if (v55)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(v48, v55);
                }

                v56 = (8 * v52);
                *v56 = v46;
                v51 = 8 * v52 + 8;
                v57 = *(v48 + 8) - *v48;
                v58 = v56 - v57;
                memcpy(v56 - v57, *v48, v57);
                v59 = *v48;
                *v48 = v58;
                *(v48 + 8) = v51;
                *(v48 + 16) = 0;
                if (v59)
                {
                  operator delete(v59);
                }
              }

              else
              {
                *v50 = v46;
                v51 = (v50 + 1);
              }

              *(v48 + 8) = v51;
              do
              {
                ++v43;
              }

              while (v43 != v44 && (*v43 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v43 != v42);
          }
        }

        v5 += 3;
        v2 = this;
        if (v5 == v6)
        {
          break;
        }

        while (*v5 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v5 += 3;
          if (v5 == v6)
          {
            goto LABEL_63;
          }
        }
      }

      while (v5 != v6);
LABEL_63:
      v60 = *(this + 4);
      if (v60)
      {
        v61 = *(this + 1);
        v62 = v61 + 104 * v60;
        do
        {
          v63 = *(v61 + 56);
          v64 = *(v61 + 64);
          v65 = 126 - 2 * __clz((v64 - v63) >> 3);
          if (v64 == v63)
          {
            v66 = 0;
          }

          else
          {
            v66 = v65;
          }

          std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,false>(v63, v64, v66, 1);
          v67 = *(v61 + 80);
          v68 = *(v61 + 88);
          v69 = 126 - 2 * __clz((v68 - v67) >> 3);
          if (v68 == v67)
          {
            v70 = 0;
          }

          else
          {
            v70 = v69;
          }

          std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,false>(v67, v68, v70, 1);
          v71 = *(v61 + 56);
          v72 = *(v61 + 64);
          v73 = *(v61 + 16);
          if (v71 != v72)
          {
            v74 = *(v61 + 8);
            do
            {
              v75 = *v71++;
              v73 += *(v75 + 32) + (((*(v75 + 8) >> 8) - v73) & ~(-1 << (*(v75 + 8) >> 3)));
              *(v61 + 16) = v73;
              v76 = *(v75 + 8) >> 3;
              if (v74 <= v76)
              {
                v74 = v76;
              }

              *(v61 + 8) = v74;
            }

            while (v71 != v72);
          }

          v77 = *(v61 + 80);
          v78 = *(v61 + 88);
          v79 = v73;
          if (v77 != v78)
          {
            v80 = *(v61 + 8);
            v79 = v73;
            do
            {
              v81 = *v77++;
              v82 = *(v81 + 8);
              v83 = (v82 >> 8) - v79;
              v84 = v82 >> 3;
              v79 += *(v81 + 32) + (v83 & ~(-1 << v84));
              if (v80 <= v84)
              {
                v80 = v84;
              }

              *(v61 + 8) = v80;
            }

            while (v77 != v78);
          }

          *(v61 + 24) = v79 - v73;
          v61 += 104;
        }

        while (v61 != v62);
      }
    }
  }

LABEL_82:
  v85 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t llvm::jitlink::BasicLayout::getContiguousPageBasedLayoutSizes@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 104 * v4;
    v8 = (*(this + 8) + 16);
    do
    {
      if (!(a2 >> *(v8 - 8)))
      {
        getErrorErrorCat();
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      v9 = (a2 - 1 + *v8 + v8[1]) / a2 * a2;
      v10 = *(v8 - 16);
      v11 = v10 >= 8;
      if (v10 >= 8)
      {
        v12 = (a2 - 1 + *v8 + v8[1]) / a2 * a2;
      }

      else
      {
        v12 = 0;
      }

      v6 += v12;
      if (v11)
      {
        v9 = 0;
      }

      v5 += v9;
      v8 += 13;
      v7 -= 104;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(a3 + 16) &= ~1u;
  *a3 = v5;
  *(a3 + 8) = v6;
  return this;
}

_DWORD *llvm::jitlink::BasicLayout::apply@<X0>(_DWORD *this@<X0>, void *a2@<X8>)
{
  v3 = this[4];
  if (v3)
  {
    v4 = *(this + 1);
    v5 = &v4[13 * v3];
    do
    {
      v6 = v4[7];
      v7 = v4[8];
      if (v6 != v7)
      {
        v8 = v4[6];
        do
        {
          v9 = *v6++;
          v10 = v4[5];
          v11 = (((v9[1] >> 8) - v4[4]) & ~(-1 << (v9[1] >> 3))) + v4[4];
          v4[4] = v11;
          v12 = (((v9[1] >> 8) - v8) & ~(-1 << (v9[1] >> 3))) + v8;
          *v9 = v11;
          v13 = v9[3];
          v14 = v9[4];
          v4[4] += v14;
          v4[6] = v12;
          this = memcpy((v10 + v12), v13, v14);
          v15 = v9[4];
          v9[3] = v4[5] + v4[6];
          v9[1] |= 4uLL;
          v8 = v4[6] + v15;
          v4[6] = v8;
        }

        while (v6 != v7);
      }

      v16 = v4[10];
      v17 = v4[11];
      if (v16 != v17)
      {
        v18 = v4[4];
        v19 = v4[10];
        do
        {
          v20 = *v19++;
          v21 = (((v20[1] >> 8) - v18) & ~(-1 << (v20[1] >> 3))) + v18;
          v4[4] = v21;
          *v20 = v21;
          v18 = v4[4] + v20[4];
          v4[4] = v18;
        }

        while (v19 != v17);
      }

      v4[8] = v4[7];
      v4[11] = v16;
      v4 += 13;
    }

    while (v4 != v5);
  }

  *a2 = 0;
  return this;
}

uint64_t llvm::jitlink::InProcessMemoryManager::allocate(uint64_t a1, int a2, llvm::jitlink::LinkGraph *a3, void *a4)
{
  v38[55] = *MEMORY[0x277D85DE8];
  llvm::jitlink::BasicLayout::BasicLayout(&v35, a3);
  llvm::jitlink::BasicLayout::getContiguousPageBasedLayoutSizes(&v35, *(a1 + 8), v33);
  if (v34)
  {
    v32 = -1;
    v31 = v33[0];
    v6 = a4[3];
    if ((v6 & 2) == 0)
    {
      a4 = *a4;
    }

    (*(v6 & 0xFFFFFFFFFFFFFFF8))(a4, &v31);
    v7 = &v31;
  }

  else
  {
    v9 = v33[0];
    v8 = v33[1];
    LODWORD(v25) = 0;
    v26 = std::system_category();
    llvm::sys::Memory::allocateMappedMemory(v8 + v9, 0, 50331648, &v25, v38);
    if (v25)
    {
      *&v10.__val_ = v26;
      llvm::errorCodeToError(v25, v10, &v24);
      v30 = -1;
      v29 = v24;
      v11 = a4[3];
      if ((v11 & 2) == 0)
      {
        a4 = *a4;
      }

      (*(v11 & 0xFFFFFFFFFFFFFFF8))(a4, &v29);
      v7 = &v29;
    }

    else
    {
      v12 = v38[0];
      bzero(v38[0], v38[1]);
      if (v37)
      {
        v13 = v36;
        v14 = &v36[13 * v37];
        v15 = &v12[v9];
        v16 = v12;
        do
        {
          v17 = *v13;
          if (v17 >= 8)
          {
            v18 = v15;
          }

          else
          {
            v18 = v16;
          }

          v13[4] = v18;
          v19 = *(a1 + 8);
          v20 = v13[2] + v13[3] + v19 - 1;
          v13[5] = v18;
          if (v17 >= 8)
          {
            v15 = &v18[v20 / v19 * v19];
          }

          else
          {
            v16 = &v18[v20 / v19 * v19];
          }

          v13 += 13;
        }

        while (v13 != v14);
      }

      llvm::jitlink::BasicLayout::apply(&v35, v38);
      if (!v38[0])
      {
        operator new();
      }

      v28 = -1;
      v27 = v38[0];
      v21 = a4[3];
      if ((v21 & 2) == 0)
      {
        a4 = *a4;
      }

      (*(v21 & 0xFFFFFFFFFFFFFFF8))(a4, &v27);
      v7 = &v27;
    }
  }

  llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(v7);
  result = llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v36);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::jitlink::InProcessMemoryManager::deallocate(uint64_t a1, __int128 ***a2, void *a3)
{
  std::mutex::lock((a1 + 16));
  v6 = *a2;
  v40 = a2[1];
  if (*a2 == v40)
  {
    std::mutex::unlock((a1 + 16));
    v9 = 0;
    v7 = 0;
    v8 = 0;
    v28 = 0;
  }

  else
  {
    v38 = a3;
    v39 = a1;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *v6;
      *v6 = -1;
      v12 = v10 - v9;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      if (0x5555555555555556 * (-v9 >> 3) > v14)
      {
        v14 = 0x5555555555555556 * (-v9 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v9 >> 3) >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_65;
      }

      v16 = v9;
      v17 = 24 * v13;
      v18 = *v11;
      *(v17 + 16) = *(v11 + 2);
      *v17 = v18;
      v10 = 24 * v13 + 24;
      v9 = 24 * v13 + 24 * (v12 / -24);
      memcpy(v9, v16, v12);
      if (v16)
      {
        operator delete(v16);
      }

      v19 = v39;
      v20 = *(v11 + 24);
      if ((vmovn_s64(vceqq_s64(v20, vdupq_laneq_s64(v20, 1))).u8[0] & 1) == 0)
      {
        v21 = 24 * v13 + 24 * (v12 / -24);
        v22 = v8 - v7;
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        if (0x5555555555555556 * (-v7 >> 3) > v24)
        {
          v24 = 0x5555555555555556 * (-v7 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v7 >> 3) >= 0x555555555555555)
        {
          v25 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          if (v25 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

LABEL_65:
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v26 = 24 * v23;
        *v26 = v20;
        *(v26 + 16) = *(v11 + 5);
        *(v11 + 3) = 0;
        *(v11 + 4) = 0;
        *(v11 + 5) = 0;
        v8 = (24 * v23 + 24);
        v27 = (24 * v23 - v22);
        memcpy((v26 - v22), v7, v22);
        if (v7)
        {
          operator delete(v7);
        }

        v7 = v27;
        v9 = v21;
        v19 = v39;
      }

      v46 = v11 + 3;
      std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](&v46);
      *v11 = *(v19 + 80);
      *(v19 + 80) = v11;
      ++v6;
    }

    while (v6 != v40);
    std::mutex::unlock((v19 + 16));
    if (v7 == v8)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      v29 = v8;
      do
      {
        v31 = *(v29 - 3);
        v30 = *(v29 - 2);
        v29 -= 3;
        while (v31 != v30)
        {
          llvm::orc::shared::WrapperFunctionCall::runWithSPSRetErrorMerged((v30 - 56), &v44);
          v32 = v44;
          if (v44)
          {
            v44 = 0;
            v45 = v32;
            v46 = v28;
            llvm::ErrorList::join(&v46, &v45, &v43);
            if (v45)
            {
              (*(*v45 + 8))(v45);
            }

            if (v46)
            {
              (*(*v46 + 8))(v46);
            }

            v28 = v43;
            if (v44)
            {
              (*(*v44 + 8))(v44);
            }
          }

          v33 = *(v8 - 2);
          v34 = *(v33 - 48);
          if (v34 != (v33 - 24))
          {
            free(v34);
          }

          v30 = v33 - 56;
          *(v8 - 2) = v33 - 56;
          v31 = *(v8 - 3);
        }

        v10 -= 24;
        v35 = llvm::sys::Memory::releaseMappedMemory(v10);
        if (v35)
        {
          llvm::errorCodeToError(v35, v36, &v42);
          v45 = v42;
          v46 = v28;
          v42 = 0;
          llvm::ErrorList::join(&v46, &v45, &v44);
          if (v45)
          {
            (*(*v45 + 8))(v45);
          }

          if (v46)
          {
            (*(*v46 + 8))(v46);
          }

          v28 = v44;
        }

        v46 = v29;
        std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](&v46);
        v8 = v29;
      }

      while (v7 != v29);
      v8 = v29;
    }

    a3 = v38;
  }

  v41 = v28;
  v37 = a3[3];
  if ((v37 & 2) == 0)
  {
    a3 = *a3;
  }

  (*(v37 & 0xFFFFFFFFFFFFFFF8))(a3, &v41);
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  if (v7)
  {
    while (v8 != v7)
    {
      v8 -= 3;
      v46 = v8;
      std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](&v46);
    }

    operator delete(v7);
  }

  if (v9)
  {
    operator delete(v9);
  }
}

void llvm::orc::shared::WrapperFunctionCall::runWithSPSRetErrorMerged(llvm::orc::shared::WrapperFunctionCall *this@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  llvm::orc::shared::WrapperFunctionCall::runWithSPSRet<llvm::orc::shared::SPSError,llvm::orc::shared::detail::SPSSerializableError>(this, v5, a2);
  if (!*a2)
  {
    __p = v6;
    v4 = HIBYTE(v8);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (v5[0] == 1)
    {
      getErrorErrorCat();
      v9 = 3;
      v10 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,std::string,std::error_code>();
    }

    *a2 = 0;
    if (v4 < 0)
    {
      operator delete(__p);
    }
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v6);
  }
}

void llvm::jitlink::InProcessMemoryManager::~InProcessMemoryManager(llvm::jitlink::InProcessMemoryManager *this)
{
  *this = &unk_2883ECE18;
  *(this + 10) = 0;
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 88);
  std::mutex::~mutex((this + 16));
}

{
  *this = &unk_2883ECE18;
  *(this + 10) = 0;
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 88);
  std::mutex::~mutex((this + 16));

  JUMPOUT(0x277C69E40);
}

void std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::orc::shared::WrapperFunctionCall>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::orc::shared::WrapperFunctionCall>::clear[abi:nn200100](char **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 24;
    do
    {
      v5 = *(v4 - 3);
      if (v4 != v5)
      {
        free(v5);
      }

      v6 = v4 - 32;
      v4 -= 56;
    }

    while (v6 != v3);
  }

  a1[1] = v3;
}

void llvm::orc::shared::WrapperFunctionCall::runWithSPSRet<llvm::orc::shared::SPSError,llvm::orc::shared::detail::SPSSerializableError>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = (*a1)(*(a1 + 8), *(a1 + 16));
  v10 = v5;
  v11 = v6;
  if (v6)
  {
    v7 = &v10;
    if (v6 > 8)
    {
      v7 = v5;
    }
  }

  else
  {
    if (v5)
    {
      getErrorErrorCat();
      v8 = 3;
      v9 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v7 = &v10;
  }

  v8 = v7;
  v9 = v6;
  if (!llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSError,llvm::orc::shared::detail::SPSSerializableError,void>::deserialize(&v8, a2))
  {
    getErrorErrorCat();
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  *a3 = 0;
  if (v11 > 8 || !v11 && v10)
  {
    free(v10);
  }
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 104 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::grow(a1, v3 + 1);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::grow(a1, v3 + 1);
    }
  }

  return v2;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,false>(unint64_t result, void *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(v9, v9 + 8, (a2 - 1));
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(v9, v9 + 8, v9 + 16, (a2 - 1));
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(v9, v9 + 8, v9 + 16, v9 + 24, (a2 - 1));
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v62 = *(a2 - 1);
        v63 = *v9;
        v64 = *(v62[2] + 24);
        v65 = *(*(*v9 + 16) + 24);
        v66 = v64 >= v65;
        if (v64 == v65)
        {
          v66 = *v62 >= *v63;
          if (*v62 == *v63)
          {
            v66 = v62[4] >= v63[4];
          }
        }

        if (!v66)
        {
          *v9 = v62;
          *(a2 - 1) = v63;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v84 = (v10 - 2) >> 1;
      v85 = v84;
      do
      {
        v86 = v85;
        if (v84 >= v85)
        {
          v87 = (2 * v85) | 1;
          v88 = (v9 + 8 * v87);
          if (2 * v86 + 2 < v10)
          {
            v89 = v88[1];
            v90 = *v88;
            v91 = *((*v88)[2] + 24);
            result = *(v89[2] + 24);
            v92 = v91 >= result;
            if (v91 == result)
            {
              result = *v89;
              v92 = *v90 >= *v89;
              if (*v90 == *v89)
              {
                v92 = v90[4] >= v89[4];
              }
            }

            if (!v92)
            {
              ++v88;
              v87 = 2 * v86 + 2;
            }
          }

          v93 = *(v9 + 8 * v86);
          v94 = *v88;
          v95 = *((*v88)[2] + 24);
          v96 = *(v93[2] + 24);
          v97 = v95 >= v96;
          if (v95 == v96)
          {
            v97 = *v94 >= *v93;
            if (*v94 == *v93)
            {
              v97 = v94[4] >= v93[4];
            }
          }

          if (v97)
          {
            *(v9 + 8 * v86) = v94;
            while (1)
            {
              if (v84 < v87)
              {
                goto LABEL_180;
              }

              v98 = v88;
              v99 = 2 * v87;
              v87 = (2 * v87) | 1;
              v88 = (v9 + 8 * v87);
              v100 = v99 + 2;
              if (v100 < v10)
              {
                v101 = v88[1];
                result = *v88;
                v102 = *((*v88)[2] + 24);
                v103 = *(v101[2] + 24);
                v104 = v102 >= v103;
                if (v102 == v103)
                {
                  v104 = *result >= *v101;
                  if (*result == *v101)
                  {
                    result = *(result + 32);
                    v104 = result >= v101[4];
                  }
                }

                if (!v104)
                {
                  ++v88;
                  v87 = v100;
                }
              }

              v105 = *v88;
              v106 = *((*v88)[2] + 24);
              v107 = *(v93[2] + 24);
              v108 = v106 >= v107;
              if (v106 == v107)
              {
                v108 = *v105 >= *v93;
                if (*v105 == *v93)
                {
                  v108 = v105[4] >= v93[4];
                }
              }

              if (!v108)
              {
                break;
              }

              *v98 = v105;
            }

            v88 = v98;
LABEL_180:
            *v88 = v93;
          }
        }

        v85 = v86 - 1;
      }

      while (v86);
      while (1)
      {
        v109 = 0;
        v110 = *v9;
        v111 = v9;
        do
        {
          v112 = v111;
          v113 = &v111[v109];
          v111 = v113 + 1;
          v114 = 2 * v109;
          v109 = (2 * v109) | 1;
          v115 = v114 + 2;
          if (v115 < v10)
          {
            v118 = v113[2];
            v116 = v113 + 2;
            v117 = v118;
            v119 = *(v116 - 1);
            result = *(v119[2] + 24);
            v120 = *(v118[2] + 24);
            v121 = result >= v120;
            if (result == v120)
            {
              result = *v119;
              v121 = *v119 >= *v117;
              if (*v119 == *v117)
              {
                v121 = v119[4] >= v117[4];
              }
            }

            if (!v121)
            {
              v111 = v116;
              v109 = v115;
            }
          }

          *v112 = *v111;
        }

        while (v109 <= ((v10 - 2) >> 1));
        if (v111 != --a2)
        {
          *v111 = *a2;
          *a2 = v110;
          v122 = (v111 - v9 + 8) >> 3;
          v123 = v122 - 2;
          if (v122 < 2)
          {
            goto LABEL_204;
          }

          v124 = v123 >> 1;
          v125 = v9 + 8 * (v123 >> 1);
          v126 = *v125;
          v110 = *v111;
          v127 = *(*(*v125 + 16) + 24);
          v128 = *(*(*v111 + 16) + 24);
          v129 = v127 >= v128;
          if (v127 == v128)
          {
            v129 = *v126 >= *v110;
            if (*v126 == *v110)
            {
              v129 = v126[4] >= v110[4];
            }
          }

          if (v129)
          {
            goto LABEL_204;
          }

          *v111 = v126;
          if (v123 >= 2)
          {
            while (1)
            {
              v130 = v124 - 1;
              v124 = (v124 - 1) >> 1;
              v111 = (v9 + 8 * v124);
              v131 = *v111;
              v132 = *(*(*v111 + 16) + 24);
              v133 = *(v110[2] + 24);
              v134 = v132 >= v133;
              if (v132 == v133)
              {
                v134 = *v131 >= *v110;
                if (*v131 == *v110)
                {
                  v134 = v131[4] >= v110[4];
                }
              }

              if (v134)
              {
                break;
              }

              *v125 = v131;
              v125 = v9 + 8 * v124;
              if (v130 <= 1)
              {
                goto LABEL_203;
              }
            }
          }

          v111 = v125;
        }

LABEL_203:
        *v111 = v110;
LABEL_204:
        if (v10-- <= 2)
        {
          return result;
        }
      }
    }

    v11 = v10 >> 1;
    v12 = (v9 + 8 * (v10 >> 1));
    if (v10 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(&v7[v10 >> 1], v7, (a2 - 1));
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(v7, &v7[v10 >> 1], (a2 - 1));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>((v7 + 1), (v12 - 1), (a2 - 2));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>((v7 + 2), &v7[v11 + 1], (a2 - 3));
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>((v12 - 1), v12, &v7[v11 + 1]);
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
    }

    --a3;
    v14 = *v7;
    if (a4)
    {
      v15 = *(v14[2] + 24);
      goto LABEL_22;
    }

    v16 = *(v7 - 1);
    v15 = *(v16[2] + 24);
    v17 = *(v14[2] + 24);
    v18 = v15 >= v17;
    if (v15 == v17)
    {
      v18 = *v16 >= *v14;
      if (*v16 == *v14)
      {
        v18 = v16[4] >= v14[4];
      }
    }

    else
    {
      v15 = *(v14[2] + 24);
    }

    if (v18)
    {
      v41 = *v8;
      v42 = *(*(*v8 + 16) + 24);
      v43 = v17 >= v42;
      if (v17 == v42)
      {
        v43 = *v14 >= *v41;
        if (*v14 == *v41)
        {
          v43 = v14[4] >= v41[4];
        }
      }

      v9 = (v7 + 1);
      if (v43)
      {
        while (v9 < a2)
        {
          v47 = *v9;
          v48 = *(*(*v9 + 16) + 24);
          v49 = v17 >= v48;
          if (v17 == v48)
          {
            v49 = *v14 >= *v47;
            if (*v14 == *v47)
            {
              v49 = v14[4] >= v47[4];
            }
          }

          if (!v49)
          {
            break;
          }

          v9 += 8;
        }
      }

      else
      {
        while (1)
        {
          v44 = *v9;
          v45 = *(*(*v9 + 16) + 24);
          v46 = v17 >= v45;
          if (v17 == v45)
          {
            v46 = *v14 >= *v44;
            if (*v14 == *v44)
            {
              v46 = v14[4] >= v44[4];
            }
          }

          if (!v46)
          {
            break;
          }

          v9 += 8;
        }
      }

      i = a2;
      if (v9 < a2)
      {
        for (i = (a2 - 1); ; --i)
        {
          v51 = v17 >= v42;
          if (v17 == v42)
          {
            v51 = *v14 >= *v41;
            if (*v14 == *v41)
            {
              v51 = v14[4] >= v41[4];
            }
          }

          if (v51)
          {
            break;
          }

          v52 = *(i - 1);
          v41 = v52;
          v42 = *(v52[2] + 24);
        }
      }

      if (v9 < i)
      {
        v53 = *v9;
        v54 = *i;
        do
        {
          *v9 = v54;
          v9 += 8;
          *i = v53;
          v55 = *(v14[2] + 24);
          while (1)
          {
            v53 = *v9;
            v56 = *(*(*v9 + 16) + 24);
            v57 = v55 >= v56;
            if (v55 == v56)
            {
              v57 = *v14 >= *v53;
              if (*v14 == *v53)
              {
                v57 = v14[4] >= v53[4];
              }
            }

            if (!v57)
            {
              break;
            }

            v9 += 8;
          }

          do
          {
            v58 = *--i;
            v54 = v58;
            v59 = *(v58[2] + 24);
            v60 = v55 >= v59;
            if (v55 == v59)
            {
              v60 = *v14 >= *v54;
              if (*v14 == *v54)
              {
                v60 = v14[4] >= v54[4];
              }
            }
          }

          while (!v60);
        }

        while (v9 < i);
      }

      v61 = (v9 - 8);
      if ((v9 - 8) != v7)
      {
        *v7 = *v61;
      }

      a4 = 0;
      *v61 = v14;
    }

    else
    {
LABEL_22:
      for (j = 0; ; ++j)
      {
        v20 = v7[j + 1];
        v21 = *(v20[2] + 24);
        v22 = v21 >= v15;
        if (v21 == v15)
        {
          v22 = *v20 >= *v14;
          if (*v20 == *v14)
          {
            v22 = v20[4] >= v14[4];
          }
        }

        if (v22)
        {
          break;
        }
      }

      v23 = &v7[j];
      v24 = &v7[j + 1];
      k = a2 - 1;
      if (j * 8)
      {
        while (1)
        {
          v26 = *k;
          v27 = *(*(*k + 16) + 24);
          v28 = v27 >= v15;
          if (v27 == v15)
          {
            v28 = *v26 >= *v14;
            if (*v26 == *v14)
            {
              v28 = v26[4] >= v14[4];
            }
          }

          if (!v28)
          {
            break;
          }

          --k;
        }
      }

      else
      {
        k = a2;
        if (v24 < a2)
        {
          for (k = a2 - 1; ; --k)
          {
            v29 = *k;
            v30 = *(*(*k + 16) + 24);
            if (v30 == v15)
            {
              if (*v29 == *v14)
              {
                if (v24 >= k || v29[4] < v14[4])
                {
                  break;
                }
              }

              else if (v24 >= k || *v29 < *v14)
              {
                break;
              }
            }

            else if (v24 >= k || v30 < v15)
            {
              break;
            }
          }
        }
      }

      if (v24 < k)
      {
        v31 = *k;
        v32 = v24;
        v33 = k;
        do
        {
          *v32 = v31;
          v32 += 8;
          *v33 = v20;
          v34 = *(v14[2] + 24);
          while (1)
          {
            v20 = *v32;
            v35 = *(*(*v32 + 16) + 24);
            v36 = v35 >= v34;
            if (v35 == v34)
            {
              v36 = *v20 >= *v14;
              if (*v20 == *v14)
              {
                v36 = v20[4] >= v14[4];
              }
            }

            if (v36)
            {
              break;
            }

            v32 += 8;
          }

          do
          {
            v37 = *--v33;
            v31 = v37;
            v38 = *(v37[2] + 24);
            v39 = v38 >= v34;
            if (v38 == v34)
            {
              v39 = *v31 >= *v14;
              if (*v31 == *v14)
              {
                v39 = v31[4] >= v14[4];
              }
            }
          }

          while (v39);
        }

        while (v32 < v33);
        v23 = (v32 - 8);
      }

      if (v23 != v7)
      {
        *v7 = *v23;
      }

      *v23 = v14;
      if (v24 < k)
      {
LABEL_67:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,false>(v7, v23, a3, a4 & 1);
        a4 = 0;
        v9 = (v23 + 1);
      }

      else
      {
        v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **>(v7, v23);
        v9 = (v23 + 1);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **>((v23 + 1), a2);
        if (result)
        {
          a2 = v23;
          if (v40)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v40)
        {
          goto LABEL_67;
        }
      }
    }
  }

  v67 = (v9 + 8);
  v69 = v9 == a2 || v67 == a2;
  if ((a4 & 1) == 0)
  {
    if (!v69)
    {
      do
      {
        v136 = v7;
        v7 = v67;
        v138 = *v136;
        v137 = v136[1];
        v139 = *(v137[2] + 24);
        v140 = *(*(*v136 + 16) + 24);
        v141 = v139 >= v140;
        if (v139 == v140)
        {
          v141 = *v137 >= *v138;
          if (*v137 == *v138)
          {
            v141 = v137[4] >= v138[4];
          }
        }

        if (!v141)
        {
          do
          {
            v142 = v136;
            v143 = *--v136;
            v136[2] = v138;
            v138 = v143;
            v144 = *(v137[2] + 24);
            v145 = *(v143[2] + 24);
            v146 = v144 >= v145;
            if (v144 == v145)
            {
              v146 = *v137 >= *v138;
              if (*v137 == *v138)
              {
                v146 = v137[4] >= v138[4];
              }
            }
          }

          while (!v146);
          *v142 = v137;
        }

        v67 = v7 + 1;
      }

      while (v7 + 1 != a2);
    }

    return result;
  }

  if (v69)
  {
    return result;
  }

  v70 = 0;
  v71 = v9;
  while (2)
  {
    v72 = v71;
    v71 = v67;
    v74 = *v72;
    v73 = v72[1];
    v75 = *(v73[2] + 24);
    v76 = *(*(*v72 + 16) + 24);
    v77 = v75 >= v76;
    if (v75 == v76)
    {
      v77 = *v73 >= *v74;
      if (*v73 == *v74)
      {
        v77 = v73[4] >= v74[4];
      }
    }

    if (v77)
    {
      goto LABEL_150;
    }

    v72[1] = v74;
    v78 = v9;
    if (v72 == v9)
    {
      goto LABEL_149;
    }

    v79 = v70;
    while (2)
    {
      v80 = *(v9 + v79 - 8);
      v81 = *(v73[2] + 24);
      v82 = *(v80[2] + 24);
      v83 = v81 >= v82;
      if (v81 == v82)
      {
        v83 = *v73 >= *v80;
        if (*v73 == *v80)
        {
          if (v73[4] >= v80[4])
          {
            v78 = (v9 + v79);
            goto LABEL_149;
          }

LABEL_146:
          --v72;
          *(v9 + v79) = v80;
          v79 -= 8;
          if (!v79)
          {
            v78 = v9;
            goto LABEL_149;
          }

          continue;
        }
      }

      break;
    }

    if (!v83)
    {
      goto LABEL_146;
    }

    v78 = v72;
LABEL_149:
    *v78 = v73;
LABEL_150:
    v67 = v71 + 1;
    v70 += 8;
    if (v71 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}