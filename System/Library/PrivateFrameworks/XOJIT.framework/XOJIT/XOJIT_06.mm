void llvm::yaml::Scanner::removeStaleSimpleKeyCandidates(llvm::yaml::Scanner *this)
{
  v1 = *(this + 58);
  if (v1)
  {
    v3 = *(this + 28);
    v4 = v3;
    do
    {
      if (v4[3] == *(this + 16) && (v4[2] + 1024) >= *(this + 15))
      {
        v4 += 6;
      }

      else
      {
        if (*(v4 + 20) == 1)
        {
          v6 = "Could not find expected : for simple key";
          v7 = 259;
          llvm::yaml::Scanner::setError(this, &v6, *(*v4 + 24));
          v3 = *(this + 28);
          v1 = *(this + 58);
        }

        v5 = &v3[6 * v1] - (v4 + 6);
        if (v5)
        {
          memmove(v4, v4 + 6, v5 - 3);
          v1 = *(this + 58);
          v3 = *(this + 28);
        }

        *(this + 58) = --v1;
      }
    }

    while (v4 != &v3[6 * v1]);
  }
}

void llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::pop_front(uint64_t a1)
{
  v1 = *(a1 + 104);
  v3 = *v1;
  v2 = v1[1];
  *v2 = *v1;
  *(v3 + 8) = v2;
  *v1 = 0;
  v1[1] = 0;
  if (*(v1 + 63) < 0)
  {
    operator delete(v1[5]);
  }
}

const char *llvm::yaml::Scanner::skip_nb_char(llvm::yaml::Scanner *this, llvm::yaml::Scanner *a2)
{
  v3 = this - a2;
  if (!v3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 == 9 || (v4 - 127) >= 0xFFFFFFA1)
  {
    return a2 + 1;
  }

  if ((v4 & 0x80) == 0)
  {
    return a2;
  }

  v6 = decodeUTF8(a2, v3);
  if (!HIDWORD(v6))
  {
    return a2;
  }

  v7 = v6;
  if (v6 == 65279)
  {
    return a2;
  }

  result = a2 + HIDWORD(v6);
  if ((v7 - 1114112) >> 20 != 4095 && (v7 - 65534) <= 0xFFFFE001 && v7 != 133 && (v7 - 55296) <= 0xFFFF289F)
  {
    return a2;
  }

  return result;
}

uint64_t llvm::yaml::Scanner::consume(std::error_category *this, int a2)
{
  v4 = this[5].__vftable;
  if (v4 == this[6].__vftable)
  {
    return 0;
  }

  v5 = *v4;
  if ((v5 & 0x80000000) == 0)
  {
    if (v5 == a2)
    {
      this[5].__vftable = (v4 + 1);
      ++HIDWORD(this[7].__vftable);
      return 1;
    }

    return 0;
  }

  v9 = v2;
  v10 = v3;
  v7 = "Cannot consume non-ascii characters";
  v8 = 259;
  llvm::yaml::Scanner::setError(this, &v7, v4);
  return 0;
}

void llvm::yaml::Scanner::setError(std::error_category *this, llvm::formatv_object_base **a2, char *a3)
{
  v4 = this;
  v5 = this[6].__vftable;
  if (v5 <= a3)
  {
    v6 = (v5 - 1);
  }

  else
  {
    v6 = a3;
  }

  v7 = this[42].__vftable;
  if (v7)
  {
    this = std::generic_category();
    v7->~error_category = 22;
    v7->~error_category_0 = this;
  }

  if ((BYTE2(v4[9].__vftable) & 1) == 0)
  {
    v8 = v4->__vftable;
    v9 = BYTE3(v4[9].__vftable);
    v10 = llvm::errs(this);
    llvm::SourceMgr::PrintMessage(v8, v10, v6, 0, a2, 0, 0, v11, 0, 0, v9);
  }

  BYTE2(v4[9].__vftable) = 1;
}

uint64_t llvm::yaml::Scanner::consumeLineBreakIfPresent(llvm::yaml::Scanner *this)
{
  v1 = *(this + 5);
  v2 = *(this + 6);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = *v1;
  if (v3 != 10)
  {
    if (v3 == 13)
    {
      v4 = v1 + 1;
      if (v1 + 1 != v2)
      {
        v5 = v1[1];
        v6 = v1 + 2;
        if (v5 == 10)
        {
          v4 = v6;
        }
      }

      goto LABEL_10;
    }

    return 0;
  }

  v4 = v1 + 1;
LABEL_10:
  v8 = *(this + 16) + 1;
  *(this + 15) = 0;
  *(this + 16) = v8;
  *(this + 5) = v4;
  return 1;
}

__n128 llvm::yaml::Scanner::saveSimpleKeyCandidate(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 73) == 1)
  {
    v18 = v3;
    v19 = v4;
    v14 = a2;
    v15 = a3;
    v17 = 0;
    v8 = *(a1 + 224);
    v6 = a1 + 224;
    v7 = v8;
    v16 = *(v6 - 160);
    v9 = *(v6 + 8);
    v10 = &v14;
    if (v9 >= *(v6 + 12))
    {
      if (v7 <= &v14 && v7 + 24 * v9 > &v14)
      {
        v13 = &v14 - v7;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 240), v9 + 1, 24);
        v7 = *(a1 + 224);
        v10 = &v13[v7];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 240), v9 + 1, 24);
        v7 = *(a1 + 224);
        v10 = &v14;
      }
    }

    v11 = (v7 + 24 * *(a1 + 232));
    result = *v10;
    v11[1].n128_u64[0] = v10[1].n128_u64[0];
    *v11 = result;
    ++*(a1 + 232);
  }

  return result;
}

unint64_t llvm::yaml::Scanner::unrollIndent(unint64_t this, int a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!*(this + 68))
  {
    v3 = this;
    if (*(this + 56) > a2)
    {
      do
      {
        LODWORD(v6) = 8;
        *(&v6 + 1) = *(v3 + 40);
        v7 = 1;
        this = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(v3 + 80, &v6);
        v4 = *(v3 + 176);
        *this = v4;
        *(this + 8) = v3 + 176;
        *(v4 + 8) = this;
        *(v3 + 176) = this;
        v5 = *(v3 + 200);
        LODWORD(v4) = *(*(v3 + 192) + 4 * v5 - 4);
        *(v3 + 200) = v5 - 1;
        *(v3 + 56) = v4;
      }

      while (v4 > a2);
    }
  }

  return this;
}

unint64_t llvm::yaml::Scanner::rollIndent(unint64_t result, int a2, int a3, unint64_t *a4)
{
  if (!*(result + 68))
  {
    v13 = v4;
    v14 = v5;
    v7 = result;
    v8 = *(result + 56);
    if (v8 < a2)
    {
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back((result + 192), v8);
      *(v7 + 56) = a2;
      LODWORD(v12[0]) = a3;
      *(&v12[0] + 1) = *(v7 + 40);
      memset(&v12[1], 0, 32);
      result = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(v7 + 80, v12);
      v11 = *a4;
      *result = *a4;
      *(result + 8) = a4;
      *(v11 + 8) = result;
      *a4 = result;
    }
  }

  return result;
}

const char *llvm::yaml::Scanner::skipComment(const char *this)
{
  v2 = *(this + 5);
  v1 = *(this + 6);
  if (v2 != v1 && *v2 == 35)
  {
    v3 = this;
    this = llvm::yaml::Scanner::skip_nb_char(*(this + 6), v2);
    if (this != v2)
    {
      v4 = this;
      v5 = *(v3 + 15) + 1;
      do
      {
        *(v3 + 5) = v4;
        *(v3 + 15) = v5;
        this = llvm::yaml::Scanner::skip_nb_char(v1, v4);
        ++v5;
        v6 = this == v4;
        v4 = this;
      }

      while (!v6);
    }
  }

  return this;
}

void *llvm::yaml::Scanner::scanDocumentIndicator(llvm::yaml::Scanner *this, int a2)
{
  llvm::yaml::Scanner::unrollIndent(this, -1);
  *(this + 58) = 0;
  *(this + 73) = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a2)
  {
    v4 = 5;
  }

  else
  {
    v4 = 6;
  }

  LODWORD(v8) = v4;
  *(&v8 + 1) = *(this + 5);
  v9 = 3;
  *(this + 5) = *(&v8 + 1) + 3;
  *(this + 15) += 3;
  result = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, &v8);
  v7 = *(this + 22);
  v6 = (this + 176);
  *result = v7;
  result[1] = v6;
  *(v7 + 8) = result;
  *v6 = result;
  return result;
}

void llvm::yaml::Scanner::scanFlowCollectionStart(llvm::yaml::Scanner *this, int a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (a2)
  {
    v3 = 12;
  }

  else
  {
    v3 = 14;
  }

  LODWORD(v6) = v3;
  *(&v6 + 1) = *(this + 5);
  v7 = 1;
  *(this + 5) = *(&v6 + 1) + 1;
  ++*(this + 15);
  v4 = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, &v6);
  v5 = *(this + 22);
  *v4 = v5;
  v4[1] = this + 176;
  *(v5 + 8) = v4;
  *(this + 22) = v4;
  llvm::yaml::Scanner::saveSimpleKeyCandidate(this, v4, *(this + 15) - 1);
  *(this + 73) = 1;
  ++*(this + 17);
}

void *llvm::yaml::Scanner::scanFlowCollectionEnd(llvm::yaml::Scanner *this, int a2)
{
  v3 = *(this + 58);
  if (v3 && *(*(this + 28) + 24 * v3 - 8) == *(this + 17))
  {
    *(this + 58) = v3 - 1;
  }

  *(this + 73) = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a2)
  {
    v4 = 13;
  }

  else
  {
    v4 = 15;
  }

  LODWORD(v8) = v4;
  *(&v8 + 1) = *(this + 5);
  v9 = 1;
  *(this + 5) = *(&v8 + 1) + 1;
  ++*(this + 15);
  result = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, &v8);
  v6 = *(this + 22);
  *result = v6;
  result[1] = this + 176;
  *(v6 + 8) = result;
  *(this + 22) = result;
  v7 = *(this + 17);
  if (v7)
  {
    *(this + 17) = v7 - 1;
  }

  return result;
}

void *llvm::yaml::Scanner::scanFlowEntry(llvm::yaml::Scanner *this)
{
  v2 = *(this + 58);
  if (v2 && *(*(this + 28) + 24 * v2 - 8) == *(this + 17))
  {
    *(this + 58) = v2 - 1;
  }

  *(this + 73) = 1;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  LODWORD(v6) = 11;
  *(&v6 + 1) = *(this + 5);
  v7 = 1;
  *(this + 5) = *(&v6 + 1) + 1;
  ++*(this + 15);
  result = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, &v6);
  v5 = *(this + 22);
  v4 = (this + 176);
  *result = v5;
  result[1] = v4;
  *(v5 + 8) = result;
  *v4 = result;
  return result;
}

void *llvm::yaml::Scanner::scanBlockEntry(llvm::yaml::Scanner *this)
{
  v2 = this + 176;
  llvm::yaml::Scanner::rollIndent(this, *(this + 15), 9, this + 22);
  v3 = *(this + 58);
  if (v3 && *(*(this + 28) + 24 * v3 - 8) == *(this + 17))
  {
    *(this + 58) = v3 - 1;
  }

  *(this + 73) = 1;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  LODWORD(v6) = 7;
  *(&v6 + 1) = *(this + 5);
  v7 = 1;
  *(this + 5) = *(&v6 + 1) + 1;
  ++*(this + 15);
  result = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, &v6);
  v5 = *(this + 22);
  *result = v5;
  result[1] = v2;
  *(v5 + 8) = result;
  *(this + 22) = result;
  return result;
}

void *llvm::yaml::Scanner::scanKey(llvm::yaml::Scanner *this)
{
  v2 = *(this + 17);
  if (!v2)
  {
    llvm::yaml::Scanner::rollIndent(this, *(this + 15), 10, this + 22);
    v2 = *(this + 17);
  }

  v3 = *(this + 58);
  if (v3 && *(*(this + 28) + 24 * v3 - 8) == v2)
  {
    *(this + 58) = v3 - 1;
  }

  *(this + 73) = v2 == 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  LODWORD(v7) = 16;
  *(&v7 + 1) = *(this + 5);
  v8 = 1;
  *(this + 5) = *(&v7 + 1) + 1;
  ++*(this + 15);
  result = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, &v7);
  v6 = *(this + 22);
  v5 = (this + 176);
  *result = v6;
  result[1] = v5;
  *(v6 + 8) = result;
  *v5 = result;
  return result;
}

uint64_t llvm::yaml::Scanner::scanValue(llvm::yaml::Scanner *this)
{
  v2 = *(this + 58);
  if (!v2)
  {
    if (*(this + 17))
    {
      v12 = 0;
    }

    else
    {
      llvm::yaml::Scanner::rollIndent(this, *(this + 15), 10, this + 22);
      v12 = *(this + 17) == 0;
    }

    *(this + 73) = v12;
    goto LABEL_15;
  }

  v3 = *(this + 28) + 24 * v2;
  v4 = *(v3 - 24);
  v5 = *(v3 - 16);
  *(this + 58) = v2 - 1;
  v18 = 16;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v19 = *(v4 + 24);
  v6 = (this + 184);
  v7 = (this + 176);
  do
  {
    v8 = *v6;
    v6 = (*v6 + 1);
  }

  while (v8 != v7 && v8 != v4);
  if (v8 != v7)
  {
    v10 = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, &v18);
    v11 = *v8;
    *v10 = *v8;
    v10[1] = v8;
    *(v11 + 8) = v10;
    *v8 = v10;
    llvm::yaml::Scanner::rollIndent(this, v5, 10, v10);
    *(this + 73) = 0;
LABEL_15:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v18 = 17;
    v13 = 1;
    *&v19 = *(this + 5);
    *(&v19 + 1) = 1;
    *(this + 5) = v19 + 1;
    ++*(this + 15);
    v14 = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, &v18);
    v16 = *(this + 22);
    v15 = (this + 176);
    *v14 = v16;
    v14[1] = v15;
    *(v16 + 8) = v14;
    *v15 = v14;
    return v13;
  }

  v13 = 0;
  *(this + 74) = 1;
  return v13;
}

uint64_t llvm::yaml::Scanner::scanFlowScalar(std::error_category *this, int a2)
{
  v3 = this[5].__vftable;
  v4 = HIDWORD(this[7].__vftable);
  if (!a2)
  {
    i = &v3->~error_category + 1;
    this[5].__vftable = (&v3->~error_category + 1);
    v7 = v4 + 1;
    HIDWORD(this[7].__vftable) = v4 + 1;
    v5 = this[6].__vftable;
    if ((&v3->~error_category + 1) == v5)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v8 = (i + 1);
      v9 = *i;
      if (i + 1 >= v5)
      {
        break;
      }

      if (v9 != 39)
      {
        goto LABEL_14;
      }

      if (LOBYTE(v8->~error_category) != 39)
      {
        goto LABEL_26;
      }

      i += 2;
      this[5].__vftable = i;
      v7 += 2;
      HIDWORD(this[7].__vftable) = v7;
LABEL_23:
      if (i == v5)
      {
        goto LABEL_26;
      }
    }

    if (v9 == 39)
    {
      goto LABEL_26;
    }

LABEL_14:
    v10 = llvm::yaml::Scanner::skip_nb_char(v5, i);
    if (v10 == i)
    {
      if (v9 != 10)
      {
        if (v9 != 13)
        {
          goto LABEL_26;
        }

        if (v8 != v5 && i[1] == 10)
        {
          v8 = (i + 2);
        }
      }

      v7 = 0;
      this[5].__vftable = v8;
      v11 = LODWORD(this[8].__vftable) + 1;
      HIDWORD(this[7].__vftable) = 0;
      LODWORD(this[8].__vftable) = v11;
      i = v8;
    }

    else
    {
      if (v10 == v5)
      {
        goto LABEL_26;
      }

      this[5].__vftable = v10;
      HIDWORD(this[7].__vftable) = ++v7;
      i = v10;
    }

    goto LABEL_23;
  }

  v5 = this[6].__vftable;
  for (i = &v3->~error_category + 1; ; ++i)
  {
    this[5].__vftable = i;
    if (i == v5 || *i == 34 && (*(i - 1) != 92 || !wasEscaped(&v3->~error_category + 1, i)))
    {
      break;
    }
  }

  v7 = v4;
LABEL_26:
  if (i != v5)
  {
    this[5].__vftable = (i + 1);
    HIDWORD(this[7].__vftable) = v7 + 1;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v15) = 18;
    *(&v15 + 1) = v3;
    v16 = (i + 1 - v3);
    v12 = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(&this[10], &v15);
    v13 = this[22].__vftable;
    v12->~error_category = v13;
    v12->~error_category_0 = &this[22];
    v13->~error_category_0 = v12;
    this[22].__vftable = v12;
    llvm::yaml::Scanner::saveSimpleKeyCandidate(this, v12, v4);
    BYTE1(this[9].__vftable) = 0;
    return 1;
  }

LABEL_28:
  *&v15 = "Expected quote at end of scalar";
  LOWORD(v18) = 259;
  llvm::yaml::Scanner::setError(this, &v15, i);
  return 0;
}

BOOL wasEscaped(const char *a1, const char *a2)
{
  for (i = a2 - 1; i >= a1; --i)
  {
    if (*i != 92)
    {
      break;
    }
  }

  return ((a2 - 1 - i) & 0x8000000000000001) == 1;
}

uint64_t llvm::yaml::Scanner::scanPlainScalar(llvm::yaml::Scanner *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v2 == v3)
  {
    goto LABEL_66;
  }

  v4 = 0;
  v5 = *(this + 15);
  v6 = *(this + 14) + 1;
  v32 = v5;
  v7 = *(this + 5);
  while (1)
  {
    v8 = *v7;
    if (v8 == 35)
    {
      v18 = v7;
LABEL_64:
      if (v2 != v18)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        LODWORD(v33) = 18;
        *(&v33 + 1) = v2;
        v34 = (v18 - v2);
        v29 = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, &v33);
        v30 = *(this + 22);
        *v29 = v30;
        v29[1] = this + 176;
        *(v30 + 8) = v29;
        *(this + 22) = v29;
        llvm::yaml::Scanner::saveSimpleKeyCandidate(this, v29, v32);
        *(this + 73) = 0;
        return 1;
      }

LABEL_66:
      *&v33 = "Got empty plain scalar";
      LOWORD(v36) = 259;
      v27 = this;
      v28 = v2;
      goto LABEL_67;
    }

    if (v7 != v3)
    {
      break;
    }

LABEL_30:
    v18 = v7;
    if (v3 == v7)
    {
      goto LABEL_61;
    }

LABEL_31:
    v19 = *v18;
    v11 = v19 > 0x20;
    v20 = (1 << v19) & 0x100002600;
    if (v11 || v20 == 0)
    {
      goto LABEL_64;
    }

    v7 = v18;
    do
    {
      v22 = *v7;
      if (v22 > 0xC)
      {
        if (v22 == 13)
        {
          if ((v7 + 1) == v3)
          {
            v7 = (v7 + 1);
          }

          else if (*(v7 + 1) == 10)
          {
            v7 = (v7 + 2);
          }

          else
          {
            v7 = (v7 + 1);
          }

LABEL_56:
          v5 = 0;
          v25 = *(this + 16) + 1;
          *(this + 15) = 0;
          *(this + 16) = v25;
          v4 = 1;
          continue;
        }

        if (v22 != 32)
        {
          break;
        }
      }

      else if (v22 != 9)
      {
        if (v22 != 10)
        {
          break;
        }

        v7 = (v7 + 1);
        goto LABEL_56;
      }

      if (v22 == 9 && v4 != 0 && v5 < v6)
      {
        v26 = "Found invalid tab character in indentation";
        goto LABEL_62;
      }

      v7 = (v7 + 1);
      *(this + 15) = ++v5;
    }

    while (v3 != v7);
    if (!*(this + 17) && v5 < v6)
    {
      goto LABEL_64;
    }

    *(this + 5) = v7;
    if (v7 == v3)
    {
LABEL_61:
      v18 = v3;
      goto LABEL_64;
    }
  }

  while (1)
  {
    if (v8 <= 0x20 && ((1 << v8) & 0x100002600) != 0)
    {
LABEL_28:
      v18 = v7;
      goto LABEL_31;
    }

    v9 = *(this + 17);
    if (v9)
    {
      break;
    }

    if (v8 != 58)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (v3 != (v7 + 1))
    {
      v14 = *(v7 + 1);
      v11 = v14 > 0x20;
      v15 = (1 << v14) & 0x100002600;
      if (!v11 && v15 != 0)
      {
        goto LABEL_28;
      }
    }

    if (v9)
    {
LABEL_24:
      *&v33 = v7;
      *(&v33 + 1) = 1;
      if (llvm::StringRef::find_first_of(&v33, ",:?[]{}", 7, 0) != -1)
      {
        goto LABEL_28;
      }
    }

LABEL_25:
    v17 = llvm::yaml::Scanner::skip_nb_char(v3, v7);
    if (v17 == v7)
    {
      goto LABEL_28;
    }

    *(this + 5) = v17;
    *(this + 15) = ++v5;
    if (v17 == v3)
    {
      v7 = v17;
      goto LABEL_30;
    }

    v8 = *v17;
    v7 = v17;
  }

  if (v8 != 58)
  {
    goto LABEL_24;
  }

  if ((v7 + 1) != v3)
  {
    v10 = *(v7 + 1);
    v11 = v10 > 0x2C;
    v12 = (1 << v10) & 0x100100002600;
    if (!v11 && v12 != 0)
    {
      goto LABEL_17;
    }
  }

  v26 = "Found unexpected ':' while scanning a plain scalar";
LABEL_62:
  *&v33 = v26;
  LOWORD(v36) = 259;
  v27 = this;
  v28 = v7;
LABEL_67:
  llvm::yaml::Scanner::setError(v27, &v33, v28);
  return 0;
}

uint64_t llvm::yaml::Scanner::scanAliasOrAnchor(llvm::yaml::Scanner *this, int a2)
{
  v3 = *(this + 15);
  v4 = *(this + 5);
  v5 = *(this + 6);
  *(this + 5) = v4 + 1;
  *(this + 15) = v3 + 1;
  if (v4 + 1 == v5)
  {
    goto LABEL_21;
  }

  v6 = v3 + 2;
  v7 = (v4 + 1);
  while (1)
  {
    v8 = *v7;
    if (v8 <= 0x3A && ((1 << v8) & 0x400100100000200) != 0)
    {
      break;
    }

    v10 = v8 - 91;
    v11 = v10 > 0x22;
    v12 = (1 << v10) & 0x500000005;
    if (!v11 && v12 != 0)
    {
      break;
    }

    v14 = llvm::yaml::Scanner::skip_nb_char(v5, v7);
    if (v14 == v7)
    {
      break;
    }

    *(this + 5) = v14;
    *(this + 15) = v6++;
    v7 = v14;
    if (v14 == v5)
    {
      v7 = v5;
      break;
    }
  }

  if (v4 + 1 == v7)
  {
LABEL_21:
    *&v20 = "Got empty alias or anchor";
    LOWORD(v23) = 259;
    llvm::yaml::Scanner::setError(this, &v20, v4);
    return 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    if (a2)
    {
      v15 = 20;
    }

    else
    {
      v15 = 21;
    }

    LODWORD(v20) = v15;
    *(&v20 + 1) = v4;
    v21 = v7 - v4;
    v16 = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, &v20);
    v17 = *(this + 22);
    *v16 = v17;
    v16[1] = this + 176;
    *(v17 + 8) = v16;
    *(this + 22) = v16;
    llvm::yaml::Scanner::saveSimpleKeyCandidate(this, v16, v3);
    *(this + 73) = 0;
    return 1;
  }
}

