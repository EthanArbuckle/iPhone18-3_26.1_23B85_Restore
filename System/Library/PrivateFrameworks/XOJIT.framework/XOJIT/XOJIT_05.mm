uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucketImpl<llvm::json::ObjectKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::grow(a1, v7);
  v11[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(a1, a3, v11);
  a4 = v11[0];
LABEL_3:
  ++*(a1 + 8);
  llvm::json::ObjectKey::ObjectKey(v11, 0xFFFFFFFFFFFFFFFFLL, 0);
  if (!llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*(a4 + 8), *(a4 + 16), v11[1], v11[2]))
  {
    --*(a1 + 12);
  }

  v9 = v11[0];
  v11[0] = 0;
  if (v9)
  {
    std::default_delete<std::string>::operator()[abi:nn200100](v11, v9);
  }

  return a4;
}

void llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::grow(uint64_t a1, int a2)
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
  *a1 = operator new(56 * v8, 8uLL);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::moveFromOldBuckets(a1, v4, v4 + 56 * v3);

    JUMPOUT(0x277C69E30);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::initEmpty(a1);
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::initEmpty(a1);
  llvm::json::ObjectKey::ObjectKey(v13, 0xFFFFFFFFFFFFFFFFLL, 0);
  llvm::json::ObjectKey::ObjectKey(v12, 0xFFFFFFFFFFFFFFFELL, 0);
  while (a2 != a3)
  {
    if (!llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*(a2 + 8), *(a2 + 16), v13[1], v13[2]) && !llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*(a2 + 8), *(a2 + 16), v12[1], v12[2]))
    {
      v14 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(a1, a2, &v14);
      v6 = v14;
      v7 = *a2;
      *a2 = 0;
      v8 = *v6;
      *v6 = v7;
      if (v8)
      {
        std::default_delete<std::string>::operator()[abi:nn200100](v6, v8);
      }

      *(v6 + 8) = *(a2 + 8);
      llvm::json::Value::moveFrom(v6 + 24, (a2 + 24));
      ++*(a1 + 8);
      llvm::json::Value::destroy((a2 + 24));
    }

    v9 = *a2;
    *a2 = 0;
    if (v9)
    {
      std::default_delete<std::string>::operator()[abi:nn200100](a2, v9);
    }

    a2 += 56;
  }

  v10 = v12[0];
  v12[0] = 0;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:nn200100](v12, v10);
  }

  v11 = v13[0];
  v13[0] = 0;
  if (v11)
  {
    std::default_delete<std::string>::operator()[abi:nn200100](v13, v11);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::try_emplace<decltype(nullptr)>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucket<llvm::json::ObjectKey,decltype(nullptr)>(a1, v10, a2);
    v7 = result;
    v8 = 1;
  }

  v9 = *a1 + 56 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucket<llvm::json::ObjectKey,decltype(nullptr)>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucketImpl<llvm::json::ObjectKey>(a1, a3, a3, a2);
  v5 = v4;
  v6 = *a3;
  *a3 = 0;
  v7 = *v4;
  *v4 = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:nn200100](v4, v7);
  }

  *(v5 + 1) = *(a3 + 8);
  *(v5 + 12) = 0;
  return v5;
}

void llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::copyFrom(uint64_t a1, uint64_t a2)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(a1);
  MEMORY[0x277C69E30](*a1, 8);
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = operator new(56 * v4, 8uLL);

    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::copyFrom<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>>(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::copyFrom<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = a2[1];
  if (*(a1 + 16))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*a1 + v4);
      v7 = *a2;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      llvm::json::ObjectKey::operator=(v6, v7 + v4);
      v8 = *a1 + v4;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      llvm::json::ObjectKey::ObjectKey(v19, 0xFFFFFFFFFFFFFFFFLL, 0);
      if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(v9, v10, v19[1], v19[2]))
      {
        v11 = 0;
      }

      else
      {
        v12 = *a1 + v4;
        v13 = *(v12 + 8);
        v14 = *(v12 + 16);
        llvm::json::ObjectKey::ObjectKey(v18, 0xFFFFFFFFFFFFFFFELL, 0);
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(v13, v14, v18[1], v18[2]);
        v16 = v18[0];
        v18[0] = 0;
        if (v16)
        {
          std::default_delete<std::string>::operator()[abi:nn200100](v18, v16);
        }

        v11 = !isEqual;
      }

      v17 = v19[0];
      v19[0] = 0;
      if (v17)
      {
        std::default_delete<std::string>::operator()[abi:nn200100](v19, v17);
      }

      if (v11)
      {
        llvm::json::Value::copyFrom((*a1 + v4 + 24), (*a2 + v4 + 24));
      }

      ++v5;
      v4 += 56;
    }

    while (v5 < *(a1 + 16));
  }
}

uint64_t std::vector<llvm::json::Value>::__init_with_size[abi:nn200100]<llvm::json::Value*,llvm::json::Value*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<llvm::json::Value>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<llvm::json::Value>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::json::Value>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::vector<unsigned int>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t *llvm::APInt::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 2) >= 0x41u)
  {
    v4 = *a1;
    if (*a1)
    {
      MEMORY[0x277C69E10]();
    }
  }

  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a2 + 2) = 0;
  return a1;
}

void llvm::ManagedStaticBase::RegisterManagedStatic(llvm::ManagedStaticBase *this, void *(*a2)(void), void (*a3)(void *))
{
  if ((atomic_load_explicit(&qword_2815A58C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2815A58C0))
  {
    MEMORY[0x277C69C30](&stru_2815A58C8);
    __cxa_atexit(MEMORY[0x277D82658], &stru_2815A58C8, &dword_274E5C000);
    __cxa_guard_release(&qword_2815A58C0);
  }

  std::recursive_mutex::lock(&stru_2815A58C8);
  if (!*this)
  {
    atomic_store(a2(), this);
    v6 = _MergedGlobals_12;
    *(this + 1) = a3;
    *(this + 2) = v6;
    _MergedGlobals_12 = this;
  }

  std::recursive_mutex::unlock(&stru_2815A58C8);
}

char *operator new(uint64_t a1, unsigned __int8 **a2)
{
  v13[32] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = xmmword_2750C12F0;
  v3 = llvm::Twine::toStringRef(*a2, &v11);
  v5 = v4;
  v6 = operator new(a1 + v4 + 9);
  v7 = &v6[a1];
  *v7 = v5;
  v8 = v7 + 1;
  if (v5)
  {
    memcpy(v8, v3, v5);
  }

  *(v8 + v5) = 0;
  if (v11 != v13)
  {
    free(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void getMemBufferCopyImpl(const void *a1@<X0>, size_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(a2, a3, 0, &v9);
  v7 = v9;
  if (v9)
  {
    if (a2)
    {
      memmove(*(v9 + 8), a1, a2);
    }

    *(a4 + 16) &= ~1u;
    *a4 = v7;
  }

  else
  {
    v8 = std::generic_category();
    *(a4 + 16) |= 1u;
    *a4 = 12;
    *(a4 + 8) = v8;
  }
}

void *llvm::Twine::toStringRef(unsigned __int8 *a1, void *a2)
{
  if (a1[33] == 1)
  {
    v3 = a1[32];
    v4 = v3 > 5;
    v5 = (1 << v3) & 0x3A;
    if (!v4 && v5 != 0)
    {
      return llvm::Twine::getSingleStringRef(a1);
    }
  }

  llvm::Twine::toVector(a1, a2);
  result = *a2;
  v8 = a2[1];
  return result;
}

uint64_t *getFileAux<llvm::MemoryBuffer>@<X0>(const llvm::Twine *a1@<X0>, size_t a2@<X1>, off_t a3@<X2>, int a4@<W3>, int a5@<W4>, char a6@<W5>, __int16 a7@<W6>, uint64_t a8@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  llvm::sys::fs::openNativeFileForRead(a1, v15, 0, v23);
  if (v24)
  {
    v22 = *v23;
    v16 = llvm::errorToErrorCode(&v22);
    *(a8 + 16) |= 1u;
    *a8 = v16;
    *(a8 + 8) = v17;
    result = v22;
    if (v22)
    {
      result = (*(*v22 + 8))(v22);
    }

    v19 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v20 = v23[0];
    getOpenFileImpl<llvm::MemoryBuffer>(v23[0], a1, 0xFFFFFFFFFFFFFFFFLL, a2, a3, a5, a6, a7, a8);
    v21 = *MEMORY[0x277D85DE8];

    return llvm::sys::Process::SafelyCloseFileDescriptor(v20);
  }

  return result;
}

void llvm::WritableMemoryBuffer::getNewUninitMemBuffer(size_t a1@<X0>, unsigned __int8 *a2@<X1>, __int16 a3@<W2>, void *a4@<X8>)
{
  v20[32] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_2750C12F0;
  v8 = llvm::Twine::toStringRef(a2, &v18);
  v9 = v7 + 33;
  if ((a3 & 0x100) != 0)
  {
    v10 = 1 << a3;
  }

  else
  {
    v10 = 16;
  }

  v11 = a1 + v10 + v9 + 1;
  if (v11 <= a1)
  {
    v14 = 0;
  }

  else
  {
    v12 = v7;
    v13 = operator new(v11, MEMORY[0x277D826F0]);
    v14 = v13;
    if (v13)
    {
      v13[3] = v12;
      v15 = (v13 + 4);
      if (v12)
      {
        memcpy(v13 + 4, v8, v12);
      }

      v15[v12] = 0;
      v16 = (v14 + v9 + v10 - 1) & -v10;
      *(v16 + a1) = 0;
      *v14 = &unk_2883EB0B0;
      v14[1] = v16;
      v14[2] = v16 + a1;
    }
  }

  *a4 = v14;
  if (v18 != v20)
  {
    free(v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void getOpenFileImpl<llvm::MemoryBuffer>(uint64_t a1@<X0>, const llvm::Twine *a2@<X1>, size_t a3@<X2>, size_t a4@<X3>, off_t a5@<X4>, int a6@<W5>, char a7@<W6>, __int16 a8@<W7>, uint64_t a9@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2815A5910, memory_order_acquire) & 1) == 0)
  {
    v43 = a3;
    v44 = __cxa_guard_acquire(&qword_2815A5910);
    a3 = v43;
    if (v44)
    {
      _MergedGlobals_13 = llvm::sys::Process::getPageSizeEstimate(v44);
      __cxa_guard_release(&qword_2815A5910);
      a3 = v43;
    }
  }

  if (a4 == -1)
  {
    a4 = a3;
    if (a3 == -1)
    {
      v46 = 0u;
      memset(v47, 0, 28);
      v33 = fstat(a1, &v48);
      v34 = llvm::sys::fs::fillStatus(v33, &v48.st_dev, &v46);
      if (v34)
      {
        *(a9 + 16) |= 1u;
        *a9 = v34;
        *(a9 + 8) = v35;
        goto LABEL_55;
      }

      if (LODWORD(v47[3]) != 2 && LODWORD(v47[3]) != 5)
      {
        getMemoryBufferForStream(a1, a2);
        v39 = *(a9 + 16);
        if (v48.st_uid)
        {
          v40 = v39 | 1;
          v41 = *&v48.st_dev;
          *(a9 + 8) = v48.st_ino;
        }

        else
        {
          v40 = v39 & 0xFE;
          v41 = *&v48.st_dev;
        }

        *(a9 + 16) = v40;
        *a9 = v41;
        goto LABEL_55;
      }

      a4 = v47[2];
      a3 = v47[2];
    }
  }

  v17 = _MergedGlobals_13;
  if (a6 && (a7 & 1) != 0)
  {
    goto LABEL_6;
  }

  v25 = (a4 & 0xFFFFFFFFFFFFC000) != 0 && a4 >= _MergedGlobals_13;
  if (!v25 || a6 == 0)
  {
    if (v25)
    {
LABEL_39:
      *&v48.st_dev = a2;
      v28 = operator new(48, &v48);
      *v28 = &unk_2883EB0E8;
      PageSizeEstimate = llvm::sys::Process::getPageSizeEstimate(v28);
      v30 = ((PageSizeEstimate - 1) & a5) + a4;
      v31 = llvm::sys::Process::getPageSizeEstimate(PageSizeEstimate);
      *(v28 + 3) = v30;
      *(v28 + 4) = 0;
      *(v28 + 10) = 0;
      v32 = llvm::sys::fs::mapped_file_region::init(v28 + 3, a1, -v31 & a5, 0);
      if (!v32)
      {
        v37 = *(v28 + 4);
        v38 = v37 + ((llvm::sys::Process::getPageSizeEstimate(v32) - 1) & a5);
        *(v28 + 1) = v38;
        *(v28 + 2) = v38 + a4;
        *(a9 + 16) &= ~1u;
        *a9 = v28;
        goto LABEL_55;
      }

      *(v28 + 3) = 0;
      *(v28 + 4) = 0;
      *(v28 + 10) = 0;
      (*(*v28 + 8))(v28);
    }
  }

  else
  {
    if (a3 == -1)
    {
      v46 = 0u;
      memset(v47, 0, 28);
      v36 = fstat(a1, &v48);
      if (llvm::sys::fs::fillStatus(v36, &v48.st_dev, &v46))
      {
        goto LABEL_6;
      }

      a3 = v47[2];
    }

    if (a4 + a5 == a3 && (a3 & (v17 - 1)) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_6:
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(a4, a2, a8, &v46);
  if (!v46)
  {
    v27 = std::generic_category();
    *(a9 + 16) |= 1u;
    *a9 = 12;
    *(a9 + 8) = v27;
    goto LABEL_55;
  }

  v18 = *(v46 + 8);
  v19 = *(v46 + 16) - v18;
  do
  {
    if (!v19)
    {
      goto LABEL_21;
    }

    llvm::sys::fs::readNativeFileSlice(a1, v18, v19, a5, &v48);
    if (v48.st_ino)
    {
      v20 = *&v48.st_dev;
      *&v48.st_dev = 0;
      v45 = v20;
      v21 = llvm::errorToErrorCode(&v45);
      *(a9 + 16) |= 1u;
      *a9 = v21;
      *(a9 + 8) = v22;
      if (v45)
      {
        (*(*v45 + 8))(v45);
      }

      v23 = 1;
    }

    else
    {
      if (*&v48.st_dev)
      {
        v23 = 0;
        v19 -= *&v48.st_dev;
        v18 += *&v48.st_dev;
        a5 += *&v48.st_dev;
        continue;
      }

      bzero(v18, v19);
      if ((v48.st_ino & 1) == 0)
      {
        goto LABEL_21;
      }

      v23 = 3;
    }

    if (*&v48.st_dev)
    {
      (*(**&v48.st_dev + 8))(*&v48.st_dev);
    }
  }

  while (!v23);
  if (v23 == 3)
  {
LABEL_21:
    *(a9 + 16) &= ~1u;
    *a9 = v46;
    goto LABEL_55;
  }

  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

LABEL_55:
  v42 = *MEMORY[0x277D85DE8];
}

void getMemoryBufferForStream(uint64_t a1, const llvm::Twine *a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v14[2048] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_2750C1890;
  llvm::sys::fs::readNativeFileToEOF(v2, &v12, 0x4000uLL, &v11);
  if (v11)
  {
    v10 = v11;
    v7 = llvm::errorToErrorCode(&v10);
    *(v6 + 16) |= 1u;
    *v6 = v7;
    *(v6 + 8) = v8;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    getMemBufferCopyImpl(v12, v13, v4, v6);
  }

  if (v12 != v14)
  {
    free(v12);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void *llvm::Twine::getSingleStringRef(llvm::Twine *this)
{
  v1 = *(this + 32);
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v3 = *(*this + 23);
      if (v3 >= 0)
      {
        v2 = *this;
      }

      else
      {
        v2 = **this;
      }

      if (v3 >= 0)
      {
        v4 = *(*this + 23);
      }

      else
      {
        v4 = *(*this + 8);
      }
    }

    else
    {
      v2 = *this;
      v6 = *(this + 1);
    }
  }

  else if (v1 == 1)
  {
    return 0;
  }

  else
  {
    v2 = *this;
    if (*this)
    {
      v5 = strlen(*this);
    }
  }

  return v2;
}

uint64_t llvm::sys::Process::getPageSizeEstimate(llvm::sys::Process *this)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::sys::Process::getPageSize(&v4);
  if (v5)
  {
    v3 = v4;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = 4096;
  }

  else
  {
    result = v4;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_2883EB0E8;
  v2 = a1[4];
  if (v2)
  {
    munmap(v2, a1[3]);
  }

  return a1;
}

void anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::~MemoryBufferMMapFile(void *__p)
{
  *__p = &unk_2883EB0E8;
  v2 = __p[4];
  if (v2)
  {
    munmap(v2, __p[3]);
  }

  operator delete(__p);
}

void *anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::dontNeedIfMmap(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return posix_madvise(result, *(a1 + 24), 4);
  }

  return result;
}

void *llvm::SmallVectorImpl<char>::resizeImpl<true>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (v2 <= a2 && result[2] < a2)
    {
      result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, a2, 1);
    }

    v4[1] = a2;
  }

  return result;
}

llvm::raw_ostream *llvm::write_integer(llvm::raw_ostream *a1, unsigned int a2, size_t a3, int a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return write_unsigned_impl<unsigned int>(a1, a2, a3, a4, v4);
}

llvm::raw_ostream *write_unsigned<unsigned long>(llvm::raw_ostream *a1, unint64_t a2, size_t a3, int a4, int a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (HIDWORD(a2))
  {
    v9 = 0;
    v10 = 127;
    do
    {
      v18[v10] = (a2 % 0xA) | 0x30;
      v9 += 0x100000000;
      --v10;
      v11 = a2 > 9;
      a2 /= 0xAuLL;
    }

    while (v11);
    v12 = v9 >> 32;
    if (a5)
    {
      v13 = *(a1 + 4);
      if (v13 >= *(a1 + 3))
      {
        a1 = llvm::raw_ostream::write(a1, 45);
      }

      else
      {
        *(a1 + 4) = v13 + 1;
        *v13 = 45;
      }
    }

    if (a4 != 1 && v12 < a3)
    {
      v14 = v12;
      do
      {
        v15 = *(a1 + 4);
        if (v15 >= *(a1 + 3))
        {
          a1 = llvm::raw_ostream::write(a1, 48);
        }

        else
        {
          *(a1 + 4) = v15 + 1;
          *v15 = 48;
        }

        ++v14;
      }

      while (v14 < a3);
    }

    v16 = &v19 - v12;
    if (a4 == 1)
    {
      result = writeWithCommas(a1, v16, v12);
    }

    else
    {
      result = llvm::raw_ostream::write(a1, v16, v12);
    }

    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];

    return write_unsigned_impl<unsigned int>(a1, a2, a3, a4, a5);
  }

  return result;
}

llvm::raw_ostream *llvm::write_integer(llvm::raw_ostream *a1, unint64_t a2, size_t a3, int a4)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return write_unsigned<unsigned long>(a1, a2, a3, a4, v4);
}

llvm::raw_ostream *llvm::write_hex(llvm::raw_ostream *a1, unint64_t a2, int a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if (a4 > 0x7F)
    {
      LODWORD(a4) = 128;
    }
  }

  else
  {
    LODWORD(a4) = 0;
  }

  v5 = (67 - __clz(a2)) >> 2;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  v12[6] = v6;
  v12[7] = v6;
  v12[4] = v6;
  v12[5] = v6;
  LODWORD(v7) = v5 + 2 * ((a3 & 0xFFFFFFFE) == 2);
  v12[2] = v6;
  v12[3] = v6;
  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = a4;
  }

  v12[0] = v6;
  v12[1] = v6;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    BYTE1(v12[0]) = 120;
  }

  if (a2)
  {
    v8 = &v12[-1] + v7 + 15;
    do
    {
      *v8-- = llvm::hexdigit(unsigned int,BOOL)::LUT[a2 & 0xF] | (32 * ((a3 & 0xFFFFFFFD) != 0));
      v9 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v9);
  }

  result = llvm::raw_ostream::write(a1, v12, v7);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::write_double(llvm::raw_ostream *this, unsigned int a2, unint64_t a3, char a4, double a5)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = 2;
  if (a2 < 2)
  {
    v6 = 6;
  }

  if ((a4 & 1) == 0)
  {
    a3 = v6;
  }

  if (fabs(a5) == INFINITY)
  {
    if (a5 >= 0.0)
    {
      v9 = 3;
    }

    else
    {
      v9 = 4;
    }

    if (a5 >= 0.0)
    {
      v10 = "INF";
    }

    else
    {
      v10 = "-INF";
    }

    v11 = *MEMORY[0x277D85DE8];

    llvm::raw_ostream::operator<<(this, v10, v9);
  }

  else
  {
    v30 = v32;
    v31 = xmmword_2750C12B0;
    if (a2 == 1)
    {
      v13 = 69;
    }

    else
    {
      v13 = 102;
    }

    v21 = 0;
    if (a2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 101;
    }

    v25 = 0;
    v26 = 0;
    v27 = 1;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v20 = &unk_2883EB968;
    v28 = &v30;
    llvm::raw_ostream::SetUnbuffered(&v20);
    if (v23 - v24 > 1)
    {
      *v24++ = 11813;
    }

    else
    {
      llvm::raw_ostream::write(&v20, "%.", 2uLL);
    }

    write_unsigned<unsigned long>(&v20, a3, 0, 0, 0);
    v15 = v24;
    if (v24 >= v23)
    {
      llvm::raw_ostream::write(&v20, v14);
    }

    else
    {
      v24 = (v24 + 1);
      *v15 = v14;
    }

    if (a2 == 3)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v30, 0);
      *&v31 = v31 - 1;
      snprintf(__str, 0x20uLL, v30, a5 * 100.0, &unk_2883EB120, v30, a5 * 100.0);
      v16 = strlen(__str);
      llvm::raw_ostream::operator<<(this, __str, v16);
      v17 = *(this + 4);
      if (v17 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 37);
      }

      else
      {
        *(this + 4) = v17 + 1;
        *v17 = 37;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v30, 0);
      *&v31 = v31 - 1;
      snprintf(__str, 0x20uLL, v30, *&a5, &unk_2883EB120, v30, *&a5);
      v18 = strlen(__str);
      llvm::raw_ostream::operator<<(this, __str, v18);
    }

    llvm::raw_ostream::~raw_ostream(&v20);
    if (v30 != v32)
    {
      free(v30);
    }

    v19 = *MEMORY[0x277D85DE8];
  }
}