uint64_t llvm::yaml::Scanner::scanBlockScalar(std::error_category *this)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = this[5].__vftable;
  v2 = this[6].__vftable;
  if (v3 != v2 && ((v4 = LOBYTE(v3->~error_category), v4 == 124) || v4 == 62))
  {
    v3 = (v3 + 1);
    this[5].__vftable = v3;
    ++HIDWORD(this[7].__vftable);
    v5 = v4 != 62;
  }

  else
  {
    v5 = 1;
  }

  v59 = v5;
  if (v3 != v2 && ((v6 = LOBYTE(v3->~error_category), v6 == 45) || v6 == 43))
  {
    v7 = &v3->~error_category + 1;
    this[5].__vftable = (&v3->~error_category + 1);
    ++HIDWORD(this[7].__vftable);
  }

  else
  {
    v6 = 32;
    v7 = v3;
  }

  if (v7 == v2 || (v8 = *v7, (v8 - 49) > 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = (v8 - 48);
    this[5].__vftable = ++v7;
    ++HIDWORD(this[7].__vftable);
  }

  if (v6 == 32)
  {
    if (v7 != v2 && ((v6 = *v7, v6 == 45) || v6 == 43))
    {
      this[5].__vftable = ++v7;
      ++HIDWORD(this[7].__vftable);
    }

    else
    {
      v6 = 32;
    }
  }

  if (v2 != v7)
  {
    while (1)
    {
      v10 = *v7;
      v11 = v10 == 32 || v10 == 9;
      if (!v11)
      {
        break;
      }

      if (++v7 == v2)
      {
        v7 = v2;
        break;
      }
    }
  }

  this[5].__vftable = v7;
  llvm::yaml::Scanner::skipComment(this);
  v12 = this[5].__vftable;
  if (v12 == this[6].__vftable)
  {
    v68 = 0;
    v69 = 0;
    v70 = 0;
    LODWORD(__src) = 19;
    __len[0] = v3;
    __len[1] = v12 - v3;
    v32 = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(&this[10], &__src);
    v34 = this[22].__vftable;
    v33 = this + 22;
    *v32 = v34;
    *(v32 + 1) = v33;
    v34->~error_category_0 = v32;
    v33->__vftable = v32;
    v35 = 1;
    goto LABEL_119;
  }

  if ((llvm::yaml::Scanner::consumeLineBreakIfPresent(this) & 1) == 0)
  {
    __src = "Expected a line break after block scalar header";
    LOWORD(v69) = 259;
    v36 = this[5].__vftable;
    v37 = this;
LABEL_72:
    llvm::yaml::Scanner::setError(v37, &__src, v36);
    v35 = 0;
    goto LABEL_119;
  }

  v13 = this[5].__vftable;
  v58 = this[7].__vftable & ~(SLODWORD(this[7].__vftable) >> 31);
  v57 = v13;
  v14 = 0;
  if (!v9)
  {
    v39 = 0;
    v40 = 0;
    for (i = this[5].__vftable; ; i = this[5].__vftable)
    {
      v42 = this[6].__vftable;
      v43 = &i[-1].message + 7;
      do
      {
        v44 = (v43 + 1);
        if (v43 + 1 == v42)
        {
          v43 = this[6].__vftable;
          v13 = v43;
          goto LABEL_82;
        }

        v45 = *++v43;
        v46 = v45 == 32;
      }

      while (v45 == 32);
      v13 = (v46 ? v43 + 1 : v43);
LABEL_82:
      v9 = HIDWORD(this[7].__vftable) + v43 - i;
      HIDWORD(this[7].__vftable) = v9;
      this[5].__vftable = v13;
      if (llvm::yaml::Scanner::skip_nb_char(v42, v13) != v43)
      {
        break;
      }

      if (v44 == v42)
      {
        goto LABEL_93;
      }

      v47 = *v13;
      if ((v47 == 13 || v47 == 10) && v9 > v40)
      {
        v39 = v13;
        v40 = v9;
      }

      if (!llvm::yaml::Scanner::consumeLineBreakIfPresent(this))
      {
        goto LABEL_93;
      }

      ++v14;
    }

    if (v9 <= v58)
    {
LABEL_93:
      __src = &v68;
      *__len = xmmword_2750C12F0;
      v38 = v57;
      goto LABEL_94;
    }

    if (v40 <= v9)
    {
      goto LABEL_32;
    }

    __src = "Leading all-spaces line must be smaller than the block indent";
    LOWORD(v69) = 259;
    v37 = this;
    v36 = v39;
    goto LABEL_72;
  }

LABEL_32:
  __src = &v68;
  *__len = xmmword_2750C12F0;
  while (1)
  {
    v15 = HIDWORD(this[7].__vftable);
    v16 = this[6].__vftable;
    if (v15 < v9)
    {
      while (v13 != v16 && *v13 == 32)
      {
        v13 = (v13 + 1);
        this[5].__vftable = v13;
        HIDWORD(this[7].__vftable) = ++v15;
        if (v9 == v15)
        {
          v15 = v9;
          break;
        }
      }
    }

    v17 = llvm::yaml::Scanner::skip_nb_char(v16, v13);
    v18 = v13;
    if (v17 != v13)
    {
      if (v15 <= v58)
      {
        goto LABEL_73;
      }

      v18 = v13;
      if (v15 < v9)
      {
        break;
      }
    }

    do
    {
      v19 = v18;
      v18 = llvm::yaml::Scanner::skip_nb_char(v16, v18);
    }

    while (v18 != v19);
    HIDWORD(this[7].__vftable) = v15 + v19 - v13;
    this[5].__vftable = v18;
    if (v19 != v13)
    {
      v20 = v59;
      if (!v14)
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        v21 = __len[0];
        if (__len[0])
        {
          v22 = __src;
          while (v22 != v16)
          {
            v23 = *v22;
            v24 = v23 > 0x20;
            v25 = (1 << v23) & 0x100002600;
            if (v24 || v25 == 0)
            {
              break;
            }

            v22 = (v22 + 1);
            if (!--v21)
            {
              goto LABEL_66;
            }
          }

          if (!--v14)
          {
            v27 = v13;
            while (v27 != v16)
            {
              v28 = *v27;
              v24 = v28 > 0x20;
              v29 = (1 << v28) & 0x100002600;
              if (v24 || v29 == 0)
              {
                break;
              }

              v27 = (v27 + 1);
              if (v27 == v19)
              {
                v31 = 10;
                goto LABEL_65;
              }
            }

            v31 = 32;
LABEL_65:
            llvm::SmallVectorImpl<char>::append(&__src, 1uLL, v31);
          }
        }
      }

LABEL_66:
      llvm::SmallVectorImpl<char>::append(&__src, v14, 10);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&__src, v13, this[5].__vftable);
      v14 = 0;
      v13 = this[5].__vftable;
      v16 = this[6].__vftable;
    }

    if (v13 == v16 || !llvm::yaml::Scanner::consumeLineBreakIfPresent(this))
    {
LABEL_73:
      v38 = v57;
      goto LABEL_94;
    }

    ++v14;
    v13 = this[5].__vftable;
  }

  v11 = v13 == v16;
  v38 = v57;
  if (!v11 && *v13 == 35)
  {
LABEL_94:
    if (v6 == 45)
    {
      v49 = 0;
    }

    else if (v6 == 43)
    {
      if (v14)
      {
        v48 = 0;
      }

      else
      {
        v48 = this[5].__vftable == this[6].__vftable;
      }

      if (v48)
      {
        v49 = 1;
      }

      else
      {
        v49 = v14;
      }
    }

    else
    {
      v49 = __len[0] != 0;
    }

    llvm::SmallVectorImpl<char>::append(&__src, v49, 10);
    if (!HIDWORD(this[8].__vftable))
    {
      BYTE1(this[9].__vftable) = 1;
    }

    __p = 0uLL;
    v65 = 0;
    LODWORD(v62) = 19;
    v50 = (this[5].__vftable - v38);
    *(&v62 + 1) = v38;
    v63 = v50;
    v51 = __len[0];
    if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    if (__len[0] >= 0x17)
    {
      operator new();
    }

    HIBYTE(v61) = __len[0];
    if (__len[0])
    {
      memmove(&__dst, __src, __len[0]);
    }

    *(&__dst + v51) = 0;
    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p);
    }

    __p = __dst;
    v65 = v61;
    v52 = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(&this[10], &v62);
    v54 = this[22].__vftable;
    v53 = this + 22;
    *v52 = v54;
    *(v52 + 1) = v53;
    v54->~error_category_0 = v52;
    v53->__vftable = v52;
    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p);
    }

    v35 = 1;
  }

  else
  {
    *&v62 = "A text line is less indented than the block scalar";
    WORD4(__p) = 259;
    llvm::yaml::Scanner::setError(this, &v62, v13);
    v35 = 0;
  }

  if (__src != &v68)
  {
    free(__src);
  }

LABEL_119:
  v55 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t llvm::yaml::Scanner::scanTag(llvm::yaml::Scanner *this)
{
  v2 = *(this + 15);
  v4 = *(this + 5);
  v3 = *(this + 6);
  v5 = (v4 + 1);
  *(this + 5) = v4 + 1;
  *(this + 15) = v2 + 1;
  if (v4 + 1 == v3)
  {
    goto LABEL_4;
  }

  v6 = *v5;
  if (v6 > 0x3C)
  {
    goto LABEL_34;
  }

  if (((1 << v6) & 0x100002600) != 0)
  {
    goto LABEL_4;
  }

  if (v6 != 60)
  {
    while (1)
    {
LABEL_34:
      v22 = v5;
      if (v3 == v5)
      {
        v21 = v3;
        goto LABEL_39;
      }

      v20 = *v5;
      if (v20 == 9 || v20 == 32)
      {
        break;
      }

      v5 = llvm::yaml::Scanner::skip_nb_char(v3, v5);
      v21 = v22;
      if (v5 == v22)
      {
        goto LABEL_39;
      }
    }

    v21 = v5;
LABEL_39:
    *(this + 5) = v5;
    v5 = v21;
    goto LABEL_4;
  }

  *(this + 5) = v4 + 2;
  *(this + 15) = v2 + 2;
  if (v4 + 2 != v3)
  {
    v10 = v2 + 3;
    v11 = v4 + 4;
    do
    {
      v12 = *(v11 - 2);
      v13 = v12 != 37 || v11 >= v3;
      if (v13 || ((v16 = *(v11 - 1), (v16 - 48) >= 0xA) ? (v17 = (v16 & 0xFFFFFFDF) - 65 > 0x19) : (v17 = 0), v17 || ((v18 = *v11, (v18 - 48) >= 0xA) ? (v19 = (v18 & 0xFFFFFFDF) - 65 >= 0x1A) : (v19 = 0), v19)))
      {
        if (v12 != 45 && (v12 & 0xFFFFFFDF) - 65 >= 0x1A)
        {
          *&v23 = v11 - 2;
          *(&v23 + 1) = 1;
          if (llvm::StringRef::find_first_of(&v23, "#;/?:@&=+$,_.!~*'()[]", 21, 0) == -1)
          {
            break;
          }
        }
      }

      v15 = (v11 - 1);
      *(this + 5) = v11 - 1;
      *(this + 15) = v10++;
      ++v11;
    }

    while (v15 != v3);
  }

  result = llvm::yaml::Scanner::consume(this, 62);
  if (result)
  {
    v5 = *(this + 5);
LABEL_4:
    v25 = 0;
    v26 = 0;
    v27 = 0;
    LODWORD(v23) = 22;
    *(&v23 + 1) = v4;
    v24 = (v5 - v4);
    v7 = llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(this + 80, &v23);
    v8 = *(this + 22);
    *v7 = v8;
    v7[1] = this + 176;
    *(v8 + 8) = v7;
    *(this + 22) = v7;
    llvm::yaml::Scanner::saveSimpleKeyCandidate(this, v7, v2);
    *(this + 73) = 0;
    return 1;
  }

  return result;
}

void llvm::yaml::Stream::~Stream(llvm::yaml::Stream *this)
{
  std::unique_ptr<llvm::yaml::Document>::reset[abi:nn200100](this + 1, 0);
  v2 = *this;
  *this = 0;
  if (v2)
  {
    v3 = *(v2 + 224);
    if (v3 != (v2 + 240))
    {
      free(v3);
    }

    v4 = *(v2 + 192);
    if (v4 != (v2 + 208))
    {
      free(v4);
    }

    llvm::simple_ilist<llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Node>::eraseAndDispose<llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Disposer>(v2 + 176, *(v2 + 184), (v2 + 176));
    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v2 + 80);
    MEMORY[0x277C69E40](v2, 0x10F0C40B24D1194);
  }
}

void llvm::yaml::Stream::printError(llvm *a1, uint64_t a2, llvm::formatv_object_base **a3, int a4)
{
  if (a2)
  {
    v11 = *(a2 + 16);
    v6 = v11;
  }

  else
  {
    v6 = 0;
    v11 = 0uLL;
  }

  v7 = **a1;
  v8 = *(*a1 + 75);
  v9 = llvm::errs(a1);
  llvm::SourceMgr::PrintMessage(v7, v9, v6, a4, a3, &v11, 1, v10, 0, 0, v8);
}

void llvm::yaml::Stream::printError(llvm *a1, unint64_t *a2, llvm::formatv_object_base **a3, int a4)
{
  v7 = *a2;
  v8 = **a1;
  v9 = *(*a1 + 75);
  v10 = llvm::errs(a1);
  llvm::SourceMgr::PrintMessage(v8, v10, v7, a4, a3, a2, 1, v11, 0, 0, v9);
}

void llvm::yaml::Stream::begin(uint64_t ***this)
{
  if (!this[1])
  {
    llvm::yaml::Scanner::getNext(*this, &v1);
    if (v3 < 0)
    {
      operator delete(__p);
    }

    operator new();
  }

  llvm::report_fatal_error("Can only iterate over the stream once", 1);
}

uint64_t *std::unique_ptr<llvm::yaml::Document>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(v2 + 112, *(v2 + 120));
    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v2 + 8);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

unint64_t llvm::yaml::Document::skip(llvm::yaml::Document *this)
{
  if (*(**this + 74))
  {
    return 0;
  }

  result = *(this + 13);
  if (!result)
  {
    result = llvm::yaml::Document::parseBlockNode(this);
    *(this + 13) = result;
    if (!result)
    {
      return result;
    }
  }

  (*(*result + 8))(result);
  v3 = *llvm::yaml::Scanner::peekNext(**this);
  if (v3 == 2)
  {
    return 0;
  }

  if (v3 != 6)
  {
    return 1;
  }

  llvm::yaml::Scanner::getNext(**this, &v4);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return llvm::yaml::Document::skip(this);
}

llvm::yaml::Document **llvm::yaml::document_iterator::operator++(llvm::yaml::Document ***a1)
{
  if (llvm::yaml::Document::skip(**a1))
  {
    v2 = ***a1;
    operator new();
  }

  std::unique_ptr<llvm::yaml::Document>::reset[abi:nn200100](*a1, 0);
  return *a1;
}

std::string *llvm::yaml::Node::getVerbatimTag@<X0>(llvm::yaml::Node *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 8);
  if (!v4 || (v5 = *(this + 7), v4 == 1) && *v5 == 33)
  {
    v6 = *(this + 8);
    if (v6 > 3)
    {
      if (v6 == 4)
      {
        v7 = "tag:yaml.org,2002:map";
        goto LABEL_48;
      }

      if (v6 == 5)
      {
        v7 = "tag:yaml.org,2002:seq";
        goto LABEL_48;
      }
    }

    else
    {
      if ((v6 - 1) < 2)
      {
        v7 = "tag:yaml.org,2002:str";
LABEL_48:

        return std::string::basic_string[abi:nn200100]<0>(a2, v7);
      }

      if (!v6)
      {
        v7 = "tag:yaml.org,2002:null";
        goto LABEL_48;
      }
    }

    v7 = "";
    goto LABEL_48;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = v4;
  *(a2 + 16) = 0;
  do
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v8 - 1;
    v10 = v5[--v8];
  }

  while (v10 != 33);
  if (v9)
  {
LABEL_11:
    if (v4 == 1 || *v5 != 8481)
    {
      v11 = v4;
      do
      {
        v12 = v11;
        if (!v11)
        {
          break;
        }

        --v11;
      }

      while (v5[v12 - 1] != 33);
      if (v4 >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v4;
      }

      *&v37 = v5;
      *(&v37 + 1) = v13;
      v14 = std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::find<llvm::StringRef>(**(this + 1) + 112, &v37);
      v15 = **(this + 1);
      if (v15 + 15 == v14)
      {
        *&__dst = "Unknown tag handle ";
        v34 = v5;
        v35 = v13;
        v36 = 1283;
        llvm::yaml::Scanner::setError(**v15, &__dst, v5);
LABEL_35:
        v18 = v4;
        do
        {
          v19 = v18;
          if (!v18)
          {
            break;
          }

          --v18;
        }

        while (v5[v19 - 1] != 33);
        if (v4 >= v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = v4;
        }

        return std::string::append(a2, &v5[v20], v4 - v20);
      }

      v16 = *(v14 + 56);
      if (v16 <= 0x7FFFFFFFFFFFFFF7)
      {
        v17 = *(v14 + 48);
        if (v16 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v34) = *(v14 + 56);
        if (v16)
        {
          memmove(&__dst, v17, v16);
        }

        *(&__dst + v16) = 0;
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = __dst;
        *(a2 + 16) = v34;
        goto LABEL_35;
      }

LABEL_68:
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v26 = **(this + 1);
    *&v37 = "!!";
    *(&v37 + 1) = 2;
    v27 = std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::find<llvm::StringRef>(v26 + 112, &v37);
    v28 = *(v27 + 56);
    if (v28 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_68;
    }

    v29 = *(v27 + 48);
    if (v28 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v34) = *(v27 + 56);
    if (v28)
    {
      memmove(&__dst, v29, v28);
    }

    *(&__dst + v28) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = __dst;
    *(a2 + 16) = v34;
    v32 = v4 - 2;
    v30 = v5 + 2;
    v31 = a2;
  }

  else
  {
    v22 = **(this + 1);
    *&v37 = "!";
    *(&v37 + 1) = 1;
    v23 = std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::find<llvm::StringRef>(v22 + 112, &v37);
    v24 = *(v23 + 56);
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_68;
    }

    v25 = *(v23 + 48);
    if (v24 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v34) = *(v23 + 56);
    if (v24)
    {
      memmove(&__dst, v25, v24);
    }

    *(&__dst + v24) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = __dst;
    *(a2 + 16) = v34;
    v30 = v5 + 1;
    v31 = a2;
    v32 = v4 - 1;
  }

  return std::string::append(v31, v30, v32);
}

unint64_t llvm::yaml::Document::parseBlockNode(uint64_t ****this)
{
  v2 = llvm::yaml::Scanner::peekNext(**this);
  v3 = v2[2];
  v86 = *v2;
  v87 = v3;
  v4 = &v88;
  if (*(v2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, v2[3], v2[4]);
  }

  else
  {
    v5 = *(v2 + 3);
    v88.__r_.__value_.__r.__words[2] = v2[5];
    *&v88.__r_.__value_.__l.__data_ = v5;
  }

  v6 = 0;
  v7 = 0;
  __p = 0;
  v58 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (v86 == 21)
  {
    if (v8 == 21)
    {
      v20 = "Already encountered an anchor for this node!";
      goto LABEL_74;
    }

    llvm::yaml::Scanner::getNext(**this, &v77);
    v8 = v77;
    v13 = v78;
    v12 = v79;
    if (v10 < 0)
    {
      operator delete(v11);
    }

    v11 = v80;
    v10 = v82;
LABEL_10:
    v14 = llvm::yaml::Scanner::peekNext(**this);
    v15 = v14[2];
    v86 = *v14;
    v87 = v15;
    std::string::operator=(&v88, v14 + 1);
  }

  switch(v86)
  {
    case 0:
      goto LABEL_75;
    case 7:
      v35 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 1), 88, 4);
      v17 = v35;
      if (v12)
      {
        v36 = v13 + 1;
      }

      else
      {
        v36 = v13;
      }

      v37 = v12 - (v12 != 0);
      v38 = (*this + 1);
      v39 = v6;
      v40 = v7;
      v41 = 2;
      goto LABEL_58;
    case 9:
      llvm::yaml::Scanner::getNext(**this, v74);
      if (v76 < 0)
      {
        operator delete(v75);
      }

      v35 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 1), 88, 4);
      v17 = v35;
      if (v12)
      {
        v36 = v13 + 1;
      }

      else
      {
        v36 = v13;
      }

      v37 = v12 - (v12 != 0);
      v38 = (*this + 1);
      v39 = v6;
      v40 = v7;
      v41 = 0;
      goto LABEL_58;
    case 10:
      llvm::yaml::Scanner::getNext(**this, v71);
      if (v73 < 0)
      {
        operator delete(v72);
      }

      v21 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 1), 88, 4);
      v17 = v21;
      if (v12)
      {
        v22 = v13 + 1;
      }

      else
      {
        v22 = v13;
      }

      v23 = v12 - (v12 != 0);
      v24 = (*this + 1);
      v25 = v6;
      v26 = v7;
      v27 = 0;
      goto LABEL_65;
    case 11:
    case 13:
    case 15:
      v16 = this[13];
      if (v16 && (v16[4] & 0xFFFFFFFE) == 4)
      {
        goto LABEL_18;
      }

      v20 = "Unexpected token";
      goto LABEL_74;
    case 12:
      llvm::yaml::Scanner::getNext(**this, v68);
      if (v70 < 0)
      {
        operator delete(v69);
      }

      v35 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 1), 88, 4);
      v17 = v35;
      if (v12)
      {
        v36 = v13 + 1;
      }

      else
      {
        v36 = v13;
      }

      v37 = v12 - (v12 != 0);
      v38 = (*this + 1);
      v39 = v6;
      v40 = v7;
      v41 = 1;
LABEL_58:
      llvm::yaml::SequenceNode::SequenceNode(v35, v38, v36, v37, v39, v40, v41);
      goto LABEL_86;
    case 14:
      llvm::yaml::Scanner::getNext(**this, v65);
      if (v67 < 0)
      {
        operator delete(v66);
      }

      v21 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 1), 88, 4);
      v17 = v21;
      if (v12)
      {
        v22 = v13 + 1;
      }

      else
      {
        v22 = v13;
      }

      v23 = v12 - (v12 != 0);
      v24 = (*this + 1);
      v25 = v6;
      v26 = v7;
      v27 = 1;
      goto LABEL_65;
    case 16:
      v21 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 1), 88, 4);
      v17 = v21;
      if (v12)
      {
        v22 = v13 + 1;
      }

      else
      {
        v22 = v13;
      }

      v23 = v12 - (v12 != 0);
      v24 = (*this + 1);
      v25 = v6;
      v26 = v7;
      v27 = 2;
LABEL_65:
      llvm::yaml::MappingNode::MappingNode(v21, v24, v22, v23, v25, v26, v27);
      goto LABEL_86;
    case 18:
      llvm::yaml::Scanner::getNext(**this, v62);
      if (v64 < 0)
      {
        operator delete(v63);
      }

      v28 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 1), 88, 4);
      v17 = v28;
      v29 = *this;
      v30 = (*this + 1);
      if (v12)
      {
        v31 = v13 + 1;
      }

      else
      {
        v31 = v13;
      }

      v32 = v12 - (v12 != 0);
      v33 = *(&v86 + 1);
      v34 = v87;
      *v28 = &unk_2883EB4A0;
      *(v28 + 8) = v30;
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = 1;
      *(v28 + 40) = v31;
      *(v28 + 48) = v32;
      *(v28 + 56) = v6;
      *(v28 + 64) = v7;
      llvm::yaml::Scanner::peekNext(**v29[1]);
      *v17 = &unk_2883EB4E0;
      *(v17 + 72) = v33;
      *(v17 + 80) = v34;
      goto LABEL_85;
    case 19:
      llvm::yaml::Scanner::getNext(**this, v59);
      if (v61 < 0)
      {
        operator delete(v60);
      }

      if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v88.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v88.__r_.__value_.__l.__size_;
      }

      v49 = size + 1;
      if (size == -1)
      {
        v56 = 0;
      }

      else
      {
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v4 = v88.__r_.__value_.__r.__words[0];
        }

        v56 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 1), size + 1, 0);
        memmove(v56, v4, size + 1);
      }

      if (v49 >= size)
      {
        v49 = size;
      }

      v50 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 1), 88, 4);
      v17 = v50;
      v51 = *this;
      v52 = (*this + 1);
      if (v12)
      {
        v53 = v13 + 1;
      }

      else
      {
        v53 = v13;
      }

      v54 = v12 - (v12 != 0);
      v33 = *(&v86 + 1);
      v34 = v87;
      *v50 = &unk_2883EB4A0;
      *(v50 + 8) = v52;
      *(v50 + 16) = 0;
      *(v50 + 24) = 0;
      *(v50 + 32) = 2;
      *(v50 + 40) = v53;
      *(v50 + 48) = v54;
      *(v50 + 56) = v6;
      *(v50 + 64) = v7;
      llvm::yaml::Scanner::peekNext(**v51[1]);
      *v17 = &unk_2883EB500;
      *(v17 + 72) = v56;
      *(v17 + 80) = v49;