llvm::raw_ostream *write_unsigned_impl<unsigned int>(llvm::raw_ostream *a1, unsigned int a2, size_t a3, int a4, int a5)
{
  v7 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v8 = 127;
  do
  {
    v17[v8] = (a2 % 0xA) | 0x30;
    v7 += 0x100000000;
    --v8;
    v9 = a2 > 9;
    a2 /= 0xAu;
  }

  while (v9);
  v10 = v7 >> 32;
  if (a5)
  {
    v11 = *(a1 + 4);
    if (v11 >= *(a1 + 3))
    {
      a1 = llvm::raw_ostream::write(a1, 45);
    }

    else
    {
      *(a1 + 4) = v11 + 1;
      *v11 = 45;
    }
  }

  if (a4 != 1 && v10 < a3)
  {
    v12 = v10;
    do
    {
      v13 = *(a1 + 4);
      if (v13 >= *(a1 + 3))
      {
        a1 = llvm::raw_ostream::write(a1, 48);
      }

      else
      {
        *(a1 + 4) = v13 + 1;
        *v13 = 48;
      }

      ++v12;
    }

    while (v12 < a3);
  }

  v14 = &v18 - v10;
  if (a4 == 1)
  {
    result = writeWithCommas(a1, v14, v10);
  }

  else
  {
    result = llvm::raw_ostream::write(a1, v14, v10);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *writeWithCommas(llvm::raw_ostream *a1, const char *a2, size_t a3)
{
  v4 = (a3 - 1) / 3;
  v5 = (a3 - 1) % 3;
  v6 = v5 + 1;
  v7 = a3 - (v5 + 1);
  if (a3 >= v5 + 1)
  {
    a3 = v5 + 1;
  }

  result = llvm::raw_ostream::write(a1, a2, a3);
  if (v7)
  {
    v9 = &a2[v6];
    v10 = -3 * v4;
    do
    {
      v11 = *(result + 4);
      if (v11 >= *(result + 3))
      {
        result = llvm::raw_ostream::write(result, 44);
      }

      else
      {
        *(result + 4) = v11 + 1;
        *v11 = 44;
      }

      result = llvm::raw_ostream::write(result, v9, 3uLL);
      v9 += 3;
      v10 += 3;
    }

    while (v10);
  }

  return result;
}

uint64_t llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, unint64_t *a4, unint64_t a5, unint64_t a6)
{
  v11 = 0;
  v8 = llvm::cl::parser<unsigned long long>::parse(a1 + 160, a1, a3, a4, a5, a6, &v11);
  if (v8)
  {
    return v8;
  }

  *(a1 + 128) = v11;
  *(a1 + 12) = a2;
  v9 = *(a1 + 192);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v11);
    return v8;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::getValueExpectedFlagDefault();
}

void llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883EB140;
  std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:nn200100](a1 + 168);

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EB140;
  std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:nn200100](a1 + 168);
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::printOptionValue(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v3 = *(a1 + 128);
LABEL_3:
    v4 = *(a1 + 144);
    v6 = *(a1 + 152);
    v5[0] = &unk_2883EB1A8;
    v5[1] = v4;
    llvm::cl::parser<unsigned long long>::printOptionDiff((a1 + 160), a1, v3, v5, a2);
    return;
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 128);
    if (*(a1 + 144) != v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::setDefault(uint64_t result)
{
  if (*(result + 152) == 1)
  {
    v1 = *(result + 144);
  }

  else
  {
    v1 = 0;
  }

  *(result + 128) = v1;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::Regex::~Regex(llvm::Regex *this)
{
  v2 = *this;
  if (v2)
  {
    llvm_regfree(v2);
    if (*this)
    {
      MEMORY[0x277C69E40](*this, 0x1070C404B019E81);
    }
  }
}

size_t anonymous namespace::RegexErrorToString(int a1, uint64_t a2, uint64_t a3)
{
  v6 = llvm_regerror(a1, a2, 0, 0);
  std::string::resize(a3, v6 - 1, 0);
  if (*(a3 + 23) >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  return llvm_regerror(a1, a2, v7, v6);
}

uint64_t llvm::Regex::match(uint64_t a1, char *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v24[16] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v10 = *(a5 + 23);
    if (v10 < 0)
    {
      v10 = *(a5 + 8);
    }

    if (v10)
    {
      MEMORY[0x277C69AB0](a5, &str_7);
    }

    v11 = *(a1 + 8);
    if (v11)
    {
LABEL_9:
      v12 = 0;
      goto LABEL_31;
    }
  }

  else if (*(a1 + 8))
  {
    goto LABEL_9;
  }

  if (a4)
  {
    v13 = *(*a1 + 8) + 1;
  }

  else
  {
    v13 = 0;
  }

  v23[0] = v24;
  v23[1] = 0x800000000;
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  llvm::SmallVectorImpl<llvm_regmatch_t>::resizeImpl<false>(v23, v14);
  v15 = v23[0];
  *v23[0] = 0;
  v15[1] = a3;
  v16 = llvm_regexec(*a1, a2, v13, v15, 4);
  if (v16)
  {
    if (v16 != 1 && a5)
    {
    }

    v12 = 0;
  }

  else
  {
    if (a4)
    {
      a4[2] = 0;
      if (v13)
      {
        v17 = 0;
        do
        {
          v18 = *(v23[0] + v17);
          if (v18 == -1)
          {
            v19 = 0;
            v20 = 0;
          }

          else
          {
            v19 = &a2[v18];
            v20 = *(v23[0] + v17 + 8) - v18;
          }

          llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a4, v19, v20);
          v17 += 16;
        }

        while (16 * v13 != v17);
      }
    }

    v12 = 1;
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

LABEL_31:
  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

void llvm::SmallVectorImpl<llvm_regmatch_t>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 16);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 16 * v2), 16 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

void llvm::RISCVAttributeParser::stackAlign(llvm::RISCVAttributeParser *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23[1] = *MEMORY[0x277D85DE8];
  ULEB128 = llvm::DataExtractor::getULEB128((this + 128), this + 19, (this + 160));
  v7 = ULEB128;
  if (ULEB128)
  {
    v8 = v23 + 5;
    v9 = ULEB128;
    do
    {
      *--v8 = (v9 % 0xA) | 0x30;
      v10 = v9 > 9;
      v9 /= 0xAuLL;
    }

    while (v10);
  }

  else
  {
    v8 = v23 + 4;
    BYTE4(v23[0]) = 48;
  }

  std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, v8, v23 + 5, v23 + 5 - v8);
  v11 = std::string::insert(&__dst, 0, "Stack alignment is ");
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v19 = 6;
  strcpy(__p, "-bytes");
  v13 = std::string::append(&v21, __p, 6uLL);
  v14 = v13->__r_.__value_.__r.__words[2];
  v22 = *&v13->__r_.__value_.__l.__data_;
  v23[0] = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v23[0] >= 0)
  {
    v15 = &v22;
  }

  else
  {
    v15 = v22;
  }

  if (v23[0] >= 0)
  {
    v16 = SHIBYTE(v23[0]);
  }

  else
  {
    v16 = *(&v22 + 1);
  }

  llvm::ELFAttributeParser::printAttribute(this, a2, v7, v15, v16);
  *a3 = 0;
  if (SHIBYTE(v23[0]) < 0)
  {
    operator delete(v22);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::RISCVAttributeParser::handler@<X0>(uint64_t this@<X0>, BOOL *a2@<X2>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a2 = 0;
  v6 = &unk_2883EB210;
  v7 = 144;
  while (*(v6 - 4) != a3)
  {
    v6 += 3;
    v7 -= 24;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v6 - 1);
  v8 = *v6;
  v10 = (this + (v8 >> 1));
  if (v8)
  {
    v9 = *(*v10 + v9);
  }

  this = v9(v10);
  if (!*a4)
  {
    *a2 = 1;
LABEL_9:
    *a4 = 0;
  }

  return this;
}

void llvm::RISCVAttributeParser::~RISCVAttributeParser(llvm::RISCVAttributeParser *this)
{
  llvm::ELFAttributeParser::~ELFAttributeParser(this);

  JUMPOUT(0x277C69E40);
}

const void **llvm::StringRef::str@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = this[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

BOOL llvm::RISCVISAInfo::compareExtension(uint64_t a1, uint64_t a2)
{
  ExtensionRank = getExtensionRank(a1);
  v5 = getExtensionRank(a2);
  if (ExtensionRank != v5)
  {
    return ExtensionRank < v5;
  }

  v6 = *(a2 + 23);
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v7 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v6 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  if (v6 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v13)
  {
    return v13 < 0;
  }

  else
  {
    return v8 < v10;
  }
}

uint64_t getExtensionRank(unsigned __int8 *a1)
{
  if ((a1[23] & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = *v2;
  switch(v3)
  {
    case 's':
      return 64;
    case 'x':
      return 256;
    case 'z':
      return singleLetterExtensionRank(v2[1]) | 0x80;
  }

  return singleLetterExtensionRank(v3);
}

void llvm::RISCVISAInfo::parseNormalizedArchString(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = 0;
    v5 = MEMORY[0x277D85DE0];
    do
    {
      v6 = *(a1 + v4);
      if ((v6 & 0x80000000) != 0)
      {
        if (__maskrune(v6, 0x8000uLL))
        {
LABEL_10:
          v12 = 22;
          v13 = std::generic_category();
          __p[0] = "string must be lowercase";
          llvm::make_error<llvm::StringError,char const*&,std::error_code>();
        }
      }

      else if ((*(v5 + 4 * v6 + 60) & 0x8000) != 0)
      {
        goto LABEL_10;
      }

      ++v4;
    }

    while (a2 != v4);
    if (a2 >= 5)
    {
      v7 = *a1 == 842233458 && *(a1 + 4) == 105;
      if (v7 || (*a1 == 842233458 ? (v8 = *(a1 + 4) == 101) : (v8 = 0), v8 || (*a1 == 875984498 ? (v9 = *(a1 + 4) == 105) : (v9 = 0), v9 || (*a1 == 875984498 ? (v10 = *(a1 + 4) == 101) : (v10 = 0), v10))))
      {
        operator new();
      }
    }
  }

  v12 = 22;
  v13 = std::generic_category();
  __p[0] = "arch string must begin with valid base ISA";
  llvm::make_error<llvm::StringError,char const*&,std::error_code>();
}

void llvm::createStringError(llvm *this, std::error_code a2, const llvm::Twine *a3)
{
  v3 = *&a2.__val_;
  llvm::Twine::str(a2.__cat_, __p);
  if (v7 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v9 = this;
  v10 = v3;
  v8 = v5;
  llvm::make_error<llvm::StringError,char const*&,std::error_code>();
}

void llvm::RISCVISAInfo::toFeatureVector(llvm::RISCVISAInfo *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 3);
  v3 = this + 32;
  if (v2 != (this + 32))
  {
    do
    {
      if (*(v2 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, v2[4], v2[5]);
      }

      else
      {
        v31 = *(v2 + 4);
      }

      v5 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v31.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_11;
        }

        v6 = v31.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) != 1)
        {
          goto LABEL_11;
        }

        v6 = &v31;
      }

      if (v6->__r_.__value_.__s.__data_[0] != 105)
      {
LABEL_11:
        v7 = 0;
        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v31;
        }

        else
        {
          v8 = v31.__r_.__value_.__r.__words[0];
        }

        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v31.__r_.__value_.__l.__size_;
        }

        do
        {
          if (v10)
          {
            break;
          }

          v11 = v7 == 144;
          v7 += 2;
        }

        while (!v11);
        if (v10)
        {
          goto LABEL_26;
        }

        v12 = 0;
        do
        {
          if (v13)
          {
            break;
          }

          v11 = v12 == 34;
          v12 += 2;
        }

        while (!v11);
        if (v13)
        {
LABEL_26:
          for (i = 0; i != 36; i += 2)
          {
            {
              break;
            }
          }

          std::operator+<char>();
          v16 = *(a2 + 8);
          v15 = *(a2 + 16);
          if (v16 >= v15)
          {
            v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a2) >> 3);
            v18 = v17 + 1;
            if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a2) >> 3);
            if (2 * v19 > v18)
            {
              v18 = 2 * v19;
            }

            if (v19 >= 0x555555555555555)
            {
              v20 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v20 = v18;
            }

            v32.__end_cap_.__value_ = a2;
            if (v20)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a2, v20);
            }

            v22 = (24 * v17);
            if (SHIBYTE(v30) < 0)
            {
              std::string::__init_copy_ctor_external(v22, __p[0], __p[1]);
            }

            else
            {
              v22->__r_.__value_.__r.__words[2] = v30;
              *&v22->__r_.__value_.__l.__data_ = *__p;
            }

            v21 = v22 + 1;
            v23 = *(a2 + 8) - *a2;
            v24 = v22 - v23;
            memcpy(v22 - v23, *a2, v23);
            v25 = *a2;
            *a2 = v24;
            *(a2 + 8) = v22 + 1;
            v26 = *(a2 + 16);
            *(a2 + 16) = 0;
            v32.__end_ = v25;
            v32.__end_cap_.__value_ = v26;
            v32.__first_ = v25;
            v32.__begin_ = v25;
            std::__split_buffer<std::string>::~__split_buffer(&v32);
          }

          else
          {
            if (SHIBYTE(v30) < 0)
            {
              std::string::__init_copy_ctor_external(*(a2 + 8), __p[0], __p[1]);
            }

            else
            {
              *(v16 + 16) = v30;
              *v16 = *__p;
            }

            v21 = (v16 + 24);
          }

          *(a2 + 8) = v21;
          if (SHIBYTE(v30) < 0)
          {
            operator delete(__p[0]);
          }

          v5 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
        }
      }

      if (v5 < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v27 = v2[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v2[2];
          v11 = *v28 == v2;
          v2 = v28;
        }

        while (!v11);
      }

      v2 = v28;
    }

    while (v28 != v3);
  }
}

uint64_t singleLetterExtensionRank(int __c)
{
  if (__c == 105)
  {
    return 0;
  }

  if (__c == 101)
  {
    return 1;
  }

  v3 = memchr("mafdqlcbkjtpvnh", __c, 0xFuLL);
  if (!v3 || v3 - "mafdqlcbkjtpvnh" == -1)
  {
    return (__c - 80);
  }

  else
  {
    return (v3 - "mafdqlcbkjtpvnh") + 2;
  }
}

BOOL anonymous namespace::FindByName::operator()(const void *a1, size_t a2, char *__s)
{
  if (__s)
  {
    if (strlen(__s) != a2)
    {
      return 0;
    }

    if (!a2)
    {
      return 1;
    }

    return memcmp(__s, a1, a2) == 0;
  }

  else
  {
    return a2 == 0;
  }
}

_BYTE *llvm::utostr@<X0>(llvm *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = this;
  v10 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    v5 = &v9;
    v9 = 48;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = &v10;
  do
  {
    *--v5 = (v4 % 0xA) | 0x30;
    v6 = v4 > 9;
    v4 /= 0xAuLL;
  }

  while (v6);
  if (a2)
  {
LABEL_5:
    *--v5 = 45;
  }

LABEL_6:
  result = std::string::__init_with_size[abi:nn200100]<char *,char *>(a3, v5, &v10, &v10 - v5);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,llvm::RISCVExtensionInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::RISCVExtensionInfo>,llvm::RISCVISAInfo::ExtensionComparator,true>,std::allocator<std::__value_type<std::string,llvm::RISCVExtensionInfo>>>::__count_unique<std::string>(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      if (!llvm::RISCVISAInfo::compareExtension(a2, (v3 + 4)))
      {
        if (!llvm::RISCVISAInfo::compareExtension((v3 + 4), a2))
        {
          return v4;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 4 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 4 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 4);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 4 * v5), (*a2 + 4 * v5), 4 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<llvm::orc::JITDylib *>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 4 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 4 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 4);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 4 * v7), (*a2 + 4 * v7), 4 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

void *llvm::SmallPtrSetImplBase::shrink_and_clear(void **this)
{
  free(this[1]);
  v2 = *(this + 5) - *(this + 6);
  v3 = 1 << (33 - __clz(v2 - 1));
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v2 <= 0x10)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3;
  }

  *(this + 4) = v4;
  v5 = malloc_type_malloc(8 * v4, 0x3C0F72FBuLL);
  if (!v5)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  this[1] = v5;
  v6 = 8 * *(this + 4);

  return memset(v5, 255, v6);
}

const void **llvm::SmallPtrSetImplBase::insert_imp_big(llvm::SmallPtrSetImplBase *this, char *a2)
{
  v4 = *(this + 5);
  v5 = *(this + 4);
  if (3 * v5 <= 4 * (v4 - *(this + 6)))
  {
    if (v5 >= 0x40)
    {
      v5 *= 2;
    }

    else
    {
      v5 = 128;
    }
  }

  else if (v5 - v4 >= v5 >> 3)
  {
    goto LABEL_3;
  }

  llvm::SmallPtrSetImplBase::Grow(this, v5);
LABEL_3:
  result = llvm::SmallPtrSetImplBase::FindBucketFor(this, a2);
  if (*result != a2)
  {
    if (*result == -2)
    {
      --*(this + 6);
    }

    else
    {
      ++*(this + 5);
    }

    *result = a2;
  }

  return result;
}