LABEL_85:
      *(v17 + 16) = v33;
      *(v17 + 24) = v33 + v34;
      goto LABEL_86;
    case 20:
      llvm::yaml::Scanner::getNext(**this, v83);
      if (v85 < 0)
      {
        operator delete(v84);
      }

      v42 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 1), 88, 4);
      v17 = v42;
      v43 = *this;
      v44 = (*this + 1);
      if (v87)
      {
        v45 = *(&v86 + 1) + 1;
      }

      else
      {
        v45 = *(&v86 + 1);
      }

      v46 = v87 - (v87 != 0);
      *v42 = &unk_2883EB4A0;
      *(v42 + 8) = v44;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = 6;
      *(v42 + 56) = 0u;
      *(v42 + 40) = 0u;
      v47 = llvm::yaml::Scanner::peekNext(**v43[1])[1];
      *(v17 + 16) = v47;
      *(v17 + 24) = v47;
      *v17 = &unk_2883EB580;
      *(v17 + 72) = v45;
      *(v17 + 80) = v46;
      goto LABEL_86;
    case 22:
      if (v9 != 22)
      {
        llvm::yaml::Scanner::getNext(**this, &v77);
        v9 = v77;
        v6 = v78;
        v7 = v79;
        if (v58 < 0)
        {
          operator delete(__p);
        }

        __p = v80;
        v58 = v82;
        goto LABEL_10;
      }

      v20 = "Already encountered a tag for this node!";
LABEL_74:
      v77 = v20;
      v81 = 259;
      llvm::yaml::Scanner::setError(**this, &v77, *(&v86 + 1));
LABEL_75:
      v17 = 0;
LABEL_86:
      if (v58 < 0)
      {
        operator delete(__p);
        if (v10 < 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_88;
        }

LABEL_92:
        operator delete(v11);
      }

LABEL_88:
      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      return v17;
    default:
LABEL_18:
      v17 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 1), 72, 4);
      v18 = (*this + 1);
      *v17 = &unk_2883EB4A0;
      *(v17 + 8) = v18;
      *(v17 + 32) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 56) = 0u;
      *(v17 + 40) = 0u;
      v19 = llvm::yaml::Scanner::peekNext(***v18)[1];
      *(v17 + 16) = v19;
      *(v17 + 24) = v19;
      *v17 = &unk_2883EB4C0;
      goto LABEL_86;
  }
}

const char *llvm::yaml::ScalarNode::getValue(uint64_t a1, uint64_t *a2)
{
  v6 = *(a1 + 72);
  v4 = (a1 + 72);
  v5 = v6;
  v7 = *v6;
  if (v7 == 39)
  {
    v34 = *(a1 + 80);
    v35 = v34 - 2;
    if (v34)
    {
      ++v5;
    }

    v36 = v34 - (v34 != 0);
    if (v36 >= v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = v36;
    }

    if (v37)
    {
      v38 = memchr(v5, 39, v37);
      v39 = v38 - v5;
      if (v38 && v39 != -1)
      {
        a2[1] = 0;
        if (a2[2] < v37)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v37, 1);
        }

        do
        {
          v41 = v5;
          v42 = v37;
          llvm::SmallVectorImpl<char>::insert<char const*,void>(a2, *a2 + a2[1], v5, &v5[v39]);
          llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 39);
          v43 = v39 + 2;
          if (v37 < v39 + 2)
          {
            v43 = v37;
          }

          v5 += v43;
          v37 -= v43;
          if (!v37)
          {
            break;
          }

          v44 = memchr(v5, 39, v37);
          v39 = v44 - v5;
        }

        while (v44 && v39 != -1);
        v32 = *a2 + a2[1];
        v33 = &v41[v42];
LABEL_129:
        llvm::SmallVectorImpl<char>::insert<char const*,void>(a2, v32, v5, v33);
        v5 = *a2;
        v46 = a2[1];
      }
    }
  }

  else if (v7 == 34)
  {
    v8 = *(a1 + 80);
    v9 = v8 - 2;
    if (v8)
    {
      ++v5;
    }

    v10 = v8 - (v8 != 0);
    if (v10 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v49[0] = v5;
    v49[1] = v11;
    first_of = llvm::StringRef::find_first_of(v49, "\\\r\n", 3, 0);
    if (first_of != -1)
    {
      v13 = first_of;
      a2[1] = 0;
      if (a2[2] < v11)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v11, 1);
      }

      while (1)
      {
        llvm::SmallVectorImpl<char>::insert<char const*,void>(a2, *a2 + a2[1], v5, &v5[v13]);
        v15 = v11 >= v13 ? v13 : v11;
        v16 = &v5[v15];
        v17 = v11 - v15;
        v53 = &v5[v15];
        v54 = v11 - v15;
        v18 = v5[v15];
        if (v18 == 13 || v18 == 10)
        {
          break;
        }

        if (v17 == 1)
        {
          goto LABEL_132;
        }

        if (v11 > v13)
        {
          ++v16;
        }

        v17 = (__PAIR128__(v17, v13) - v11) >> 64;
        v53 = v16;
        v54 = v17;
        v23 = *v16;
        if (v23 <= 0x5B)
        {
          if (*v16 <= 0x2Eu)
          {
            if (*v16 <= 0xCu)
            {
              if (v23 == 9)
              {
                goto LABEL_81;
              }

              if (v23 != 10)
              {
LABEL_132:
                v50 = "Unrecognized escape code";
                v52 = 259;
                llvm::yaml::Scanner::setError(****(a1 + 8), &v50, v16);
                return "";
              }
            }

            else if (v23 != 13)
            {
              if (v23 == 32)
              {
                v24 = a2;
                v25 = 32;
              }

              else
              {
                if (v23 != 34)
                {
                  goto LABEL_132;
                }

                v24 = a2;
                v25 = 34;
              }

              goto LABEL_102;
            }

            if (v17 >= 2)
            {
              v20 = v16 + 1;
              v29 = v16[1];
              if (v29 == 13 || v29 == 10)
              {
                --v17;
LABEL_26:
                v16 = v20;
              }
            }
          }

          else
          {
            if (*v16 <= 0x4Du)
            {
              if (v23 == 47)
              {
                v24 = a2;
                v25 = 47;
                goto LABEL_102;
              }

              if (v23 == 48)
              {
                v24 = a2;
                v25 = 0;
                goto LABEL_102;
              }

              if (v23 != 76)
              {
                goto LABEL_132;
              }

              v26 = 8232;
              goto LABEL_99;
            }

            if (v23 == 78)
            {
              llvm::SmallVectorTemplateBase<char,true>::push_back(a2, -62);
              v24 = a2;
              v25 = -123;
              goto LABEL_102;
            }

            if (v23 == 80)
            {
              v26 = 8233;
LABEL_99:
              encodeUTF8(v26, a2);
              goto LABEL_103;
            }

            if (v23 != 85)
            {
              goto LABEL_132;
            }

            if (v17 >= 9)
            {
              v55 = 0;
              v50 = (v16 + 1);
              v51 = 8;
              if ((llvm::consumeUnsignedInteger(&v50, 0x10, &v55, v14) & 1) != 0 || v51 || (v28 = v55, HIDWORD(v55)))
              {
                v28 = 65533;
              }

              encodeUTF8(v28, a2);
              v16 += 8;
              v17 -= 8;
              goto LABEL_95;
            }
          }
        }

        else
        {
          if (*v16 <= 0x6Du)
          {
            if (*v16 > 0x61u)
            {
              switch(v23)
              {
                case 'b':
                  v24 = a2;
                  v25 = 8;
                  break;
                case 'e':
                  v24 = a2;
                  v25 = 27;
                  break;
                case 'f':
                  v24 = a2;
                  v25 = 12;
                  break;
                default:
                  goto LABEL_132;
              }
            }

            else
            {
              switch(v23)
              {
                case '\\':
                  v24 = a2;
                  v25 = 92;
                  break;
                case '_':
                  llvm::SmallVectorTemplateBase<char,true>::push_back(a2, -62);
                  v24 = a2;
                  v25 = -96;
                  break;
                case 'a':
                  v24 = a2;
                  v25 = 7;
                  break;
                default:
                  goto LABEL_132;
              }
            }

            goto LABEL_102;
          }

          if (*v16 <= 0x74u)
          {
            switch(v23)
            {
              case 'n':
                v24 = a2;
                v25 = 10;
                break;
              case 'r':
                v24 = a2;
                v25 = 13;
                break;
              case 't':
LABEL_81:
                v24 = a2;
                v25 = 9;
                break;
              default:
                goto LABEL_132;
            }

LABEL_102:
            llvm::SmallVectorTemplateBase<char,true>::push_back(v24, v25);
            goto LABEL_103;
          }

          switch(v23)
          {
            case 'u':
              if (v17 >= 5)
              {
                v55 = 0;
                v50 = (v16 + 1);
                v51 = 4;
                if ((llvm::consumeUnsignedInteger(&v50, 0x10, &v55, v14) & 1) != 0 || v51 || (v30 = v55, HIDWORD(v55)))
                {
                  v30 = 65533;
                }

                encodeUTF8(v30, a2);
                v16 += 4;
                v17 -= 4;
                goto LABEL_95;
              }

              break;
            case 'v':
              v24 = a2;
              v25 = 11;
              goto LABEL_102;
            case 'x':
              if (v17 >= 3)
              {
                v55 = 0;
                v50 = (v16 + 1);
                v51 = 2;
                if ((llvm::consumeUnsignedInteger(&v50, 0x10, &v55, v14) & 1) != 0 || v51 || (v27 = v55, HIDWORD(v55)))
                {
                  v27 = 65533;
                }

                encodeUTF8(v27, a2);
                v16 += 2;
                v17 -= 2;
LABEL_95:
                v53 = v16;
                v54 = v17;
              }

              break;
            default:
              goto LABEL_132;
          }
        }

LABEL_103:
        v31 = v17 != 0;
        if (v17)
        {
          v5 = v16 + 1;
        }

        else
        {
          v5 = v16;
        }

        v11 = v17 - v31;
        v53 = v5;
        v54 = v17 - v31;
        v13 = llvm::StringRef::find_first_of(&v53, "\\\r\n", 3, 0);
        if (v13 == -1)
        {
          v32 = *a2 + a2[1];
          v33 = &v16[v17];
          goto LABEL_129;
        }
      }

      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 10);
      if (v17 < 2)
      {
        goto LABEL_103;
      }

      v20 = v16 + 1;
      v21 = v16[1];
      if (v21 != 13 && v21 != 10)
      {
        goto LABEL_103;
      }

      --v17;
      v53 = v16 + 1;
      v54 = v17;
      goto LABEL_26;
    }
  }

  else
  {
    v47 = *(a1 + 80);
    llvm::StringRef::find_last_not_of(v4, "\n\r \t", 4, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v5;
}

unint64_t llvm::yaml::KeyValueNode::getKey(llvm::yaml::KeyValueNode *this)
{
  v1 = *(this + 9);
  if (!v1)
  {
    v3 = *llvm::yaml::Scanner::peekNext(****(this + 1));
    if (v3 > 15)
    {
      if (v3 == 17)
      {
        goto LABEL_17;
      }

      if (v3 == 16)
      {
        llvm::yaml::Scanner::getNext(****(this + 1), &v10);
        if (v12 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      if (v3)
      {
        v4 = v3 == 8;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        goto LABEL_17;
      }
    }

    v5 = *llvm::yaml::Scanner::peekNext(****(this + 1));
    if (v5 != 17 && v5 != 8)
    {
      v1 = llvm::yaml::Document::parseBlockNode(**(this + 1));
LABEL_18:
      *(this + 9) = v1;
      return v1;
    }

LABEL_17:
    v1 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(**(this + 1) + 8, 72, 4);
    v7 = *(this + 1);
    *v1 = &unk_2883EB4A0;
    *(v1 + 8) = v7;
    *(v1 + 32) = 0;
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 56) = 0u;
    *(v1 + 40) = 0u;
    v8 = llvm::yaml::Scanner::peekNext(***v7)[1];
    *(v1 + 16) = v8;
    *(v1 + 24) = v8;
    *v1 = &unk_2883EB4C0;
    goto LABEL_18;
  }

  return v1;
}

uint64_t llvm::yaml::NullNode::NullNode(uint64_t a1, uint64_t *****a2)
{
  *a1 = &unk_2883EB4A0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = llvm::yaml::Scanner::peekNext(***a2)[1];
  *(a1 + 16) = v3;
  *(a1 + 24) = v3;
  *a1 = &unk_2883EB4C0;
  return a1;
}

unint64_t llvm::yaml::KeyValueNode::getValue(llvm::yaml::KeyValueNode *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    Key = llvm::yaml::KeyValueNode::getKey(this);
    if (Key)
    {
      (*(*Key + 8))(Key);
      v4 = **(this + 1);
      v5 = **v4;
      if (*(v5 + 74) == 1)
      {
LABEL_16:
        v1 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v4 + 1), 72, 4);
        v11 = *(this + 1);
        *v1 = &unk_2883EB4A0;
        *(v1 + 8) = v11;
        *(v1 + 32) = 0;
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
        *(v1 + 56) = 0u;
        *(v1 + 40) = 0u;
        v12 = llvm::yaml::Scanner::peekNext(***v11)[1];
        *(v1 + 16) = v12;
        *(v1 + 24) = v12;
        *v1 = &unk_2883EB4C0;
        goto LABEL_17;
      }

      v6 = llvm::yaml::Scanner::peekNext(v5);
      v7 = *v6;
      if (*v6 > 0x11u)
      {
        goto LABEL_19;
      }

      if (((1 << v7) & 0x18901) == 0)
      {
        if (v7 == 17)
        {
          llvm::yaml::Scanner::getNext(****(this + 1), v14);
          if (v16 < 0)
          {
            operator delete(__p);
          }

          v8 = *llvm::yaml::Scanner::peekNext(****(this + 1));
          if (v8 != 16 && v8 != 8)
          {
            v1 = llvm::yaml::Document::parseBlockNode(**(this + 1));
LABEL_17:
            *(this + 10) = v1;
            return v1;
          }

LABEL_20:
          v1 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(**(this + 1) + 8, 72, 4);
          llvm::yaml::NullNode::NullNode(v1, *(this + 1));
          goto LABEL_17;
        }

LABEL_19:
        v17[0] = "Unexpected token in Key Value.";
        v18 = 259;
        llvm::yaml::Scanner::setError(****(this + 1), v17, v6[1]);
        goto LABEL_20;
      }
    }

    else
    {
      v17[0] = "Null key in Key Value.";
      v18 = 259;
      v10 = llvm::yaml::Scanner::peekNext(****(this + 1));
      llvm::yaml::Scanner::setError(****(this + 1), v17, v10[1]);
    }

    v4 = **(this + 1);
    goto LABEL_16;
  }

  return v1;
}