void llvm::SmallPtrSetImplBase::Grow(llvm::SmallPtrSetImplBase *this, unsigned int a2)
{
  v5 = *this;
  v4 = *(this + 1);
  v6 = 16;
  if (v4 == *this)
  {
    v6 = 20;
  }

  v7 = *(this + v6);
  v8 = 8 * a2;
  v9 = malloc_type_malloc(v8, 0x3C0F72FBuLL);
  if (!v9 && (a2 || (v9 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  *(this + 1) = v9;
  *(this + 4) = a2;
  memset(v9, 255, v8);
  if (v7)
  {
    v10 = 8 * v7;
    v11 = v4;
    do
    {
      if (*v11 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = *v11;
        *llvm::SmallPtrSetImplBase::FindBucketFor(this, *v11) = v12;
      }

      ++v11;
      v10 -= 8;
    }

    while (v10);
  }

  if (v4 != v5)
  {
    free(v4);
  }

  *(this + 20) = (*(this + 5) - *(this + 6));
}

const void **llvm::SmallPtrSetImplBase::FindBucketFor(llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *(this + 4) - 1;
  v3 = *(this + 1);
  v4 = v2 & ((a2 >> 4) ^ (a2 >> 9));
  result = (v3 + 8 * v4);
  v6 = *result;
  if (*result == -1)
  {
    v7 = 0;
LABEL_3:
    if (v7)
    {
      return v7;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    while (v6 != a2)
    {
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6 + 2 == 0;
      }

      if (v9)
      {
        v7 = result;
      }

      v10 = v4 + v8++;
      v4 = v10 & v2;
      result = (v3 + 8 * v4);
      v6 = *result;
      if (*result == -1)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

void *llvm::SmallVectorBase<unsigned int>::mallocForGrow(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  New = getNewCapacity<unsigned int>(a3, *(a1 + 12));
  *a5 = New;
  v10 = New * a4;
  result = malloc_type_malloc(New * a4, 0x3C0F72FBuLL);
  if (!result && (v10 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  if (result == a2)
  {
    v12 = *a5;

    return llvm::SmallVectorBase<unsigned int>::replaceAllocation(a1, result, a4, v12, 0);
  }

  return result;
}

unint64_t getNewCapacity<unsigned int>(unint64_t result, unint64_t a2)
{
  if (HIDWORD(result))
  {
    report_size_overflow(result);
  }

  if (a2 == 0xFFFFFFFF)
  {
    report_at_maximum_capacity(0xFFFFFFFFuLL);
  }

  if ((a2 >> 31))
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 2 * a2 + 1;
  }

  if (((2 * a2) | 1) >= result)
  {
    return v2;
  }

  return result;
}

void *llvm::SmallVectorBase<unsigned int>::replaceAllocation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a4 * a3;
  v9 = malloc_type_malloc(a4 * a3, 0x3C0F72FBuLL);
  if (!v9 && (v8 || (v9 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v10 = v9;
  if (a5)
  {
    memcpy(v9, a2, a5 * a3);
  }

  free(a2);
  return v10;
}

void *llvm::SmallVectorBase<unsigned int>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  New = getNewCapacity<unsigned int>(a3, *(a1 + 12));
  v8 = New * a4;
  if (*a1 != a2)
  {
    result = malloc_type_realloc(*a1, New * a4, 0xF4063A16uLL);
    if (result || !v8 && (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
    {
      v10 = result;
      if (result == a2)
      {
        result = llvm::SmallVectorBase<unsigned int>::replaceAllocation(a1, result, a4, New, *(a1 + 8));
        v10 = result;
      }

      goto LABEL_13;
    }

LABEL_14:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v11 = malloc_type_malloc(New * a4, 0x3C0F72FBuLL);
  if (!v11)
  {
    if (v8)
    {
      goto LABEL_14;
    }

    v11 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v10 = v11;
  if (v11 == a2)
  {
    v10 = llvm::SmallVectorBase<unsigned int>::replaceAllocation(a1, v11, a4, New, 0);
  }

  result = memcpy(v10, *a1, *(a1 + 8) * a4);
LABEL_13:
  *a1 = v10;
  *(a1 + 12) = New;
  return result;
}

void *llvm::SmallVectorBase<unsigned long long>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    report_at_maximum_capacity(0xFFFFFFFFFFFFFFFFLL);
  }

  if (((2 * v4) | 1uLL) > a3)
  {
    v8 = 2 * v4 + 1;
  }

  else
  {
    v8 = a3;
  }

  v9 = *a1;
  v10 = v8 * a4;
  if (v9 != a2)
  {
    result = malloc_type_realloc(v9, v8 * a4, 0xF4063A16uLL);
    if (result || !v10 && (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
    {
      v12 = result;
      if (result == a2)
      {
        result = llvm::SmallVectorBase<unsigned int>::replaceAllocation(a1, result, a4, v8, *(a1 + 8));
        v12 = result;
      }

      goto LABEL_17;
    }

LABEL_19:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v13 = malloc_type_malloc(v8 * a4, 0x3C0F72FBuLL);
  if (!v13)
  {
    if (v10)
    {
      goto LABEL_19;
    }

    v13 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v13)
    {
      goto LABEL_19;
    }
  }

  v12 = v13;
  if (v13 == a2)
  {
    v12 = llvm::SmallVectorBase<unsigned int>::replaceAllocation(a1, v13, a4, v8, 0);
  }

  result = memcpy(v12, *a1, *(a1 + 8) * a4);
LABEL_17:
  *a1 = v12;
  *(a1 + 16) = v8;
  return result;
}

void report_size_overflow(unint64_t a1)
{
  std::to_string(&v5, a1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>("SmallVector unable to grow. Requested capacity (", &v5, &v6);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v6, ") is larger than maximum value for size type (", &v7);
  std::to_string(&v4, 0xFFFFFFFFuLL);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v7, &v4, &v2);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v2, ")", &v8);
  std::string::~string(&v2);
  std::string::~string(&v4);
  std::string::~string(&v7);
  std::string::~string(&v6);
  std::string::~string(&v5);
  v3 = 260;
  v2.__r_.__value_.__r.__words[0] = &v8;
  llvm::report_fatal_error(&v2, 1, v1);
}

void report_at_maximum_capacity(unint64_t a1)
{
  std::to_string(&v2, a1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>("SmallVector capacity unable to grow. Already at maximum size ", &v2, &v4);
  std::string::~string(&v2);
  v3 = 260;
  v2.__r_.__value_.__r.__words[0] = &v4;
  llvm::report_fatal_error(&v2, 1, v1);
}

__n128 std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::append(a1, a2);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

{
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

  v6 = std::string::append(a1, a2, v5);
  result = *v6;
  *a3 = *v6->n128_u8;
  v6->n128_u64[0] = 0;
  v6->n128_u64[1] = 0;
  v6[1].n128_u64[0] = 0;
  return result;
}

__n128 std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string::value_type *__s@<X0>, std::string *this@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::insert(this, 0, __s);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

void llvm::SourceMgr::~SourceMgr(llvm::SourceMgr *this)
{
  v2 = *(this + 8);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = this;
  std::vector<llvm::SourceMgr::SrcBuffer>::__destroy_vector::operator()[abi:nn200100](&v3);
}

uint64_t llvm::SourceMgr::AddIncludeFile(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  llvm::SourceMgr::OpenIncludeFile(a1, a2, a4, &v12);
  if (v13)
  {
    v6 = 0;
  }

  else
  {
    v7 = v12;
    v11[2] = a3;
    v12 = 0;
    v11[0] = v7;
    v11[1] = 0;
    std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](a1, v11);
    v6 = -1431655765 * ((a1[1] - *a1) >> 3);
    llvm::SourceMgr::SrcBuffer::~SrcBuffer(v11);
    if ((v13 & 1) == 0)
    {
      v8 = v12;
      v12 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void llvm::SourceMgr::OpenIncludeFile(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 23);
  v9 = *a2;
  if (v8 >= 0)
  {
    v9 = a2;
  }

  if (v8 < 0)
  {
    v8 = *(a2 + 8);
  }

  v10 = a1[8];
  v40[4] = 261;
  v38 = v9;
  *&v39 = v8;
  if (v10)
  {
    llvm::vfs::FileSystem::getBufferForFile(v10, &v38, -1, 1, 0, 0, a4);
  }

  else
  {
    getFileAux<llvm::MemoryBuffer>(&v38, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 1, 0, 0, a4);
  }

  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 < 0)
  {
    v11 = *(a2 + 8);
  }

  v38 = v40;
  v39 = xmmword_2750C1860;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v38, v12, &v12[v11]);
  v13 = -1431655765 * ((a1[4] - a1[3]) >> 3);
  v14 = *(a4 + 16);
  if (!v13 || (*(a4 + 16) & 1) == 0)
  {
    if (*(a4 + 16))
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = 0;
  v16 = 24 * v13 - 24;
  do
  {
    v17 = a1[3] + v15;
    v18 = *(v17 + 23);
    if (v18 >= 0)
    {
      v19 = (a1[3] + v15);
    }

    else
    {
      v19 = *v17;
    }

    if (v18 >= 0)
    {
      v20 = *(v17 + 23);
    }

    else
    {
      v20 = *(v17 + 8);
    }

    *&v39 = 0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v38, v19, &v19[v20]);
    v34 = 260;
    *&__dst = a2;
    v37 = 257;
    v31 = 257;
    v29 = 257;
    llvm::sys::path::append(&v38, 0, &__dst, v35, v30, v28);
    v21 = a1[8];
    v34 = 261;
    __dst = __PAIR128__(v39, v38);
    if (v21)
    {
      llvm::vfs::FileSystem::getBufferForFile(v21, &__dst, -1, 1, 0, 0, v35);
    }

    else
    {
      getFileAux<llvm::MemoryBuffer>(&__dst, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 1, 0, 0, v35);
    }

    if (v35 == a4)
    {
      if ((v36 & 1) == 0)
      {
        v25 = v35[0];
        v35[0] = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }
    }

    else
    {
      v22 = *(a4 + 16);
      if ((v22 & 1) == 0)
      {
        v23 = *a4;
        *a4 = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
          v22 = *(a4 + 16);
        }
      }

      if (v36)
      {
        *(a4 + 16) = v22 | 1;
        v24 = v35[1];
        *a4 = v35[0];
        *(a4 + 8) = v24;
      }

      else
      {
        *(a4 + 16) = v22 & 0xFE;
        *a4 = v35[0];
      }
    }

    v26 = *(a4 + 16);
    if (v16 == v15)
    {
      break;
    }

    v15 += 24;
  }

  while ((*(a4 + 16) & 1) != 0);
  if ((*(a4 + 16) & 1) == 0)
  {
LABEL_40:
    std::string::basic_string[abi:nn200100](&__dst, v38, v39);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = __dst;
    *(a3 + 16) = v33;
  }

LABEL_43:
  if (v38 != v40)
  {
    free(v38);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SourceMgr::FindBufferContainingLoc(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = -1431655765 * ((a1[1] - *a1) >> 3);
  if (!v3)
  {
    return 0;
  }

  result = 1;
  while (*(*v2 + 8) > a2 || *(*v2 + 16) < a2)
  {
    result = (result + 1);
    v2 += 24;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumber(uint64_t *this, uint64_t a2)
{
  v2 = *(*this + 16) - *(*this + 8);
  if (v2 <= 0xFF)
  {
    return llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned char>(this, a2);
  }

  if (!(v2 >> 16))
  {
    return llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned short>(this, a2);
  }

  if (HIDWORD(v2))
  {
    return llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned long long>(this, a2);
  }

  return llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned int>(this, a2);
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned char>(uint64_t *a1, char a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned char>((a1 + 1));
  v6 = Offset[1];
  v7 = v6 - *Offset;
  if (v6 == *Offset)
  {
    v8 = *Offset;
  }

  else
  {
    v8 = *Offset;
    do
    {
      v9 = &v8[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = v7 >> 1;
      v7 += ~(v7 >> 1);
      if (v11 < (a2 - *(*a1 + 8)))
      {
        v8 = v10;
      }

      else
      {
        v7 = v12;
      }
    }

    while (v7);
  }

  return v8 - *Offset + 1;
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned short>(uint64_t *a1, __int16 a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned short>((a1 + 1));
  v6 = Offset[1];
  if (v6 != *Offset)
  {
    v7 = v6 - *Offset;
    v6 = *Offset;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v7 += ~(v7 >> 1);
      if (v11 < (a2 - *(*a1 + 8)))
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return ((v6 - *Offset) >> 1) + 1;
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned int>(uint64_t *a1, int a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned int>((a1 + 1));
  v6 = Offset[1];
  if (v6 != *Offset)
  {
    v7 = (v6 - *Offset) >> 2;
    v6 = *Offset;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v7 += ~(v7 >> 1);
      if (v11 < a2 - *(*a1 + 8))
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return ((v6 - *Offset) >> 2) + 1;
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumberSpecialized<unsigned long long>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  Offset = GetOrCreateOffsetCache<unsigned long long>((a1 + 1));
  v6 = Offset[1];
  if (v6 != *Offset)
  {
    v7 = (v6 - *Offset) >> 3;
    v6 = *Offset;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v7 += ~(v7 >> 1);
      if (v11 < a2 - *(*a1 + 8))
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return ((v6 - *Offset) >> 3) + 1;
}

void llvm::SourceMgr::SrcBuffer::~SrcBuffer(llvm::SourceMgr::SrcBuffer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69E40](v2, 0x10C402FEFCB83);
    *(this + 1) = 0;
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

unint64_t llvm::SourceMgr::getLineAndColumn(uint64_t *a1, char *a2, int BufferContainingLoc)
{
  if (!BufferContainingLoc)
  {
    BufferContainingLoc = llvm::SourceMgr::FindBufferContainingLoc(a1, a2);
  }

  v5 = (*a1 + 24 * (BufferContainingLoc - 1));
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v5, a2);
  v7 = &a2[-*(*v5 + 8)];
  v9[0] = *(*v5 + 8);
  v9[1] = v7;
  return LineNumber | ((v7 - llvm::StringRef::find_last_of(v9, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL)) << 32);
}

llvm::raw_ostream *llvm::SourceMgr::PrintIncludeStack(llvm::raw_ostream *result, char *a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v5 = result;
    BufferContainingLoc = llvm::SourceMgr::FindBufferContainingLoc(result, a2);
    llvm::SourceMgr::PrintIncludeStack(v5, *(*v5 + 24 * (BufferContainingLoc - 1) + 16), a3);
    v7 = *(a3 + 4);
    if (*(a3 + 3) - v7 > 0xDuLL)
    {
      qmemcpy(v7, "Included from ", 14);
      *(a3 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(a3, "Included from ", 0xEuLL);
    }

    v8 = *(*v5 + 24 * (BufferContainingLoc - 1));
    v9 = (*(*v8 + 16))(v8);
    v11 = llvm::raw_ostream::operator<<(a3, v9, v10);
    v12 = v11;
    v13 = *(v11 + 4);
    if (*(v11 + 3) == v13)
    {
      llvm::raw_ostream::write(v11, ":", 1uLL);
    }

    else
    {
      *v13 = 58;
      ++*(v11 + 4);
    }

    LineAndColumn = llvm::SourceMgr::getLineAndColumn(v5, a2, BufferContainingLoc);
    result = write_unsigned<unsigned long>(v12, LineAndColumn, 0, 0, 0);
    v15 = *(v12 + 4);
    if (*(v12 + 3) - v15 > 1uLL)
    {
      *v15 = 2618;
      *(v12 + 4) += 2;
    }

    else
    {

      return llvm::raw_ostream::write(v12, ":\n", 2uLL);
    }
  }

  return result;
}

void llvm::SourceMgr::GetMessage(uint64_t *a1@<X0>, char *a2@<X1>, int a3@<W2>, llvm::formatv_object_base **a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v50[4] = *MEMORY[0x277D85DE8];
  v48 = v50;
  v49 = 0x400000000;
  if (a2)
  {
    v41 = a4;
    BufferContainingLoc = llvm::SourceMgr::FindBufferContainingLoc(a1, a2);
    v14 = *(*a1 + 24 * (BufferContainingLoc - 1));
    v15 = (*(*v14 + 16))(v14);
    v40 = v16;
    v17 = v14[1];
    v18 = a2;
    while (v18 != v17)
    {
      v20 = *--v18;
      v19 = v20;
      if (v20 == 13 || v19 == 10)
      {
        v17 = v18 + 1;
        break;
      }
    }

    v22 = v14[2];
    v23 = a2;
    if (v22 != a2)
    {
      while (1)
      {
        v24 = *v23;
        if (v24 == 10 || v24 == 13)
        {
          break;
        }

        if (++v23 == v22)
        {
          v23 = v14[2];
          break;
        }
      }
    }

    v26 = v23 - v17;
    if (a6)
    {
      v27 = &a5[2 * a6];
      do
      {
        v29 = *a5;
        v28 = a5[1];
        if (*a5)
        {
          v30 = v29 > v23;
        }

        else
        {
          v30 = 1;
        }

        if (!v30 && v28 >= v17)
        {
          if (v29 < v17)
          {
            LODWORD(v29) = v17;
          }

          v32 = (v29 - v17);
          if (v28 > v23)
          {
            LODWORD(v28) = v23;
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v48, v32 | ((v28 - v17) << 32));
        }

        a5 += 2;
      }

      while (a5 != v27);
    }

    LineAndColumn = llvm::SourceMgr::getLineAndColumn(a1, a2, BufferContainingLoc);
    v34 = LineAndColumn;
    v35 = HIDWORD(LineAndColumn) - 1;
    v36 = v40;
    a4 = v41;
  }

  else
  {
    v26 = 0;
    v17 = 0;
    v34 = 0;
    v35 = -1;
    v36 = 9;
    v15 = "<unknown>";
  }

  llvm::Twine::str(a4, __p);
  v37 = v47;
  v38 = __p[0];
  if (v47 >= 0)
  {
    v38 = __p;
  }

  if (v47 < 0)
  {
    v37 = __p[1];
  }

  llvm::SMDiagnostic::SMDiagnostic(a9, a1, a2, v15, v36, v34, v35, a3, v38, v37, v17, v26, v48, v49, a7, a8);
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void llvm::SourceMgr::PrintMessage(llvm::SourceMgr *this, llvm::raw_ostream *a2, const llvm::SMDiagnostic *a3, int a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);

    v6(a3, v7);
  }

  else
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      BufferContainingLoc = llvm::SourceMgr::FindBufferContainingLoc(this, v10);
      llvm::SourceMgr::PrintIncludeStack(this, *(*this + 24 * (BufferContainingLoc - 1) + 16), a2);
    }

    llvm::SMDiagnostic::print(a3, 0, a2, a4, 1);
  }
}

void llvm::SMDiagnostic::print(llvm::SMDiagnostic *this, const char *__s, llvm::raw_ostream *a3, int a4, int a5)
{
  v6 = a4;
  if (a4 && llvm::WithColor::AutoDetectFunction(a3))
  {
    (*(*a3 + 24))(a3, 8, 1, 0);
  }

  if (__s && *__s)
  {
    v10 = strlen(__s);
    llvm::raw_ostream::operator<<(a3, __s, v10);
    v11 = *(a3 + 4);
    if (*(a3 + 3) - v11 > 1uLL)
    {
      *v11 = 8250;
      *(a3 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(a3, ": ", 2uLL);
    }
  }

  v12 = *(this + 39);
  if (v12 < 0)
  {
    v14 = *(this + 3);
    if (!v14)
    {
      goto LABEL_38;
    }

    if (v14 != 1)
    {
      goto LABEL_19;
    }

    v13 = *(this + 2);
  }

  else
  {
    if (!*(this + 39))
    {
      goto LABEL_38;
    }

    v13 = this + 16;
    if (*(this + 39) != 1)
    {
      goto LABEL_19;
    }
  }

  if (*v13 != 45)
  {
LABEL_19:
    if (v12 >= 0)
    {
      v16 = this + 16;
    }

    else
    {
      v16 = *(this + 2);
    }

    if (v12 >= 0)
    {
      v18 = *(this + 39);
    }

    else
    {
      v18 = *(this + 3);
    }

    v17 = a3;
    goto LABEL_26;
  }

  v15 = *(a3 + 4);
  if (*(a3 + 3) - v15 > 6uLL)
  {
    *(v15 + 3) = 1047423332;
    *v15 = 1685353276;
    *(a3 + 4) += 7;
    goto LABEL_27;
  }

  v16 = "<stdin>";
  v17 = a3;
  v18 = 7;
LABEL_26:
  llvm::raw_ostream::write(v17, v16, v18);
LABEL_27:
  if (*(this + 10) != -1)
  {
    v19 = *(a3 + 4);
    if (v19 >= *(a3 + 3))
    {
      llvm::raw_ostream::write(a3, 58);
    }

    else
    {
      *(a3 + 4) = v19 + 1;
      *v19 = 58;
    }

    llvm::write_integer(a3, *(this + 10), 0, 0);
    if (*(this + 11) != -1)
    {
      v20 = *(a3 + 4);
      if (v20 >= *(a3 + 3))
      {
        llvm::raw_ostream::write(a3, 58);
      }

      else
      {
        *(a3 + 4) = v20 + 1;
        *v20 = 58;
      }

      llvm::write_integer(a3, *(this + 11) + 1, 0, 0);
    }
  }

  v21 = *(a3 + 4);
  if (*(a3 + 3) - v21 <= 1uLL)
  {
    llvm::raw_ostream::write(a3, ": ", 2uLL);
LABEL_38:
    if (!v6)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  *v21 = 8250;
  *(a3 + 4) += 2;
  if (!v6)
  {
    goto LABEL_43;
  }

LABEL_41:
  if (llvm::WithColor::AutoDetectFunction(a3))
  {
    (*(*a3 + 32))(a3);
  }

LABEL_43:
  if (a5)
  {
    v22 = *(this + 12);
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        llvm::WithColor::remark(a3, "", 0, v6 ^ 1);
        if (!v6)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      if (v22 == 3)
      {
        llvm::WithColor::note(a3, "", 0, v6 ^ 1);
        if (!v6)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }
    }

    else if (v22)
    {
      if (v22 == 1)
      {
        llvm::WithColor::warning(a3, "", 0, v6 ^ 1);
        if (!v6)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }
    }

    else
    {
      llvm::WithColor::error(a3, "", 0, v6 ^ 1);
    }
  }

  if (!v6)
  {
    goto LABEL_57;
  }

LABEL_55:
  if (llvm::WithColor::AutoDetectFunction(a3))
  {
    (*(*a3 + 24))(a3, 8, 1, 0);
  }

LABEL_57:
  v23 = *(this + 79);
  if (v23 >= 0)
  {
    v24 = this + 56;
  }

  else
  {
    v24 = *(this + 7);
  }

  if (v23 >= 0)
  {
    v25 = *(this + 79);
  }

  else
  {
    v25 = *(this + 8);
  }

  llvm::raw_ostream::write(a3, v24, v25);
  v26 = *(a3 + 4);
  if (v26 >= *(a3 + 3))
  {
    llvm::raw_ostream::write(a3, 10);
    if (!v6)
    {
      goto LABEL_69;
    }
  }

  else
  {
    *(a3 + 4) = v26 + 1;
    *v26 = 10;
    if (!v6)
    {
      goto LABEL_69;
    }
  }

  if (llvm::WithColor::AutoDetectFunction(a3))
  {
    (*(*a3 + 32))(a3);
  }

LABEL_69:
  if (*(this + 10) == -1 || *(this + 11) == -1)
  {
    return;
  }

  v27 = (this + 80);
  v28 = *(this + 103);
  if (v28 >= 0)
  {
    v29 = this + 80;
  }

  else
  {
    v29 = *(this + 10);
  }

  v30 = *(this + 11);
  if (v28 >= 0)
  {
    v31 = *(this + 103);
  }

  else
  {
    v31 = *(this + 11);
  }

  if (!v31)
  {
    v105 = 0;
    v33 = 1;
    *(&__b.__r_.__value_.__s + 23) = 1;
LABEL_93:
    memset(&__b, 32, v33);
LABEL_94:
    __b.__r_.__value_.__s.__data_[v33] = 0;
    v34 = *(this + 13);
    for (i = *(this + 14); v34 != i; v34 += 2)
    {
      size = HIBYTE(__b.__r_.__value_.__r.__words[2]);
      v37 = *v34;
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __b.__r_.__value_.__l.__size_;
      }

      if (size >= v34[1])
      {
        size = v34[1];
      }

      if ((size - v37) >= 1)
      {
        if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_b = &__b;
        }

        else
        {
          p_b = __b.__r_.__value_.__r.__words[0];
        }

        memset(p_b + v37, 126, size - v37);
      }
    }

    memset(&v109, 0, sizeof(v109));
    v39 = *(this + 34);
    v40 = *(this + 103);
    if (v40 < 0)
    {
      v40 = *(this + 11);
    }

    v41 = *(this + 11);
    if (v39)
    {
      v104 = v6;
      v42 = *(this + 1) - v41;
      v107 = 0;
      v108 = v42 + v40;
      v43 = 40 * v39;
      v44 = *(this + 16) + 24;
      v106 = v42;
      do
      {
        v45 = *(v44 - 8);
        v46 = *(v44 + 15);
        if (v46 >= 0)
        {
          v45 = v44 - 8;
        }

        v47 = *v44;
        if (v46 >= 0)
        {
          v48 = *(v44 + 15);
        }

        else
        {
          v48 = *v44;
        }

        v111[0] = v45;
        v111[1] = v48;
        if (llvm::StringRef::find_first_of(v111, "\n\r\t", 3, 0) == -1)
        {
          v49 = *(v44 - 24);
          v50 = *(v44 - 16);
          if (v108 >= v49 && v50 >= v42)
          {
            if (v49 >= v42)
            {
              v52 = (v49 - v42);
            }

            else
            {
              v52 = 0;
            }

            if (v107 > v52)
            {
              v53 = (v107 + 1);
            }

            else
            {
              v53 = v52;
            }

            v54 = (v53 + v48);
            v55 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
            if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v55 = v109.__r_.__value_.__l.__size_;
            }

            v107 = (v53 + v48);
            if (v55 < v54)
            {
              std::string::resize(&v109, v54, 32);
              v46 = *(v44 + 15);
              v47 = *v44;
            }

            if ((v46 & 0x80u) == 0)
            {
              v56 = v46;
            }

            else
            {
              v56 = v47;
            }

            if (v56)
            {
              v57 = &v109;
              if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v57 = v109.__r_.__value_.__r.__words[0];
              }

              if ((v46 & 0x80u) == 0)
              {
                v58 = (v44 - 8);
              }

              else
              {
                v58 = *(v44 - 8);
              }

              memmove(v57 + v53, v58, v56);
            }

            if (v108 <= v50)
            {
              v59 = v108;
            }

            else
            {
              v59 = v50;
            }

            v42 = v106;
            v60 = (v59 - v106) - v52;
            if (v60 >= 1)
            {
              v61 = &__b;
              if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v61 = __b.__r_.__value_.__r.__words[0];
              }

              memset(v61 + v52, 126, v60);
            }
          }
        }

        v44 += 40;
        v43 -= 40;
      }

      while (v43);
      LODWORD(v41) = *(this + 11);
      v6 = v104;
      v27 = (this + 80);
    }

    if (v105 >= v41)
    {
      v64 = &__b;
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v64 = __b.__r_.__value_.__r.__words[0];
      }

      v63 = v64 + v41;
    }

    else
    {
      v62 = &__b;
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v62 = __b.__r_.__value_.__r.__words[0];
      }

      v63 = v62 + v105;
    }

    *v63 = 94;
    v65 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v66 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v65 = __b.__r_.__value_.__l.__size_;
      v66 = __b.__r_.__value_.__r.__words[0];
    }

    v67 = &v66[-1].__r_.__value_.__r.__words[2] + 7;
    while (v65)
    {
      v68 = v67[v65--];
      if (v68 != 32)
      {
        v69 = v65 + 1;
        goto LABEL_163;
      }
    }

    v69 = 0;
LABEL_163:
    std::string::erase(&__b, v69, 0xFFFFFFFFFFFFFFFFLL);
    v70 = *(this + 103);
    if (v70 >= 0)
    {
      v71 = v27;
    }

    else
    {
      v71 = *(this + 10);
    }

    if (v70 >= 0)
    {
      v72 = *(this + 103);
    }

    else
    {
      v72 = *(this + 11);
    }

    printSourceLine(a3, v71, v72);
    if (v6 && llvm::WithColor::AutoDetectFunction(a3))
    {
      (*(*a3 + 24))(a3, 2, 1, 0);
    }

    v73 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v73 = __b.__r_.__value_.__r.__words[1];
    }

    v74 = v73;
    if (v73)
    {
      v75 = 0;
      v76 = 0;
      do
      {
        v77 = *(this + 103);
        if (v77 < 0)
        {
          v78 = *(this + 11);
        }

        else
        {
          v78 = *(this + 103);
        }

        if (v78 <= v75)
        {
          goto LABEL_191;
        }

        v79 = v27;
        if ((v77 & 0x80000000) != 0)
        {
          v79 = *v27;
        }

        if (*(v79 + v75) == 9)
        {
          do
          {
            if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v80 = &__b;
            }

            else
            {
              v80 = __b.__r_.__value_.__r.__words[0];
            }

            v81 = v80->__r_.__value_.__s.__data_[v75];
            v82 = *(a3 + 4);
            if (v82 >= *(a3 + 3))
            {
              llvm::raw_ostream::write(a3, v81);
            }

            else
            {
              *(a3 + 4) = v82 + 1;
              *v82 = v81;
            }

            ++v76;
          }

          while ((v76 & 7) != 0);
        }

        else
        {
LABEL_191:
          if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = &__b;
          }

          else
          {
            v83 = __b.__r_.__value_.__r.__words[0];
          }

          v84 = v83->__r_.__value_.__s.__data_[v75];
          v85 = *(a3 + 4);
          if (v85 >= *(a3 + 3))
          {
            llvm::raw_ostream::write(a3, v84);
          }

          else
          {
            *(a3 + 4) = v85 + 1;
            *v85 = v84;
          }

          ++v76;
        }

        ++v75;
      }

      while (v75 != v74);
    }

    v86 = *(a3 + 4);
    if (v86 >= *(a3 + 3))
    {
      llvm::raw_ostream::write(a3, 10);
      if (!v6)
      {
LABEL_205:
        v87 = SHIBYTE(v109.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v87 = v109.__r_.__value_.__l.__size_;
          if (!v109.__r_.__value_.__l.__size_)
          {
LABEL_243:
            if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v109.__r_.__value_.__l.__data_);
            }

            goto LABEL_245;
          }
        }

        else if (!*(&v109.__r_.__value_.__s + 23))
        {
LABEL_245:
          if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__b.__r_.__value_.__l.__data_);
          }

          return;
        }

        v88 = 0;
        v89 = 0;
        while (1)
        {
          v90 = *(this + 103);
          if (v90 < 0)
          {
            v91 = *(this + 11);
          }

          else
          {
            v91 = *(this + 103);
          }

          if (v89 >= v91)
          {
            v94 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
            v95 = v109.__r_.__value_.__r.__words[0];
          }

          else
          {
            v92 = v27;
            if ((v90 & 0x80000000) != 0)
            {
              v92 = *v27;
            }

            v93 = *(v92 + v89);
            v94 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
            v95 = v109.__r_.__value_.__r.__words[0];
            if (v93 == 9)
            {
              do
              {
                if (v94 >= 0)
                {
                  v96 = &v109;
                }

                else
                {
                  v96 = v95;
                }

                v97 = v96->__r_.__value_.__s.__data_[v89];
                v98 = *(a3 + 4);
                if (v98 >= *(a3 + 3))
                {
                  llvm::raw_ostream::write(a3, v97);
                }

                else
                {
                  *(a3 + 4) = v98 + 1;
                  *v98 = v97;
                }

                v94 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
                v95 = v109.__r_.__value_.__r.__words[0];
                if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v99 = &v109;
                }

                else
                {
                  v99 = v109.__r_.__value_.__r.__words[0];
                }

                if (v99->__r_.__value_.__s.__data_[v89] != 32)
                {
                  ++v89;
                }

                ++v88;
              }

              while ((v88 & 7) != 0 && v89 != v87);
              goto LABEL_239;
            }
          }

          if (v94 >= 0)
          {
            v100 = &v109;
          }

          else
          {
            v100 = v95;
          }

          v101 = v100->__r_.__value_.__s.__data_[v89];
          v102 = *(a3 + 4);
          if (v102 >= *(a3 + 3))
          {
            llvm::raw_ostream::write(a3, v101);
          }

          else
          {
            *(a3 + 4) = v102 + 1;
            *v102 = v101;
          }

          ++v88;
LABEL_239:
          if (++v89 >= v87)
          {
            v103 = *(a3 + 4);
            if (v103 >= *(a3 + 3))
            {
              llvm::raw_ostream::write(a3, 10);
            }

            else
            {
              *(a3 + 4) = v103 + 1;
              *v103 = 10;
            }

            goto LABEL_243;
          }
        }
      }
    }

    else
    {
      *(a3 + 4) = v86 + 1;
      *v86 = 10;
      if (!v6)
      {
        goto LABEL_205;
      }
    }

    if (llvm::WithColor::AutoDetectFunction(a3))
    {
      (*(*a3 + 32))(a3);
    }

    goto LABEL_205;
  }

  v32 = 0;
  while ((v29[v32] & 0x80000000) == 0)
  {
    if (v31 == ++v32)
    {
      v33 = v31 + 1;
      if (v31 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v105 = v31;
      if (v33 >= 0x17)
      {
        operator new();
      }

      *(&__b.__r_.__value_.__s + 23) = v31 + 1;
      if (v31 == -1)
      {
        goto LABEL_94;
      }

      goto LABEL_93;
    }
  }

  printSourceLine(a3, v29, v31);
}

void llvm::SourceMgr::PrintMessage(uint64_t *a1, llvm::raw_ostream *a2, char *a3, int a4, llvm::formatv_object_base **a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v23[22] = *MEMORY[0x277D85DE8];
  llvm::SourceMgr::GetMessage(a1, a3, a4, a5, a6, a7, a9, a10, v14);
  llvm::SourceMgr::PrintMessage(a1, a2, v14, a11);
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v23);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SMDiagnostic::SMDiagnostic(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, size_t __len, int a6, int a7, int a8, void *__srca, size_t __lena, void *a11, size_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_36;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v21 = (a1 + 16);
  *(a1 + 39) = __len;
  if (__len)
  {
    memmove(v21, __src, __len);
  }

  *(v21 + __len) = 0;
  *(a1 + 40) = a6;
  *(a1 + 44) = a7;
  *(a1 + 48) = a8;
  if (__lena > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_36;
  }

  if (__lena >= 0x17)
  {
    operator new();
  }

  v22 = (a1 + 56);
  *(a1 + 79) = __lena;
  if (__lena)
  {
    memmove(v22, __srca, __lena);
  }

  *(v22 + __lena) = 0;
  if (a12 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_36:
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a12 >= 0x17)
  {
    operator new();
  }

  v23 = (a1 + 80);
  *(a1 + 103) = a12;
  if (a12)
  {
    memmove(v23, a11, a12);
  }

  *(v23 + a12) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  if (a14)
  {
    if (((8 * a14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v24 = a1 + 144;
  *(a1 + 128) = a1 + 144;
  *(a1 + 136) = 0x400000000;
  if (0xCCCCCCCCCCCCCCCDLL * ((40 * a16) >> 3) < 5)
  {
    v25 = 0;
    v26 = 0;
    if (!a16)
    {
      goto LABEL_32;
    }
  }

  else
  {
    llvm::SmallVectorTemplateBase<llvm::SMFixIt,false>::grow(a1 + 128, 0xCCCCCCCCCCCCCCCDLL * ((40 * a16) >> 3));
    v25 = *(a1 + 136);
    v24 = *(a1 + 128);
    v26 = v25;
    if (!a16)
    {
      goto LABEL_32;
    }
  }

  v27 = (v24 + 40 * v26 + 16);
  v28 = (a15 + 16);
  do
  {
    *&v27[-1].__r_.__value_.__r.__words[1] = *(v28 - 1);
    if (*(v28 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v27, *v28, *(v28 + 1));
    }

    else
    {
      v29 = *v28;
      v27->__r_.__value_.__r.__words[2] = *(v28 + 2);
      *&v27->__r_.__value_.__l.__data_ = v29;
    }

    v30 = v28 - 1;
    v27 = (v27 + 40);
    v28 = (v28 + 40);
  }

  while ((v30 + 40) != (a15 + 40 * a16));
  v25 = *(a1 + 136);
  v24 = *(a1 + 128);
LABEL_32:
  v32 = v25 - 858993459 * ((40 * a16) >> 3);
  v31 = v32 == 0;
  *(a1 + 136) = v32;
  v33 = v24 + 40 * v32;
  v34 = 126 - 2 * __clz(v32);
  if (v31)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(v24, v33, v35, 1);
  return a1;
}

llvm::raw_ostream *printSourceLine(llvm::raw_ostream *result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v6;
      if (a3 <= v6)
      {
        break;
      }

      v9 = memchr((a2 + v6), 9, a3 - v6);
      v10 = &v9[-a2];
      if (!v9 || v10 + 1 == 0)
      {
        break;
      }

      if (v10 <= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = &v9[-a2];
      }

      if (v12 >= a3)
      {
        v12 = a3;
      }

      result = llvm::raw_ostream::operator<<(v4, (a2 + v8), &v12[-v8]);
      v7 = v7 - v8 + v10;
      do
      {
        v13 = *(v4 + 4);
        if (v13 >= *(v4 + 3))
        {
          result = llvm::raw_ostream::write(v4, 32);
        }

        else
        {
          *(v4 + 4) = v13 + 1;
          *v13 = 32;
        }

        ++v7;
      }

      while ((v7 & 7) != 0);
      v6 = v10 + 1;
      if (v10 + 1 == a3)
      {
        goto LABEL_24;
      }
    }

    if (a3 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = a3;
    }

    result = llvm::raw_ostream::operator<<(v4, (a2 + v14), a3 - v14);
  }

LABEL_24:
  v15 = *(v4 + 4);
  if (v15 >= *(v4 + 3))
  {

    return llvm::raw_ostream::write(v4, 10);
  }

  else
  {
    *(v4 + 4) = v15 + 1;
    *v15 = 10;
  }

  return result;
}

uint64_t std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v15[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::SourceMgr::SrcBuffer>>(a1, v6);
  }

  v7 = 24 * v2;
  v8 = *a2;
  *a2 = 0;
  *v7 = v8;
  *(v7 + 16) = *(a2 + 2);
  *(a2 + 1) = 0;
  v9 = 24 * v2 + 24;
  v10 = *(a1 + 8);
  v11 = 24 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::SourceMgr::SrcBuffer>,llvm::SourceMgr::SrcBuffer*>(a1, *a1, v10, v7 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = 0;
  v15[2] = v12;
  v15[3] = v13;
  v15[0] = v12;
  v15[1] = v12;
  std::__split_buffer<llvm::SourceMgr::SrcBuffer>::~__split_buffer(v15);
  return v9;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::SourceMgr::SrcBuffer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::SourceMgr::SrcBuffer>,llvm::SourceMgr::SrcBuffer*>(int a1, llvm::SourceMgr::SrcBuffer *this, llvm::SourceMgr::SrcBuffer *a3, uint64_t a4)
{
  if (this != a3)
  {
    v5 = this;
    v6 = this;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      *(a4 + 16) = *(v6 + 2);
      *(v6 + 1) = 0;
      v6 = (v6 + 24);
      a4 += 24;
    }

    while (v6 != a3);
    do
    {
      llvm::SourceMgr::SrcBuffer::~SrcBuffer(v5);
      v5 = (v8 + 24);
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<llvm::SourceMgr::SrcBuffer>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    llvm::SourceMgr::SrcBuffer::~SrcBuffer((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *std::string::basic_string[abi:nn200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void std::vector<llvm::SourceMgr::SrcBuffer>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        llvm::SourceMgr::SrcBuffer::~SrcBuffer((v4 - 24));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t GetOrCreateOffsetCache<unsigned char>(uint64_t a1)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

uint64_t GetOrCreateOffsetCache<unsigned short>(uint64_t a1)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

uint64_t GetOrCreateOffsetCache<unsigned int>(uint64_t a1)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

uint64_t GetOrCreateOffsetCache<unsigned long long>(uint64_t a1)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

void llvm::SmallVectorTemplateBase<llvm::SMFixIt,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 40, &v6);
  llvm::SmallVectorTemplateBase<llvm::SMFixIt,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::SMFixIt,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 40 * v2;
    do
    {
      *a2 = *v3;
      v5 = *(v3 + 16);
      *(a2 + 32) = *(v3 + 32);
      *(a2 + 16) = v5;
      *(v3 + 24) = 0;
      *(v3 + 32) = 0;
      *(v3 + 16) = 0;
      a2 += 40;
      v3 += 40;
    }

    while (v3 != v4);
    v6 = *(a1 + 2);
    if (v6)
    {
      v7 = *a1 + 40 * v6 - 24;
      v8 = -40 * v6;
      do
      {
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        v7 -= 40;
        v8 += 40;
      }

      while (v8);
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v124 = *MEMORY[0x277D85DE8];
LABEL_2:
  v7 = (a2 - 40);
  v115 = (a2 - 80);
  v117 = a2;
  v114 = (a2 - 120);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = v117;
    v10 = v117 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v117 - v8) >> 3);
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        goto LABEL_133;
      }

      if (v11 == 2)
      {
        if (llvm::SMFixIt::operator<(v7, a1))
        {
          v119 = *a1;
          v53 = *(a1 + 16);
          *&v123 = *(a1 + 24);
          *(&v123 + 7) = *(a1 + 31);
          v54 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          *a1 = *v7;
          v55 = *(v117 - 24);
          *(a1 + 32) = *(v117 - 8);
          *(a1 + 16) = v55;
          *v7 = v119;
          *(v117 - 24) = v53;
          v56 = v123;
          *(v117 - 9) = *(&v123 + 7);
          *(v117 - 16) = v56;
          *(v117 - 1) = v54;
        }

LABEL_133:
        v113 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v58 = *MEMORY[0x277D85DE8];

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a1 + 40, a1 + 80, v7);
      return;
    }

    if (v11 == 5)
    {
      v51 = *MEMORY[0x277D85DE8];

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a1 + 40, a1 + 80, a1 + 120, v7);
      return;
    }

LABEL_10:
    if (v10 <= 959)
    {
      if (a4)
      {
        if (a1 != v117)
        {
          v59 = (a1 + 40);
          if (a1 + 40 != v117)
          {
            v60 = 0;
            v61 = a1;
            do
            {
              v62 = v59;
              if (llvm::SMFixIt::operator<(v59, v61))
              {
                v119 = *v62;
                v121 = *(v61 + 72);
                v120 = *(v61 + 56);
                *(v61 + 64) = 0;
                *(v61 + 72) = 0;
                *(v61 + 56) = 0;
                v63 = *(v62 + 39) < 0;
                v64 = v60;
                while (1)
                {
                  v65 = v64;
                  v66 = a1 + v64;
                  *(v66 + 40) = *v66;
                  if (v63)
                  {
                    operator delete(*(v66 + 56));
                  }

                  *(v66 + 56) = *(v66 + 16);
                  *(v66 + 72) = *(v66 + 32);
                  *(v66 + 39) = 0;
                  *(v66 + 16) = 0;
                  if (!v65)
                  {
                    break;
                  }

                  v64 = v65 - 40;
                  v67 = llvm::SMFixIt::operator<(&v119, (v65 - 40 + a1));
                  v63 = 0;
                  if (!v67)
                  {
                    v68 = (a1 + v65);
                    goto LABEL_88;
                  }
                }

                v68 = a1;
LABEL_88:
                *v68 = v119;
                v69 = a1 + v65;
                v70 = v120;
                *(v69 + 32) = v121;
                *(v69 + 16) = v70;
              }

              v59 = v62 + 5;
              v60 += 40;
              v61 = v62;
            }

            while (v62 + 5 != v117);
          }
        }
      }

      else if (a1 != v117)
      {
        v106 = (a1 + 40);
        if (a1 + 40 != v117)
        {
          v107 = a1 - 40;
          do
          {
            v108 = v106;
            if (llvm::SMFixIt::operator<(v106, a1))
            {
              v119 = *v108;
              v121 = *(a1 + 72);
              v120 = *(a1 + 56);
              *(a1 + 64) = 0;
              *(a1 + 72) = 0;
              *(a1 + 56) = 0;
              v109 = *(v108 + 39) < 0;
              v110 = v107;
              do
              {
                *(v110 + 80) = *(v110 + 40);
                if (v109)
                {
                  operator delete(*(v110 + 96));
                }

                *(v110 + 96) = *(v110 + 56);
                *(v110 + 112) = *(v110 + 72);
                *(v110 + 79) = 0;
                *(v110 + 56) = 0;
                v111 = llvm::SMFixIt::operator<(&v119, v110);
                v109 = 0;
                v110 -= 40;
              }

              while (v111);
              *(v110 + 80) = v119;
              v112 = v120;
              *(v110 + 112) = v121;
              *(v110 + 96) = v112;
            }

            v106 = v108 + 5;
            v107 += 40;
            a1 = v108;
          }

          while (v108 + 5 != v117);
        }
      }

      goto LABEL_133;
    }

    if (!a3)
    {
      if (a1 != v117)
      {
        v71 = v12 >> 1;
        v72 = v12 >> 1;
        do
        {
          v73 = v72;
          if (v71 >= v72)
          {
            v74 = (2 * v72) | 1;
            v75 = a1 + 40 * v74;
            if (2 * v72 + 2 < v11 && llvm::SMFixIt::operator<((a1 + 40 * v74), (v75 + 40)))
            {
              v75 += 40;
              v74 = 2 * v73 + 2;
            }

            v76 = a1 + 40 * v73;
            if (!llvm::SMFixIt::operator<(v75, v76))
            {
              v119 = *v76;
              v77 = *(v76 + 16);
              v121 = *(v76 + 32);
              v120 = v77;
              *(v76 + 24) = 0;
              *(v76 + 32) = 0;
              *(v76 + 16) = 0;
              do
              {
                v78 = v75;
                *v76 = *v75;
                v79 = *(v75 + 16);
                *(v76 + 32) = *(v75 + 32);
                *(v76 + 16) = v79;
                *(v75 + 39) = 0;
                *(v75 + 16) = 0;
                if (v71 < v74)
                {
                  break;
                }

                v80 = (2 * v74) | 1;
                v75 = a1 + 40 * v80;
                v81 = 2 * v74 + 2;
                if (v81 < v11 && llvm::SMFixIt::operator<((a1 + 40 * v80), (v75 + 40)))
                {
                  v75 += 40;
                  v80 = v81;
                }

                v76 = v78;
                v74 = v80;
              }

              while (!llvm::SMFixIt::operator<(v75, &v119));
              *v78 = v119;
              v82 = v120;
              *(v78 + 32) = v121;
              *(v78 + 16) = v82;
            }
          }

          v72 = v73 - 1;
        }

        while (v73);
        v83 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 3);
        v84 = v117;
        do
        {
          v85 = 0;
          v86 = v84;
          v123 = *a1;
          v116 = *(a1 + 16);
          v122[0] = *(a1 + 24);
          *(v122 + 7) = *(a1 + 31);
          v118 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          v87 = a1;
          *(a1 + 16) = 0;
          do
          {
            v88 = v87 + 40 * v85;
            v89 = v88 + 40;
            v90 = (2 * v85) | 1;
            v91 = 2 * v85 + 2;
            if (v91 < v83)
            {
              v92 = v88 + 80;
              if (llvm::SMFixIt::operator<((v88 + 40), (v88 + 80)))
              {
                v89 = v92;
                v90 = v91;
              }
            }

            *v87 = *v89;
            v93 = *(v89 + 16);
            *(v87 + 32) = *(v89 + 32);
            *(v87 + 16) = v93;
            *(v89 + 39) = 0;
            *(v89 + 16) = 0;
            v87 = v89;
            v85 = v90;
          }

          while (v90 <= (v83 - 2) / 2);
          v84 = (v84 - 40);
          if (v89 == (v86 - 40))
          {
            *v89 = v123;
            v104 = v122[0];
            *(v89 + 16) = v116;
            *(v89 + 24) = v104;
            *(v89 + 31) = *(v122 + 7);
            *(v89 + 39) = v118;
          }

          else
          {
            *v89 = *v84;
            v94 = *(v86 - 24);
            *(v89 + 32) = *(v86 - 1);
            *(v89 + 16) = v94;
            *v84 = v123;
            *(v86 - 3) = v116;
            v95 = v122[0];
            *(v86 - 9) = *(v122 + 7);
            *(v86 - 2) = v95;
            *(v86 - 1) = v118;
            v96 = v89 - a1 + 40;
            if (v96 >= 41)
            {
              v97 = (-2 - 0x3333333333333333 * (v96 >> 3)) >> 1;
              v98 = a1 + 40 * v97;
              if (llvm::SMFixIt::operator<(v98, v89))
              {
                v99 = *(v89 + 16);
                v119 = *v89;
                v100 = *(v89 + 32);
                v120 = v99;
                v121 = v100;
                *(v89 + 24) = 0;
                *(v89 + 32) = 0;
                *(v89 + 16) = 0;
                do
                {
                  v101 = v98;
                  *v89 = *v98;
                  v102 = *(v98 + 16);
                  *(v89 + 32) = *(v98 + 32);
                  *(v89 + 16) = v102;
                  *(v98 + 39) = 0;
                  *(v98 + 16) = 0;
                  if (!v97)
                  {
                    break;
                  }

                  v97 = (v97 - 1) >> 1;
                  v98 = a1 + 40 * v97;
                  v89 = v101;
                }

                while (llvm::SMFixIt::operator<(v98, &v119));
                *v101 = v119;
                v103 = v120;
                *(v101 + 32) = v121;
                *(v101 + 16) = v103;
              }
            }
          }
        }

        while (v83-- > 2);
      }

      goto LABEL_133;
    }

    v13 = v11 >> 1;
    v14 = a1 + 40 * (v11 >> 1);
    if (v10 < 0x1401)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(v14, a1, v7);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, v14, v7);
      v15 = 5 * v13;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>((a1 + 40), (a1 + 8 * v15 - 40), v115);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>((a1 + 80), (a1 + 40 + 8 * v15), v114);
      v9 = v117;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>((a1 + 8 * v15 - 40), v14, (a1 + 40 + 8 * v15));
      v119 = *a1;
      *(&v123 + 7) = *(a1 + 31);
      v16 = *(a1 + 16);
      *&v123 = *(a1 + 24);
      v17 = *(a1 + 39);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      v18 = *(v14 + 32);
      v19 = *(v14 + 16);
      *a1 = *v14;
      *(a1 + 16) = v19;
      *(a1 + 32) = v18;
      *v14 = v119;
      *(v14 + 16) = v16;
      v20 = v123;
      *(v14 + 31) = *(&v123 + 7);
      *(v14 + 24) = v20;
      *(v14 + 39) = v17;
    }

    --a3;
    if ((a4 & 1) != 0 || llvm::SMFixIt::operator<((a1 - 40), a1))
    {
      v21 = 0;
      v22 = *(a1 + 16);
      v119 = *a1;
      v23 = *(a1 + 32);
      v120 = v22;
      v121 = v23;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      do
      {
        v21 += 40;
      }

      while (llvm::SMFixIt::operator<((v21 + a1), &v119));
      v24 = a1 + v21;
      v25 = v9;
      if (v21 == 40)
      {
        v25 = v9;
        do
        {
          if (v24 >= v25)
          {
            break;
          }

          v25 -= 5;
        }

        while (!llvm::SMFixIt::operator<(v25, &v119));
      }

      else
      {
        do
        {
          v25 -= 5;
        }

        while (!llvm::SMFixIt::operator<(v25, &v119));
      }

      v8 = a1 + v21;
      if (v24 < v25)
      {
        v26 = v25;
        do
        {
          v123 = *v8;
          v27 = *(v8 + 16);
          v122[0] = *(v8 + 24);
          *(v122 + 7) = *(v8 + 31);
          v28 = *(v8 + 39);
          *(v8 + 24) = 0;
          *(v8 + 32) = 0;
          *(v8 + 16) = 0;
          *v8 = *v26;
          v29 = *(v26 + 1);
          *(v8 + 32) = v26[4];
          *(v8 + 16) = v29;
          *v26 = v123;
          v30 = v122[0];
          v26[2] = v27;
          v26[3] = v30;
          *(v26 + 31) = *(v122 + 7);
          *(v26 + 39) = v28;
          do
          {
            v8 += 40;
          }

          while (llvm::SMFixIt::operator<(v8, &v119));
          do
          {
            v26 -= 5;
          }

          while (!llvm::SMFixIt::operator<(v26, &v119));
        }

        while (v8 < v26);
      }

      v31 = (v8 - 40);
      if (v8 - 40 == a1)
      {
        v34 = *(v8 - 1);
        *a1 = v119;
        v32 = v8 - 24;
        if (v34 < 0)
        {
          operator delete(*v32);
        }
      }

      else
      {
        *a1 = *v31;
        if (*(a1 + 39) < 0)
        {
          operator delete(*(a1 + 16));
        }

        v32 = v8 - 24;
        v33 = *(v8 - 24);
        *(a1 + 32) = *(v8 - 8);
        *(a1 + 16) = v33;
        *(v8 - 1) = 0;
        *(v8 - 24) = 0;
        *v31 = v119;
      }

      v35 = v120;
      *(v32 + 16) = v121;
      *v32 = v35;
      if (v24 < v25)
      {
        goto LABEL_40;
      }

      v36 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, v8 - 40);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(v8, v117))
      {
        a2 = v8 - 40;
        if (!v36)
        {
          goto LABEL_2;
        }

        goto LABEL_133;
      }

      if (!v36)
      {
LABEL_40:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,false>(a1, v8 - 40, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v37 = *(a1 + 16);
      v119 = *a1;
      v38 = *(a1 + 32);
      v120 = v37;
      v121 = v38;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      if (llvm::SMFixIt::operator<(&v119, v7))
      {
        v8 = a1;
        do
        {
          v8 += 40;
        }

        while (!llvm::SMFixIt::operator<(&v119, v8));
      }

      else
      {
        v39 = (a1 + 40);
        do
        {
          v8 = v39;
          if (v39 >= v9)
          {
            break;
          }

          v40 = llvm::SMFixIt::operator<(&v119, v39);
          v39 = (v8 + 40);
        }

        while (!v40);
      }

      v41 = v9;
      if (v8 < v9)
      {
        v41 = v9;
        do
        {
          v41 -= 40;
        }

        while (llvm::SMFixIt::operator<(&v119, v41));
      }

      while (v8 < v41)
      {
        v123 = *v8;
        v42 = *(v8 + 16);
        v122[0] = *(v8 + 24);
        *(v122 + 7) = *(v8 + 31);
        v43 = *(v8 + 39);
        *(v8 + 24) = 0;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0;
        *v8 = *v41;
        v44 = *(v41 + 16);
        *(v8 + 32) = *(v41 + 32);
        *(v8 + 16) = v44;
        *v41 = v123;
        v45 = v122[0];
        *(v41 + 16) = v42;
        *(v41 + 24) = v45;
        *(v41 + 31) = *(v122 + 7);
        *(v41 + 39) = v43;
        do
        {
          v8 += 40;
        }

        while (!llvm::SMFixIt::operator<(&v119, v8));
        do
        {
          v41 -= 40;
        }

        while (llvm::SMFixIt::operator<(&v119, v41));
      }

      v46 = (v8 - 40);
      if (v8 - 40 == a1)
      {
        v49 = *(v8 - 1);
        *a1 = v119;
        v47 = v8 - 24;
        if (v49 < 0)
        {
          operator delete(*v47);
        }
      }

      else
      {
        *a1 = *v46;
        if (*(a1 + 39) < 0)
        {
          operator delete(*(a1 + 16));
        }

        v47 = v8 - 24;
        v48 = *(v8 - 24);
        *(a1 + 32) = *(v8 - 8);
        *(a1 + 16) = v48;
        *(v8 - 1) = 0;
        *(v8 - 24) = 0;
        *v46 = v119;
      }

      a4 = 0;
      v50 = v120;
      *(v47 + 16) = v121;
      *v47 = v50;
    }
  }

  v57 = *MEMORY[0x277D85DE8];

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), v7);
}

BOOL std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = llvm::SMFixIt::operator<(a2, a1);
  result = llvm::SMFixIt::operator<(a3, a2);
  if (v6)
  {
    if (result)
    {
      v22 = *a1;
      v8 = *(a1 + 2);
      *&v27 = *(a1 + 3);
      *(&v27 + 7) = *(a1 + 31);
      v9 = *(a1 + 39);
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 2) = 0;
      *a1 = *a3;
      v10 = *(a3 + 4);
      a1[1] = a3[1];
      *(a1 + 4) = v10;
      *a3 = v22;
      *(a3 + 2) = v8;
      *(a3 + 3) = v27;
      *(a3 + 31) = *(&v27 + 7);
      *(a3 + 39) = v9;
    }

    else
    {
      v25 = *a1;
      v17 = *(a1 + 2);
      *&v30 = *(a1 + 3);
      *(&v30 + 7) = *(a1 + 31);
      v18 = *(a1 + 39);
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 2) = 0;
      *a1 = *a2;
      v19 = *(a2 + 4);
      a1[1] = a2[1];
      *(a1 + 4) = v19;
      *a2 = v25;
      *(a2 + 2) = v17;
      *(a2 + 3) = v30;
      *(a2 + 31) = *(&v30 + 7);
      *(a2 + 39) = v18;
      result = llvm::SMFixIt::operator<(a3, a2);
      if (result)
      {
        v26 = *a2;
        *&v31 = *(a2 + 3);
        *(&v31 + 7) = *(a2 + 31);
        *(a2 + 3) = 0;
        *(a2 + 4) = 0;
        *(a2 + 2) = 0;
        *a2 = *a3;
        v20 = *(a3 + 4);
        a2[1] = a3[1];
        *(a2 + 4) = v20;
        *a3 = v26;
        *(a3 + 2) = v17;
        *(a3 + 3) = v31;
        *(a3 + 31) = *(&v31 + 7);
        *(a3 + 39) = v18;
      }
    }
  }

  else if (result)
  {
    v23 = *a2;
    v11 = *(a2 + 2);
    *&v28 = *(a2 + 3);
    *(&v28 + 7) = *(a2 + 31);
    v12 = *(a2 + 39);
    *(a2 + 2) = 0;
    *(a2 + 4) = 0;
    *(a2 + 3) = 0;
    *a2 = *a3;
    v13 = *(a3 + 4);
    a2[1] = a3[1];
    *(a2 + 4) = v13;
    *a3 = v23;
    *(a3 + 2) = v11;
    *(a3 + 3) = v28;
    *(a3 + 31) = *(&v28 + 7);
    *(a3 + 39) = v12;
    result = llvm::SMFixIt::operator<(a2, a1);
    if (result)
    {
      v24 = *a1;
      v14 = *(a1 + 2);
      *&v29 = *(a1 + 3);
      *(&v29 + 7) = *(a1 + 31);
      v15 = *(a1 + 39);
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 2) = 0;
      *a1 = *a2;
      v16 = *(a2 + 4);
      a1[1] = a2[1];
      *(a1 + 4) = v16;
      *a2 = v24;
      *(a2 + 2) = v14;
      *(a2 + 3) = v29;
      *(a2 + 31) = *(&v29 + 7);
      *(a2 + 39) = v15;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a2, a3);
  result = llvm::SMFixIt::operator<(a4, a3);
  if (result)
  {
    v19 = *a3;
    v9 = *(a3 + 16);
    *&v22 = *(a3 + 24);
    *(&v22 + 7) = *(a3 + 31);
    v10 = *(a3 + 39);
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 24) = 0;
    *a3 = *a4;
    v11 = *(a4 + 32);
    *(a3 + 16) = *(a4 + 16);
    *(a3 + 32) = v11;
    *a4 = v19;
    *(a4 + 16) = v9;
    *(a4 + 24) = v22;
    *(a4 + 31) = *(&v22 + 7);
    *(a4 + 39) = v10;
    result = llvm::SMFixIt::operator<(a3, a2);
    if (result)
    {
      v20 = *a2;
      v12 = *(a2 + 16);
      *&v23 = *(a2 + 24);
      *(&v23 + 7) = *(a2 + 31);
      v13 = *(a2 + 39);
      *(a2 + 16) = 0;
      *(a2 + 32) = 0;
      *(a2 + 24) = 0;
      *a2 = *a3;
      v14 = *(a3 + 32);
      *(a2 + 16) = *(a3 + 16);
      *(a2 + 32) = v14;
      *a3 = v20;
      *(a3 + 16) = v12;
      *(a3 + 24) = v23;
      *(a3 + 31) = *(&v23 + 7);
      *(a3 + 39) = v13;
      result = llvm::SMFixIt::operator<(a2, a1);
      if (result)
      {
        v21 = *a1;
        v15 = *(a1 + 16);
        *&v24 = *(a1 + 24);
        *(&v24 + 7) = *(a1 + 31);
        v16 = *(a1 + 39);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        *a1 = *a2;
        v17 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v17;
        *a2 = v21;
        *(a2 + 16) = v15;
        *(a2 + 24) = v24;
        *(a2 + 31) = *(&v24 + 7);
        *(a2 + 39) = v16;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a2, a3, a4);
  result = llvm::SMFixIt::operator<(a5, a4);
  if (result)
  {
    v24 = *a4;
    v11 = *(a4 + 16);
    *&v28 = *(a4 + 24);
    *(&v28 + 7) = *(a4 + 31);
    v12 = *(a4 + 39);
    *(a4 + 16) = 0;
    *(a4 + 32) = 0;
    *(a4 + 24) = 0;
    *a4 = *a5;
    v13 = *(a5 + 32);
    *(a4 + 16) = *(a5 + 16);
    *(a4 + 32) = v13;
    *a5 = v24;
    *(a5 + 16) = v11;
    *(a5 + 24) = v28;
    *(a5 + 31) = *(&v28 + 7);
    *(a5 + 39) = v12;
    result = llvm::SMFixIt::operator<(a4, a3);
    if (result)
    {
      v25 = *a3;
      v14 = *(a3 + 16);
      *&v29 = *(a3 + 24);
      *(&v29 + 7) = *(a3 + 31);
      v15 = *(a3 + 39);
      *(a3 + 16) = 0;
      *(a3 + 32) = 0;
      *(a3 + 24) = 0;
      *a3 = *a4;
      v16 = *(a4 + 32);
      *(a3 + 16) = *(a4 + 16);
      *(a3 + 32) = v16;
      *a4 = v25;
      *(a4 + 16) = v14;
      *(a4 + 24) = v29;
      *(a4 + 31) = *(&v29 + 7);
      *(a4 + 39) = v15;
      result = llvm::SMFixIt::operator<(a3, a2);
      if (result)
      {
        v26 = *a2;
        v17 = *(a2 + 16);
        *&v30 = *(a2 + 24);
        *(&v30 + 7) = *(a2 + 31);
        v18 = *(a2 + 39);
        *(a2 + 16) = 0;
        *(a2 + 32) = 0;
        *(a2 + 24) = 0;
        *a2 = *a3;
        v19 = *(a3 + 32);
        *(a2 + 16) = *(a3 + 16);
        *(a2 + 32) = v19;
        *a3 = v26;
        *(a3 + 16) = v17;
        *(a3 + 24) = v30;
        *(a3 + 31) = *(&v30 + 7);
        *(a3 + 39) = v18;
        result = llvm::SMFixIt::operator<(a2, a1);
        if (result)
        {
          v27 = *a1;
          v20 = *(a1 + 16);
          *&v31 = *(a1 + 24);
          *(&v31 + 7) = *(a1 + 31);
          v21 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          *a1 = *a2;
          v22 = *(a2 + 32);
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 32) = v22;
          *a2 = v27;
          *(a2 + 16) = v20;
          *(a2 + 24) = v31;
          *(a2 + 31) = *(&v31 + 7);
          *(a2 + 39) = v21;
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), (a2 - 40));
        goto LABEL_23;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a1 + 40, a1 + 80, a2 - 40);
        goto LABEL_23;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
        goto LABEL_23;
    }
  }

  else
  {
    if (v4 < 2)
    {
      goto LABEL_23;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 40);
      if (llvm::SMFixIt::operator<((a2 - 40), a1))
      {
        v21 = *a1;
        v6 = *(a1 + 16);
        v24[0] = *(a1 + 24);
        *(v24 + 7) = *(a1 + 31);
        v7 = *(a1 + 39);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        *a1 = *v5;
        v8 = *(a2 - 8);
        *(a1 + 16) = *(a2 - 24);
        *(a1 + 32) = v8;
        *v5 = v21;
        v9 = v24[0];
        *(a2 - 24) = v6;
        *(a2 - 16) = v9;
        *(a2 - 9) = *(v24 + 7);
        result = 1;
        *(a2 - 1) = v7;
        goto LABEL_24;
      }

LABEL_23:
      result = 1;
      goto LABEL_24;
    }
  }

  v11 = (a1 + 80);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), (a1 + 80));
  v12 = a1 + 120;
  if (a1 + 120 == a2)
  {
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    if (llvm::SMFixIt::operator<(v12, v11))
    {
      v15 = *(v12 + 16);
      v21 = *v12;
      v22 = v15;
      v23 = *(v12 + 32);
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      v16 = v13;
      while (1)
      {
        v17 = a1 + v16;
        v18 = *(a1 + v16 + 96);
        *(v17 + 120) = *(a1 + v16 + 80);
        *(v17 + 136) = v18;
        *(v17 + 152) = *(a1 + v16 + 112);
        *(v17 + 119) = 0;
        *(v17 + 96) = 0;
        if (v16 == -80)
        {
          break;
        }

        v16 -= 40;
        if (!llvm::SMFixIt::operator<(&v21, (v17 + 40)))
        {
          v19 = (a1 + v16 + 120);
          goto LABEL_19;
        }
      }

      v19 = a1;
LABEL_19:
      *v19 = v21;
      *(v17 + 96) = v22;
      *(v17 + 112) = v23;
      if (++v14 == 8)
      {
        break;
      }
    }

    v11 = v12;
    v13 += 40;
    v12 += 40;
    if (v12 == a2)
    {
      goto LABEL_23;
    }
  }

  result = v12 + 40 == a2;