void llvm::yaml::MappingNode::increment(llvm::yaml::MappingNode *this)
{
  v2 = ****(this + 1);
  v3 = *(v2 + 74);
  if (v3 == 1)
  {
    goto LABEL_5;
  }

  if (*(this + 10))
  {
    llvm::yaml::KeyValueNode::skip(*(this + 10));
    if (*(this + 18) == 2)
    {
      LOBYTE(v3) = 1;
LABEL_5:
      *(this + 77) = v3;
      *(this + 10) = 0;
      return;
    }

    v2 = ****(this + 1);
  }

  v4 = llvm::yaml::Scanner::peekNext(v2);
  v5 = v4[2];
  v23 = *v4;
  v24 = v5;
  if (*(v4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v4[3], v4[4]);
  }

  else
  {
    v6 = *(v4 + 3);
    v25.__r_.__value_.__r.__words[2] = v4[5];
    *&v25.__r_.__value_.__l.__data_ = v6;
  }

  if ((v23 & 0xFFFFFFFD) == 0x10)
  {
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(**(this + 1) + 8, 88, 4);
    v8 = *(this + 1);
    *v7 = &unk_2883EB4A0;
    *(v7 + 8) = v8;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 3;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    v9 = llvm::yaml::Scanner::peekNext(***v8)[1];
    *(v7 + 16) = v9;
    *(v7 + 24) = v9;
    *v7 = &unk_2883EB520;
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    *(this + 10) = v7;
    goto LABEL_30;
  }

  if (*(this + 18))
  {
    if (v23)
    {
      if (v23 != 15)
      {
        if (v23 == 11)
        {
          llvm::yaml::Scanner::getNext(****(this + 1), v15);
          if (v17 < 0)
          {
            operator delete(__p);
          }

          llvm::yaml::MappingNode::increment(this);
          goto LABEL_30;
        }

        v11 = "Unexpected token. Expected Key, Flow Entry, or Flow Mapping End.";
        goto LABEL_28;
      }

      llvm::yaml::Scanner::getNext(****(this + 1), v12);
      if (v14 < 0)
      {
        v10 = v13;
        goto LABEL_25;
      }
    }
  }

  else if (v23)
  {
    if (v23 != 8)
    {
      v11 = "Unexpected token. Expected Key or Block End";
LABEL_28:
      v18 = v11;
      v19 = 259;
      llvm::yaml::Scanner::setError(****(this + 1), &v18, *(&v23 + 1));
      goto LABEL_29;
    }

    llvm::yaml::Scanner::getNext(****(this + 1), v20);
    if (v22 < 0)
    {
      v10 = v21;
LABEL_25:
      operator delete(v10);
    }
  }

LABEL_29:
  *(this + 77) = 1;
  *(this + 10) = 0;
LABEL_30:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

unint64_t llvm::yaml::KeyValueNode::skip(llvm::yaml::KeyValueNode *this)
{
  result = llvm::yaml::KeyValueNode::getKey(this);
  if (result)
  {
    (*(*result + 8))(result);
    result = llvm::yaml::KeyValueNode::getValue(this);
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void llvm::yaml::SequenceNode::increment(llvm::yaml::SequenceNode *this)
{
  v2 = ****(this + 1);
  if (*(v2 + 74) == 1)
  {
    *(this + 77) = 1;
    *(this + 10) = 0;
    return;
  }

  v3 = *(this + 10);
  if (v3)
  {
    (*(*v3 + 8))(*(this + 10));
    v2 = ****(this + 1);
  }

  v4 = llvm::yaml::Scanner::peekNext(v2);
  v5 = v4[2];
  v30 = *v4;
  v31 = v5;
  if (*(v4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, v4[3], v4[4]);
  }

  else
  {
    v6 = *(v4 + 3);
    v32.__r_.__value_.__r.__words[2] = v4[5];
    *&v32.__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(this + 18);
  if (v7 == 2)
  {
    if (v30 == 7)
    {
      llvm::yaml::Scanner::getNext(****(this + 1), v19);
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      v8 = v20;
LABEL_26:
      operator delete(v8);
LABEL_27:
      v9 = llvm::yaml::Document::parseBlockNode(**(this + 1));
      *(this + 10) = v9;
      if (v9)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if (v7 != 1)
  {
    if (v7)
    {
      goto LABEL_45;
    }

    if (!v30)
    {
      goto LABEL_44;
    }

    if (v30 != 8)
    {
      if (v30 == 7)
      {
        llvm::yaml::Scanner::getNext(****(this + 1), v27);
        if ((v29 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v8 = v28;
        goto LABEL_26;
      }

      v10 = "Unexpected token. Expected Block Entry or Block End.";
      goto LABEL_43;
    }

    llvm::yaml::Scanner::getNext(****(this + 1), v24);
    if (v26 < 0)
    {
      v11 = v25;
LABEL_41:
      operator delete(v11);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if (v30 <= 4)
  {
    if (!v30)
    {
      goto LABEL_44;
    }

    if (v30 != 2)
    {
      goto LABEL_35;
    }

LABEL_31:
    v10 = "Could not find closing ]!";
LABEL_43:
    v22 = v10;
    v23 = 259;
    llvm::yaml::Scanner::setError(****(this + 1), &v22, *(&v30 + 1));
    goto LABEL_44;
  }

  if ((v30 - 5) < 2)
  {
    goto LABEL_31;
  }

  if (v30 != 13)
  {
    if (v30 == 11)
    {
      llvm::yaml::Scanner::getNext(****(this + 1), v16);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      *(this + 78) = 1;
      llvm::yaml::SequenceNode::increment(this);
      goto LABEL_45;
    }

LABEL_35:
    if (*(this + 78))
    {
      v12 = llvm::yaml::Document::parseBlockNode(**(this + 1));
      *(this + 10) = v12;
      if (!v12)
      {
        *(this + 77) = 1;
      }

      *(this + 78) = 0;
      goto LABEL_45;
    }

    v10 = "Expected , between entries!";
    goto LABEL_43;
  }

  llvm::yaml::Scanner::getNext(****(this + 1), v13);
  if (v15 < 0)
  {
    v11 = v14;
    goto LABEL_41;
  }

LABEL_44:
  *(this + 77) = 1;
  *(this + 10) = 0;
LABEL_45:
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

llvm::yaml::Document *llvm::yaml::Document::Document(llvm::yaml::Document *this, llvm::yaml::Stream *a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = this + 40;
  *(this + 4) = 0x400000000;
  *(this + 11) = 0;
  *(this + 9) = this + 88;
  *(this + 10) = 0;
  *(this + 12) = 1;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 14) = this + 120;
  v3 = this + 112;
  *(this + 16) = 0;
  v36 = "!";
  *&v37 = 1;
  v4 = std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__emplace_unique_key_args<llvm::StringRef,std::piecewise_construct_t const&,std::tuple<llvm::StringRef&&>,std::tuple<>>(this + 112, &v36);
  *(v4 + 48) = "!";
  *(v4 + 56) = 1;
  v36 = "!!";
  *&v37 = 2;
  *&v30 = &v36;
  v5 = std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__emplace_unique_key_args<llvm::StringRef,std::piecewise_construct_t const&,std::tuple<llvm::StringRef&&>,std::tuple<>>(v3, &v36);
  v6 = 0;
  *(v5 + 48) = "tag:yaml.org,2002:";
  *(v5 + 56) = 18;
  do
  {
    while (1)
    {
      v7 = llvm::yaml::Scanner::peekNext(**this);
      v8 = v7[2];
      v30 = *v7;
      v31 = v8;
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v7[3], v7[4]);
      }

      else
      {
        v9 = *(v7 + 3);
        __p.__r_.__value_.__r.__words[2] = v7[5];
        *&__p.__r_.__value_.__l.__data_ = v9;
      }

      if (v30 == 3)
      {
        llvm::yaml::Scanner::getNext(**this, &v36);
      }

      else
      {
        if (v30 != 4)
        {
          v25 = 0;
          goto LABEL_27;
        }

        llvm::yaml::Scanner::getNext(**this, &v36);
        v35 = v37;
        first_of = llvm::StringRef::find_first_of(&v35, " \t", 2, 0);
        if (*(&v35 + 1) >= first_of)
        {
          v11 = first_of;
        }

        else
        {
          v11 = *(&v35 + 1);
        }

        v12 = v35 + v11;
        v13 = *(&v35 + 1) - v11;
        *&v34 = v35 + v11;
        *(&v34 + 1) = *(&v35 + 1) - v11;
        first_not_of = llvm::StringRef::find_first_not_of(&v34, " \t", 2, 0);
        if (first_not_of >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = first_not_of;
        }

        v16 = v12 + v15;
        v17 = v13 - v15;
        *&v35 = v16;
        *(&v35 + 1) = v17;
        v18 = llvm::StringRef::find_first_of(&v35, " \t", 2, 0);
        if (v17 >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }

        *&v34 = v16;
        *(&v34 + 1) = v19;
        v20 = v16 + v19;
        v21 = v17 - v19;
        v33[0] = v16 + v19;
        v33[1] = v17 - v19;
        v22 = llvm::StringRef::find_first_not_of(v33, " \t", 2, 0);
        if (v22 >= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        v24 = *std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__find_equal<llvm::StringRef>(v3, v33, &v34);
        if (!v24)
        {
          operator new();
        }

        *(v24 + 48) = v20 + v23;
        *(v24 + 56) = v21 - v23;
      }

      if (v39 < 0)
      {
        operator delete(v38);
      }

      v6 = 1;
      v25 = 1;
LABEL_27:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  while ((v25 & 1) != 0);
LABEL_31:
  if (v6)
  {
    llvm::yaml::Scanner::getNext(**this, &v36);
    if (v36 != 5)
    {
      *&v30 = "Unexpected token";
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 259;
      llvm::yaml::Scanner::setError(**this, &v30, v37);
    }

    if (v39 < 0)
    {
      operator delete(v38);
    }
  }

  if (*llvm::yaml::Scanner::peekNext(**this) == 5)
  {
    llvm::yaml::Scanner::getNext(**this, &v27);
    if (v29 < 0)
    {
      operator delete(v28);
    }
  }

  return this;
}

uint64_t llvm::yaml::SequenceNode::SequenceNode(uint64_t a1, uint64_t *****a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *a1 = &unk_2883EB4A0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 5;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  v9 = llvm::yaml::Scanner::peekNext(***a2)[1];
  *(a1 + 16) = v9;
  *(a1 + 24) = v9;
  *a1 = &unk_2883EB560;
  *(a1 + 72) = a7;
  *(a1 + 76) = 1;
  *(a1 + 78) = 1;
  *(a1 + 80) = 0;
  return a1;
}

uint64_t llvm::yaml::MappingNode::MappingNode(uint64_t a1, uint64_t *****a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *a1 = &unk_2883EB4A0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 4;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  v9 = llvm::yaml::Scanner::peekNext(***a2)[1];
  *(a1 + 16) = v9;
  *(a1 + 24) = v9;
  *a1 = &unk_2883EB540;
  *(a1 + 72) = a7;
  *(a1 + 76) = 1;
  *(a1 + 80) = 0;
  return a1;
}

llvm::yaml::MappingNode *llvm::yaml::MappingNode::skip(llvm::yaml::MappingNode *this)
{
  if (*(this + 76) == 1)
  {
    v1 = this;
    *(this + 76) = 0;
    while (1)
    {
      llvm::yaml::MappingNode::increment(v1);
      this = *(v1 + 10);
      if (!this)
      {
        break;
      }

      llvm::yaml::KeyValueNode::skip(this);
    }
  }

  return this;
}

llvm::yaml::SequenceNode *llvm::yaml::SequenceNode::skip(llvm::yaml::SequenceNode *this)
{
  if (*(this + 76) == 1)
  {
    v1 = this;
    *(this + 76) = 0;
    while (1)
    {
      llvm::yaml::SequenceNode::increment(v1);
      this = *(v1 + 10);
      if (!this)
      {
        break;
      }

      (*(*this + 8))(this);
    }
  }

  return this;
}

void std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *llvm::simple_ilist<llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Node>::eraseAndDispose<llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Disposer>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    do
    {
      v4 = *a2;
      v5 = a2[1];
      *v5 = *a2;
      *(v4 + 8) = v5;
      *a2 = 0;
      a2[1] = 0;
      if (*(a2 + 63) < 0)
      {
        operator delete(a2[5]);
      }

      a2 = v5;
    }

    while (v5 != a3);
  }

  return a3;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(uint64_t result)
{
  v1 = result;
  v2 = *(result + 72);
  if (v2)
  {
    v3 = *(result + 64);
    v4 = 16 * v2;
    do
    {
      v5 = *v3;
      v3 += 2;
      result = MEMORY[0x277C69E30](v5, 8);
      v4 -= 16;
    }

    while (v4);
  }

  *(v1 + 72) = 0;
  v6 = *(v1 + 24);
  if (v6)
  {
    *(v1 + 80) = 0;
    v7 = *(v1 + 16);
    v8 = *v7 + 4096;
    *v1 = *v7;
    *(v1 + 8) = v8;
    if (v6 != 1)
    {
      v9 = v7 + 1;
      v10 = 8 * v6 - 8;
      do
      {
        v11 = *v9++;
        result = MEMORY[0x277C69E30](v11, 8);
        v10 -= 8;
      }

      while (v10);
    }

    *(v1 + 24) = 1;
  }

  return result;
}

unint64_t llvm::AllocatorList<llvm::yaml::Token,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::create<llvm::yaml::Token const&>(uint64_t a1, __int128 *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 64, 3);
  v4 = v3;
  *v3 = 0;
  *(v3 + 8) = 0;
  v5 = *a2;
  *(v3 + 32) = *(a2 + 2);
  *(v3 + 16) = v5;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 40), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v3 + 56) = *(a2 + 5);
    *(v3 + 40) = v6;
  }

  return v4;
}

uint64_t std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::find<llvm::StringRef>(uint64_t a1, __int128 *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *a2;
    v7 = *(a2 + 1);
    v12 = *(v3 + 32);
    v8 = llvm::StringRef::compare(&v12, v6, v7);
    if (v8 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v8 >> 28) & 8));
  }

  while (v3);
  if (v2 == v5)
  {
    return v2;
  }

  v9 = *(v5 + 32);
  v10 = *(v5 + 40);
  v12 = *a2;
  if ((llvm::StringRef::compare(&v12, v9, v10) & 0x80000000) != 0)
  {
    return v2;
  }

  return v5;
}

char *llvm::SmallVectorImpl<char>::insert<char const*,void>(uint64_t *a1, uint64_t a2, char *__src, char *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a1[1];
  v9 = a2 - *a1;
  if (*a1 + v8 == a2)
  {
    llvm::SmallVectorImpl<char>::append<char const*,void>(a1, __src, a4);
    return (*a1 + v9);
  }

  v10 = a4 - __src;
  v11 = v8 + a4 - __src;
  if (a1[2] < v11)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v11, 1);
    v7 = *a1;
    v8 = a1[1];
  }

  v12 = (v7 + v9);
  v13 = (v7 + v8);
  v14 = v8 - v9;
  if (v8 - v9 < v10)
  {
    a1[1] = v8 + v10;
    if (v8 != v9)
    {
      memcpy((v7 + v10 + v9), v12, v8 - v9);
    }

    if (v14)
    {
      v15 = v12;
      do
      {
        v16 = *v5++;
        *v15++ = v16;
        --v14;
      }

      while (v14);
    }

    if (v5 != a4)
    {
      memcpy(v13, v5, a4 - v5);
    }

    return v12;
  }

  llvm::SmallVectorImpl<char>::append<std::__wrap_iter<char *>,void>(a1, &v13[-v10], (v7 + v8));
  if (&v13[-v10] != v12)
  {
    memmove(&v12[v10], v12, &v13[-v10] - v12);
  }

  if (a4 == v5)
  {
    return v12;
  }

  return memmove(v12, v5, a4 - v5);
}

uint64_t std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__emplace_unique_key_args<llvm::StringRef,std::piecewise_construct_t const&,std::tuple<llvm::StringRef&&>,std::tuple<>>(uint64_t a1, __int128 *a2)
{
  v2 = *std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__find_equal<llvm::StringRef>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__find_equal<llvm::StringRef>(uint64_t a1, void *a2, __int128 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = v4[4];
        v9 = v4[5];
        v13 = *a3;
        if ((llvm::StringRef::compare(&v13, v8, v9) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      v10 = *a3;
      v11 = *(a3 + 1);
      v13 = *(v7 + 2);
      if ((llvm::StringRef::compare(&v13, v10, v11) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void llvm::yaml::Input::Input(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2883EB5A0;
  *(a1 + 8) = a4;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 16) = 0u;
  operator new();
}

void llvm::yaml::Input::~Input(llvm::yaml::Input *this)
{
  *this = &unk_2883EB5A0;
  v2 = *(this + 28);
  if (v2 != this + 240)
  {
    free(v2);
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 120);
  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    llvm::yaml::Stream::~Stream(v4);
    MEMORY[0x277C69E40]();
  }

  llvm::SourceMgr::~SourceMgr((this + 16));
}

{
  llvm::yaml::Input::~Input(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::yaml::Input::setCurrentDocument(llvm::yaml::Input *this)
{
  v2 = (this + 216);
  v1 = *(this + 27);
  if (v1)
  {
    do
    {
      v4 = *v1;
      if (!*v1)
      {
        break;
      }

      v5 = v4[13];
      if (!v5)
      {
        v5 = llvm::yaml::Document::parseBlockNode(*v1);
        v4[13] = v5;
        if (!v5)
        {
          v9 = std::generic_category();
          result = 0;
          *(this + 13) = 22;
          *(this + 14) = v9;
          return result;
        }
      }

      if (*(v5 + 8))
      {
        llvm::yaml::Input::createHNodes(this, v5, &v10);
        v7 = v10;
        v8 = *(this + 12);
        *(this + 12) = v10;
        if (v8)
        {
          (*(*v8 + 16))(v8);
          v7 = *(this + 12);
        }

        *(this + 37) = v7;
        return 1;
      }

      llvm::yaml::document_iterator::operator++(v2);
      v1 = *v2;
    }

    while (*v2);
  }

  return 0;
}

void llvm::yaml::Input::createHNodes(llvm **this@<X0>, llvm::yaml::Node *a2@<X1>, void *a3@<X8>)
{
  v18[16] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_2750C1290;
  v5 = *(a2 + 8);
  if (a2 && v5 == 1)
  {
    llvm::yaml::ScalarNode::getValue(a2, &v16);
    v6 = v17;
    if (v17)
    {
      v7 = v16;
      v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 15), v17, 0);
      memmove(v8, v7, v6);
    }

    operator new();
  }

  if (a2 && v5 == 2)
  {
    v9 = *(a2 + 10);
    if (v9)
    {
      v10 = *(a2 + 9);
      v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((this + 15), *(a2 + 10), 0);
      memmove(v11, v10, v9);
    }

    operator new();
  }

  if (a2 && v5 == 5)
  {
    operator new();
  }

  if (a2 && v5 == 4)
  {
    operator new();
  }

  if (!v5)
  {
    operator new();
  }

  v14 = "unknown node kind";
  v15 = 259;
  llvm::yaml::Stream::printError(this[11], a2, &v14, 0);
  v12 = std::generic_category();
  this[13] = 22;
  this[14] = v12;
  *a3 = 0;
  if (v16 != v18)
  {
    free(v16);
  }

  v13 = *MEMORY[0x277D85DE8];
}

BOOL llvm::yaml::Input::mapTag(uint64_t a1, const void *a2, size_t a3, _BOOL8 a4)
{
  v4 = *(a1 + 296);
  if (!v4)
  {
    return 0;
  }

  llvm::yaml::Node::getVerbatimTag(*(v4 + 8), __p);
  v8 = v13;
  v9 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  if (a3 == v8)
  {
    if ((v13 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    a4 = memcmp(a2, v10, a3) == 0;
LABEL_10:
    if (v9 < 0)
    {
      goto LABEL_14;
    }

    return a4;
  }

  a4 = 0;
  if (v13 < 0)
  {
LABEL_14:
    operator delete(__p[0]);
  }

  return a4;
}

void llvm::yaml::Input::beginMapping(llvm::yaml::Input *this)
{
  if (!*(this + 26))
  {
    v1 = *(this + 37);
    if (v1)
    {
      if (*(*(v1 + 8) + 32) == 4)
      {
        llvm::SmallVectorImpl<std::string>::clear(v1 + 40);
      }
    }
  }
}

void llvm::SmallVectorImpl<std::string>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 24 * v2 - 1;
    v4 = -24 * v2;
    v5 = v3;
    do
    {
      v6 = *v5;
      v5 -= 24;
      if (v6 < 0)
      {
        operator delete(*(v3 - 23));
      }

      v3 = v5;
      v4 += 24;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

void llvm::yaml::Input::keys(llvm::yaml::Input *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 37);
  v4 = *(v3 + 8);
  v5 = *(v4 + 32);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v3)
  {
    v6 = v5 == 4;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    if (v10)
    {
        ;
      }
    }

    else
    {
      i = v9;
    }

    v13 = &v9[v10];
    if (i != v13)
    {
      v14 = 0;
      v15 = *i;
      do
      {
        v18 = *v15;
        v16 = v15 + 4;
        v17 = v18;
        v19 = *(a2 + 16);
        if (v14 >= v19)
        {
          v20 = (v14 - *a2) >> 4;
          if ((v20 + 1) >> 60)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v21 = v19 - *a2;
          v22 = v21 >> 3;
          if (v21 >> 3 <= (v20 + 1))
          {
            v22 = v20 + 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF0)
          {
            v23 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>(a2, v23);
          }

          v24 = (16 * v20);
          *v24 = v16;
          v24[1] = v17;
          v14 = (16 * v20 + 16);
          v25 = *(a2 + 8) - *a2;
          v26 = v24 - v25;
          memcpy(v24 - v25, *a2, v25);
          v27 = *a2;
          *a2 = v26;
          *(a2 + 8) = v14;
          *(a2 + 16) = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v14 = v16;
          v14[1] = v17;
          v14 += 2;
        }

        *(a2 + 8) = v14;
        do
        {
          v28 = i[1];
          ++i;
          v15 = v28;
          if (v28)
          {
            v29 = v15 + 1 == 0;
          }

          else
          {
            v29 = 1;
          }
        }

        while (v29);
      }

      while (i != v13);
    }
  }

  else
  {
    v30 = "not a mapping";
    v31 = 259;
    llvm::yaml::Stream::printError(*(this + 11), v4, &v30, 0);
    v8 = std::generic_category();
    *(this + 13) = 22;
    *(this + 14) = v8;
  }
}

uint64_t llvm::yaml::Input::preflightKey(llvm::yaml::Input *this, char *__s, int a3, BOOL a4, BOOL *a5, void **a6)
{
  *a5 = 0;
  if (*(this + 26))
  {
    return 0;
  }

  v9 = *(this + 37);
  if (!v9)
  {
    if (!a3)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v12 = *(v9 + 8);
  v13 = *(v12 + 32);
  if (v13 == 4)
  {
    v15 = strlen(__s);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v33) = v15;
    if (v15)
    {
      memcpy(&__dst, __s, v15);
    }

    *(&__dst + v16) = 0;
    v18 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(v9 + 40, &__dst, 1);
    v19 = *(v9 + 40) + 24 * *(v9 + 48);
    v20 = *v18;
    *(v19 + 16) = *(v18 + 16);
    *v19 = v20;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = 0;
    ++*(v9 + 48);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__dst);
    }

    if (__s)
    {
      v21 = strlen(__s);
    }

    else
    {
      v21 = 0;
    }

    v22 = (*llvm::StringMap<std::pair<std::unique_ptr<llvm::yaml::Input::HNode>,llvm::SMRange>,llvm::MallocAllocator>::try_emplace<>((v9 + 16), __s, v21))[1];
    if (v22)
    {
      *a6 = *(this + 37);
      *(this + 37) = v22;
      return 1;
    }

    if (a3)
    {
      v23 = *(this + 37);
      v24 = *__s;
      if (*__s)
      {
        v29[2] = __s;
        v25 = 3;
        v26 = 2;
      }

      else
      {
        v25 = 1;
        v26 = 3;
      }

      v29[0] = "missing required key '";
      v30 = 3;
      v31 = v25;
      v17 = v24 == 0;
      v27 = v29;
      if (v17)
      {
        v27 = "missing required key '";
      }

      __dst = v27;
      v33 = "'";
      LOBYTE(v34) = v26;
      HIBYTE(v34) = 3;
      v12 = *(v23 + 8);
      goto LABEL_33;
    }

LABEL_28:
    result = 0;
    *a5 = 1;
    return result;
  }

  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = a3 == 0;
  }

  if (v17)
  {
    goto LABEL_28;
  }

  __dst = "not a mapping";
  v34 = 259;
LABEL_33:
  llvm::yaml::Stream::printError(*(this + 11), v12, &__dst, 0);
LABEL_34:
  v28 = std::generic_category();
  result = 0;
  *(this + 13) = 22;
  *(this + 14) = v28;
  return result;
}

void llvm::yaml::Input::endMapping(llvm::yaml::Input *this)
{
  if (!*(this + 26))
  {
    v23 = v1;
    v24 = v2;
    v4 = *(this + 37);
    if (v4)
    {
      if (*(*(v4 + 8) + 32) == 4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
            ;
          }
        }

        else
        {
          i = *(v4 + 16);
        }

        v8 = *(v4 + 16) + 8 * v5;
        if (i != v8)
        {
          v9 = *i;
          do
          {
            v10 = *v9;
            v20[0] = (v9 + 32);
            v20[1] = v10;
            if (std::__find[abi:nn200100]<std::string *,std::string *,llvm::StringRef,std::__identity>(*(v4 + 40), (*(v4 + 40) + 24 * *(v4 + 48)), v20) == (*(v4 + 40) + 24 * *(v4 + 48)))
            {
              if (*(this + 305) != 1)
              {
                v14 = *v9;
                v16[0] = "unknown key '";
                v17 = v9 + 32;
                v18 = v14;
                v19 = 1283;
                v20[0] = v16;
                v21 = "'";
                v22 = 770;
                llvm::yaml::Stream::printError(*(this + 11), (v9 + 16), v20, 0);
                v15 = std::generic_category();
                *(this + 13) = 22;
                *(this + 14) = v15;
                return;
              }

              v11 = *v9;
              v16[0] = "unknown key '";
              v17 = v9 + 32;
              v18 = v11;
              v19 = 1283;
              v20[0] = v16;
              v21 = "'";
              v22 = 770;
              llvm::yaml::Stream::printError(*(this + 11), (v9 + 16), v20, 1);
            }

            do
            {
              v12 = i[1];
              ++i;
              v9 = v12;
              if (v12)
              {
                v13 = v9 == -8;
              }

              else
              {
                v13 = 1;
              }
            }

            while (v13);
          }

          while (i != v8);
        }
      }
    }
  }
}

uint64_t llvm::yaml::Input::beginSequence(llvm::yaml::Input *this)
{
  v1 = *(this + 37);
  v2 = v1[1];
  v3 = *(v2 + 32);
  if (v1)
  {
    v4 = v3 == 5;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return (v1[3] - v1[2]) >> 3;
  }

  if (v3)
  {
    if (v1)
    {
      v6 = v3 > 2;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_15;
    }

    v7 = v1[2];
    v8 = v1[3];
    if (v8 == 1)
    {
      if (*v7 != 126)
      {
LABEL_15:
        v11 = "not a sequence";
        v12 = 259;
        llvm::yaml::Stream::printError(*(this + 11), v2, &v11, 0);
        v9 = std::generic_category();
        result = 0;
        *(this + 13) = 22;
        *(this + 14) = v9;
        return result;
      }
    }

    else if (v8 != 4 || *v7 != 1819047278 && *v7 != 1819047246 && *v7 != 1280070990)
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t llvm::yaml::Input::preflightElement(llvm::yaml::Input *this, unsigned int a2, void **a3)
{
  if (*(this + 26))
  {
    return 0;
  }

  v3 = *(this + 37);
  if (!v3 || *(v3[1] + 32) != 5)
  {
    return 0;
  }

  *a3 = v3;
  *(this + 37) = *(v3[2] + 8 * a2);
  return 1;
}

uint64_t llvm::yaml::Input::preflightFlowElement(llvm::yaml::Input *this, unsigned int a2, void **a3)
{
  if (*(this + 26))
  {
    return 0;
  }

  v3 = *(this + 37);
  if (!v3 || *(v3[1] + 32) != 5)
  {
    return 0;
  }

  *a3 = v3;
  *(this + 37) = *(v3[2] + 8 * a2);
  return 1;
}

uint64_t llvm::yaml::Input::matchEnumScalar(llvm::yaml::Input *this, const char *__s)
{
  if (*(this + 304))
  {
    return 0;
  }

  v4 = *(this + 37);
  if (v4)
  {
    v5 = (*(v4[1] + 32) - 3) >= 0xFFFFFFFE;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = v4[3];
  if (__s)
  {
    v8 = v4[2];
    if (v7 == strlen(__s) && (!v7 || !memcmp(v8, __s, v7)))
    {
      goto LABEL_12;
    }
  }

  else if (!v7)
  {
LABEL_12:
    result = 1;
    *(this + 304) = 1;
    return result;
  }

  return 0;
}

uint64_t llvm::yaml::Input::matchEnumFallback(llvm::yaml::Input *this)
{
  v1 = *(this + 304);
  if ((v1 & 1) == 0)
  {
    *(this + 304) = 1;
  }

  return v1 ^ 1u;
}

const std::error_category *llvm::yaml::Input::endEnumScalar(const std::error_category *this)
{
  if ((this[38].__vftable & 1) == 0)
  {
    v1 = this;
    v2 = this[37].__vftable;
    v3 = "unknown enumerated scalar";
    v4 = 259;
    llvm::yaml::Stream::printError(this[11].__vftable, v2->~error_category_0, &v3, 0);
    this = std::generic_category();
    v1[13].__vftable = 22;
    v1[14].__vftable = this;
  }

  return this;
}

uint64_t llvm::yaml::Input::beginBitSetScalar(llvm::yaml::Input *this, BOOL *a2)
{
  *(this + 72) = 0;
  *(this + 58) = 0;
  v4 = *(this + 37);
  v5 = v4[1];
  if (v4)
  {
    v6 = *(v5 + 32) == 5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    llvm::BitVector::resize(this + 56, (v4[3] - v4[2]) >> 3, 0);
  }

  else
  {
    v9 = "expected sequence of bit values";
    v10 = 259;
    llvm::yaml::Stream::printError(*(this + 11), v5, &v9, 0);
    v7 = std::generic_category();
    *(this + 13) = 22;
    *(this + 14) = v7;
  }

  *a2 = 1;
  return 1;
}

unsigned int *llvm::BitVector::resize(unsigned int *this, unsigned int a2, uint64_t a3)
{
  v3 = this;
  if ((this[16] & 0x3F) != 0)
  {
    v4 = -1 << (this[16] & 0x3F);
    v5 = this[2];
    v6 = *this + 8 * v5;
    if (a3)
    {
      v7 = *(v6 - 8) | v4;
    }

    else
    {
      v7 = *(v6 - 8) & ~v4;
    }

    *(v6 - 8) = v7;
  }

  else
  {
    v5 = this[2];
  }

  this[16] = a2;
  if (v5 != (a2 + 63) >> 6)
  {
    v8 = (a2 + 63) >> 6;
    if (v5 <= v8)
    {
      this = llvm::SmallVectorImpl<unsigned long>::append(this, v8 - v5, a3 << 63 >> 63);
      a2 = v3[16];
    }

    else
    {
      this[2] = v8;
    }
  }

  if ((a2 & 0x3F) != 0)
  {
    v9 = *v3 + 8 * v3[2];
    *(v9 - 8) &= ~(-1 << (a2 & 0x3F));
  }

  return this;
}

uint64_t llvm::yaml::Input::bitSetMatch(llvm::yaml::Input *this, const char *__s)
{
  if (*(this + 26))
  {
    return 0;
  }

  v22 = v2;
  v23 = v3;
  v7 = *(this + 37);
  v8 = v7[1];
  if (v7)
  {
    v9 = *(v8 + 32) == 5;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v20[0] = "expected sequence of bit values";
    v21 = 259;
    llvm::yaml::Stream::printError(*(this + 11), v8, v20, 0);
    v10 = std::generic_category();
    result = 0;
    *(this + 13) = 22;
    *(this + 14) = v10;
    return result;
  }

  v11 = v7[2];
  v12 = v7[3];
  if (v11 == v12)
  {
    return 0;
  }

  for (i = 0; ; ++i)
  {
    v14 = *v11;
    if (*v11)
    {
      v15 = (*(*(*v11 + 8) + 32) - 3) >= 0xFFFFFFFE;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      v16 = *(this + 37);
      v20[0] = "unexpected scalar in sequence of bit values";
      v21 = 259;
      llvm::yaml::Stream::printError(*(this + 11), *(v16 + 8), v20, 0);
      v17 = std::generic_category();
      *(this + 13) = 22;
      *(this + 14) = v17;
      goto LABEL_21;
    }

    v18 = *(v14 + 24);
    if (__s)
    {
      break;
    }

    if (!v18)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (++v11 == v12)
    {
      return 0;
    }
  }

  v19 = *(v14 + 16);
  if (v18 != strlen(__s) || v18 && memcmp(v19, __s, v18))
  {
    goto LABEL_21;
  }

LABEL_23:
  result = 1;
  *(*(this + 28) + 8 * (i >> 6)) |= 1 << i;
  return result;
}

const std::error_category *llvm::yaml::Input::endBitSetScalar(const std::error_category *this)
{
  if (!LODWORD(this[13].__vftable))
  {
    v18 = v1;
    v19 = v2;
    v3 = this;
    v4 = this[37].__vftable;
    if (v4 && *(v4->~error_category_0 + 8) == 5)
    {
      p_name = &v4->name;
      name = v4->name;
      v7 = p_name[1];
      v9 = v7 - name;
      if (v7 != name)
      {
        v10 = this[28].__vftable;
        if (v10->~error_category)
        {
          v12 = v9 >> 3;
          v13 = 1;
          while (v12 > v13)
          {
            v11 = v13;
            v14 = *(&v10->~error_category + (v13++ >> 6));
            if (((v14 >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v11 = 0;
LABEL_13:
          v15 = *(name + v11);
          v16 = "unknown bit value";
          v17 = 259;
          llvm::yaml::Stream::printError(this[11].__vftable, *(v15 + 8), &v16, 0);
          this = std::generic_category();
          v3[13].__vftable = 22;
          v3[14].__vftable = this;
        }
      }
    }
  }

  return this;
}

__n128 llvm::yaml::Input::scalarString(uint64_t a1, __n128 *a2)
{
  v5 = *(a1 + 296);
  v6 = v5->n128_i64[1];
  if (v5)
  {
    v7 = (*(v6 + 32) - 3) >= 0xFFFFFFFE;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    result = v5[1];
    *a2 = result;
  }

  else
  {
    v13 = v2;
    v14 = v3;
    v11 = "unexpected scalar";
    v12 = 259;
    llvm::yaml::Stream::printError(*(a1 + 88), v6, &v11, 0);
    v9 = std::generic_category();
    *(a1 + 104) = 22;
    *(a1 + 112) = v9;
  }

  return result;
}

double llvm::yaml::Input::scalarTag(uint64_t a1, uint64_t a2)
{
  llvm::yaml::Node::getVerbatimTag(*(*(a1 + 296) + 8), &v4);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

const std::error_category *llvm::yaml::Input::setError(llvm **this, llvm::yaml::Node *a2, llvm::formatv_object_base **a3)
{
  llvm::yaml::Stream::printError(this[11], a2, a3, 0);
  result = std::generic_category();
  this[13] = 22;
  this[14] = result;
  return result;
}

uint64_t llvm::yaml::Input::getNodeKind(llvm::yaml::Input *this)
{
  v1 = *(*(*(this + 37) + 8) + 32);
  v2 = v1 - 1;
  if (v1 == 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

const std::error_category *llvm::yaml::Input::setError(llvm **this, llvm::formatv_object_base **a2)
{
  llvm::yaml::Stream::printError(this[11], *(this[37] + 1), a2, 0);
  result = std::generic_category();
  this[13] = 22;
  this[14] = result;
  return result;
}

uint64_t llvm::yaml::ScalarTraits<std::string,void>::input(void *__src, size_t __len, uint64_t a3, uint64_t a4)
{
  if (__src)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v8) = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    *(&__dst + __len) = 0;
  }

  else
  {
    __dst = 0uLL;
    v8 = 0;
  }

  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = __dst;
  *(a4 + 16) = v8;
  return 0;
}

const char *llvm::yaml::ScalarTraits<unsigned int,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = 0;
  v8 = a1;
  v9 = a2;
  v5 = llvm::consumeUnsignedInteger(&v8, 0, &v7, a4);
  result = "invalid number";
  if ((v5 & 1) == 0 && !v9)
  {
    if (HIDWORD(v7))
    {
      return "out of range number";
    }

    else
    {
      result = 0;
      *a4 = v7;
    }
  }

  return result;
}

void llvm::yaml::Input::MapHNode::~MapHNode(llvm::yaml::Input::MapHNode *this)
{
  *this = &unk_2883EB708;
  v1 = this + 16;
  llvm::SmallVector<std::string,2u>::~SmallVector(this + 40);
  llvm::StringMap<std::pair<std::unique_ptr<llvm::yaml::Input::HNode>,llvm::SMRange>,llvm::MallocAllocator>::~StringMap(v1);
}

{
  *this = &unk_2883EB708;
  v1 = this + 16;
  llvm::SmallVector<std::string,2u>::~SmallVector(this + 40);
  llvm::StringMap<std::pair<std::unique_ptr<llvm::yaml::Input::HNode>,llvm::SMRange>,llvm::MallocAllocator>::~StringMap(v1);

  JUMPOUT(0x277C69E40);
}

void llvm::yaml::Input::SequenceHNode::~SequenceHNode(llvm::yaml::Input::SequenceHNode *this)
{
  *this = &unk_2883EB730;
  v1 = (this + 16);
  std::vector<std::unique_ptr<llvm::yaml::Input::HNode>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

{
  *this = &unk_2883EB730;
  v1 = (this + 16);
  std::vector<std::unique_ptr<llvm::yaml::Input::HNode>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x277C69E40);
}

unsigned int *llvm::SmallVectorImpl<unsigned long>::append(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[2];
  if (v6 + a2 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v6 + a2, 8);
    v6 = v5[2];
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8 = vdupq_n_s64(a2 - 1);
  v9 = (*v5 + 8 * v6 + 8);
  do
  {
    v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
    if (v10.i8[0])
    {
      *(v9 - 1) = a3;
    }

    if (v10.i8[4])
    {
      *v9 = a3;
    }

    v7 += 2;
    v9 += 2;
  }

  while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v7);
LABEL_9:
  v5[2] = v6 + a2;
  return result;
}

uint64_t llvm::StringMap<std::pair<std::unique_ptr<llvm::yaml::Input::HNode>,llvm::SMRange>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          v7 = *(v5 + 8);
          *(v5 + 8) = 0;
          if (v7)
          {
            (*(*v7 + 16))(v7);
          }

          MEMORY[0x277C69E30](v5, 8);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void std::vector<std::unique_ptr<llvm::yaml::Input::HNode>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 16))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unint64_t **llvm::StringMap<std::pair<std::unique_ptr<llvm::yaml::Input::HNode>,llvm::SMRange>,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3)
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

  v11 = operator new(a3 + 33, 8uLL);
  v12 = v11;
  v13 = (v11 + 4);
  if (a3)
  {
    memcpy(v11 + 4, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

const void **std::__find[abi:nn200100]<std::string *,std::string *,llvm::StringRef,std::__identity>(const void **a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *a3;
    v6 = *(a3 + 8);
    do
    {
      v7 = *(v3 + 23);
      if (v7 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = *v3;
      }

      if (v7 < 0)
      {
        v7 = v3[1];
      }

      if (v7 == v6 && (!v6 || !memcmp(v8, v5, v6)))
      {
        break;
      }

      v3 += 3;
    }

    while (v3 != a2);
  }

  return v3;
}

void llvm::raw_ostream::~raw_ostream(llvm::raw_ostream *this)
{
  *this = &unk_2883EB778;
  if (*(this + 14) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      MEMORY[0x277C69E10](v1, 0x1000C8077774924);
    }
  }
}

void *llvm::raw_ostream::SetBuffered(llvm::raw_ostream *this)
{
  if ((*(*this + 88))(this))
  {

    llvm::raw_ostream::SetBufferSize(this);
  }

  return llvm::raw_ostream::SetUnbuffered(this);
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 3) - *(a1 + 4);
  if (v4 <= 3)
  {
    v7 = 127;
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 < v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = (2 * v4);
    }

    if (v4 >= v7)
    {
      *(a1 + 4) += v7;
      goto LABEL_21;
    }
  }

  v13 = v15;
  v14 = xmmword_2750C1290;
  do
  {
    v8 = v7;
    llvm::SmallVectorImpl<char>::resizeImpl<false>(&v13, v7);
    v9 = (*(*a2 + 8))(a2, v13, v8);
    if (v9 < v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v9 >= 0)
    {
      v7 = v10;
    }

    else
    {
      v7 = (2 * v8);
    }
  }

  while (v8 < v7);
  llvm::raw_ostream::write(a1, v13, v7);
  if (v13 != v15)
  {
    free(v13);
  }

LABEL_21:
  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  v22[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 20) == 1)
  {
    if (*(a2 + 22))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    if (*(a2 + 22))
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    if (*(a2 + 21))
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    llvm::write_hex(a1, *a2, v6, *(a2 + 16), 1);
  }

  else
  {
    v19 = &v20;
    v20 = v22;
    *__n = xmmword_2750C3D00;
    v12 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    v11 = &unk_2883EB968;
    llvm::raw_ostream::SetUnbuffered(&v11);
    llvm::write_integer(&v11, *(a2 + 8), 0, 0);
    v7 = __n[0];
    v8 = *(a2 + 16);
    if (__n[0] < v8)
    {
      llvm::raw_ostream::indent(a1, (v8 - LODWORD(__n[0])));
      v7 = __n[0];
    }

    llvm::raw_ostream::write(a1, v20, v7);
    llvm::raw_ostream::~raw_ostream(&v11);
    if (v20 != v22)
    {
      free(v20);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::write_escaped(llvm::raw_ostream *result, char *a2, uint64_t a3, int a4)
{
  if (a3)
  {
    for (i = a3; i; --i)
    {
      v7 = *a2;
      if (*a2 > 0x21u)
      {
        if (v7 == 34)
        {
          v13 = *(result + 4);
          if (v13 >= *(result + 3))
          {
            result = llvm::raw_ostream::write(result, 92);
          }

          else
          {
            *(result + 4) = v13 + 1;
            *v13 = 92;
          }

          v18 = *(result + 4);
          if (v18 >= *(result + 3))
          {
            v16 = 34;
            goto LABEL_59;
          }

          *(result + 4) = v18 + 1;
          *v18 = 34;
        }

        else
        {
          if (v7 != 92)
          {
LABEL_12:
            v11 = *(result + 3);
            v10 = *(result + 4);
            if ((v7 - 32) > 0x5E)
            {
              if (a4)
              {
                if (v10 >= v11)
                {
                  result = llvm::raw_ostream::write(result, 92);
                }

                else
                {
                  *(result + 4) = v10 + 1;
                  *v10 = 92;
                }

                v19 = *(result + 4);
                if (v19 >= *(result + 3))
                {
                  result = llvm::raw_ostream::write(result, 120);
                }

                else
                {
                  *(result + 4) = v19 + 1;
                  *v19 = 120;
                }

                v22 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 >> 4];
                v23 = *(result + 4);
                if (v23 >= *(result + 3))
                {
                  result = llvm::raw_ostream::write(result, v22);
                }

                else
                {
                  *(result + 4) = v23 + 1;
                  *v23 = v22;
                }

                v16 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 & 0xF];
              }

              else
              {
                if (v10 >= v11)
                {
                  result = llvm::raw_ostream::write(result, 92);
                }

                else
                {
                  *(result + 4) = v10 + 1;
                  *v10 = 92;
                }

                v20 = (v7 >> 6) | 0x30;
                v21 = *(result + 4);
                if (v21 >= *(result + 3))
                {
                  result = llvm::raw_ostream::write(result, v20);
                }

                else
                {
                  *(result + 4) = v21 + 1;
                  *v21 = v20;
                }

                v24 = (v7 >> 3) & 7 | 0x30;
                v25 = *(result + 4);
                if (v25 >= *(result + 3))
                {
                  result = llvm::raw_ostream::write(result, v24);
                }

                else
                {
                  *(result + 4) = v25 + 1;
                  *v25 = v24;
                }

                v16 = v7 & 7 | 0x30;
              }

              v26 = *(result + 4);
              if (v26 >= *(result + 3))
              {
                goto LABEL_59;
              }

              *(result + 4) = v26 + 1;
              *v26 = v16;
            }

            else
            {
              if (v10 >= v11)
              {
                v16 = *a2;
                goto LABEL_59;
              }

              *(result + 4) = v10 + 1;
              *v10 = v7;
            }

            goto LABEL_60;
          }

          v9 = *(result + 4);
          if (v9 >= *(result + 3))
          {
            result = llvm::raw_ostream::write(result, 92);
          }

          else
          {
            *(result + 4) = v9 + 1;
            *v9 = 92;
          }

          v15 = *(result + 4);
          if (v15 >= *(result + 3))
          {
            v16 = 92;
            goto LABEL_59;
          }

          *(result + 4) = v15 + 1;
          *v15 = 92;
        }
      }

      else if (v7 == 9)
      {
        v12 = *(result + 4);
        if (v12 >= *(result + 3))
        {
          result = llvm::raw_ostream::write(result, 92);
        }

        else
        {
          *(result + 4) = v12 + 1;
          *v12 = 92;
        }

        v17 = *(result + 4);
        if (v17 >= *(result + 3))
        {
          v16 = 116;
          goto LABEL_59;
        }

        *(result + 4) = v17 + 1;
        *v17 = 116;
      }

      else
      {
        if (v7 != 10)
        {
          goto LABEL_12;
        }

        v8 = *(result + 4);
        if (v8 >= *(result + 3))
        {
          result = llvm::raw_ostream::write(result, 92);
        }

        else
        {
          *(result + 4) = v8 + 1;
          *v8 = 92;
        }

        v14 = *(result + 4);
        if (v14 >= *(result + 3))
        {
          v16 = 110;
LABEL_59:
          result = llvm::raw_ostream::write(result, v16);
          goto LABEL_60;
        }

        *(result + 4) = v14 + 1;
        *v14 = 110;
      }

LABEL_60:
      ++a2;
    }
  }

  return result;
}

uint64_t llvm::raw_ostream::flush_tied_then_write(llvm::raw_ostream *this, const char *a2, uint64_t a3)
{
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(v6 + 4);
    v8 = *(v6 + 2);
    if (v7 != v8)
    {
      *(v6 + 4) = v8;
      llvm::raw_ostream::flush_tied_then_write(v6, v8, v7 - v8);
    }
  }

  v9 = *(*this + 72);

  return v9(this, a2, a3);
}

llvm::raw_ostream *llvm::raw_ostream::write(llvm::raw_ostream *this, char a2)
{
  v5 = *(this + 3);
  for (i = *(this + 4); ; i = *(this + 4))
  {
    if (i < v5)
    {
      goto LABEL_7;
    }

    v6 = *(this + 2);
    if (v6)
    {
      *(this + 4) = v6;
      llvm::raw_ostream::flush_tied_then_write(this, v6, i - v6);
      i = *(this + 4);
LABEL_7:
      *(this + 4) = i + 1;
      *i = a2;
      return this;
    }

    if (!*(this + 14))
    {
      break;
    }

    llvm::raw_ostream::SetBuffered(this);
    v5 = *(this + 3);
  }

  v8 = a2;
  llvm::raw_ostream::flush_tied_then_write(this, &v8, 1);
  return this;
}

llvm::raw_ostream *llvm::raw_ostream::write(llvm::raw_ostream *this, const char *a2, size_t __n)
{
  v3 = __n;
  v6 = *(this + 4);
  v7 = *(this + 3) - v6;
  if (v7 < __n)
  {
    while (1)
    {
      while (1)
      {
        v12 = *(this + 2);
        if (!v12)
        {
          break;
        }

        if (v6 == v12)
        {
          v7 *= v3 / v7;
          v3 -= v7;
          llvm::raw_ostream::flush_tied_then_write(this, a2, v7);
          v6 = *(this + 4);
          v11 = *(this + 3) - v6;
          if (v3 <= v11)
          {
            v9 = &a2[v7];
            v8 = this;
            goto LABEL_3;
          }
        }

        else
        {
          llvm::raw_ostream::copy_to_buffer(this, a2, v7);
          v13 = *(this + 2);
          v14 = *(this + 4) - v13;
          *(this + 4) = v13;
          llvm::raw_ostream::flush_tied_then_write(this, v13, v14);
          v3 -= v7;
          v6 = *(this + 4);
          v11 = *(this + 3) - v6;
        }

        a2 += v7;
        v7 = v11;
        if (v11 >= v3)
        {
          goto LABEL_2;
        }
      }

      if (!*(this + 14))
      {
        break;
      }

      llvm::raw_ostream::SetBuffered(this);
      v6 = *(this + 4);
      v7 = *(this + 3) - v6;
      if (v7 >= v3)
      {
        goto LABEL_2;
      }
    }

    llvm::raw_ostream::flush_tied_then_write(this, a2, v3);
  }

  else
  {
LABEL_2:
    v8 = this;
    v9 = a2;
LABEL_3:
    llvm::raw_ostream::copy_to_buffer(v8, v9, v3);
  }

  return this;
}

void **llvm::raw_ostream::copy_to_buffer(void **this, const char *a2, int64_t __n)
{
  v4 = this;
  if (__n > 1)
  {
    switch(__n)
    {
      case 2:
LABEL_7:
        *(this[4] + 1) = a2[1];
LABEL_10:
        *this[4] = *a2;
        goto LABEL_11;
      case 3:
LABEL_6:
        *(this[4] + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(this[4] + 3) = a2[3];
        goto LABEL_6;
    }

LABEL_12:
    this = memcpy(this[4], a2, __n);
    goto LABEL_11;
  }

  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4[4] = v4[4] + __n;
  return this;
}

void llvm::formatv_object_base::format(llvm::formatv_object_base *this, llvm::raw_ostream *a2)
{
  v39[8] = *MEMORY[0x277D85DE8];
  llvm::formatv_object_base::parseFormatString(*this, *(this + 1), &v34);
  v4 = v34;
  if (v35)
  {
    v5 = v35 << 6;
    v6 = v34 + 32;
    while (1)
    {
      v7 = *(v6 - 8);
      if (v7)
      {
        if (v7 == 2 || (v8 = *(v6 - 1), v8 >= *(this + 3)))
        {
          llvm::raw_ostream::operator<<(a2, *(v6 - 3), *(v6 - 2));
        }

        else
        {
          v9 = *(*(this + 2) + 8 * v8);
          v10 = *(v6 + 2);
          v11 = *v6;
          v12 = v6[12];
          v21 = v9;
          v22 = v10;
          v23 = v11;
          v24 = v12;
          v14 = *(v6 + 2);
          v13 = *(v6 + 3);
          if (v11)
          {
            v37 = v39;
            v38 = xmmword_2750C1860;
            v26 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 1;
            v28 = 0;
            v29 = 0;
            v27 = 0;
            v25 = &unk_2883EB968;
            v33 = &v37;
            llvm::raw_ostream::SetUnbuffered(&v25);
            (*(*v9 + 24))(v9, &v25, v14, v13);
            v15 = v38;
            v16 = v11 - v38;
            if (v11 > v38)
            {
              if (v10 == 1)
              {
                llvm::FmtAlign::fill(&v21, a2, v16 >> 1);
                llvm::raw_ostream::write(a2, v37, v38);
                v18 = v16 - (v16 >> 1);
                v17 = a2;
LABEL_17:
                llvm::FmtAlign::fill(&v21, v17, v18);
              }

              else
              {
                if (!v10)
                {
                  llvm::raw_ostream::write(a2, v37, v38);
                  v17 = a2;
                  v18 = v16;
                  goto LABEL_17;
                }

                llvm::FmtAlign::fill(&v21, a2, v11 - v38);
                v19 = v37;
                v15 = v38;
LABEL_19:
                llvm::raw_ostream::write(a2, v19, v15);
              }

              llvm::raw_ostream::~raw_ostream(&v25);
              if (v37 != v39)
              {
                free(v37);
              }

              goto LABEL_12;
            }

            v19 = v37;
            goto LABEL_19;
          }

          (*(*v9 + 24))(v9, a2, v14, v13);
        }
      }

LABEL_12:
      v6 += 64;
      v5 -= 64;
      if (!v5)
      {
        v4 = v34;
        break;
      }
    }
  }

  if (v4 != &v36)
  {
    free(v4);
  }

  v20 = *MEMORY[0x277D85DE8];
}

llvm::raw_ostream *llvm::raw_ostream::indent(llvm::raw_ostream *this, size_t __n)
{
  v2 = __n;
  if (__n < 0x50)
  {
    return llvm::raw_ostream::write(this, "                                                                                ^\n]", __n);
  }

  do
  {
    if (v2 >= 0x4F)
    {
      v3 = 79;
    }

    else
    {
      v3 = v2;
    }

    this = llvm::raw_ostream::write(this, "                                                                                ^\n]", v3);
    v2 -= v3;
  }

  while (v2);
  return this;
}

llvm::raw_ostream *llvm::raw_ostream::changeColor(llvm::raw_ostream *a1, int a2, int a3, int a4)
{
  if (*(a1 + 40) == 1)
  {
    if (a2 == 8)
    {
      v5 = "\x1B[1m";
    }

    else
    {
      v5 = &colorcodes[160 * a4 + 80 * a3 + 10 * (a2 & 7)];
    }

    v6 = strlen(v5);
    llvm::raw_ostream::write(a1, v5, v6);
  }

  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::resetColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    return llvm::raw_ostream::write(this, "\x1B[0m", 4uLL);
  }

  return this;
}

llvm::raw_ostream *llvm::raw_ostream::reverseColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    return llvm::raw_ostream::write(this, "\x1B[7m", 4uLL);
  }

  return this;
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  FD = getFD(a2, a3, a4, 0, 2, a5);

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, FD, 1, 0, 0);
}

uint64_t getFD(_BYTE *a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6)
{
  if (a2 == 1 && *a1 == 45)
  {
    v7 = std::system_category();
    *a3 = 0;
    *(a3 + 8) = v7;
    return 1;
  }

  else
  {
    v15 = 0;
    v14 = 261;
    v13[0] = a1;
    v13[1] = a2;
    if (a5)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = llvm::sys::fs::openFile(v13, &v15, a4, v10, a6, 438);
    *a3 = v11;
    *(a3 + 8) = v12;
    if (v11)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v15;
    }
  }
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, unsigned int a2, char a3, int a4, int a5)
{
  *(a1 + 8) = a5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a4 ^ 1;
  *(a1 + 60) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2883EB7F0;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  v7 = std::system_category();
  *(a1 + 65) = 0;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 64) = 0;
  }

  else
  {
    *(a1 + 40) = 1;
    if (a2 <= 2)
    {
      *(a1 + 64) = 0;
    }

    v8 = lseek(a2, 0, 1);
    memset(v13, 0, 44);
    v9 = fstat(*(a1 + 60), &v14);
    v10 = llvm::sys::fs::fillStatus(v9, &v14.st_dev, v13);
    *(a1 + 66) = DWORD2(v13[2]) == 2;
    *(a1 + 65) = v10 == 0 && v8 != -1;
    if (v10 == 0 && v8 != -1)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 88) = v11;
  }

  return a1;
}

void llvm::raw_fd_ostream::~raw_fd_ostream(llvm::raw_fd_ostream *this)
{
  *this = &unk_2883EB7F0;
  if ((*(this + 15) & 0x80000000) == 0)
  {
    v2 = *(this + 4);
    v3 = *(this + 2);
    if (v2 != v3)
    {
      *(this + 4) = v3;
      llvm::raw_ostream::flush_tied_then_write(this, v3, v2 - v3);
    }

    if (*(this + 64) == 1)
    {
      v4 = llvm::sys::Process::SafelyCloseFileDescriptor(*(this + 15));
      if (v4)
      {
        *(this + 9) = v4;
        *(this + 10) = v5;
      }
    }
  }

  if (*(this + 18))
  {
    v10 = "IO failure on output stream: ";
    v11 = 259;
    v6 = *(this + 72);
    std::error_code::message(&v7, &v6);
    v9 = 260;
    v8 = &v7;
    llvm::operator+(&v10, &v8, v12);
    llvm::report_fatal_error(v12, 0);
  }

  llvm::raw_ostream::~raw_ostream(this);
}