LABEL_24:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::SMFixIt::operator<(void *a1, void *a2)
{
  v2 = *a1 >= *a2;
  if (*a1 != *a2)
  {
    return !v2;
  }

  v3 = a1[1];
  v4 = a2[1];
  v2 = v3 >= v4;
  if (v3 != v4)
  {
    return !v2;
  }

  v8 = a2[2];
  v6 = a2 + 2;
  v7 = v8;
  v9 = *(v6 + 23);
  v12 = a1[2];
  v10 = a1 + 2;
  v11 = v12;
  v13 = *(v10 + 23);
  if (v13 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = v10[1];
  }

  if (v13 < 0)
  {
    v10 = v11;
  }

  if (v9 >= 0)
  {
    v15 = *(v6 + 23);
  }

  else
  {
    v15 = v6[1];
  }

  if (v9 < 0)
  {
    v6 = v7;
  }

  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v10, v6, v16);
  if (v17)
  {
    return v17 < 0;
  }

  else
  {
    return v14 < v15;
  }
}

void llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883EB2E8;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](a1 + 160);

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EB2E8;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](a1 + 160);
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v11 = 0;
  v8 = llvm::cl::parser<BOOL>::parse((a1 + 152), a1, a3, a4, a5, a6, &v11);
  if (v8)
  {
    return v8;
  }

  **(a1 + 128) = v11;
  *(a1 + 12) = a2;
  v9 = *(a1 + 184);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v11);
    return v8;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::getValueExpectedFlagDefault();
}

void llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::printOptionValue(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    LOBYTE(v3) = **(a1 + 128);
LABEL_3:
    v5 = *(a1 + 144);
    v4 = &unk_2883EAB68;
    llvm::cl::parser<BOOL>::printOptionDiff((a1 + 152), a1, v3 & 1, &v4, a2);
    return;
  }

  if (*(a1 + 145) == 1)
  {
    v3 = **(a1 + 128);
    if (*(a1 + 144) != v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::setDefault(uint64_t result)
{
  if (*(result + 145) == 1)
  {
    v1 = *(result + 144);
  }

  else
  {
    v1 = 0;
  }

  **(result + 128) = v1;
  return result;
}

uint64_t llvm::cl::opt_storage<BOOL,true,false>::setLocation(llvm *a1, uint64_t a2, _BYTE *a3)
{
  if (*a1)
  {
    v7 = "cl::location(x) specified more than once!";
    v8 = 259;
    v4 = llvm::errs(a1);
    return llvm::cl::Option::error(a2, &v7, 0, 0, v4);
  }

  else
  {
    result = 0;
    *a1 = a3;
    *(a1 + 17) = 1;
    *(a1 + 16) = *a3;
  }

  return result;
}

unint64_t llvm::getToken@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  first_not_of = llvm::StringRef::find_first_not_of(v17, a3, a4, 0);
  result = llvm::StringRef::find_first_of(v17, a3, a4, first_not_of);
  if (a2 >= first_not_of)
  {
    v12 = first_not_of;
  }

  else
  {
    v12 = a2;
  }

  if (v12 <= result)
  {
    v13 = result;
  }

  else
  {
    v13 = first_not_of;
  }

  if (v13 >= a2)
  {
    v13 = a2;
  }

  v14 = a1 + v12;
  v15 = v13 - v12;
  if (a2 >= result)
  {
    v16 = result;
  }

  else
  {
    v16 = a2;
  }

  *a5 = v14;
  a5[1] = v15;
  a5[2] = a1 + v16;
  a5[3] = a2 - v16;
  return result;
}

double llvm::SplitString(uint64_t a1, unint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  llvm::getToken(a1, a2, a4, a5, &v12);
  v9 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    do
    {
      llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a3, v12, v9);
      llvm::getToken(v13, *(&v13 + 1), a4, a5, &v10);
      v12 = v10;
      result = *&v11;
      v13 = v11;
      v9 = *(&v10 + 1);
    }

    while (*(&v10 + 1));
  }

  return result;
}