{
  llvm::raw_fd_ostream::~raw_fd_ostream(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::raw_fd_ostream::write_impl(llvm::raw_fd_ostream *this, const char *__buf, unint64_t a3)
{
  v3 = a3;
  *(this + 11) += a3;
  while (1)
  {
    v6 = v3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v3;
    result = write(*(this + 15), __buf, v6);
    if (result < 0)
    {
      break;
    }

    __buf += result;
    v3 -= result;
LABEL_10:
    if (!v3)
    {
      return result;
    }
  }

  result = __error();
  if (*result == 4)
  {
    goto LABEL_10;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_10;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_10;
  }

  v8 = *__error();
  result = std::generic_category();
  *(this + 9) = v8;
  *(this + 10) = result;
  return result;
}

off_t llvm::raw_fd_ostream::seek(llvm::raw_fd_ostream *this, off_t a2)
{
  v4 = *(this + 4);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    *(this + 4) = v5;
    llvm::raw_ostream::flush_tied_then_write(this, v5, v4 - v5);
  }

  result = lseek(*(this + 15), a2, 0);
  *(this + 11) = result;
  if (result == -1)
  {
    v7 = *__error();
    v8 = std::generic_category();
    *(this + 9) = v7;
    *(this + 10) = v8;
    return *(this + 11);
  }

  return result;
}

off_t llvm::raw_fd_ostream::pwrite_impl(llvm::raw_fd_ostream *this, const char *a2, size_t a3, off_t a4)
{
  v8 = (*(*this + 80))(this) + *(this + 4) - *(this + 2);
  llvm::raw_fd_ostream::seek(this, a4);
  v9 = llvm::raw_ostream::write(this, a2, a3);

  return llvm::raw_fd_ostream::seek(v9, v8);
}

uint64_t llvm::raw_fd_ostream::preferred_buffer_size(llvm::raw_fd_ostream *this)
{
  if (fstat(*(this + 15), &v3) || (v3.st_mode & 0xF000) == 0x2000 && ((*(*this + 48))(this) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return v3.st_blksize;
  }
}

uint64_t llvm::raw_fd_ostream::has_colors(llvm::raw_fd_ostream *this)
{
  v1 = this;
  if (*(this + 68) == 1)
  {
    LOBYTE(this) = *(this + 67);
  }

  else
  {
    LOWORD(this) = llvm::sys::Process::FileDescriptorHasColors(*(this + 15));
    *(v1 + 67) = this | 0x100;
  }

  return this & 1;
}

void *llvm::outs(llvm *this)
{
  v2 = 0;
  v3 = std::system_category();
  if ((atomic_load_explicit(&_MergedGlobals_15, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_15))
  {
    llvm::raw_fd_ostream::raw_fd_ostream(&unk_2815A5998, "-", 1, &v2, 0);
    __cxa_atexit(llvm::raw_fd_ostream::~raw_fd_ostream, &unk_2815A5998, &dword_274E5C000);
    __cxa_guard_release(&_MergedGlobals_15);
  }

  return &unk_2815A5998;
}

void *llvm::errs(llvm *this)
{
  if ((atomic_load_explicit(&qword_2815A5948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2815A5948))
  {
    llvm::raw_fd_ostream::raw_fd_ostream(&unk_2815A59F8, 2u, 0, 1, 0);
    __cxa_atexit(llvm::raw_fd_ostream::~raw_fd_ostream, &unk_2815A59F8, &dword_274E5C000);
    __cxa_guard_release(&qword_2815A5948);
  }

  return &unk_2815A59F8;
}

uint64_t *llvm::nulls(llvm *this)
{
  if ((atomic_load_explicit(&qword_2815A5950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2815A5950))
  {
    dword_2815A5960 = 0;
    byte_2815A5980 = 0;
    qword_2815A5988 = 0;
    dword_2815A5990 = 1;
    qword_2815A5970 = 0;
    unk_2815A5978 = 0;
    qword_2815A5968 = 0;
    qword_2815A5958 = &unk_2883EB870;
    __cxa_atexit(llvm::raw_null_ostream::~raw_null_ostream, &qword_2815A5958, &dword_274E5C000);
    __cxa_guard_release(&qword_2815A5950);
  }

  return &qword_2815A5958;
}

void llvm::raw_null_ostream::~raw_null_ostream(llvm::raw_null_ostream *this)
{
  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x277C69E40);
}

void llvm::raw_string_ostream::~raw_string_ostream(llvm::raw_string_ostream *this)
{
  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x277C69E40);
}

void llvm::raw_string_ostream::reserveExtraSpace(llvm::raw_string_ostream *this, uint64_t a2)
{
  v2 = *(this + 8);
  v3 = (*(*this + 80))(this) + a2 + *(this + 4) - *(this + 2);

  std::string::reserve(v2, v3);
}

uint64_t llvm::raw_string_ostream::current_pos(llvm::raw_string_ostream *this)
{
  v1 = *(this + 8);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void llvm::raw_svector_ostream::~raw_svector_ostream(llvm::raw_svector_ostream *this)
{
  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x277C69E40);
}

void *llvm::raw_svector_ostream::reserveExtraSpace(llvm::raw_svector_ostream *this, uint64_t a2)
{
  v4 = *(this + 8);
  result = (*(*this + 80))(this);
  v6 = result + a2 + *(this + 4) - *(this + 2);
  if (*(v4 + 16) < v6)
  {

    return llvm::SmallVectorBase<unsigned long long>::grow_pod(v4, (v4 + 24), v6, 1);
  }

  return result;
}

llvm::raw_ostream *llvm::FmtAlign::fill(llvm::raw_ostream *this, llvm::raw_ostream *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = this;
    do
    {
      v6 = *(v5 + 24);
      v7 = *(a2 + 4);
      if (v7 >= *(a2 + 3))
      {
        this = llvm::raw_ostream::write(a2, v6);
      }

      else
      {
        *(a2 + 4) = v7 + 1;
        *v7 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return this;
}

uint64_t llvm_regcomp(uint64_t a1, char *__s, int a3)
{
  if ((~a3 & 0x11) == 0)
  {
    return 16;
  }

  v64 = v3;
  v65 = v4;
  if ((a3 & 0x20) != 0)
  {
    v10 = *(a1 + 16);
    v9 = v10 - __s;
    if (v10 < __s)
    {
      return 16;
    }
  }

  else
  {
    v9 = strlen(__s);
  }

  v11 = malloc_type_malloc(0x18FuLL, 0x10300409EB0E935uLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  v52 = 0;
  ptr[0] = 0;
  v51 = 3 * (v9 >> 1) + 1;
  ptr[1] = malloc_type_calloc(v51, 8uLL, 0x100004000313F17uLL);
  if (!ptr[1])
  {
    free(v12);
    return 12;
  }

  v53 = v12;
  v49.n128_u64[0] = __s;
  v49.n128_u64[1] = &__s[v9];
  LODWORD(ptr[0]) = 0;
  LODWORD(v52) = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v12[4] = 256;
  *(v12 + 5) = 0;
  v13 = v12 + 5;
  *(v12 + 7) = 0;
  v12[9] = 0;
  *(v12 + 34) = 0u;
  *(v12 + 66) = 0u;
  v12[10] = a3 & 0xFFFFFF7F;
  *(v12 + 11) = v12 + 66;
  *(v12 + 12) = 0;
  v12[26] = 0;
  *(v12 + 14) = 0;
  *(v12 + 9) = 0;
  *(v12 + 10) = 0x100000000;
  *(v12 + 38) = 0u;
  *(v12 + 42) = 0u;
  *(v12 + 46) = 0u;
  *(v12 + 50) = 0u;
  *(v12 + 54) = 0u;
  *(v12 + 58) = 0u;
  *(v12 + 62) = 0u;
  *(v12 + 70) = 0u;
  *(v12 + 74) = 0u;
  *(v12 + 78) = 0u;
  *(v12 + 82) = 0u;
  *(v12 + 86) = 0u;
  *(v12 + 90) = 0u;
  *(v12 + 94) = 0u;
  v12[30] = 0;
  doemit(&v49, 0x8000000, 0);
  *(v12 + 7) = *(&v51 + 1) - 1;
  if (a3)
  {
    p_ere(&v49, 128);
  }

  else if ((a3 & 0x10) != 0)
  {
    v15 = v49.n128_u64[1];
    v14 = v49.n128_u64[0];
    if ((v49.n128_u64[1] - v49.n128_u64[0]) <= 0)
    {
      if (!LODWORD(ptr[0]))
      {
        LODWORD(ptr[0]) = 14;
      }

      v14 = &nuls;
      v49.n128_u64[0] = &nuls;
      v49.n128_u64[1] = &nuls;
      v15 = &nuls;
    }

    if (v15 - v14 >= 1)
    {
      do
      {
        v49.n128_u64[0] = (v14 + 1);
        ordinary(&v49, *v14);
        v14 = v49.n128_u64[0];
      }

      while ((v49.n128_u64[1] - v49.n128_u64[0]) > 0);
    }
  }

  else
  {
    p_bre(&v49, 128, 128);
  }

  doemit(&v49, 0x8000000, 0);
  v16 = *(&v51 + 1);
  *(v12 + 8) = *(&v51 + 1) - 1;
  if (!LODWORD(ptr[0]))
  {
    v17 = *(v12 + 11);
    for (i = -128; i != 128; ++i)
    {
      if (!*(v17 + i) && *v13 >= 1)
      {
        v19 = (*v13 + 7) >> 3;
        v20 = *(v12 + 4);
        while (!*(v20 + i))
        {
          v20 += v12[4];
          if (!--v19)
          {
            goto LABEL_24;
          }
        }

        v21 = v12[21];
        v12[21] = v21 + 1;
        *(v17 + i) = v21;
        if (i <= 126)
        {
          v22 = i;
          do
          {
            ++v22;
            if (!*(v17 + v22))
            {
              if (*v13 < 1)
              {
LABEL_38:
                *(v17 + v22) = v21;
              }

              else
              {
                v23 = (*v13 + 7) >> 3;
                v24 = *(v12 + 4);
                while (*(v24 + i) == *(v24 + v22))
                {
                  v24 += v12[4];
                  if (!--v23)
                  {
                    goto LABEL_38;
                  }
                }
              }
            }
          }

          while (v22 != 127);
        }
      }

LABEL_24:
      ;
    }

    v16 = *(&v51 + 1);
  }

  *(v12 + 6) = v16;
  if (v16 >> 61)
  {
    *(v12 + 1) = ptr[1];
    LODWORD(v25) = ptr[0];
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v25) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v26 = 0;
    v27 = 0;
    v49.n128_u64[0] = &nuls;
    v49.n128_u64[1] = &nuls;
    goto LABEL_77;
  }

  v28 = malloc_type_realloc(ptr[1], 8 * v16, 0x100004000313F17uLL);
  *(v12 + 1) = v28;
  LODWORD(v25) = ptr[0];
  if (!v28)
  {
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v25) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v26 = 0;
    v27 = 0;
    v49.n128_u64[0] = &nuls;
    v49.n128_u64[1] = &nuls;
    *(v12 + 1) = ptr[1];
    goto LABEL_77;
  }

  if (LODWORD(ptr[0]))
  {
    goto LABEL_76;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = (v28 + 8);
  v33 = (v28 + 8);
  do
  {
    v35 = *v33++;
    LODWORD(v34) = v35;
    v36 = ((v35 & 0xF8000000) - 0x10000000) >> 27;
    if (v36 > 0xD)
    {
      goto LABEL_60;
    }

    if (((1 << v36) & 0x1880) != 0)
    {
      goto LABEL_63;
    }

    if (((1 << v36) & 0x2200) != 0)
    {
      v33 = v32;
      while (1)
      {
        v33 += v34 & 0x7FFFFFF;
        v34 = *v33;
        v37 = *v33 & 0xF8000000;
        if (v37 == 1610612736)
        {
          break;
        }

        if (v37 != -2013265920)
        {
          if (v37 == -1879048192)
          {
            break;
          }

          v12[18] |= 4u;
          goto LABEL_75;
        }
      }

LABEL_60:
      if (v31 > v12[26])
      {
        v12[26] = v31;
        v29 = v30;
      }

      v31 = 0;
      goto LABEL_63;
    }

    if (v36)
    {
      goto LABEL_60;
    }

    if (!v31)
    {
      v30 = v32;
    }

    ++v31;
LABEL_63:
    v32 = v33;
  }

  while ((v34 & 0xF8000000) != 0x8000000);
  v38 = v12[26];
  if (v38)
  {
    v39 = malloc_type_malloc(v38 + 1, 0x6436B82FuLL);
    *(v12 + 12) = v39;
    if (v39)
    {
      v40 = v12[26];
      if (v40 >= 1)
      {
        do
        {
          do
          {
            v42 = *v29++;
            v41 = v42;
          }

          while ((v42 & 0xF8000000) != 0x10000000);
          *v39++ = v41;
        }

        while (v40-- > 1);
      }

      *v39 = 0;
    }

    else
    {
      v12[26] = 0;
    }
  }

LABEL_75:
  LODWORD(v25) = ptr[0];
  if (LODWORD(ptr[0]))
  {
LABEL_76:
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v44 = (*(v12 + 1) + 8);
    do
    {
      v45 = *v44++;
      v46 = v45 & 0xF8000000;
      if (v25 <= v27)
      {
        v47 = v27;
      }

      else
      {
        v47 = v25;
      }

      v48 = v25 - 1;
      if (v46 == 1207959552)
      {
        ++v25;
      }

      if (v46 == 1342177280)
      {
        v25 = v48;
        v27 = v47;
      }
    }

    while (v46 != 0x8000000);
    if (v25)
    {
      LODWORD(v25) = 0;
      v12[18] |= 4u;
    }

    v26 = 1;
  }

LABEL_77:
  *(v12 + 16) = v27;
  *v12 = 53829;
  *(a1 + 8) = *(v12 + 14);
  *(a1 + 24) = v12;
  *a1 = 62053;
  if ((v12[18] & 4) != 0)
  {
    if (v26)
    {
      LODWORD(v25) = 15;
      LODWORD(ptr[0]) = 15;
    }

    v49.n128_u64[0] = &nuls;
    v49.n128_u64[1] = &nuls;
  }

  if (!v25)
  {
    return 0;
  }

  llvm_regfree(a1);
  return LODWORD(ptr[0]);
}

void **doemit(void **result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 4))
  {
    v5 = result;
    v7 = result[4];
    v6 = result[5];
    if (v6 >= v7)
    {
      result = enlarge(result, (&v7[((v7 + 1) >> 63) + 1] & 0xFFFFFFFFFFFFFFFELL) + (v7 + 1) / 2);
      v6 = v5[5];
    }

    v8 = v5[3];
    v5[5] = v6 + 1;
    v8[v6] = a3 | a2;
  }

  return result;
}

void p_ere(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  v6 = a1 + 144;
  v50 = a1 + 64;
  v51 = 0;
  strcpy(&v49, "^\n]");
  while (2)
  {
    v7 = *(a1 + 40);
    v8 = *a1;
    v9 = *(a1 + 8);
    if (&v9[-*a1] < 1)
    {
      goto LABEL_123;
    }

    while (1)
    {
      v10 = *v8;
      v11 = *(a1 + 40);
      if (v10 == 124 || v10 == a2)
      {
        break;
      }

      v13 = v8 + 1;
      *a1 = v8 + 1;
      v14 = *v8;
      if (v14 <= 62)
      {
        if (v14 > 41)
        {
          if ((v14 - 42) < 2)
          {
LABEL_25:
            if (!*(a1 + 16))
            {
              v18 = 13;
              goto LABEL_52;
            }

            goto LABEL_53;
          }

          if (v14 == 46)
          {
            if ((*(*(a1 + 56) + 40) & 8) != 0)
            {
              *a1 = &v52;
              *(a1 + 8) = &v52 + 3;
              v52 = v49;
              p_bracket(a1);
              *a1 = v13;
              *(a1 + 8) = v9;
            }

            else
            {
              doemit(a1, 671088640, 0);
            }

            goto LABEL_62;
          }

          goto LABEL_60;
        }

        switch(v14)
        {
          case '$':
            doemit(a1, 0x20000000, 0);
            v19 = *(a1 + 56);
            *(v19 + 72) |= 2u;
            ++*(v19 + 80);
            goto LABEL_62;
          case '(':
            if (v9 - v13 <= 0)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 8;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }

            v23 = *(a1 + 56);
            v24 = *(v23 + 112);
            v25 = v24 + 1;
            *(v23 + 112) = v24 + 1;
            if (v24 + 1 <= 9)
            {
              *(v50 + 8 * v25) = v11;
            }

            doemit(a1, 1744830464, v24 + 1);
            if ((*(a1 + 8) - *a1) < 1 || **a1 != 41)
            {
              p_ere(a1, 41);
            }

            if (v25 <= 9)
            {
              *(v6 + 8 * v25) = *(a1 + 40);
            }

            doemit(a1, 1879048192, v25);
            v26 = *a1;
            if ((*(a1 + 8) - *a1) >= 1)
            {
              *a1 = v26 + 1;
              if (*v26 == 41)
              {
                goto LABEL_62;
              }
            }

            break;
          case ')':
            break;
          default:
LABEL_60:
            v15 = v14;
LABEL_61:
            ordinary(a1, v15);
            goto LABEL_62;
        }

        if (!*(a1 + 16))
        {
          v18 = 8;
          goto LABEL_52;
        }

        goto LABEL_53;
      }

      if (v14 > 93)
      {
        if (v14 != 94)
        {
          if (v14 == 123)
          {
            if (v9 - v13 >= 1 && *v13 - 48 <= 9)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 13;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }

          else if (v14 == 124)
          {
            if (!*(a1 + 16))
            {
              v18 = 14;
              goto LABEL_52;
            }

            goto LABEL_53;
          }

          goto LABEL_60;
        }

        doemit(a1, 402653184, 0);
        v17 = 0;
        v20 = *(a1 + 56);
        v21 = v20[9];
        v22 = vadd_s32(v21, 0x100000001);
        v21.i32[0] |= 1u;
        v21.i32[1] = v22.i32[1];
        v20[9] = v21;
      }

      else
      {
        if (v14 == 63)
        {
          goto LABEL_25;
        }

        if (v14 == 91)
        {
          p_bracket(a1);
          goto LABEL_62;
        }

        if (v14 != 92)
        {
          goto LABEL_60;
        }

        if (v9 - v13 <= 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 5;
          }

          *(a1 + 8) = &nuls;
          v13 = &nuls;
        }

        *a1 = v13 + 1;
        v15 = *v13;
        if ((v15 - 49) > 8)
        {
          goto LABEL_61;
        }

        v16 = (v15 - 48);
        if (!*(v6 + 8 * v16))
        {
          if (!*(a1 + 16))
          {
            v18 = 6;
LABEL_52:
            *(a1 + 16) = v18;
          }

LABEL_53:
          *a1 = &nuls;
          *(a1 + 8) = &nuls;
LABEL_62:
          v17 = 1;
          goto LABEL_63;
        }

        doemit(a1, 939524096, v16);
        dupl(a1, *(v50 + 8 * v16) + 1, *(v6 + 8 * v16));
        doemit(a1, 0x40000000, v16);
        v17 = 1;
        *(*(a1 + 56) + 120) = 1;
      }

LABEL_63:
      v8 = *a1;
      v9 = *(a1 + 8);
      v27 = &v9[-*a1];
      if (v27 >= 1)
      {
        v28 = *v8;
        if ((v28 - 42) < 2 || v28 == 63 || v28 == 123 && (v29 = v9 != *a1, v27 != 1) && v8[1] - 48 <= 9)
        {
          *a1 = v8 + 1;
          if ((v17 & 1) == 0)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 13;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }

          if (v28 > 62)
          {
            if (v28 != 63)
            {
              if (v28 == 123)
              {
                v33 = p_count(a1);
                v34 = v33;
                v35 = *a1;
                v36 = v33;
                if ((*(a1 + 8) - *a1) >= 1)
                {
                  v36 = v33;
                  if (*v35 == 44)
                  {
                    *a1 = v35 + 1;
                    if (v35[1] - 48 > 9)
                    {
                      v36 = 256;
                    }

                    else
                    {
                      v36 = p_count(a1);
                      if (v34 > v36)
                      {
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 10;
                        }

                        *a1 = &nuls;
                        *(a1 + 8) = &nuls;
                      }
                    }
                  }
                }

                repeat(a1, v11, v34, v36);
                v42 = *a1;
                v41 = *(a1 + 8);
                if (v41 - *a1 >= 1)
                {
                  if (*v42 == 125)
                  {
                    *a1 = v42 + 1;
                    goto LABEL_93;
                  }

                  v43 = ~v42 + v41;
                  v44 = (v42 + 1);
                  while (1)
                  {
                    *a1 = v44;
                    if (v43 <= 0)
                    {
                      break;
                    }

                    v45 = *v44++;
                    --v43;
                    if (v45 == 125)
                    {
                      if (*(a1 + 16))
                      {
                        goto LABEL_121;
                      }

                      v46 = 10;
                      goto LABEL_120;
                    }
                  }
                }

                if (!*(a1 + 16))
                {
                  v46 = 9;
LABEL_120:
                  *(a1 + 16) = v46;
                }

LABEL_121:
                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }

LABEL_93:
              v8 = *a1;
              v9 = *(a1 + 8);
              v38 = &v9[-*a1];
              if (v38 >= 1)
              {
                if ((v39 = *v8, (v39 - 42) < 2) || v39 == 63 || (v39 == 123 ? (v29 = v9 != *a1, v40 = v38 == 1) : (v40 = 1), !v40 && v8[1] - 48 <= 9))
                {
                  if (!*(a1 + 16))
                  {
                    *(a1 + 16) = 13;
                  }

                  *a1 = &nuls;
                  *(a1 + 8) = &nuls;
                  v8 = &nuls;
                  v9 = &nuls;
                }
              }

              goto LABEL_104;
            }

            doinsert(a1, 2013265920, *(a1 + 40) - v11 + 1, v11);
            doemit(a1, 0x80000000, *(a1 + 40) - v11);
            if (!*(a1 + 16))
            {
              *(*(a1 + 24) + 8 * v11) = *(*(a1 + 24) + 8 * v11) & 0xF8000000 | (*(a1 + 40) - v11);
            }

            doemit(a1, 2281701376, 0);
            if (!*(a1 + 16))
            {
              v37 = *(a1 + 24) + 8 * *(a1 + 40);
              *(v37 - 8) = *(v37 - 8) & 0xF8000000 | 1;
            }

            v31 = a1;
            v32 = 2415919104;
            v30 = 2;
          }

          else
          {
            if (v28 != 42)
            {
              if (v28 == 43)
              {
                doinsert(a1, 1207959552, *(a1 + 40) - v11 + 1, v11);
                v30 = *(a1 + 40) - v11;
                v31 = a1;
                v32 = 1342177280;
                goto LABEL_92;
              }

              goto LABEL_93;
            }

            doinsert(a1, 1207959552, *(a1 + 40) - v11 + 1, v11);
            doemit(a1, 1342177280, *(a1 + 40) - v11);
            doinsert(a1, 1476395008, *(a1 + 40) - v11 + 1, v11);
            v30 = *(a1 + 40) - v11;
            v31 = a1;
            v32 = 1610612736;
          }

LABEL_92:
          doemit(v31, v32, v30);
          goto LABEL_93;
        }
      }

LABEL_104:
      if (v9 - v8 <= 0)
      {
        v11 = *(a1 + 40);
        break;
      }
    }

    if (v11 == v7)
    {
LABEL_123:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 14;
      }

      *a1 = &nuls;
      *(a1 + 8) = &nuls;
      v11 = v7;
      v8 = &nuls;
      v9 = &nuls;
    }

    if (v9 - v8 >= 1 && *v8 == 124)
    {
      *a1 = v8 + 1;
      if (v5)
      {
        v7 = v51;
      }

      else
      {
        doinsert(a1, 2013265920, v11 - v7 + 1, v7);
        v11 = *(a1 + 40);
        v4 = v7;
      }

      doemit(a1, 0x80000000, v11 - v7);
      v47 = *(a1 + 40);
      v48 = v47;
      if (!*(a1 + 16))
      {
        *(*(a1 + 24) + 8 * v4) = *(*(a1 + 24) + 8 * v4) & 0xF8000000 | (v47 - v4);
        v48 = *(a1 + 40);
      }

      v51 = v47 - 1;
      doemit(a1, 2281701376, 0);
      v5 = 1;
      v4 = v48;
      continue;
    }

    break;
  }

  if (v5)
  {
    if (!*(a1 + 16))
    {
      *(*(a1 + 24) + 8 * v4) = *(*(a1 + 24) + 8 * v4) & 0xF8000000 | (v11 - v4);
      v11 = *(a1 + 40);
    }

    doemit(a1, 2415919104, v11 - v51);
  }
}