llvm::raw_ostream *llvm::printEscapedString(llvm::raw_ostream *result, uint64_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v5;
      if (v6 == 92)
      {
        v7 = *(a3 + 4);
        if (v7 >= *(a3 + 3))
        {
          result = llvm::raw_ostream::write(a3, 92);
        }

        else
        {
          *(a3 + 4) = v7 + 1;
          *v7 = 92;
        }

        v10 = *(a3 + 4);
        if (v10 >= *(a3 + 3))
        {
          v11 = a3;
          v12 = 92;
LABEL_24:
          result = llvm::raw_ostream::write(v11, v12);
          goto LABEL_25;
        }

        *(a3 + 4) = v10 + 1;
        *v10 = 92;
      }

      else
      {
        v9 = *(a3 + 3);
        v8 = *(a3 + 4);
        if (v6 == 34 || (v6 - 32) > 0x5Eu)
        {
          if (v8 >= v9)
          {
            result = llvm::raw_ostream::write(a3, 92);
          }

          else
          {
            *(a3 + 4) = v8 + 1;
            *v8 = 92;
          }

          v13 = llvm::hexdigit(unsigned int,BOOL)::LUT[v6 >> 4];
          v14 = *(a3 + 4);
          if (v14 >= *(a3 + 3))
          {
            result = llvm::raw_ostream::write(a3, v13);
          }

          else
          {
            *(a3 + 4) = v14 + 1;
            *v14 = v13;
          }

          v12 = llvm::hexdigit(unsigned int,BOOL)::LUT[v6 & 0xF];
          v15 = *(a3 + 4);
          if (v15 >= *(a3 + 3))
          {
            v11 = a3;
            goto LABEL_24;
          }

          *(a3 + 4) = v15 + 1;
          *v15 = v12;
        }

        else
        {
          if (v8 >= v9)
          {
            v11 = a3;
            v12 = *v5;
            goto LABEL_24;
          }

          *(a3 + 4) = v8 + 1;
          *v8 = v6;
        }
      }

LABEL_25:
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *llvm::StringMapImpl::init(llvm::StringMapImpl *this, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 16;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  result = malloc_type_calloc(v3 + 1, 0xCuLL, 0x17B874E6uLL);
  if (!result && (v3 != -1 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  result[v3] = 2;
  *this = result;
  *(this + 2) = v3;
  return result;
}

uint64_t llvm::StringMapImpl::LookupBucketFor(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3)
{
  if (!*(a1 + 2))
  {
    llvm::StringMapImpl::init(a1, 0x10u);
  }

  v6 = llvm::xxHash64(a2, a3);
  v7 = *(a1 + 2);
  v8 = v7 - 1;
  v9 = *a1;
  v10 = *a1 + 8 * v7 + 8;
  v11 = 1;
  v12 = 0xFFFFFFFFLL;
  v13 = v6;
  while (1)
  {
    v14 = v13 & v8;
    v15 = *(v9 + 8 * v14);
    if (!v15)
    {
      break;
    }

    if (v15 == -8)
    {
      if (v12 == -1)
      {
        v12 = v14;
      }

      else
      {
        v12 = v12;
      }
    }

    else if (*(v10 + 4 * v14) == v6 && a3 == *v15)
    {
      v24 = v11;
      v22 = v9;
      v23 = v12;
      v21 = v8;
      v20 = v10;
      v25 = v14;
      v19 = v6;
      if (!a3)
      {
        return v14;
      }

      v16 = memcmp(a2, v15 + *(a1 + 5), a3);
      v6 = v19;
      v10 = v20;
      v14 = v25;
      v8 = v21;
      v9 = v22;
      v12 = v23;
      v11 = v24;
      if (!v16)
      {
        return v14;
      }
    }

    v13 = v11 + v14;
    ++v11;
  }

  v17 = v12;
  if (v12 == -1)
  {
    v17 = v14;
    v14 = v14;
  }

  else
  {
    v14 = v12;
  }

  *(v10 + 4 * v17) = v6;
  return v14;
}

uint64_t llvm::StringMapImpl::FindKey(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!*(a1 + 2))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = llvm::xxHash64(a2, a3);
  v7 = *(a1 + 2);
  v8 = v7 - 1;
  LODWORD(result) = (v7 - 1) & v6;
  v10 = *a1;
  v11 = *a1 + 8 * v7 + 8;
  for (i = 1; ; ++i)
  {
    v13 = *(v10 + 8 * result);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    if (v13 != -8 && *(v11 + 4 * result) == v6 && a3 == *v13)
    {
      break;
    }

LABEL_9:
    LODWORD(result) = (result + i) & v8;
  }

  v19 = i;
  v17 = v10;
  v18 = v11;
  v16 = v8;
  v15 = v6;
  v20 = result;
  if (a3)
  {
    v14 = memcmp(a2, v13 + *(a1 + 5), a3);
    result = v20;
    v6 = v15;
    v8 = v16;
    v10 = v17;
    v11 = v18;
    i = v19;
    if (!v14)
    {
      return result;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t llvm::StringMapImpl::RemoveKey(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3);
  if (Key == -1)
  {
    return 0;
  }

  v5 = Key;
  result = *(*a1 + 8 * Key);
  *(*a1 + 8 * v5) = -8;
  *(a1 + 12) = vadd_s32(*(a1 + 12), 0x1FFFFFFFFLL);
  return result;
}

uint64_t llvm::StringMapImpl::RehashTable(llvm::StringMapImpl *this, uint64_t a2)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (3 * v5 < 4 * v4)
  {
    v5 *= 2;
  }

  else if (v5 - (v4 + *(this + 4)) > v5 >> 3)
  {
    return a2;
  }

  v7 = llvm::safe_calloc((v5 + 1), 0xCuLL);
  v8 = &v7[v5];
  *v8 = 2;
  v9 = v8 + 1;
  v10 = *this;
  v11 = *(this + 2);
  if (v11)
  {
    v12 = 0;
    v13 = v5 - 1;
    v14 = a2;
    do
    {
      v15 = *(*this + 8 * v12);
      if (v15 != -8 && v15 != 0)
      {
        v17 = v10[2 * v11 + 2 + v12];
        v18 = v17 & v13;
        if (v7[v18])
        {
          v19 = 1;
          do
          {
            v20 = v18 + v19++;
            v18 = v20 & v13;
          }

          while (v7[v18]);
        }

        v7[v18] = v15;
        *(v9 + v18) = v17;
        if (v12 == v14)
        {
          a2 = v18;
        }

        else
        {
          a2 = a2;
        }
      }

      ++v12;
    }

    while (v12 != v11);
    v10 = *this;
  }

  free(v10);
  *this = v7;
  *(this + 2) = v5;
  *(this + 4) = 0;
  return a2;
}

void *llvm::safe_calloc(llvm *this, size_t a2)
{
  result = malloc_type_calloc(this, a2, 0x17B874E6uLL);
  if (!result && (this && a2 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  return result;
}

_BYTE *llvm::UniqueStringSaver::save(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  *&v11 = a2;
  *(&v11 + 1) = a3;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 1), &v11, a4, &v12);
  v5 = v12;
  if (v13)
  {
    v6 = v11;
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*a1, *(&v11 + 1) + 1, 0);
    v8 = v7;
    if (*(&v6 + 1))
    {
      memcpy(v7, v6, *(&v6 + 1));
    }

    v8[*(&v6 + 1)] = 0;
    *v5 = v8;
    v5[1] = *(&v6 + 1);
  }

  else
  {
    v8 = *v12;
    v9 = v12[1];
  }

  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, unint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v11, a3);
  v8 = v11;
  if (result)
  {
    v9 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::InsertIntoBucketImpl<llvm::StringRef>(a1, a2, a2, v11);
    v8 = result;
    *result = *a2;
    v9 = 1;
  }

  v10 = *a1 + 16 * *(a1 + 16);
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v9;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = v5 - 1;
    v9 = (v5 - 1) & llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a2, *a2 + *(a2 + 8), a3, a4);
    v10 = v7 + 16 * v9;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8)))
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (*v10 != -1)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v10 == -2;
        }

        if (v14)
        {
          v12 = v10;
        }

        v18 = v12;
        v15 = v13 + 1;
        v9 = (v9 + v13) & v8;
        v10 = v7 + 16 * v9;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8));
        v12 = v18;
        v17 = isEqual;
        result = 1;
        v13 = v15;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v10 = v12;
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::InsertIntoBucketImpl<llvm::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

  llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a3, &v10, v9);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(a1, v4, &v4[v3], v10);

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 16 * v11;
    do
    {
      *result++ = xmmword_2750C1220;
      v12 -= 16;
    }

    while (v12);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(uint64_t result, _OWORD *a2, _OWORD *a3, unint64_t *a4)
{
  v6 = result;
  *(result + 8) = 0;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = *result;
    v9 = 16 * v7;
    do
    {
      *v8++ = xmmword_2750C1220;
      v9 -= 16;
    }

    while (v9);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v6, a2, &v10, a4);
      *v10 = *a2;
      ++*(v6 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t ascii_strncasecmp(const char *a1, const char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v4 = *a1++;
    v3 = v4;
    v5 = v4 | 0x20;
    v6 = v4 - 65 >= 0x1A;
    v8 = *a2++;
    v7 = v8;
    if (!v6)
    {
      v3 = v5;
    }

    if (v7 - 65 < 0x1A)
    {
      v7 |= 0x20u;
    }

    if (v3 != v7)
    {
      break;
    }

    if (!--a3)
    {
      return 0;
    }
  }

  if (v3 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t llvm::toLower(llvm *this)
{
  v1 = this;
  if (this - 65 < 0x1A)
  {
    return (this | 0x20);
  }

  return v1;
}

uint64_t llvm::toUpper(llvm *this)
{
  if ((this - 97) >= 0x1A)
  {
    return this;
  }

  else
  {
    return (this - 32);
  }
}

uint64_t llvm::StringRef::find(uint64_t *a1, char *a2, size_t a3, unint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v6 = v5 - a4;
  if (v5 < a4)
  {
    goto LABEL_4;
  }

  v7 = a4;
  if (!a3)
  {
LABEL_26:
    result = v7;
    goto LABEL_27;
  }

  if (v6 < a3)
  {
LABEL_4:
    result = -1;
    goto LABEL_27;
  }

  v10 = *a1;
  v11 = (*a1 + a4);
  v12 = a3 - 1;
  if (a3 == 1)
  {
    v13 = memchr((*a1 + a4), *a2, v6);
    if (v13)
    {
      result = v13 - v10;
    }

    else
    {
      result = -1;
    }

    goto LABEL_27;
  }

  v14 = &v11[v6 - a3];
  if (a3 == 2)
  {
    result = -1;
    while (*(v10 + v7) != *a2)
    {
      ++v7;
      if (v10 + v7 - 1 >= v14)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_26;
  }

  if (a3 > 0xFF || v6 <= 0xF)
  {
    while (memcmp((v10 + v7), a2, a3))
    {
      ++v7;
      result = -1;
      if (v10 + v7 - 1 >= v14)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_26;
  }

  v15 = 0;
  v21 = vdupq_n_s8(a3);
  v22 = v21;
  v20[12] = v21;
  v20[13] = v21;
  v20[10] = v21;
  v20[11] = v21;
  v20[8] = v21;
  v20[9] = v21;
  v20[6] = v21;
  v20[7] = v21;
  v20[4] = v21;
  v20[5] = v21;
  v20[2] = v21;
  v20[3] = v21;
  v16 = a3 - 1;
  v20[0] = v21;
  v20[1] = v21;
  do
  {
    *(v20 + a2[v15++]) = v16--;
  }

  while (v12 != v15);
  v17 = a2[v12];
  while (1)
  {
    v18 = v11[v12];
    if (v18 == v17 && !memcmp(v11, a2, v12))
    {
      break;
    }

    v11 += *(v20 + v18);
    if (v11 >= v14 + 1)
    {
      goto LABEL_4;
    }
  }

  result = &v11[-v10];
LABEL_27:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::StringRef::rfind(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = (*a1 + v3);
  if (a3 && v3)
  {
    v7 = *a2;
    v5 = a2 + 1;
    v6 = v7;
    v8 = *a1;
    v9 = (*a1 + v3);
    do
    {
      v10 = v8 + 1;
      while (*v8 != v6)
      {
        ++v8;
        ++v10;
        if (v8 == v4)
        {
          goto LABEL_17;
        }
      }

      v11 = a3 - 1;
      v12 = v5;
      while (v11)
      {
        if (v10 == v4)
        {
          goto LABEL_17;
        }

        v14 = *v10++;
        v13 = v14;
        v15 = *v12++;
        --v11;
        if (v13 != v15)
        {
          goto LABEL_14;
        }
      }

      v9 = v8;
LABEL_14:
      ++v8;
    }

    while (v8 != v4);
  }

  else
  {
    v9 = (*a1 + v3);
  }

LABEL_17:
  if (v9 != v4 || a3 == 0)
  {
    return &v9[-*a1];
  }

  else
  {
    return -1;
  }
}

uint64_t llvm::StringRef::find_first_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t llvm::StringRef::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t llvm::StringRef::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

uint64_t llvm::StringRef::find_last_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

unsigned int *llvm::StringRef::split(unsigned int *result, unsigned int *a2, char *a3, size_t a4, int a5, int a6)
{
  v17 = *result;
  v8 = *(&v17 + 1);
  if (a5)
  {
    v9 = a5;
    do
    {
      result = llvm::StringRef::find(&v17, a3, a4, 0);
      if (result == -1)
      {
        break;
      }

      v12 = result;
      v13 = v17;
      if (result || a6)
      {
        if (result >= v8)
        {
          v14 = v8;
        }

        else
        {
          v14 = result;
        }

        result = llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a2, v17, v14);
      }

      v15 = v12 + a4;
      if (v8 < v12 + a4)
      {
        v15 = v8;
      }

      v8 -= v15;
      *&v17 = v13 + v15;
      *(&v17 + 1) = v8;
      --v9;
    }

    while (v9);
  }

  if ((a6 & 1) != 0 || v8)
  {
    v16 = v17;

    return llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a2, v16, v8);
  }

  return result;
}

unsigned int *llvm::StringRef::split(unsigned int *result, unsigned int *a2, int __c, int a4, int a5)
{
  v7 = *result;
  v8 = *(result + 1);
  if (!a4)
  {
LABEL_16:
    if ((a5 & 1) == 0 && !v8)
    {
      return result;
    }

    goto LABEL_21;
  }

  v9 = a4;
  while (v8)
  {
    result = memchr(v7, __c, v8);
    if (!result)
    {
      goto LABEL_21;
    }

    v11 = result - v7;
    if (result - v7 == -1)
    {
      goto LABEL_21;
    }

    if (result != v7 || a5)
    {
      if (v11 >= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = result - v7;
      }

      result = llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a2, v7, v12);
    }

    if (v8 >= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = v8;
    }

    v7 = (v7 + v13);
    v8 -= v13;
    if (!--v9)
    {
      goto LABEL_16;
    }
  }

  if (a5)
  {
    v8 = 0;
LABEL_21:

    return llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a2, v7, v8);
  }

  return result;
}

uint64_t llvm::consumeUnsignedInteger(llvm *this, llvm::StringRef *a2, unint64_t *a3, unint64_t *a4)
{
  if (!a2)
  {
    LODWORD(a2) = GetAutoSenseRadix(this);
  }

  v6 = *(this + 1);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = *this;
  *a3 = 0;
  v9 = v6;
  do
  {
    if (*v8 < 48)
    {
      break;
    }

    v10 = *v8;
    if (v10 >= 0x3A)
    {
      if (v10 < 0x61)
      {
        if (v10 - 65 > 0x19)
        {
          break;
        }

        v11 = -55;
      }

      else
      {
        if (v10 >= 0x7B)
        {
          break;
        }

        v11 = -87;
      }
    }

    else
    {
      v11 = -48;
    }

    v12 = v11 + v10;
    if (v12 >= a2)
    {
      break;
    }

    v13 = v7 * a2 + v12;
    *a3 = v13;
    if (v13 / a2 < v7)
    {
      return 1;
    }

    ++v8;
    v7 = v13;
    --v9;
  }

  while (v9);
  if (v6 == v9)
  {
    return 1;
  }

  result = 0;
  *this = v8;
  *(this + 1) = v9;
  return result;
}

uint64_t GetAutoSenseRadix(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 2)
  {
    return 10;
  }

  v3 = *a1;
  if (**a1 == 30768 || *v3 == 22576)
  {
    v4 = v3 + 1;
    v2 = 16;
LABEL_13:
    v6 = -2;
    goto LABEL_14;
  }

  if (*v3 == 25136 || *v3 == 16944)
  {
    v4 = v3 + 1;
    v2 = 2;
    goto LABEL_13;
  }

  if (*v3 == 28464)
  {
    v4 = v3 + 1;
    v2 = 8;
    goto LABEL_13;
  }

  if (*v3 == 48)
  {
    v5 = *(v3 + 1);
    v4 = (v3 + 1);
    if ((v5 - 48) <= 9)
    {
      v2 = 8;
      v6 = -1;
LABEL_14:
      *a1 = v4;
      *(a1 + 8) = v1 + v6;
      return v2;
    }
  }

  return 10;
}

uint64_t llvm::consumeSignedInteger(llvm *this, llvm::StringRef *a2, unint64_t *a3, unint64_t *a4)
{
  v12 = 0;
  v6 = *(this + 1);
  if (v6 && **this == 45)
  {
    *&v11 = *this + 1;
    *(&v11 + 1) = v6 - 1;
    LODWORD(result) = llvm::consumeUnsignedInteger(&v11, a2, &v12, a4);
    v8 = v12;
    if (v12 > 0x8000000000000000)
    {
      result = 1;
    }

    else
    {
      result = result;
    }

    if ((result & 1) == 0)
    {
      *this = v11;
      v9 = -v8;
LABEL_11:
      *a3 = v9;
    }
  }

  else
  {
    v10 = llvm::consumeUnsignedInteger(this, a2, &v12, a4);
    result = 1;
    if ((v10 & 1) == 0)
    {
      v9 = v12;
      if ((v12 & 0x8000000000000000) == 0)
      {
        result = 0;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t llvm::StringRef::getAsInteger(llvm::StringRef *this, unsigned int a2, llvm::APInt *a3)
{
  AutoSenseRadix = a2;
  v28 = *this;
  if (!a2)
  {
    AutoSenseRadix = GetAutoSenseRadix(&v28);
  }

  v5 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    return 1;
  }

  for (i = v28; *i == 48; ++i)
  {
    if (!--v5)
    {
      if (*(a3 + 2) >= 0x41u && *a3)
      {
        MEMORY[0x277C69E10](*a3, 0x1000C8000313F17);
      }

      v7 = 0;
      *a3 = 0;
      *(a3 + 2) = 64;
      return v7;
    }
  }

  v8 = 0;
  do
  {
    v9 = v8;
    v10 = 1 << v8++;
  }

  while (v10 < AutoSenseRadix);
  v11 = *(a3 + 2);
  v12 = v9 * v5 > v11;
  if (v9 * v5 >= v11)
  {
    v11 = v9 * v5;
    if (v12)
    {
      llvm::APInt::zext(a3, v11, &v26);
      if (*(a3 + 2) >= 0x41u && *a3)
      {
        MEMORY[0x277C69E10](*a3, 0x1000C8000313F17);
      }

      *a3 = v26;
      *(a3 + 2) = v27;
    }
  }

  v13 = 1;
  v27 = 1;
  v26 = 0;
  v25 = 1;
  v24 = 0;
  if (v10 == AutoSenseRadix)
  {
    v14 = 0;
  }

  else
  {
    llvm::APInt::APInt(&v22, v11, AutoSenseRadix);
    v14 = v22;
    v26 = v22;
    v15 = v23;
    v27 = v23;
    llvm::APInt::APInt(&v22, v11, 0);
    v24 = v22;
    v25 = v23;
    v13 = v15 < 0x41;
  }

  llvm::APInt::operator=(a3, 0);
  v16 = 0;
  while (i[v16] >= 48)
  {
    v17 = i[v16];
    if (v17 >= 0x3A)
    {
      if (v17 < 0x61)
      {
        if (v17 - 65 > 0x19)
        {
          break;
        }

        v18 = -55;
      }

      else
      {
        if (v17 >= 0x7B)
        {
          break;
        }

        v18 = -87;
      }
    }

    else
    {
      v18 = -48;
    }

    v19 = v18 + v17;
    if (v19 >= AutoSenseRadix)
    {
      break;
    }

    if (v10 == AutoSenseRadix)
    {
      llvm::APInt::operator<<=(a3, v9);
      if (*(a3 + 2) > 0x40u)
      {
        **a3 |= v19;
      }

      else
      {
        *a3 |= v19;
        llvm::APInt::clearUnusedBits(a3);
      }
    }

    else
    {
      llvm::APInt::operator*=(a3, &v26);
      llvm::APInt::operator=(&v24, v19);
      llvm::APInt::operator+=(a3, &v24);
    }

    if (v5 == ++v16)
    {
      v7 = 0;
      goto LABEL_42;
    }
  }

  v7 = 1;
LABEL_42:
  if (v25 >= 0x41 && v24)
  {
    MEMORY[0x277C69E10](v24, 0x1000C8000313F17);
  }

  if (v14)
  {
    v20 = v13;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    MEMORY[0x277C69E10](v14, 0x1000C8000313F17);
  }

  return v7;
}

llvm::APFloat *llvm::APFloat::APFloat(llvm::APFloat *this, double a2)
{
  v7 = 64;
  v6 = *&a2;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(&v4, &v6);
  *(this + 1) = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(this + 8, &v4);
  if ((*(v4 + 8) - 64) <= 0xFFFFFF7F && v5)
  {
    MEMORY[0x277C69E10](v5, 0x1000C8000313F17);
  }

  return this;
}

uint64_t std::string::__init_with_size[abi:nn200100]<llvm::mapped_iterator<char const*,char (*)(char),char>,llvm::mapped_iterator<char const*,char (*)(char),char>>(uint64_t result, char *a2, uint64_t (*a3)(void), char *a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v9 = result;
  if (a6 > 0x16)
  {
    operator new();
  }

  *(result + 23) = a6;
  while (a2 != a4)
  {
    v10 = *a2++;
    result = a3(v10);
    *v9++ = result;
  }

  *v9 = 0;
  return result;
}

void llvm::Twine::str(llvm::formatv_object_base **this@<X0>, uint64_t a2@<X8>)
{
  v17[32] = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  if (v3 == 6)
  {
    if (*(this + 33) == 1)
    {
      v6 = *this;
      v7 = *MEMORY[0x277D85DE8];

      llvm::formatv_object_base::str(v6, a2);
      return;
    }

LABEL_10:
    v15 = v17;
    v16 = xmmword_2750C12F0;
    v8 = llvm::Twine::toStringRef(this, &v15);
    if (v8)
    {
      v10 = v9;
      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      if (v9 >= 0x17)
      {
        operator new();
      }

      *(a2 + 23) = v9;
      if (v9)
      {
        memmove(a2, v8, v9);
      }

      *(a2 + v10) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    if (v15 != v17)
    {
      free(v15);
    }

    goto LABEL_21;
  }

  if (v3 != 4 || *(this + 33) != 1)
  {
    goto LABEL_10;
  }

  v4 = *this;
  if ((*(*this + 23) & 0x80000000) == 0)
  {
    v5 = *v4;
    *(a2 + 16) = *(v4 + 2);
    *a2 = v5;
LABEL_21:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = *v4;
  v13 = *(v4 + 1);
  v14 = *MEMORY[0x277D85DE8];

  std::string::__init_copy_ctor_external(a2, v12, v13);
}

void llvm::formatv_object_base::str(llvm::formatv_object_base *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v4 = &unk_2883EB8F0;
  v12 = a2;
  llvm::raw_ostream::SetUnbuffered(&v4);
  llvm::formatv_object_base::format(this, &v4);
  v3 = v8 - v6;
  if (v8 != v6)
  {
    v8 = v6;
    llvm::raw_ostream::flush_tied_then_write(&v4, v6, v3);
  }

  llvm::raw_ostream::~raw_ostream(&v4);
}

void llvm::Twine::toVector(llvm::Twine *a1, uint64_t a2)
{
  v4 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v3 = &unk_2883EB968;
  v11 = a2;
  llvm::raw_ostream::SetUnbuffered(&v3);
  llvm::Twine::print(a1, &v3);
  llvm::raw_ostream::~raw_ostream(&v3);
}

void llvm::Twine::print(llvm::Twine *this, llvm::raw_ostream *a2)
{
  llvm::Twine::printOneChild(this, a2, *this, *(this + 1), *(this + 32));
  v5 = *(this + 2);
  v6 = *(this + 3);
  v7 = *(this + 33);

  llvm::Twine::printOneChild(v4, a2, v5, v6, v7);
}

const char *llvm::Twine::toNullTerminatedStringRef(uint64_t a1, const char **a2)
{
  if (*(a1 + 33) != 1)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 32);
  if (v3 < 2)
  {
    goto LABEL_7;
  }

  if (v3 != 4)
  {
    if (v3 == 3)
    {
      v4 = *a1;
      if (*a1)
      {
        v5 = strlen(*a1);
      }

      return v4;
    }

LABEL_7:
    llvm::Twine::toVector(a1, a2);
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 0);
    v4 = *a2;
    --a2[1];
    return v4;
  }

  v4 = *a1;
  if ((*(*a1 + 23) & 0x8000000000000000) != 0)
  {
    v4 = *v4;
    v7 = *(*a1 + 8);
  }

  return v4;
}

void llvm::Twine::printOneChild(int a1, llvm::raw_ostream *a2, size_t *this, size_t __n, int a5)
{
  switch(a5)
  {
    case 2:
      llvm::Twine::print(this, a2);
      return;
    case 3:
      llvm::raw_ostream::operator<<(a2, this);
      return;
    case 4:
      v8 = *(this + 23);
      if (v8 >= 0)
      {
        v9 = this;
      }

      else
      {
        v9 = *this;
      }

      if (v8 >= 0)
      {
        v10 = *(this + 23);
      }

      else
      {
        v10 = this[1];
      }

      llvm::raw_ostream::write(a2, v9, v10);
      return;
    case 5:
      llvm::raw_ostream::operator<<(a2, this, __n);
      return;
    case 6:
      llvm::formatv_object_base::format(this, a2);
      return;
    case 7:
      v11 = *(a2 + 4);
      if (v11 >= *(a2 + 3))
      {
        llvm::raw_ostream::write(a2, this);
      }

      else
      {
        *(a2 + 4) = v11 + 1;
        *v11 = this;
      }

      return;
    case 8:
      v6 = this;
      goto LABEL_21;
    case 9:
      v7 = this;
      goto LABEL_15;
    case 10:
    case 12:
      v6 = *this;
LABEL_21:
      write_unsigned<unsigned long>(a2, v6, 0, 0, 0);
      return;
    case 11:
    case 13:
      v7 = *this;
LABEL_15:
      llvm::write_integer(a2, v7, 0, 0);
      break;
    case 14:
      llvm::write_hex(a2, *this, 1, 0, 0);
      break;
    default:
      return;
  }
}

llvm::raw_ostream *llvm::reportInvalidSizeRequest(llvm *this, const char *a2)
{
  if (!atomic_load_explicit(&ScalableErrorAsWarning, memory_order_acquire))
  {
  }

  if (*(ScalableErrorAsWarning + 128) != 1)
  {
    llvm::report_fatal_error("Invalid size request on a scalable vector.", 1);
  }

  v3 = llvm::errs(this);
  v4 = llvm::WithColor::warning(v3, &str_1_7, 0, 0);
  v5 = *(v4 + 4);
  if (*(v4 + 3) - v5 > 0x2AuLL)
  {
    qmemcpy(v5, "Invalid size request on a scalable vector; ", 43);
    *(v4 + 4) += 43;
  }

  else
  {
    v4 = llvm::raw_ostream::write(v4, "Invalid size request on a scalable vector; ", 0x2BuLL);
  }

  result = llvm::raw_ostream::operator<<(v4, this);
  v7 = *(result + 4);
  if (*(result + 3) == v7)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v7 = 10;
    ++*(result + 4);
  }

  return result;
}

BOOL llvm::sys::UnicodeCharSet::contains(llvm::sys::UnicodeCharSet *this, unsigned int a2)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = *this + 8 * v3;
  while (v3)
  {
    v5 = v3 >> 1;
    v6 = &v2[2 * (v3 >> 1)];
    v7 = v6[1];
    v8 = v6 + 2;
    v3 += ~(v3 >> 1);
    if (v7 < a2)
    {
      v2 = v8;
    }

    else
    {
      v3 = v5;
    }
  }

  return v2 != v4 && *v2 <= a2;
}

uint64_t llvm::sys::unicode::columnWidthUTF8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    LODWORD(v4) = 0;
    v5 = 0;
    while (1)
    {
      v6 = (a1 + v5);
      v7 = llvm::trailingBytesForUTF8[*(a1 + v5)];
      if (llvm::trailingBytesForUTF8[*(a1 + v5)])
      {
        if (v7 == 255)
        {
          return 4294967294;
        }

        v8 = (v7 + 1);
        v5 += v8;
        if (v5 > a2)
        {
          return 4294967294;
        }

        v12 = &v14;
        v13 = v6;
        if (llvm::ConvertUTF8toUTF32Impl(&v13, &v6[v8], &v12, &v15, 0, 0))
        {
          return 4294967294;
        }

        v9 = v14;
        if (v14 != 173 && !llvm::sys::UnicodeCharSet::contains(&llvm::sys::unicode::isPrintable(int)::Printables, v14))
        {
          return 0xFFFFFFFFLL;
        }

        if (llvm::sys::UnicodeCharSet::contains(&llvm::sys::unicode::charWidth(int)::CombiningCharacters, v9))
        {
          v10 = 0;
        }

        else if (llvm::sys::UnicodeCharSet::contains(&llvm::sys::unicode::charWidth(int)::DoubleWidthCharacters, v9))
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        v4 = (v10 + v4);
      }

      else
      {
        if (*(a1 + v5) - 32 > 0x5E)
        {
          return 0xFFFFFFFFLL;
        }

        v4 = (v4 + 1);
        ++v5;
      }

      if (v5 >= a2)
      {
        return v4;
      }
    }
  }

  return 0;
}

void llvm::VersionTuple::getAsString(llvm::VersionTuple *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v3 = &unk_2883EB8F0;
  v11 = a2;
  llvm::raw_ostream::SetUnbuffered(&v3);
  llvm::operator<<(&v3, this);
  llvm::raw_ostream::~raw_ostream(&v3);
}

llvm::raw_ostream *llvm::operator<<(llvm::raw_ostream *a1, void *a2)
{
  write_unsigned<unsigned long>(a1, *a2, 0, 0, 0);
  if ((*a2 & 0x8000000000000000) != 0)
  {
    v4 = HIDWORD(*a2) & 0x7FFFFFFFLL;
    v5 = *(a1 + 4);
    if (v5 >= *(a1 + 3))
    {
      llvm::raw_ostream::write(a1, 46);
    }

    else
    {
      *(a1 + 4) = v5 + 1;
      *v5 = 46;
    }

    write_unsigned<unsigned long>(a1, v4, 0, 0, 0);
  }

  v6 = a2[1];
  if ((v6 & 0x80000000) != 0)
  {
    v7 = *(a1 + 4);
    if (v7 >= *(a1 + 3))
    {
      llvm::raw_ostream::write(a1, 46);
    }

    else
    {
      *(a1 + 4) = v7 + 1;
      *v7 = 46;
    }

    write_unsigned<unsigned long>(a1, v6 & 0x7FFFFFFF, 0, 0, 0);
    v6 = a2[1];
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    v8 = *(a1 + 4);
    if (v8 >= *(a1 + 3))
    {
      llvm::raw_ostream::write(a1, 46);
    }

    else
    {
      *(a1 + 4) = v8 + 1;
      *v8 = 46;
    }

    write_unsigned<unsigned long>(a1, HIDWORD(v6) & 0x7FFFFFFF, 0, 0, 0);
  }

  return a1;
}

uint64_t llvm::VersionTuple::tryParse(unint64_t *a1, unsigned __int8 *a2, unint64_t a3)
{
  v10 = a2;
  v11 = a3;
  v8 = 0;
  v9 = 0;
  if (parseInt(&v10, &v9 + 1))
  {
    return 1;
  }

  v4 = v11;
  if (!v11)
  {
    v7 = HIDWORD(v9);
    goto LABEL_15;
  }

  if (*v10 != 46)
  {
    return 1;
  }

  ++v10;
  --v11;
  if (parseInt(&v10, &v9))
  {
    return 1;
  }

  v4 = v11;
  if (!v11)
  {
    v7 = HIDWORD(v9) | (v9 << 32) | 0x8000000000000000;
    goto LABEL_15;
  }

  if (*v10 != 46)
  {
    return 1;
  }

  ++v10;
  --v11;
  if (parseInt(&v10, &v8 + 1))
  {
    return 1;
  }

  if (!v11)
  {
    v7 = HIDWORD(v9) | (v9 << 32) | 0x8000000000000000;
    v4 = HIDWORD(v8) | 0x80000000;
    goto LABEL_15;
  }

  if (*v10 != 46)
  {
    return 1;
  }

  ++v10;
  --v11;
  v5 = parseInt(&v10, &v8);
  result = 1;
  if ((v5 & 1) == 0 && !v11)
  {
    v7 = HIDWORD(v9) | (v9 << 32) | 0x8000000000000000;
    v4 = HIDWORD(v8) | (v8 << 32) | 0x8000000080000000;
LABEL_15:
    result = 0;
    *a1 = v7;
    a1[1] = v4;
  }

  return result;
}

uint64_t parseInt(unsigned __int8 **a1, int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 1;
  }

  v3 = *a1;
  v4 = *a1 + 1;
  v5 = **a1;
  *a1 = v4;
  a1[1] = v2 - 1;
  if ((v5 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v7 = v5 - 48;
  *a2 = v7;
  if (v2 != 1)
  {
    v8 = (v3 + 2);
    v9 = v2 - 2;
    do
    {
      v10 = *v4;
      if ((v10 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      ++v4;
      *a1 = v8;
      a1[1] = v9;
      v7 = v10 + 10 * v7 - 48;
      *a2 = v7;
      ++v8;
      --v9;
    }

    while (v9 != -1);
  }

  return 0;
}

void *llvm::vfs::FileSystem::getBufferForFile@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 24))(v20);
  if ((v21 & 1) == 0)
  {
    if (a6)
    {
      result = (*(*v20[0] + 40))(&v17);
      if (v19)
      {
        v14 = v17;
        v15 = v18;
        goto LABEL_6;
      }

      *a6 = v17;
      *(a6 + 8) = v18;
    }

    result = (*(*v20[0] + 32))(v20[0], a2, a3, a4, a5);
    goto LABEL_9;
  }

  v14 = v20[0];
  v15 = v20[1];
LABEL_6:
  *(a7 + 16) |= 1u;
  *a7 = v14;
  *(a7 + 8) = v15;
LABEL_9:
  if ((v21 & 1) == 0)
  {
    result = v20[0];
    v20[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::vector<llvm::StringRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>(result, a2);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void llvm::sys::fs::directory_iterator::directory_iterator(llvm::sys::fs::directory_iterator *this, const llvm::Twine *a2, std::error_code *a3, char a4)
{
  v4 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = a4;
  operator new();
}

void std::__shared_ptr_emplace<llvm::sys::fs::detail::DirIterState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EB3B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::sys::fs::detail::DirIterState::~DirIterState(void **this)
{
  llvm::sys::fs::detail::directory_iterator_destruct(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

BOOL llvm::sys::fs::directory_iterator::operator==(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    return 1;
  }

  if (!v3)
  {
    *__p = 0u;
    v8 = 0u;
    DWORD2(v8) = 9;
    BYTE12(v8) = 1;
    v9 = 0u;
    memset(v10, 0, sizeof(v10));
    v11 = 0xFFFF;
    v6 = (v2 + 8);
    goto LABEL_10;
  }

  if (!v2)
  {
    *__p = 0u;
    v8 = 0u;
    DWORD2(v8) = 9;
    BYTE12(v8) = 1;
    v9 = 0u;
    memset(v10, 0, sizeof(v10));
    v11 = 0xFFFF;
    v6 = (v3 + 8);
LABEL_10:
    v5 = llvm::sys::fs::directory_entry::operator==(v6, __p);
    if (SBYTE7(v8) < 0)
    {
      operator delete(__p[0]);
    }

    return v5;
  }

  return llvm::sys::fs::directory_entry::operator==((v2 + 8), (v3 + 8));
}

BOOL llvm::sys::fs::directory_entry::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void llvm::FileError::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = 0;
  *a4 = 0;
  v4 = &v6;
  llvm::handleAllErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(&v5, &v4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator new();
}

uint64_t llvm::handleAllErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(uint64_t *a1, uint64_t **a2)
{
  v3 = *a1;
  *a1 = 0;
  llvm::handleErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(&v3, a2, &v4);
  result = v3;
  if (v3)
  {
    return (*(*v3 + 8))(v3);
  }

  return result;
}

uint64_t llvm::handleErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>@<X0>(uint64_t result@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, &llvm::ErrorList::ID))
    {
      *a3 = 0;
      v6 = v4[1];
      v7 = v4[2];
      if (v6 != v7)
      {
        v8 = 0;
        do
        {
          v14 = v8;
          v9 = *v6;
          *v6 = 0;
          v12 = v9;
          llvm::handleErrorImpl<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(&v12, a2, &v13);
          llvm::ErrorList::join(&v14, &v13, &v15);
          v8 = v15;
          *a3 = v15;
          v15 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          v10 = v12;
          v12 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          if (v14)
          {
            (*(*v14 + 8))(v14);
          }

          ++v6;
        }

        while (v6 != v7);
      }

      return (*(*v4 + 8))(v4);
    }

    else
    {
      v11 = v4;
      llvm::handleErrorImpl<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(&v11, a2, a3);
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t llvm::handleErrorImpl<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(**a1 + 48))(*a1, &llvm::ErrorInfoBase::ID);
  v7 = *a1;
  *a1 = 0;
  if (result)
  {
    result = **a2;
    **a2 = v7;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v7 = 0;
  }

  *a3 = v7;
  return result;
}

uint64_t llvm::FileError::FileError(uint64_t a1, llvm::formatv_object_base **this, uint64_t a3, char a4, uint64_t *a5)
{
  *(a1 + 8) = 0;
  v9 = a1 + 8;
  *a1 = &unk_2883EAEB0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  llvm::Twine::str(this, &v13);
  if (*(a1 + 31) < 0)
  {
    operator delete(*v9);
  }

  *v9 = v13;
  *(v9 + 16) = v14;
  v10 = *a5;
  *a5 = 0;
  v11 = *(a1 + 48);
  *(a1 + 48) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  return a1;
}

unint64_t **llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3)
{
  v6 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v6);
  v8 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v8)
  {
    while (!v8 || v8 == -8)
    {
      v9 = i[1];
      ++i;
      v8 = v9;
    }

    return i;
  }

  v10 = operator new(a3 + 9, 8uLL);
  v11 = v10;
  v12 = (v10 + 1);
  if (a3)
  {
    memcpy(v10 + 1, a2, a3);
  }

  v12[a3] = 0;
  *v11 = a3;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t DefaultAutoDetectFunction(const llvm::raw_ostream *a1)
{
  if (!atomic_load_explicit(UseColor, memory_order_acquire))
  {
  }

  if (*(UseColor[0] + 128))
  {
    if (!atomic_load_explicit(UseColor, memory_order_acquire))
    {
    }

    return *(UseColor[0] + 128) == 1;
  }

  else
  {
    v3 = *(*a1 + 56);

    return v3(a1);
  }
}