void p_bre(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 40);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = &v6[-*a1];
  if (v7 < 1)
  {
    goto LABEL_98;
  }

  if (*v5 == 94)
  {
    *a1 = v5 + 1;
    doemit(a1, 402653184, 0);
    v10 = *(a1 + 56);
    v11 = v10[9];
    v12 = vadd_s32(v11, 0x100000001);
    v11.i32[0] |= 1u;
    v11.i32[1] = v12.i32[1];
    v10[9] = v11;
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = &v6[-*a1];
    if (v7 < 1)
    {
LABEL_98:
      v40 = *(a1 + 40);
      goto LABEL_99;
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = a1 + 144;
  v16 = a1 + 64;
  v43 = v4;
  strcpy(v42, "^\n]");
  while (v7 == 1 || *v5 != a2 || v5[1] != a3)
  {
    v17 = *(a1 + 40);
    v18 = v5 + 1;
    *a1 = v5 + 1;
    v19 = *v5;
    if (v19 == 92)
    {
      if (v6 - v18 <= 0)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 5;
        }

        *(a1 + 8) = &nuls;
        v6 = &nuls;
        v18 = &nuls;
      }

      *a1 = v18 + 1;
      v19 = *v18++ | 0x100;
    }

    if (v19 > 304)
    {
      if ((v19 - 305) < 9)
      {
        v20 = (v19 & 0xFFFFFEFF) - 48;
        if (*(v15 + 8 * v20))
        {
          doemit(a1, 939524096, (v19 & 0xFFFFFEFF) - 48);
          dupl(a1, *(v16 + 8 * v20) + 1, *(v15 + 8 * v20));
          doemit(a1, 0x40000000, (v19 & 0xFFFFFEFF) - 48);
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 6;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }

        *(*(a1 + 56) + 120) = 1;
        goto LABEL_60;
      }

      if (v19 == 379)
      {
        if (!*(a1 + 16))
        {
          v27 = 13;
LABEL_56:
          *(a1 + 16) = v27;
        }

        goto LABEL_57;
      }

      if (v19 == 381)
      {
        goto LABEL_52;
      }

      goto LABEL_38;
    }

    if (v19 <= 90)
    {
      if (v19 == 42)
      {
        if (v14)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 13;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }
      }

      else if (v19 == 46)
      {
        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          *a1 = &v44;
          *(a1 + 8) = &v44 + 3;
          v44 = *v42;
          p_bracket(a1);
          *a1 = v18;
          *(a1 + 8) = v6;
        }

        else
        {
          doemit(a1, 671088640, 0);
        }

        goto LABEL_60;
      }

LABEL_38:
      ordinary(a1, v19);
      goto LABEL_60;
    }

    if (v19 == 91)
    {
      p_bracket(a1);
      goto LABEL_60;
    }

    if (v19 != 296)
    {
      if (v19 == 297)
      {
        goto LABEL_52;
      }

      goto LABEL_38;
    }

    v21 = *(a1 + 56);
    v22 = *(v21 + 112);
    v23 = v22 + 1;
    *(v21 + 112) = v22 + 1;
    if (v22 + 1 <= 9)
    {
      *(v16 + 8 * v23) = v17;
    }

    doemit(a1, 1744830464, v22 + 1);
    v24 = *a1;
    v25 = *(a1 + 8) - *a1;
    if (v25 >= 1 && (v25 == 1 || *v24 != 92 || v24[1] != 41))
    {
      p_bre(a1, 92, 41);
    }

    if (v23 <= 9)
    {
      *(v15 + 8 * v23) = *(a1 + 40);
    }

    doemit(a1, 1879048192, v23);
    v26 = *a1;
    if ((*(a1 + 8) - *a1) < 2 || *v26 != 92 || v26[1] != 41)
    {
LABEL_52:
      if (!*(a1 + 16))
      {
        v27 = 8;
        goto LABEL_56;
      }

LABEL_57:
      *a1 = &nuls;
      *(a1 + 8) = &nuls;
      goto LABEL_60;
    }

    *a1 = v26 + 2;
LABEL_60:
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = &v6[-*a1];
    if (v7 >= 1)
    {
      v28 = *v5;
      if (v28 == 42)
      {
        *a1 = v5 + 1;
        doinsert(a1, 1207959552, *(a1 + 40) - v17 + 1, v17);
        doemit(a1, 1342177280, *(a1 + 40) - v17);
        doinsert(a1, 1476395008, *(a1 + 40) - v17 + 1, v17);
        doemit(a1, 1610612736, *(a1 + 40) - v17);
        v5 = *a1;
        v6 = *(a1 + 8);
LABEL_91:
        v13 = 0;
        v7 = v6 - v5;
        goto LABEL_92;
      }

      v29 = v6 != *a1;
      if (v7 != 1 && v28 == 92 && v5[1] == 123)
      {
        *a1 = v5 + 2;
        v30 = p_count(a1);
        v31 = v30;
        v33 = *a1;
        v32 = *(a1 + 8);
        v34 = v30;
        if (v32 - *a1 >= 1)
        {
          v34 = v30;
          if (*v33 == 44)
          {
            v35 = (v33 + 1);
            *a1 = v35;
            if (v32 - v35 < 1 || *v35 - 48 > 9)
            {
              v34 = 256;
            }

            else
            {
              v34 = p_count(a1);
              if (v31 > v34)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 10;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }
            }
          }
        }

        repeat(a1, v17, v31, v34);
        v36 = *a1;
        v6 = *(a1 + 8);
        v37 = &v6[-*a1];
        if (v37 <= 1)
        {
          if (v37 == 1)
          {
            goto LABEL_82;
          }

LABEL_87:
          if (!*(a1 + 16))
          {
            v39 = 9;
            goto LABEL_89;
          }
        }

        else
        {
          if (*v36 == 92 && v36[1] == 125)
          {
            v5 = v36 + 2;
            *a1 = v36 + 2;
            goto LABEL_91;
          }

LABEL_82:
          v38 = v36 + 1;
          while (1)
          {
            if (--v37)
            {
              if (*(v38 - 1) == 92 && *v38 == 125)
              {
                break;
              }
            }

            *a1 = v38++;
            if (v37 <= 0)
            {
              goto LABEL_87;
            }
          }

          if (!*(a1 + 16))
          {
            v39 = 10;
LABEL_89:
            *(a1 + 16) = v39;
          }
        }

        *a1 = &nuls;
        *(a1 + 8) = &nuls;
        v5 = &nuls;
        v6 = &nuls;
        goto LABEL_91;
      }
    }

    if (v19 != 36)
    {
      goto LABEL_91;
    }

    v13 = 1;
LABEL_92:
    v14 = 1;
    if (v7 <= 0)
    {
      break;
    }
  }

  v40 = *(a1 + 40);
  v4 = v43;
  if (v13)
  {
    *(a1 + 40) = v40 - 1;
    doemit(a1, 0x20000000, 0);
    v41 = *(a1 + 56);
    *(v41 + 72) |= 2u;
    ++*(v41 + 80);
    goto LABEL_98;
  }

LABEL_99:
  if (v40 == v4)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 14;
    }

    *a1 = &nuls;
    *(a1 + 8) = &nuls;
  }
}

void *doinsert(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 4))
  {
    v5 = result;
    v6 = result[5];
    doemit(result, a2, a3);
    v7 = v5[3];
    v8 = *(v7 + 8 * v6);
    v9 = v5 + 19;
    v10 = 9;
    do
    {
      v11 = *(v9 - 10);
      if (v11 >= a4)
      {
        *(v9 - 10) = v11 + 1;
      }

      if (*v9 >= a4)
      {
        ++*v9;
      }

      ++v9;
      --v10;
    }

    while (v10);
    result = memmove((v7 + 8 * a4 + 8), (v7 + 8 * a4), 8 * (v5[5] + ~a4));
    *(v5[3] + 8 * a4) = v8;
  }

  return result;
}

void p_bracket(uint64_t a1)
{
  v2 = *a1;
  if ((*(a1 + 8) - *a1) >= 6)
  {
    if (!strncmp(*a1, "[:<:]]", 6uLL))
    {
      v24 = a1;
      v25 = 2550136832;
    }

    else
    {
      if (strncmp(v2, "[:>:]]", 6uLL))
      {
        goto LABEL_4;
      }

      v24 = a1;
      v25 = 2684354560;
    }

    doemit(v24, v25, 0);
    *a1 += 6;
    return;
  }

LABEL_4:
  v3 = *(a1 + 56);
  v4 = *(v3 + 20);
  v5 = *(v3 + 16);
  *(v3 + 20) = v4 + 1;
  v6 = *(a1 + 48);
  if (v4 >= v6)
  {
    v17 = (v6 + 8);
    *(a1 + 48) = v17;
    if (v6 < -8)
    {
      goto LABEL_21;
    }

    v18 = malloc_type_realloc(*(v3 + 24), 32 * (v6 + 8), 0x1010040FE74B554uLL);
    v3 = *(a1 + 56);
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = (v17 >> 3) * v5;
    *(v3 + 24) = v18;
    v20 = malloc_type_realloc(*(v3 + 32), v19, 0x100004077774924uLL);
    v3 = *(a1 + 56);
    if (!v20)
    {
      goto LABEL_21;
    }

    *(v3 + 32) = v20;
    if (v4 >= 1)
    {
      v21 = 0;
      v22 = *(v3 + 24);
      do
      {
        *v22 = &v20[(v21 >> 3) * v5];
        v22 += 4;
        ++v21;
      }

      while (v4 != v21);
    }

    bzero(&v20[v19 - v5], v5);
    v3 = *(a1 + 56);
  }

  v7 = *(v3 + 24);
  if (!v7 || (v8 = *(v3 + 32)) == 0)
  {
LABEL_21:
    free(*(v3 + 24));
    v23 = *(a1 + 56);
    *(v23 + 24) = 0;
    free(*(v23 + 32));
    *(*(a1 + 56) + 32) = 0;
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 12;
    }

    *a1 = &nuls;
    *(a1 + 8) = &nuls;
    return;
  }

  v9 = (v7 + 32 * v4);
  v10 = v8 + v5 * (v4 / 8);
  *v9 = v10;
  v11 = 1;
  v12 = 1 << (v4 & 7);
  *(v9 + 4) = v12;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  v14 = *a1;
  v13 = *(a1 + 8);
  if (&v13[-*a1] < 1)
  {
    goto LABEL_30;
  }

  v15 = *v14;
  v11 = v15 != 94;
  if (v15 == 94)
  {
    *a1 = ++v14;
    if (v13 - v14 < 1)
    {
      v11 = 0;
      goto LABEL_30;
    }

    v15 = *v14;
  }

  if (v15 == 93)
  {
    v16 = 93;
  }

  else
  {
    if (v15 != 45)
    {
      goto LABEL_30;
    }

    v16 = 45;
  }

  *a1 = v14 + 1;
  *(v10 + v16) |= v12;
  v9[9] += v15;
  v14 = *a1;
  v13 = *(a1 + 8);
LABEL_30:
  v26 = v13 - v14;
  if (v13 - v14 >= 1)
  {
    v27 = MEMORY[0x277D85DE0];
    while (1)
    {
      v28 = *v14;
      if (v28 == 93)
      {
        goto LABEL_132;
      }

      if (v26 != 1 && v28 == 45)
      {
        break;
      }

      if (v28 == 45)
      {
        goto LABEL_70;
      }

      if (v28 != 91 || v26 == 1)
      {
LABEL_43:
        v30 = p_b_symbol(a1);
        v31 = v30;
        v32 = *a1;
        v33 = *(a1 + 8);
        if (v33 - *a1 < 2 || *v32 != 45 || (v34 = v32 + 1, v32[1] == 93) || ((*a1 = v34, v33 - v34 < 1) || *v34 != 45 ? (v30 = p_b_symbol(a1)) : (*a1 = v32 + 2, v30 = 45), v31 <= v30))
        {
          do
          {
            *(*v9 + v31) |= v9[8];
            v9[9] += v31++;
          }

          while (v30 + 1 != v31);
          v14 = *a1;
          v13 = *(a1 + 8);
          goto LABEL_75;
        }

        goto LABEL_70;
      }

      v35 = v14[1];
      if (v35 == 61)
      {
        v42 = v14 + 2;
        *a1 = v42;
        if (v13 - v42 <= 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v42 = &nuls;
        }

        v43 = *v42;
        if (v43 == 93 || v43 == 45)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 3;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }

        v44 = p_b_coll_elem(a1, 61);
        *(*v9 + v44) |= v9[8];
        v9[9] += v44;
        v45 = *a1;
        v13 = *(a1 + 8);
        if (&v13[-*a1] < 1)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v45 = &nuls;
          v13 = &nuls;
        }

        if (v13 - v45 > 1 && *v45 == 61 && v45[1] == 93)
        {
          goto LABEL_111;
        }

        if (!*(a1 + 16))
        {
          *(a1 + 16) = 3;
        }
      }

      else
      {
        if (v35 != 58)
        {
          goto LABEL_43;
        }

        v36 = v14 + 2;
        *a1 = v14 + 2;
        if (v13 - (v14 + 2) <= 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v13 = &nuls;
          v36 = &nuls;
        }

        v37 = *v36;
        if (v37 == 93 || v37 == 45)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 4;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v13 = &nuls;
          v36 = &nuls;
        }

        if (v13 - v36 >= 1)
        {
          v38 = -v36;
          v39 = v36 + 1;
          while (1)
          {
            v40 = *(v39 - 1);
            if (v40 < 0)
            {
              if (!__maskrune(*(v39 - 1), 0x100uLL))
              {
LABEL_96:
                v41 = *a1;
                goto LABEL_97;
              }
            }

            else if ((*(v27 + 4 * v40 + 60) & 0x100) == 0)
            {
              goto LABEL_96;
            }

            *a1 = v39;
            --v38;
            ++v39;
            if (*(a1 + 8) + v38 <= 0)
            {
              v41 = -v38;
              goto LABEL_97;
            }
          }
        }

        v41 = v36;
LABEL_97:
        v46 = v41 - v36;
        v47 = &off_279EFAAC8;
        v48 = "alnum";
        while (strncmp(v48, v36, v46) || v48[v46])
        {
          v48 = *(v47 + 1);
          v47 += 24;
          if (!v48)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 4;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
            goto LABEL_104;
          }
        }

        v49 = *(v47 - 1);
        v50 = *v49;
        if (*v49)
        {
          v51 = v49 + 1;
          do
          {
            *(*v9 + v50) |= v9[8];
            v9[9] += v50;
            v52 = *v51++;
            v50 = v52;
          }

          while (v52);
        }

        v53 = *v47;
        if (**v47)
        {
          do
          {
            v54 = *(v9 + 2);
            v55 = v54 + strlen(v53) + 1;
            *(v9 + 2) = v55;
            v56 = malloc_type_realloc(*(v9 + 3), v55, 0x5F127AD2uLL);
            if (v56)
            {
              *(v9 + 3) = v56;
              v57 = *(v9 + 2);
              if (v57 - v54 != -1)
              {
                v58 = &v56[v54 - 1];
                v59 = v54 - v57;
                v60 = v53;
                while (v59)
                {
                  v61 = *v60++;
                  *v58++ = v61;
                  ++v59;
                  if (!v61)
                  {
                    goto LABEL_130;
                  }
                }

                *v58 = 0;
              }
            }

            else
            {
              v62 = *(v9 + 3);
              if (v62)
              {
                free(v62);
              }

              *(v9 + 3) = 0;
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }

LABEL_130:
            v63 = &v53[strlen(v53)];
            v64 = *(v63 + 1);
            v53 = v63 + 1;
          }

          while (v64);
        }

LABEL_104:
        v45 = *a1;
        v13 = *(a1 + 8);
        if (&v13[-*a1] < 1)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v45 = &nuls;
          v13 = &nuls;
        }

        if (v13 - v45 > 1 && *v45 == 58 && v45[1] == 93)
        {
LABEL_111:
          v14 = v45 + 2;
          *a1 = v14;
          goto LABEL_75;
        }

        if (!*(a1 + 16))
        {
          *(a1 + 16) = 4;
        }
      }

LABEL_72:
      *a1 = &nuls;
      *(a1 + 8) = &nuls;
      v14 = &nuls;
      v13 = &nuls;
LABEL_75:
      v26 = v13 - v14;
      if (v13 - v14 <= 0)
      {
        goto LABEL_132;
      }
    }

    if (v14[1] == 93)
    {
      *a1 = v14 + 1;
      *(*v9 + 45) |= v9[8];
      v9[9] += 45;
      v14 = *a1;
      v13 = *(a1 + 8);
      goto LABEL_132;
    }

LABEL_70:
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 11;
    }

    goto LABEL_72;
  }

LABEL_132:
  if (v13 - v14 < 1 || (*a1 = v14 + 1, *v14 != 93))
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 7;
    }

    *a1 = &nuls;
    *(a1 + 8) = &nuls;
    goto LABEL_170;
  }

  if (*(a1 + 16))
  {
LABEL_170:

    freeset(a1, v9);
    return;
  }

  v65 = *(a1 + 56);
  if ((*(v65 + 40) & 2) != 0)
  {
    v66 = *(v65 + 16);
    if (v66 >= 1)
    {
      v67 = MEMORY[0x277D85DE0];
      while (1)
      {
        v68 = v66 - 1;
        if ((v9[8] & *(*v9 + (v66 - 1))) != 0)
        {
          if (v66 > 0x80)
          {
            if (__maskrune(v66 - 1, 0x100uLL))
            {
LABEL_143:
              v69 = othercase(v68);
              if (v68 != v69)
              {
                *(*v9 + v69) |= v9[8];
                v9[9] += v69;
              }
            }
          }

          else if ((*(v67 + 4 * v66 + 56) & 0x100) != 0)
          {
            goto LABEL_143;
          }
        }

        v66 = v68;
        if (v68 + 1 <= 1)
        {
          v65 = *(a1 + 56);
          break;
        }
      }
    }
  }

  if (!v11)
  {
    v70 = *(v65 + 16);
    if (v70 >= 1)
    {
      v71 = v70 + 1;
      do
      {
        v72 = v71 - 2;
        v73 = *v9;
        v74 = (v71 - 2);
        v75 = *(*v9 + v74);
        v76 = v9[8];
        if ((v76 & v75) != 0)
        {
          *(v73 + v74) = v75 & ~v76;
          v77 = v9[9] - v72;
        }

        else
        {
          *(v73 + v74) = v76 | v75;
          v77 = v9[9] + v72;
        }

        v9[9] = v77;
        --v71;
      }

      while (v71 > 1);
      v65 = *(a1 + 56);
    }

    if ((*(v65 + 40) & 8) != 0)
    {
      *(*v9 + 10) &= ~v9[8];
      v9[9] -= 10;
      v65 = *(a1 + 56);
    }
  }

  v78 = *(v65 + 16);
  if (v78)
  {
    v79 = 0;
    v80 = 0;
    v81 = *v9;
    do
    {
      if ((*(v81 + v80) & v9[8]) != 0)
      {
        ++v79;
      }

      ++v80;
    }

    while (v78 != v80);
    if (v79 == 1)
    {
      v82 = 0;
      v83 = 0;
      while ((*(v81 + v83) & v9[8]) == 0)
      {
        ++v83;
        v82 += 0x1000000;
        if (v78 == v83)
        {
          v84 = 0;
          goto LABEL_189;
        }
      }

      v84 = v82 >> 24;
LABEL_189:
      ordinary(a1, v84);
      goto LABEL_170;
    }
  }

  v85 = *(v65 + 24);
  v86 = *(v65 + 20);
  if (v86 < 1)
  {
LABEL_183:
    v88 = v9;
  }

  else
  {
    v87 = v85 + 32 * v86;
    v88 = *(v65 + 24);
    while (1)
    {
      if (v88 != v9 && v88[9] == v9[9])
      {
        v89 = 0;
        if (v78)
        {
          while (((*(*v88 + v89) & v88[8]) != 0) != ((*(*v9 + v89) & v9[8]) == 0))
          {
            if (v78 == ++v89)
            {
              goto LABEL_184;
            }
          }
        }

        if (v89 == v78)
        {
          break;
        }
      }

      v88 += 32;
      if (v88 >= v87)
      {
        goto LABEL_183;
      }
    }

LABEL_184:
    freeset(a1, v9);
    v85 = *(*(a1 + 56) + 24);
  }

  doemit(a1, 805306368, (&v88[-v85] >> 5));
}

uint64_t dupl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = a3 - a2;
  if (a3 != a2)
  {
    enlarge(a1, *(a1 + 32) + v4);
    memmove((*(a1 + 24) + 8 * *(a1 + 40)), (*(a1 + 24) + 8 * a2), 8 * v4);
    *(a1 + 40) += v4;
  }

  return v3;
}

__n128 ordinary(__n128 *a1, int a2)
{
  v4 = a1[3].n128_u64[1];
  v5 = *(v4 + 88);
  v6 = a2;
  if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_7;
  }

  if (a2 > 0x7Fu)
  {
    if (!__maskrune(a2, 0x100uLL))
    {
      goto LABEL_7;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * a2 + 60) & 0x100) == 0)
  {
    goto LABEL_7;
  }

  if (othercase(a2) != a2)
  {
    v11 = a2;
    v12 = 93;
    v10 = *a1;
    a1->n128_u64[0] = &v11;
    a1->n128_u64[1] = &v12 + 1;
    p_bracket(a1);
    result = v10;
    *a1 = v10;
    return result;
  }

LABEL_7:
  doemit(a1, 0x10000000, v6);
  if (!*(v5 + a2))
  {
    v8 = a1[3].n128_u64[1];
    v9 = *(v8 + 84);
    *(v8 + 84) = v9 + 1;
    *(v5 + a2) = v9;
  }

  return result;
}

uint64_t p_count(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  if (v2 < 1)
  {
    v4 = 0;
LABEL_12:
    if (!*(a1 + 4))
    {
      *(a1 + 4) = 10;
    }

    *a1 = &nuls;
    a1[1] = &nuls;
    return v4;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = (v1 + v3);
    if (*(v1 + v3) - 48 > 9 || v4 > 255)
    {
      break;
    }

    *a1 = (v5 + 1);
    v4 = (*v5 + 10 * v4 - 48);
    ++v3;
    if (v2-- <= 1)
    {
      LODWORD(v3) = 1;
      break;
    }
  }

  if (!v3 || v4 >= 256)
  {
    goto LABEL_12;
  }

  return v4;
}

void **repeat(void **result, uint64_t a2, int a3, uint64_t a4)
{
  if (!*(result + 4))
  {
    v7 = result;
    while (1)
    {
      v8 = a4 == 256 ? 3 : 2;
      v9 = a4 >= 2 ? v8 : a4;
      while (1)
      {
        v10 = *(v7 + 40);
        if (a3 == 256)
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        if (a3 < 2)
        {
          v11 = a3;
        }

        v12 = v9 + 8 * v11;
        if (v12 != 19)
        {
          break;
        }

        result = dupl(v7, a2, *(v7 + 40));
        a2 = result;
        --a3;
        if (*(v7 + 16))
        {
          return result;
        }
      }

      if (v12 <= 8)
      {
        break;
      }

      if (v12 > 10)
      {
        if (v12 == 11)
        {
          doinsert(v7, 1207959552, v10 - a2 + 1, a2);
          v17 = *(v7 + 40) - a2;
          v15 = v7;
          v16 = 1342177280;
          goto LABEL_40;
        }

        if (v12 != 18)
        {
          goto LABEL_43;
        }

        result = dupl(v7, a2, *(v7 + 40));
        a2 = result;
        --a3;
      }

      else
      {
        if (v12 == 9)
        {
          return result;
        }

        doinsert(v7, 2013265920, v10 - a2 + 1, a2);
        doemit(v7, 0x80000000, *(v7 + 40) - a2);
        if (!*(v7 + 16))
        {
          *(*(v7 + 24) + 8 * a2) = *(*(v7 + 24) + 8 * a2) & 0xF8000000 | (*(v7 + 40) - a2);
        }

        doemit(v7, 2281701376, 0);
        if (!*(v7 + 16))
        {
          v13 = *(v7 + 24) + 8 * *(v7 + 40);
          *(v13 - 8) = *(v13 - 8) & 0xF8000000 | 1;
        }

        doemit(v7, 2415919104, 2);
        result = dupl(v7, a2 + 1, v10 + 1);
        a2 = result;
        a3 = 1;
      }

      a4 = (a4 - 1);
      if (*(v7 + 16))
      {
        return result;
      }
    }

    if ((v12 - 1) >= 3)
    {
      if (!v12)
      {
        *(v7 + 40) = a2;
        return result;
      }

LABEL_43:
      *(v7 + 16) = 15;
      *v7 = &nuls;
      *(v7 + 8) = &nuls;
      return result;
    }

    doinsert(v7, 2013265920, v10 - a2 + 1, a2);
    repeat(v7, a2 + 1, 1, a4);
    doemit(v7, 0x80000000, *(v7 + 40) - a2);
    if (!*(v7 + 16))
    {
      *(*(v7 + 24) + 8 * a2) = *(*(v7 + 24) + 8 * a2) & 0xF8000000 | (*(v7 + 40) - a2);
    }

    doemit(v7, 2281701376, 0);
    if (!*(v7 + 16))
    {
      v14 = *(v7 + 24) + 8 * *(v7 + 40);
      *(v14 - 8) = *(v14 - 8) & 0xF8000000 | 1;
    }

    v15 = v7;
    v16 = 2415919104;
    v17 = 2;
LABEL_40:

    return doemit(v15, v16, v17);
  }

  return result;
}