llvm::raw_ostream *llvm::WithColor::error(llvm::raw_ostream *a1, const void *a2, size_t a3, int a4)
{
  if (!a3)
  {
LABEL_4:
    if (a4)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v6 = llvm::raw_ostream::operator<<(a1, a2, a3);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 <= 1uLL)
  {
    llvm::raw_ostream::write(v6, ": ", 2uLL);
    goto LABEL_4;
  }

  *v7 = 8250;
  *(v6 + 4) += 2;
  if (a4)
  {
LABEL_5:
    v8 = *(a1 + 4);
    if (*(a1 + 3) - v8 > 6uLL)
    {
      *(v8 + 3) = 540701295;
      *v8 = 1869771365;
      *(a1 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(a1, "error: ", 7uLL);
    }

    return a1;
  }

LABEL_8:
  if (llvm::WithColor::AutoDetectFunction(a1))
  {
    (*(*a1 + 24))(a1, 1, 1, 0);
  }

  v9 = *(a1 + 4);
  if (*(a1 + 3) - v9 > 6uLL)
  {
    *(v9 + 3) = 540701295;
    *v9 = 1869771365;
    *(a1 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(a1, "error: ", 7uLL);
  }

  if (llvm::WithColor::AutoDetectFunction(a1))
  {
    (*(*a1 + 32))(a1);
  }

  return a1;
}

llvm::raw_ostream *llvm::WithColor::warning(llvm::raw_ostream *a1, const void *a2, size_t a3, int a4)
{
  if (!a3)
  {
LABEL_4:
    if (a4)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v6 = llvm::raw_ostream::operator<<(a1, a2, a3);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 <= 1uLL)
  {
    llvm::raw_ostream::write(v6, ": ", 2uLL);
    goto LABEL_4;
  }

  *v7 = 8250;
  *(v6 + 4) += 2;
  if (a4)
  {
LABEL_5:
    v8 = *(a1 + 4);
    if ((*(a1 + 3) - v8) > 8)
    {
      *(v8 + 8) = 32;
      *v8 = *"warning: ";
      *(a1 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(a1, "warning: ", 9uLL);
    }

    return a1;
  }

LABEL_8:
  if (llvm::WithColor::AutoDetectFunction(a1))
  {
    (*(*a1 + 24))(a1, 5, 1, 0);
  }

  v9 = *(a1 + 4);
  if ((*(a1 + 3) - v9) > 8)
  {
    *(v9 + 8) = 32;
    *v9 = *"warning: ";
    *(a1 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(a1, "warning: ", 9uLL);
  }

  if (llvm::WithColor::AutoDetectFunction(a1))
  {
    (*(*a1 + 32))(a1);
  }

  return a1;
}

llvm::raw_ostream *llvm::WithColor::note(llvm::raw_ostream *a1, const void *a2, size_t a3, int a4)
{
  if (!a3)
  {
LABEL_4:
    if (a4)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v6 = llvm::raw_ostream::operator<<(a1, a2, a3);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 <= 1uLL)
  {
    llvm::raw_ostream::write(v6, ": ", 2uLL);
    goto LABEL_4;
  }

  *v7 = 8250;
  *(v6 + 4) += 2;
  if (a4)
  {
LABEL_5:
    v8 = *(a1 + 4);
    if ((*(a1 + 3) - v8) > 5)
    {
      *(v8 + 4) = 8250;
      *v8 = 1702129518;
      *(a1 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(a1, "note: ", 6uLL);
    }

    return a1;
  }

LABEL_8:
  if (llvm::WithColor::AutoDetectFunction(a1))
  {
    (*(*a1 + 24))(a1, 0, 1, 0);
  }

  v9 = *(a1 + 4);
  if ((*(a1 + 3) - v9) > 5)
  {
    *(v9 + 4) = 8250;
    *v9 = 1702129518;
    *(a1 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(a1, "note: ", 6uLL);
  }

  if (llvm::WithColor::AutoDetectFunction(a1))
  {
    (*(*a1 + 32))(a1);
  }

  return a1;
}

llvm::raw_ostream *llvm::WithColor::remark(llvm::raw_ostream *a1, const void *a2, size_t a3, int a4)
{
  if (!a3)
  {
LABEL_4:
    if (a4)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v6 = llvm::raw_ostream::operator<<(a1, a2, a3);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 <= 1uLL)
  {
    llvm::raw_ostream::write(v6, ": ", 2uLL);
    goto LABEL_4;
  }

  *v7 = 8250;
  *(v6 + 4) += 2;
  if (a4)
  {
LABEL_5:
    v8 = *(a1 + 4);
    if (*(a1 + 3) - v8 > 7uLL)
    {
      *v8 = 0x203A6B72616D6572;
      *(a1 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(a1, "remark: ", 8uLL);
    }

    return a1;
  }

LABEL_8:
  if (llvm::WithColor::AutoDetectFunction(a1))
  {
    (*(*a1 + 24))(a1, 4, 1, 0);
  }

  v9 = *(a1 + 4);
  if (*(a1 + 3) - v9 > 7uLL)
  {
    *v9 = 0x203A6B72616D6572;
    *(a1 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(a1, "remark: ", 8uLL);
  }

  if (llvm::WithColor::AutoDetectFunction(a1))
  {
    (*(*a1 + 32))(a1);
  }

  return a1;
}

uint64_t llvm::object_deleter<llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v11 = 0;
  v8 = llvm::cl::parser<llvm::cl::BOOLOrDefault>::parse((a1 + 152), a1, a3, a4, a5, a6, &v11);
  if (v8)
  {
    return v8;
  }

  *(a1 + 128) = v11;
  *(a1 + 12) = a2;
  v9 = *(a1 + 184);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v11);
    return v8;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::getValueExpectedFlagDefault();
}

void llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883EB3F0;
  std::__function::__value_func<void ()(llvm::cl::BOOLOrDefault const&)>::~__value_func[abi:nn200100](a1 + 160);

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EB3F0;
  std::__function::__value_func<void ()(llvm::cl::BOOLOrDefault const&)>::~__value_func[abi:nn200100](a1 + 160);
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::printOptionValue(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v3 = *(a1 + 128);
LABEL_3:
    v5 = *(a1 + 144);
    v6 = *(a1 + 148);
    v4 = &unk_2883EA808;
    llvm::cl::parser<llvm::cl::BOOLOrDefault>::printOptionDiff((a1 + 152), a1, v3, &v4, a2);
    return;
  }

  if (*(a1 + 148) == 1)
  {
    v3 = *(a1 + 128);
    if (*(a1 + 144) != v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    v1 = *(result + 144);
  }

  else
  {
    v1 = 0;
  }

  *(result + 128) = v1;
  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::cl::BOOLOrDefault const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::yaml::Scanner::getNext(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  v4 = llvm::yaml::Scanner::peekNext(this);
  v5 = *v4;
  *(a2 + 16) = v4[2];
  *a2 = v5;
  if (*(v4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 24), v4[3], v4[4]);
  }

  else
  {
    v6 = *(v4 + 3);
    *(a2 + 40) = v4[5];
    *(a2 + 24) = v6;
  }

  v8 = this[22];
  v7 = (this + 22);
  if (v8 == v7 || (llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::pop_front((v7 - 12)), *v7 == v7))
  {

    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset((v7 - 12));
  }
}

uint64_t decodeUTF8(char *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    goto LABEL_23;
  }

  v2 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v3 = 0x100000000;
    v4 = *a1;
    return v3 | v4;
  }

  if (a2 == 1)
  {
    goto LABEL_23;
  }

  if ((v2 & 0xE0) == 0xC0)
  {
    v5 = a1[1];
    v6 = v2 & 0x1F;
    if ((v5 & 0xC0) == 0x80 && v6 >= 2)
    {
      v4 = v5 & 0x3F | (v6 << 6);
      v3 = 0x200000000;
      return v3 | v4;
    }
  }

  if (a2 < 3)
  {
LABEL_23:
    v4 = 0;
    v3 = 0;
    return v3 | v4;
  }

  if ((v2 & 0xF0) != 0xE0 || (v8 = a1[1], (v8 & 0xC0) != 0x80) || (v9 = a1[2], (v9 & 0xC0) != 0x80) || (v10 = ((v2 & 0xF) << 12) | ((v8 & 0x3F) << 6), v10 < 0x800) || (v4 = v10 | v9 & 0x3F, v3 = 0x300000000, (v2 & 0xFu) <= 0xD) && v10 >> 11 >= 0x1B)
  {
    v3 = 0;
    v4 = 0;
    if (a2 != 3 && (v2 & 0xF8) == 0xF0)
    {
      v11 = a1[1];
      if ((v11 & 0xC0) == 0x80)
      {
        v12 = a1[2];
        if ((v12 & 0xC0) == 0x80)
        {
          v13 = a1[3];
          if ((v13 & 0xC0) == 0x80)
          {
            v14 = ((v2 & 7) << 18) | ((v11 & 0x3F) << 12);
            if ((v14 - 1114112) >= 0xFFF00000)
            {
              v4 = v13 & 0x3F | ((v12 & 0x3F) << 6) | v14;
              v3 = 0x400000000;
              return v3 | v4;
            }
          }
        }
      }

      goto LABEL_23;
    }
  }

  return v3 | v4;
}

void *encodeUTF8(void *result, void *a2)
{
  if (result > 0x7F)
  {
    if (result > 0x7FF)
    {
      if (result >> 16)
      {
        if (result >> 16 > 0x10)
        {
          return result;
        }

        v6 = (result >> 12) & 0x3F | 0xFFFFFF80;
        v7 = (result >> 6) & 0x3F | 0xFFFFFF80;
        v8 = result & 0x3F | 0x80;
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, (result >> 18) | 0xF0);
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v6);
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v7);
        LOBYTE(result) = v8;
      }

      else
      {
        v4 = (result >> 6) & 0x3F | 0xFFFFFF80;
        v5 = result & 0x3F | 0x80;
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, (result >> 12) | 0xE0);
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v4);
        LOBYTE(result) = v5;
      }
    }

    else
    {
      v3 = result & 0x3F | 0x80;
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, (result >> 6) | 0xC0);
      LOBYTE(result) = v3;
    }
  }

  return llvm::SmallVectorTemplateBase<char,true>::push_back(a2, result);
}

uint64_t llvm::yaml::Scanner::Scanner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *a1 = a4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 75) = a5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = 0x400000000;
  *(a1 + 160) = 0;
  *(a1 + 144) = a1 + 160;
  *(a1 + 152) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = a1 + 176;
  *(a1 + 184) = a1 + 176;
  *(a1 + 192) = a1 + 208;
  *(a1 + 200) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 336) = a6;
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = "YAML";
  v8[3] = 4;
  llvm::yaml::Scanner::init(a1, v8);
  return a1;
}

void llvm::yaml::Scanner::init(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 1);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 8);
  v5 = v4 + *(a1 + 16);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = xmmword_2750C3CE0;
  *(a1 + 72) = 257;
  *(a1 + 74) = 0;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v15 = 261;
  v12 = v8;
  v13 = v9;
  v16 = &v12;
  v10 = operator new(24, &v16);
  *v10 = &unk_2883EB078;
  *(v10 + 1) = v6;
  *(v10 + 2) = v6 + v7;
  v11 = *a1;
  v13 = 0;
  v14 = 0;
  v12 = v10;
  std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](v11, &v12);
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v12);
}

uint64_t *llvm::yaml::Scanner::peekNext(uint64_t **this)
{
  v2 = 0;
  v3 = (this + 22);
  while ((v2 & 1) == 0 && *v3 != v3 || (llvm::yaml::Scanner::fetchMoreTokens(this) & 1) != 0)
  {
    llvm::yaml::Scanner::removeStaleSimpleKeyCandidates(this);
    v4 = this[23];
    v5 = *(this + 58);
    if (v5)
    {
      v6 = 24 * v5;
      for (i = this[28]; *i != v4; i += 3)
      {
        v6 -= 24;
        if (!v6)
        {
          return v4 + 2;
        }
      }
    }

    else
    {
      i = this[28];
    }

    v2 = 1;
    if (i == &this[28][3 * v5])
    {
      return v4 + 2;
    }
  }

  llvm::simple_ilist<llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Node>::eraseAndDispose<llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Disposer>(v3, this[23], v3);
  *(this + 58) = 0;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 10), 64, 3);
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  v9 = this[22];
  *v8 = v9;
  *(v8 + 8) = v3;
  v9[1] = v8;
  this[22] = v8;
  v4 = this[23];
  return v4 + 2;
}

uint64_t llvm::yaml::Scanner::fetchMoreTokens(llvm::yaml::Scanner *this)
{
  if (*(this + 72) == 1)
  {
    *(this + 72) = 0;
    v2 = *(this + 5);
    v3 = *(this + 6) - v2;
    if (!v3)
    {
      goto LABEL_76;
    }

    v4 = 0;
    v5 = *v2;
    if (v5 <= 0xFD)
    {
      if (*v2)
      {
        if (v5 != 239)
        {
LABEL_77:
          memset(&v64[3], 0, 24);
          v20 = 1;
          LODWORD(v64[0]) = 1;
          v64[1] = v2;
          v64[2] = v4;
          v33 = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, v64);
          v35 = *(this + 22);
          v34 = (this + 176);
          *v33 = v35;
          v33[1] = v34;
          *(v35 + 8) = v33;
          *v34 = v33;
          *(v34 - 17) += v4;
          return v20;
        }

        if (v3 >= 3 && v2[1] == 187 && v2[2] == 191)
        {
          v4 = 3;
          goto LABEL_77;
        }

        goto LABEL_76;
      }

      if (v3 < 4)
      {
        if (v3 != 1)
        {
          v32 = v2[1];
        }

        goto LABEL_76;
      }

      if (v2[1])
      {
LABEL_76:
        v4 = 0;
        goto LABEL_77;
      }

      if (!v2[2])
      {
        v55 = v2[3];
        goto LABEL_76;
      }

      if (v2[2] != 254 || v2[3] != 255)
      {
        goto LABEL_76;
      }

LABEL_51:
      v4 = 4;
      goto LABEL_77;
    }

    if (v5 == 254)
    {
      if (v3 == 1 || v2[1] != 255)
      {
        goto LABEL_76;
      }
    }

    else if (v3 < 4)
    {
      if (v3 == 1 || v2[1] != 254)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if (v2[1] != 254)
      {
        goto LABEL_76;
      }

      if (!v2[2] && !v2[3])
      {
        goto LABEL_51;
      }
    }

    v4 = 2;
    goto LABEL_77;
  }

  v7 = *(this + 5);
  v6 = *(this + 6);
  while (1)
  {
    while (v7 != v6)
    {
      v8 = *v7;
      v9 = v8 == 32 || v8 == 9;
      if (!v9)
      {
        break;
      }

      *(this + 5) = ++v7;
      ++*(this + 15);
    }

    llvm::yaml::Scanner::skipComment(this);
    v10 = *(this + 5);
    v6 = *(this + 6);
    if (v6 == v10)
    {
      if (*(this + 15))
      {
        v16 = *(this + 16) + 1;
        *(this + 15) = 0;
        *(this + 16) = v16;
      }

      llvm::yaml::Scanner::unrollIndent(this, -1);
      *(this + 58) = 0;
      *(this + 73) = 0;
      LODWORD(v64[0]) = 2;
      v64[1] = *(this + 5);
      memset(&v64[2], 0, 32);
LABEL_31:
      v17 = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, v64);
      v19 = *(this + 22);
      v18 = (this + 176);
      *v17 = v19;
      v17[1] = v18;
      *(v19 + 8) = v17;
      *v18 = v17;
      return 1;
    }

    v11 = *v10;
    if (v11 == 10)
    {
      v7 = v10 + 1;
      goto LABEL_26;
    }

    if (v11 != 13)
    {
      break;
    }

    v7 = v10 + 1;
    if (v10 + 1 != v6)
    {
      v12 = v10[1];
      v13 = v10 + 2;
      if (v12 == 10)
      {
        v7 = v13;
      }
    }

LABEL_26:
    *(this + 5) = v7;
    v14 = *(this + 17);
    v15 = *(this + 16) + 1;
    *(this + 15) = 0;
    *(this + 16) = v15;
    if (!v14)
    {
      *(this + 73) = 1;
    }
  }

  llvm::yaml::Scanner::removeStaleSimpleKeyCandidates(this);
  llvm::yaml::Scanner::unrollIndent(this, *(this + 15));
  v21 = *(this + 5);
  v22 = *v21;
  if (*(this + 15))
  {
    goto LABEL_34;
  }

  if (v22 != 37)
  {
    v37 = *(this + 6);
    if ((v21 + 4) > v37)
    {
LABEL_34:
      if (*v21 <= 0x39u)
      {
        if (*v21 <= 0x26u)
        {
          if (v22 == 33)
          {
            goto LABEL_125;
          }

          if (v22 == 34)
          {
LABEL_111:
            v39 = this;
            v40 = 1;
LABEL_181:

            return llvm::yaml::Scanner::scanFlowScalar(v39, v40);
          }

          if (v22 != 38)
          {
            goto LABEL_191;
          }

LABEL_89:
          v30 = this;
          v31 = 0;
          goto LABEL_90;
        }

        if (*v21 <= 0x2Bu)
        {
          if (v22 == 39)
          {
LABEL_180:
            v39 = this;
            v40 = 0;
            goto LABEL_181;
          }

          if (v22 != 42)
          {
LABEL_191:
            v63[0] = *(this + 5);
            v63[1] = 1;
            v57 = *(this + 6);
            if (v57 != v21 && v22 <= 0x20 && ((1 << v22) & 0x100002600) != 0)
            {
              goto LABEL_200;
            }

            {
              if (v22 != 45)
              {
                goto LABEL_200;
              }

              if (v57 != v21 + 1)
              {
                v58 = v21[1];
                if (v58 <= 0x20 && ((1 << v58) & 0x100002600) != 0)
                {
                  v22 = 45;
LABEL_200:
                  if (*(this + 17) || v22 != 63 && v22 != 58 || ((v59 = v21 + 1, v57 == v21 + 1) || (v60 = *v59, v60 > 0x20) || ((1 << v60) & 0x100002600) == 0) && (v22 != 58 || (v21 + 2) >= v57 || *v59 != 58 || (v61 = v21[2], v61 <= 0x20) && ((1 << v61) & 0x100002600) != 0))
                  {
                    v64[0] = "Unrecognized character while tokenizing.";
                    LOWORD(v64[4]) = 259;
                    llvm::yaml::Scanner::setError(this, v64, v21);
                    return 0;
                  }
                }
              }
            }

            return llvm::yaml::Scanner::scanPlainScalar(this);
          }

          goto LABEL_66;
        }

        if (v22 == 44)
        {
          goto LABEL_175;
        }

        if (v22 != 45)
        {
          goto LABEL_191;
        }

        v37 = *(this + 6);
LABEL_106:
        if (v37 != v21 + 1)
        {
          v38 = v21[1];
          if (v38 <= 0x20 && ((1 << v38) & 0x100002600) != 0)
          {
            llvm::yaml::Scanner::scanBlockEntry(this);
            return 1;
          }
        }

        goto LABEL_191;
      }
    }

    else if (*v21 <= 0x39u)
    {
      if (*v21 <= 0x29u)
      {
        if (*v21 <= 0x25u)
        {
          if (v22 != 33)
          {
            if (v22 != 34)
            {
              goto LABEL_191;
            }

            goto LABEL_111;
          }

LABEL_125:

          return llvm::yaml::Scanner::scanTag(this);
        }

        if (v22 != 38)
        {
          if (v22 == 39)
          {
            goto LABEL_180;
          }

          goto LABEL_191;
        }

        goto LABEL_89;
      }

      if (*v21 <= 0x2Cu)
      {
        if (v22 != 42)
        {
          if (v22 != 44)
          {
            goto LABEL_191;
          }

LABEL_175:
          llvm::yaml::Scanner::scanFlowEntry(this);
          return 1;
        }

LABEL_66:
        v30 = this;
        v31 = 1;
LABEL_90:

        return llvm::yaml::Scanner::scanAliasOrAnchor(v30, v31);
      }

      if (v22 != 45)
      {
        if (v22 == 46 && v21[1] == 46 && v21[2] == 46)
        {
          v56 = v21[3];
          if (v56 <= 0x20 && ((1 << v56) & 0x100002600) != 0)
          {
            llvm::yaml::Scanner::scanDocumentIndicator(this, 0);
            return 1;
          }
        }

        goto LABEL_191;
      }

      if (v21[1] == 45 && v21[2] == 45)
      {
        v62 = v21[3];
        if (v62 <= 0x20 && ((1 << v62) & 0x100002600) != 0)
        {
          v20 = 1;
          llvm::yaml::Scanner::scanDocumentIndicator(this, 1);
          return v20;
        }
      }

      goto LABEL_106;
    }

    if (*v21 > 0x5Cu)
    {
      if (*v21 <= 0x7Bu)
      {
        if (v22 == 93)
        {
          v20 = 1;
          llvm::yaml::Scanner::scanFlowCollectionEnd(this, 1);
          return v20;
        }

        if (v22 == 123)
        {
          llvm::yaml::Scanner::scanFlowCollectionStart(this, 0);
          return 1;
        }

        goto LABEL_191;
      }

      if (v22 != 124)
      {
        if (v22 == 125)
        {
          llvm::yaml::Scanner::scanFlowCollectionEnd(this, 0);
          return 1;
        }

        goto LABEL_191;
      }
    }

    else
    {
      if (*v21 > 0x3Eu)
      {
        if (v22 == 63)
        {
          if (*(this + 17) || *(this + 6) != v21 + 1 && (v42 = v21[1], v42 <= 0x20) && ((1 << v42) & 0x100002600) != 0)
          {
            llvm::yaml::Scanner::scanKey(this);
            return 1;
          }
        }

        else if (v22 == 91)
        {
          v20 = 1;
          llvm::yaml::Scanner::scanFlowCollectionStart(this, 1);
          return v20;
        }

        goto LABEL_191;
      }

      if (v22 == 58)
      {
        if (*(this + 17) || *(this + 6) != v21 + 1 && (v41 = v21[1], v41 <= 0x20) && ((1 << v41) & 0x100002600) != 0)
        {

          return llvm::yaml::Scanner::scanValue(this);
        }

        goto LABEL_191;
      }

      if (v22 != 62)
      {
        goto LABEL_191;
      }
    }

    if (!*(this + 17))
    {

      return llvm::yaml::Scanner::scanBlockScalar(this);
    }

    goto LABEL_191;
  }

  llvm::yaml::Scanner::unrollIndent(this, -1);
  *(this + 58) = 0;
  *(this + 73) = 0;
  v23 = *(this + 5);
  llvm::yaml::Scanner::consume(this, 37);
  v25 = *(this + 5);
  v24 = *(this + 6);
  v26 = v25;
  while (1)
  {
    v27 = v26;
    if (v24 == v26)
    {
      break;
    }

    v28 = *v26;
    if (v28 == 9 || v28 == 32)
    {
      v29 = v26;
      goto LABEL_129;
    }

    v26 = llvm::yaml::Scanner::skip_nb_char(v24, v26);
    v29 = v27;
    if (v26 == v27)
    {
      goto LABEL_129;
    }
  }

  v29 = v24;
LABEL_129:
  *(this + 5) = v26;
  if (v24 != v26)
  {
    while (1)
    {
      v43 = *v26;
      if (v43 != 32 && v43 != 9)
      {
        break;
      }

      v26 = (v26 + 1);
      if (v26 == v24)
      {
        v26 = v24;
        break;
      }
    }
  }

  v45 = v29 - v25;
  *(this + 5) = v26;
  LODWORD(v64[0]) = 0;
  memset(&v64[1], 0, 40);
  if (v45 == 3)
  {
    if (*v25 != 16724 || *(v25 + 2) != 71)
    {
      return 0;
    }

    while (v24 != v26)
    {
      v50 = *v26;
      if (v50 == 9 || v50 == 32)
      {
        break;
      }

      v51 = llvm::yaml::Scanner::skip_nb_char(v24, v26);
      v9 = v51 == v26;
      v26 = v51;
      if (v9)
      {
        goto LABEL_157;
      }
    }

    v51 = v26;
LABEL_157:
    *(this + 5) = v51;
    if (v24 != v51)
    {
      while (1)
      {
        v52 = *v51;
        if (v52 != 32 && v52 != 9)
        {
          break;
        }

        if (++v51 == v24)
        {
          v51 = v24;
          break;
        }
      }
    }

    *(this + 5) = v51;
    v26 = v51;
    while (1)
    {
      v48 = v26;
      if (v24 == v26)
      {
        break;
      }

      v54 = *v26;
      v47 = 4;
      if (v54 == 9 || v54 == 32)
      {
LABEL_176:
        v26 = v48;
        goto LABEL_177;
      }

      v26 = llvm::yaml::Scanner::skip_nb_char(v24, v26);
      if (v26 == v48)
      {
        v47 = 4;
        goto LABEL_177;
      }
    }

    v47 = 4;
LABEL_216:
    v26 = v48;
LABEL_217:
    *(this + 5) = v26;
    LODWORD(v64[0]) = v47;
    v64[1] = v23;
    v64[2] = (v24 - v23);
    goto LABEL_31;
  }

  if (v45 == 4 && *v25 == 1280131417)
  {
    do
    {
      v48 = v26;
      if (v24 == v26)
      {
        v47 = 3;
        goto LABEL_216;
      }

      v46 = *v26;
      v47 = 3;
      if (v46 == 9 || v46 == 32)
      {
        goto LABEL_176;
      }

      v26 = llvm::yaml::Scanner::skip_nb_char(v24, v26);
    }

    while (v26 != v48);
    v47 = 3;
LABEL_177:
    v24 = v48;
    goto LABEL_217;
  }

  return 0;
}