uint64_t freeset(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24) + 32 * *(v2 + 20);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      *(*a2 + i) &= ~*(a2 + 8);
      *(a2 + 9) -= i;
    }
  }

  if (v4 - 32 == a2)
  {
    --*(*(result + 56) + 20);
  }

  return result;
}

uint64_t othercase(unsigned __int8 a1)
{
  v1 = a1;
  v2 = a1;
  if (a1 <= 0x7Fu)
  {
    v3 = *(MEMORY[0x277D85DE0] + 4 * a1 + 60);
    if ((v3 & 0x8000) == 0)
    {
      if ((v3 & 0x1000) == 0)
      {
        return v1;
      }

      goto LABEL_8;
    }

LABEL_6:
    v4 = __tolower(v2);
LABEL_9:
    v1 = v4;
    return v1;
  }

  if (__maskrune(a1, 0x8000uLL))
  {
    goto LABEL_6;
  }

  if (__maskrune(v2, 0x1000uLL))
  {
LABEL_8:
    v4 = __toupper(v2);
    goto LABEL_9;
  }

  return v1;
}

uint64_t p_b_symbol(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (&v3[-*a1] < 1)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 7;
    }

    v2 = &nuls;
    *a1 = &nuls;
    *(a1 + 8) = &nuls;
    v3 = &nuls;
  }

  if (v3 - v2 > 1 && *v2 == 91 && v2[1] == 46)
  {
    *a1 = v2 + 2;
    v4 = p_b_coll_elem(a1, 46);
    v5 = *a1;
    if ((*(a1 + 8) - *a1) > 1 && *v5 == 46 && v5[1] == 93)
    {
      *a1 = v5 + 2;
    }

    else
    {
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 3;
      }

      *a1 = &nuls;
      *(a1 + 8) = &nuls;
    }
  }

  else
  {
    *a1 = v2 + 1;
    return *v2;
  }

  return v4;
}

uint64_t p_b_coll_elem(uint64_t a1, int a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) - *a1;
  if (v4 < 1)
  {
LABEL_7:
    if (!*(a1 + 16))
    {
      v7 = 7;
LABEL_9:
      *(a1 + 16) = v7;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (v4 - 1 == v6 || v3[v6] != a2 || v3[v6 + 1] != 93)
    {
      *a1 = &v3[++v6];
      --v5;
      if (v4 + v5 <= 0)
      {
        goto LABEL_7;
      }
    }

    v10 = "NUL";
    v11 = &off_279EFAC00;
    do
    {
      if (!strncmp(v10, v3, v6) && strlen(v10) == v6)
      {
        return *(v11 - 8);
      }

      v12 = *v11;
      v11 += 2;
      v10 = v12;
    }

    while (v12);
    if (v6 == 1)
    {
      return *v3;
    }

    if (!*(a1 + 16))
    {
      v7 = 3;
      goto LABEL_9;
    }
  }

  v8 = 0;
  *a1 = &nuls;
  *(a1 + 8) = &nuls;
  return v8;
}

void **enlarge(void **result, uint64_t a2)
{
  if (result[4] < a2)
  {
    v3 = result;
    if (a2 >> 61 || (result = malloc_type_realloc(result[3], 8 * a2, 0x100004000313F17uLL)) == 0)
    {
      if (!*(v3 + 4))
      {
        *(v3 + 4) = 12;
      }

      *v3 = &nuls;
      v3[1] = &nuls;
    }

    else
    {
      v3[3] = result;
      v3[4] = a2;
    }
  }

  return result;
}

size_t llvm_regerror(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1 == 255)
  {
    v6 = *(a2 + 16);
    if (strcmp("REG_NOMATCH", v6))
    {
      v7 = off_279EFB210;
      v8 = "0";
      while (1)
      {
        v9 = *(v7 - 2);
        if (!v9)
        {
          goto LABEL_24;
        }

        v10 = *v7;
        v7 += 3;
        if (!strcmp(v10, v6))
        {
          goto LABEL_21;
        }
      }
    }

    v9 = 1;
LABEL_21:
    v24 = v9;
    v18 = "%d";
LABEL_23:
    v8 = __str;
    snprintf(__str, 0x32uLL, v18, v24);
    goto LABEL_24;
  }

  v11 = &rerrs;
  do
  {
    v13 = *v11;
    v11 += 6;
    v12 = v13;
    if (v13)
    {
      v14 = v12 == (a1 & 0xFFFFFEFF);
    }

    else
    {
      v14 = 1;
    }
  }

  while (!v14);
  if ((a1 & 0x100) == 0)
  {
    v8 = *(v11 - 1);
    goto LABEL_24;
  }

  if (!v12)
  {
    v24 = a1 & 0xFFFFFEFF;
    v18 = "REG_0x%x";
    goto LABEL_23;
  }

  v15 = 0;
  v16 = *(v11 - 2);
  while (v15 != 49)
  {
    v17 = *(v16 + v15);
    v8 = __str;
    __str[v15++] = v17;
    if (!v17)
    {
      goto LABEL_24;
    }
  }

  v8 = __str;
  __str[49] = 0;
LABEL_24:
  v19 = strlen(v8);
  if (a4)
  {
    v20 = a4 - 1;
    while (v20)
    {
      v21 = *v8++;
      *a3++ = v21;
      --v20;
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    *a3 = 0;
  }

LABEL_30:
  v22 = *MEMORY[0x277D85DE8];
  return v19 + 1;
}

uint64_t llvm_regexec(uint64_t a1, char *__s, unint64_t a3, void *a4, char a5)
{
  if (*a1 != 62053)
  {
    return 2;
  }

  v5 = *(a1 + 24);
  if (*v5 != 53829 || (*(v5 + 72) & 4) != 0)
  {
    return 2;
  }

  v8 = a5 & 7;
  v9 = *(v5 + 48);
  if (v9 > 64)
  {
    v18 = *(v5 + 56);
    v17 = *(v5 + 64);
    if ((*(v5 + 40) & 4) != 0)
    {
      v19 = 0;
    }

    else
    {
      v19 = a3;
    }

    if ((a5 & 4) != 0)
    {
      v20 = a4[1];
      v21 = &__s[*a4];
    }

    else
    {
      v20 = strlen(__s);
      v21 = __s;
    }

    v62 = &__s[v20];
    if (&__s[v20] < v21)
    {
      return 16;
    }

    v109 = a4;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v63 = *(v5 + 96);
    v112 = v19;
    v117 = &__s[v20];
    if (v63)
    {
      v64 = v21;
      if (v21 < v62)
      {
        __dsta = v18;
        v105 = v8;
        v65 = v5;
        v66 = *v63;
        v67 = (__s - v21 + v20);
        v107 = &__s[v20];
        v68 = (&__s[v20] - v21);
        v64 = v21;
        do
        {
          if (*v64 == v66)
          {
            v69 = *(v65 + 104);
            if (v68 >= v69 && !memcmp(v64, v63, v69))
            {
              goto LABEL_147;
            }
          }

          ++v64;
          --v68;
          --v67;
        }

        while (v67);
        v64 = v107;
LABEL_147:
        v5 = v65;
        v18 = __dsta;
        v62 = v117;
        v8 = v105;
      }

      if (v64 == v62)
      {
        return 1;
      }
    }

    v118 = v5;
    LODWORD(v119) = v8;
    *&v120 = __s;
    *(&v120 + 1) = v21;
    *&v122 = 0;
    *&v121 = v62;
    v70 = malloc_type_malloc(4 * v9, 0xD100C61FuLL);
    v123[0] = v70;
    if (!v70)
    {
      return 12;
    }

    v71 = v18 + 1;
    v123[1] = v70;
    v72 = *(v5 + 48);
    *&v124 = &v70[v72];
    *(&v124 + 1) = &v70[2 * v72];
    *(&v122 + 1) = 4;
    v125 = &v70[3 * v72];
    bzero(v125, v72);
    v111 = v5;
LABEL_151:
    if (*(&v120 + 1) == v21)
    {
      v73 = 128;
    }

    else
    {
      v73 = *(v21 - 1);
    }

    v74 = v124;
    v75 = v123[1];
    bzero(v123[1], *(v118 + 48));
    v75[v71] = 1;
    lstep(v118, v71, v17, v75, 132, v75);
    memmove(v74, v75, *(v118 + 48));
    v76 = 0;
    while (1)
    {
      if (v21 == v121)
      {
        v77 = 128;
      }

      else
      {
        v77 = *v21;
      }

      v78 = v118;
      if (!memcmp(v75, v74, *(v118 + 48)))
      {
        v76 = v21;
      }

      if (v73 == 128)
      {
        if (v119)
        {
          goto LABEL_163;
        }
      }

      else if (v73 != 10 || (*(v78 + 40) & 8) == 0)
      {
LABEL_163:
        v79 = 0;
        v80 = 0;
        v81 = 130;
        goto LABEL_166;
      }

      v80 = *(v78 + 76);
      v79 = 129;
      v81 = 131;
LABEL_166:
      if (v77 == 128)
      {
        if ((v119 & 2) != 0)
        {
          goto LABEL_169;
        }
      }

      else if (v77 != 10 || (*(v78 + 40) & 8) == 0)
      {
LABEL_169:
        v81 = v79;
        goto LABEL_172;
      }

      v80 += *(v78 + 80);
LABEL_172:
      if (v80 >= 1)
      {
        v82 = v80 + 1;
        do
        {
          lstep(v118, v71, v17, v75, v81, v75);
          --v82;
        }

        while (v82 > 1);
      }

      if (v81 == 129)
      {
        if (v77 == 128)
        {
          v81 = 129;
        }

        else
        {
LABEL_185:
          if (v77 > 0x7Fu)
          {
            v84 = __maskrune(v77, 0x500uLL);
          }

          else
          {
            v84 = *(MEMORY[0x277D85DE0] + 4 * v77 + 60) & 0x500;
          }

          if (v77 == 95 || v84 != 0)
          {
            v81 = 133;
          }
        }

        if (v73 == 128)
        {
          goto LABEL_200;
        }

        v83 = v73;
        goto LABEL_195;
      }

      if (v73 == 128)
      {
        goto LABEL_200;
      }

      v83 = v73;
      if (v73 > 0x7Fu)
      {
        if (__maskrune(v73, 0x500uLL))
        {
          goto LABEL_195;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v73 + 60) & 0x500) != 0)
      {
        goto LABEL_195;
      }

      if (v73 != 95 && v77 != 128)
      {
        goto LABEL_185;
      }

LABEL_195:
      if (v83 > 0x7F)
      {
        if (__maskrune(v83, 0x500uLL))
        {
          goto LABEL_202;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v83 + 60) & 0x500) != 0)
      {
        goto LABEL_202;
      }

      if (v73 != 95)
      {
        goto LABEL_200;
      }

LABEL_202:
      if (v81 != 130)
      {
        if (v77 == 128 || (v77 > 0x7Fu ? (v86 = __maskrune(v77, 0x500uLL)) : (v86 = *(MEMORY[0x277D85DE0] + 4 * v77 + 60) & 0x500), v86 || v77 == 95))
        {
LABEL_200:
          if ((v81 - 133) > 1)
          {
            goto LABEL_205;
          }

          goto LABEL_204;
        }
      }

      v81 = 134;
LABEL_204:
      lstep(v118, v71, v17, v75, v81, v75);
LABEL_205:
      if (v21 == v117 || v75[v17])
      {
        *(&v121 + 1) = v76;
        if (!v75[v17])
        {
          free(*(&v119 + 1));
          free(v122);
          v15 = 1;
          goto LABEL_258;
        }

        if (!v112 && !*(v111 + 120))
        {
          goto LABEL_253;
        }

        v87 = lslow(&v118, v76, v117, v71, v17);
        if (v87)
        {
          v88 = v87;
          v89 = v111;
        }

        else
        {
          v89 = v111;
          do
          {
            ++*(&v121 + 1);
            v90 = lslow(&v118, *(&v121 + 1), v117, v71, v17);
          }

          while (!v90);
          v88 = v90;
        }

        if (v112 == 1 && !*(v89 + 120))
        {
          goto LABEL_247;
        }

        v91 = *(&v119 + 1);
        if (!*(&v119 + 1))
        {
          v91 = malloc_type_malloc(16 * *(v118 + 112) + 16, 0x1000040451B5BE8uLL);
          *(&v119 + 1) = v91;
          if (!v91)
          {
            goto LABEL_265;
          }
        }

        v92 = *(v118 + 112);
        if (v92)
        {
          if ((v92 + 1) > 2)
          {
            v93 = v92 + 1;
          }

          else
          {
            v93 = 2;
          }

          memset(v91 + 16, 255, 16 * v93 - 16);
        }

        if (!*(v89 + 120) && (BYTE1(v119) & 4) == 0)
        {
          v94 = ldissect(&v118, *(&v121 + 1), v88, v71, v17);
          goto LABEL_241;
        }

        v95 = *(v89 + 128);
        v96 = v122;
        if (v95 >= 1 && !v122)
        {
          v96 = malloc_type_malloc(8 * v95 + 8, 0x10040436913F5uLL);
          *&v122 = v96;
          v95 = *(v89 + 128);
        }

        if (v95 >= 1 && !v96)
        {
          free(*(&v119 + 1));
LABEL_265:
          v15 = 12;
          goto LABEL_258;
        }

        v97 = *(&v121 + 1);
        do
        {
          v94 = sbackref(&v118, v97, v88, v71, v17, 0, 0);
LABEL_241:
          if (v94)
          {
            goto LABEL_246;
          }

          v97 = *(&v121 + 1);
          if (v88 <= *(&v121 + 1))
          {
            break;
          }

          v88 = lslow(&v118, *(&v121 + 1), v88 - 1, v71, v17);
          v97 = *(&v121 + 1);
        }

        while (v88);
        v21 = v97 + 1;
        if (v97 == v117)
        {
LABEL_246:
          if (v112)
          {
LABEL_247:
            v98 = &v88[-v120];
            *v109 = *(&v121 + 1) - v120;
            v109[1] = v98;
            if (v112 >= 2)
            {
              v99 = v118;
              v100 = (*(&v119 + 1) + 16);
              v101 = v109 + 2;
              for (i = 1; i != v112; ++i)
              {
                if (i <= *(v99 + 112))
                {
                  *v101 = *v100;
                }

                else
                {
                  *v101 = -1;
                  v101[1] = -1;
                }

                ++v100;
                v101 += 2;
              }
            }
          }

LABEL_253:
          if (*(&v119 + 1))
          {
            free(*(&v119 + 1));
          }

          if (v122)
          {
            free(v122);
          }

          v15 = 0;
LABEL_258:
          free(v123[0]);
          return v15;
        }

        goto LABEL_151;
      }

      memmove(*(&v74 + 1), v75, *(v118 + 48));
      memmove(v75, v74, *(v118 + 48));
      lstep(v118, v71, v17, *(&v74 + 1), v77, v75);
      ++v21;
      v73 = v77;
    }
  }

  v11 = *(v5 + 56);
  v10 = *(v5 + 64);
  if ((*(v5 + 40) & 4) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  if ((a5 & 4) != 0)
  {
    v13 = a4[1];
    v14 = &__s[*a4];
  }

  else
  {
    v13 = strlen(__s);
    v14 = __s;
  }

  v22 = &__s[v13];
  if (&__s[v13] < v14)
  {
    return 16;
  }

  v106 = v12;
  v108 = a4;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v23 = *(v5 + 96);
  __dst = &__s[v13];
  if (v23)
  {
    v24 = v14;
    if (v14 < v22)
    {
      v25 = v11;
      v103 = v8;
      v26 = v5;
      v27 = *v23;
      v28 = (__s - v14 + v13);
      v115 = &__s[v13];
      v29 = (&__s[v13] - v14);
      v24 = v14;
      while (1)
      {
        if (*v24 == v27)
        {
          v30 = *(v26 + 104);
          if (v29 >= v30 && !memcmp(v24, v23, v30))
          {
            break;
          }
        }

        ++v24;
        --v29;
        if (!--v28)
        {
          v24 = v115;
          break;
        }
      }

      v5 = v26;
      v22 = __dst;
      v8 = v103;
      v11 = v25;
    }

    if (v24 == v22)
    {
      return 1;
    }
  }

  v31 = v11 + 1;
  v118 = v5;
  LODWORD(v119) = v8;
  *&v120 = __s;
  *(&v120 + 1) = v14;
  v104 = 1 << (v11 + 1);
  *&v121 = v22;
  v110 = v5;
  *v123 = 0u;
  v124 = 0u;
LABEL_30:
  if (*(&v120 + 1) == v14)
  {
    v32 = 128;
  }

  else
  {
    v32 = *(v14 - 1);
  }

  v33 = v118;
  v34 = sstep(v118, v31, v10, v104, 132, v104);
  v35 = 0;
  v116 = v34;
  while (1)
  {
    v36 = v14 == v121 ? 128 : *v14;
    v37 = v34 == v116 ? v14 : v35;
    if (v32 == 128)
    {
      if (v119)
      {
        goto LABEL_43;
      }
    }

    else if (v32 != 10 || (*(v33 + 40) & 8) == 0)
    {
LABEL_43:
      v38 = 0;
      v39 = 0;
      v40 = 130;
      goto LABEL_46;
    }

    v39 = *(v33 + 76);
    v38 = 129;
    v40 = 131;
LABEL_46:
    if (v36 == 128)
    {
      if ((v119 & 2) != 0)
      {
        goto LABEL_49;
      }
    }

    else if (v36 != 10 || (*(v33 + 40) & 8) == 0)
    {
LABEL_49:
      v40 = v38;
      goto LABEL_52;
    }

    v39 += *(v33 + 80);
LABEL_52:
    if (v39 >= 1)
    {
      v41 = v39 + 1;
      do
      {
        v34 = sstep(v33, v31, v10, v34, v40, v34);
        --v41;
      }

      while (v41 > 1);
    }

    if (v40 == 129)
    {
      if (v36 == 128)
      {
        v40 = 129;
      }

      else
      {
LABEL_65:
        if (v36 > 0x7Fu)
        {
          v43 = __maskrune(v36, 0x500uLL);
        }

        else
        {
          v43 = *(MEMORY[0x277D85DE0] + 4 * v36 + 60) & 0x500;
        }

        if (v36 == 95 || v43 != 0)
        {
          v40 = 133;
        }
      }

      if (v32 == 128)
      {
        goto LABEL_80;
      }

      v42 = v32;
      goto LABEL_75;
    }

    if (v32 == 128)
    {
      goto LABEL_80;
    }

    v42 = v32;
    if (v32 > 0x7Fu)
    {
      if (__maskrune(v32, 0x500uLL))
      {
        goto LABEL_75;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * v32 + 60) & 0x500) != 0)
    {
      goto LABEL_75;
    }

    if (v32 != 95 && v36 != 128)
    {
      goto LABEL_65;
    }

LABEL_75:
    if (v42 > 0x7F)
    {
      if (__maskrune(v42, 0x500uLL))
      {
        goto LABEL_82;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * v42 + 60) & 0x500) != 0)
    {
      goto LABEL_82;
    }

    if (v32 != 95)
    {
      goto LABEL_80;
    }

LABEL_82:
    if (v40 != 130)
    {
      if (v36 == 128 || (v36 > 0x7Fu ? (v46 = __maskrune(v36, 0x500uLL)) : (v46 = *(MEMORY[0x277D85DE0] + 4 * v36 + 60) & 0x500), v46 || v36 == 95))
      {
LABEL_80:
        if ((v40 - 133) > 1)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }
    }

    v40 = 134;
LABEL_84:
    v34 = sstep(v118, v31, v10, v34, v40, v34);
LABEL_85:
    v35 = v37;
    v45 = v34 & (1 << v10);
    if (v14 == __dst || v45)
    {
      break;
    }

    v33 = v118;
    v34 = sstep(v118, v31, v10, v34, v36, v116);
    ++v14;
    v32 = v36;
  }

  *(&v121 + 1) = v37;
  if (!v45)
  {
    free(*(&v119 + 1));
    free(v122);
    return 1;
  }

  if (!v106 && !*(v110 + 120))
  {
    goto LABEL_131;
  }

  for (j = v37; ; j = ++*(&v121 + 1))
  {
    v48 = sslow(&v118, j, __dst, v31, v10);
    if (v48)
    {
      break;
    }
  }

  v49 = v48;
  if (v106 == 1 && !*(v110 + 120))
  {
    goto LABEL_125;
  }

  v50 = *(&v119 + 1);
  if (!*(&v119 + 1))
  {
    v50 = malloc_type_malloc(16 * *(v118 + 112) + 16, 0x1000040451B5BE8uLL);
    *(&v119 + 1) = v50;
    if (!v50)
    {
      return 12;
    }
  }

  v51 = *(v118 + 112);
  if (v51)
  {
    if ((v51 + 1) > 2)
    {
      v52 = v51 + 1;
    }

    else
    {
      v52 = 2;
    }

    memset(v50 + 16, 255, 16 * v52 - 16);
  }

  if (!*(v110 + 120) && (BYTE1(v119) & 4) == 0)
  {
    v53 = sdissect(&v118, *(&v121 + 1), v49, v31, v10);
    goto LABEL_119;
  }

  v54 = *(v110 + 128);
  v55 = v122;
  if (v54 >= 1 && !v122)
  {
    v55 = malloc_type_malloc(8 * v54 + 8, 0x10040436913F5uLL);
    *&v122 = v55;
    v54 = *(v110 + 128);
  }

  if (v54 >= 1 && !v55)
  {
    free(*(&v119 + 1));
    return 12;
  }

  v56 = *(&v121 + 1);
  while (1)
  {
    v53 = sbackref(&v118, v56, v49, v31, v10, 0, 0);
LABEL_119:
    if (v53)
    {
      break;
    }

    v56 = *(&v121 + 1);
    if (v49 > *(&v121 + 1))
    {
      v49 = sslow(&v118, *(&v121 + 1), v49 - 1, v31, v10);
      v56 = *(&v121 + 1);
      if (v49)
      {
        continue;
      }
    }

    v14 = v56 + 1;
    if (v56 != __dst)
    {
      goto LABEL_30;
    }

    break;
  }

  if (v106)
  {
LABEL_125:
    v57 = &v49[-v120];
    *v108 = *(&v121 + 1) - v120;
    v108[1] = v57;
    if (v106 >= 2)
    {
      v58 = v118;
      v59 = (*(&v119 + 1) + 16);
      v60 = v108 + 2;
      for (k = 1; k != v106; ++k)
      {
        if (k <= *(v58 + 112))
        {
          *v60 = *v59;
        }

        else
        {
          *v60 = -1;
          v60[1] = -1;
        }

        ++v59;
        v60 += 2;
      }
    }
  }

LABEL_131:
  if (*(&v119 + 1))
  {
    free(*(&v119 + 1));
  }

  if (v122)
  {
    free(v122);
  }

  return 0;
}