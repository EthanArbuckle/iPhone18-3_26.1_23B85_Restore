uint64_t dmlc::io::IndexedRecordIOSplitter::ResetPartition(dmlc::io::IndexedRecordIOSplitter *this, unsigned int a2, unsigned int a3)
{
  v5 = *(this + 24);
  v6 = *(this + 25);
  result = this + 192;
  v7 = (v6 - v5) >> 4;
  v8 = (v7 + a3 - 1) / a3;
  v9 = v8 * a2;
  if (v9 < v7)
  {
    v10 = *(result - 168);
    v11 = *(v10 - 1);
    *(this + 32) = v9;
    v12 = *(v5 + 16 * v9);
    *(this + 6) = v12;
    v13 = v8 * (a2 + 1);
    if (v13 >= v7)
    {
      *(this + 7) = v11;
      *(this + 33) = v7;
      v29 = v11;
      std::vector<std::pair<unsigned long,unsigned long>>::push_back[abi:ne200100](result, &v29);
      v12 = *(this + 6);
      v10 = *(this + 3);
    }

    else
    {
      *(this + 33) = v13;
      *(this + 7) = *(v5 + 16 * v13);
    }

    *(this + 5) = v12;
    v14 = *(this + 2);
    if (v10 == v14)
    {
      v22 = -1;
      *(this + 12) = -1;
    }

    else
    {
      v15 = v10 - v14;
      v16 = v15;
      v17 = *(this + 2);
      do
      {
        v18 = v16 >> 1;
        v19 = &v17[v16 >> 1];
        v21 = *v19;
        v20 = v19 + 1;
        v16 += ~(v16 >> 1);
        if (v12 < v21)
        {
          v16 = v18;
        }

        else
        {
          v17 = v20;
        }
      }

      while (v16);
      v22 = v17 - v14 - 1;
      *(this + 12) = v22;
      v10 = v14;
      do
      {
        v23 = v15 >> 1;
        v24 = &v10[v15 >> 1];
        v26 = *v24;
        v25 = v24 + 1;
        v15 += ~(v15 >> 1);
        if (*(this + 7) < v26)
        {
          v15 = v23;
        }

        else
        {
          v10 = v25;
        }
      }

      while (v15);
    }

    *(this + 13) = v10 - v14 - 1;
    v27 = *(this + 11);
    if (v27)
    {
      (*(*v27 + 24))(v27);
      *(this + 11) = 0;
      v22 = *(this + 12);
    }

    *(this + 11) = (*(**(this + 1) + 48))(*(this + 1), *(this + 8) + 88 * v22, 0);
    *(this + 31) = *(this + 32);
    *(this + 35) = 0;
    v28 = *(*this + 16);

    return v28(this);
  }

  return result;
}

void std::vector<std::pair<unsigned long,unsigned long>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void dmlc::io::IndexedRecordIOSplitter::ReadIndexFile(uint64_t a1, uint64_t a2, const std::string *a3)
{
  dmlc::io::InputSplitBase::ConvertToURIs(a1, a3, &v27);
  v5 = 0x8E38E38E38E38E39;
  __p = (0x8E38E38E38E38E39 * ((v28 - v27) >> 3));
  *&v19 = 1;
  if (v28 - v27 != 72)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v19);
  }

  v6 = v27;
  if (v28 != v27)
  {
    v7 = 0;
    do
    {
      v8 = (*(*a2 + 40))(a2, v6 + 72 * v7, "r", 1);
      dmlc::istream::istream(v25, v8, 1024);
      __p = 0;
      v23 = 0;
      v24 = 0;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v9 = MEMORY[0x277C68D70](v25, &v21);
        v10 = MEMORY[0x277C68D70](v9, &v20);
        if ((*(v10 + *(*v10 - 24) + 32) & 5) != 0)
        {
          break;
        }

        std::vector<unsigned long>::push_back[abi:ne200100](&__p, &v20);
      }

      std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
      v12 = __p;
      v11 = v23;
      if (v23 - __p != 8)
      {
        v13 = v5;
        v14 = 0;
        do
        {
          v15 = v12[v14];
          v16 = v12[v14 + 1] - v15;
          *&v19 = v15;
          *(&v19 + 1) = v16;
          std::vector<std::pair<unsigned long,unsigned long>>::push_back[abi:ne200100](a1 + 192, &v19);
          ++v14;
          v12 = __p;
          v11 = v23;
        }

        while (v14 < ((v23 - __p) >> 3) - 1);
        v5 = v13;
      }

      v17 = *(v11 - 1);
      v18 = *(*(a1 + 24) - 8) - v17;
      *&v19 = v17;
      *(&v19 + 1) = v18;
      std::vector<std::pair<unsigned long,unsigned long>>::push_back[abi:ne200100](a1 + 192, &v19);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      MEMORY[0x277C690D0](&v26);
      if (v8)
      {
        (*(*v8 + 24))(v8);
      }

      ++v7;
      v6 = v27;
    }

    while (v7 < ((v28 - v27) >> 3) * v5);
  }

  v25[0].__locale_ = &v27;
  std::vector<dmlc::io::URI>::__destroy_vector::operator()[abi:ne200100](v25);
}

void sub_274D2A594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a17 = v17 - 112;
  std::vector<dmlc::io::URI>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t dmlc::istream::istream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 168) = 0;
  *a1 = &unk_2883E1530;
  *(a1 + 8) = 0;
  *(a1 + 120) = &unk_2883E1558;
  std::ios_base::init((a1 + 120), 0);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  *a1 = &unk_2883E14C0;
  *(a1 + 120) = &unk_2883E14E8;
  dmlc::istream::InBuf::InBuf((a1 + 16), a3);
  *(a1 + 80) = a2;
  v6 = *(a1 + 96);
  *(a1 + 32) = v6;
  *(a1 + 40) = v6;
  *(a1 + 48) = v6;
  v7 = (a1 + *(*a1 - 24));
  v7->__rdbuf_ = (a1 + 16);
  std::ios_base::clear(v7, 0);
  return a1;
}

void sub_274D2A76C(_Unwind_Exception *a1)
{
  dmlc::istream::InBuf::~InBuf(v2);
  std::istream::~istream();
  MEMORY[0x277C690D0](v1);
  _Unwind_Resume(a1);
}

void dmlc::istream::~istream(std::locale *this)
{
  MEMORY[0x277C690D0](v1 + 120);
}

{
  MEMORY[0x277C690D0](v1 + 120);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::io::IndexedRecordIOSplitter::SeekRecordBegin(uint64_t a1, uint64_t (***a2)(void, uint64_t *, uint64_t))
{
  v10 = 0;
  v3 = 0;
  while ((**a2)(a2, (&v10 + 4), 4))
  {
    if (HIDWORD(v10) == -824761590)
    {
      if (!(**a2)(a2, &v10, 4))
      {
        Entry = dmlc::LogMessageFatal::GetEntry(&v9);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/indexed_recordio_split.cc", 73);
        v5 = dmlc::LogMessageFatal::GetEntry(&v9);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: fi->Read(&lrec, sizeof(lrec)) != 0", 48);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "invalid record io format", 24);
        dmlc::LogMessageFatal::~LogMessageFatal(&v9);
      }

      if (!(v10 >> 30))
      {
        return v3;
      }

      v3 += 8;
    }

    else
    {
      v3 += 4;
    }
  }

  return v3;
}

const char *dmlc::io::IndexedRecordIOSplitter::FindLastRecordBegin(dmlc::io::IndexedRecordIOSplitter *this, const char *a2, const char *a3)
{
  v4 = a2;
  v10 = 0;
  v11 = a2 & 3;
  if ((a2 & 3) != 0)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v11, &v10);
  }

  v10 = 0;
  v11 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v11, &v10);
  }

  if (a2 + 8 > a3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v12);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/indexed_recordio_split.cc", 92);
    v6 = dmlc::LogMessageFatal::GetEntry(&v12);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: p >= pbegin + 2", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v12);
  }

  v8 = a3 - 8;
  if (a3 - 8 != v4)
  {
    while (*v8 != -824761590 || *(v8 + 1) >> 30)
    {
      v8 -= 4;
      if (v8 == v4)
      {
        return v4;
      }
    }

    return v8;
  }

  return v4;
}

void sub_274D2ABA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

BOOL dmlc::io::IndexedRecordIOSplitter::ExtractNextRecord(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v37 = a3[1];
  if (*a3 != v37)
  {
    LOBYTE(v6) = *a3;
    v7 = a3[1];
    if (v3 + 8 > v37)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v40);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/indexed_recordio_split.cc", 106);
      v9 = dmlc::LogMessageFatal::GetEntry(&v40);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Check failed: chunk->begin + 2 * sizeof(uint32_t) <= chunk->end", 63);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Invalid RecordIO Format", 23);
      dmlc::LogMessageFatal::~LogMessageFatal(&v40);
      v6 = *a3;
    }

    v38 = 0;
    v39 = v6 & 3;
    if ((v6 & 3) != 0)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v39, &v38);
    }

    v12 = a3[1];
    v38 = 0;
    v39 = v12 & 3;
    if ((v12 & 3) != 0)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v39, &v38);
    }

    v13 = *(*a3 + 4);
    v14 = v13 & 0x1FFFFFFF;
    v15 = *a3 + 8;
    *a2 = v15;
    v16 = v15 + ((v14 + 3) & 0x3FFFFFFC);
    *a3 = v16;
    if (v16 > a3[1])
    {
      v17 = dmlc::LogMessageFatal::GetEntry(&v40);
      dmlc::LogMessageFatal::Entry::Init(v17, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/indexed_recordio_split.cc", 117);
      v18 = dmlc::LogMessageFatal::GetEntry(&v40);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Check failed: chunk->begin <= chunk->end", 40);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Invalid RecordIO Format", 23);
      dmlc::LogMessageFatal::~LogMessageFatal(&v40);
    }

    v21 = v13 >> 29;
    a2[1] = v14;
    if (v21)
    {
      if (v21 == 1 || (v22 = dmlc::LogMessageFatal::GetEntry(&v40), dmlc::LogMessageFatal::Entry::Init(v22, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/indexed_recordio_split.cc", 122), v23 = dmlc::LogMessageFatal::GetEntry(&v40), v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Check failed: cflag == 1U", 25), v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 2), std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Invalid RecordIO Format", 23), dmlc::LogMessageFatal::~LogMessageFatal(&v40), v21 != 3))
      {
        v26 = *a3;
        do
        {
          if ((v26 + 2) > a3[1])
          {
            v27 = dmlc::LogMessageFatal::GetEntry(&v40);
            dmlc::LogMessageFatal::Entry::Init(v27, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/indexed_recordio_split.cc", 124);
            v28 = dmlc::LogMessageFatal::GetEntry(&v40);
            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Check failed: chunk->begin + 2 * sizeof(uint32_t) <= chunk->end", 63);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ": ", 2);
            dmlc::LogMessageFatal::~LogMessageFatal(&v40);
            v26 = *a3;
          }

          if (*v26 != -824761590)
          {
            v30 = dmlc::LogMessageFatal::GetEntry(&v40);
            dmlc::LogMessageFatal::Entry::Init(v30, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/indexed_recordio_split.cc", 126);
            v31 = dmlc::LogMessageFatal::GetEntry(&v40);
            v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Check failed: p[0] == RecordIOWriter::kMagic", 44);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ": ", 2);
            dmlc::LogMessageFatal::~LogMessageFatal(&v40);
          }

          v33 = v26[1];
          *(*a2 + a2[1]) = -824761590;
          v34 = a2[1] + 4;
          a2[1] = v34;
          v35 = v33 & 0x1FFFFFFF;
          if ((v33 & 0x1FFFFFFF) != 0)
          {
            memmove((*a2 + v34), (*a3 + 8), v33 & 0x1FFFFFFF);
            a2[1] += v35;
          }

          v26 = (*a3 + ((v35 + 3) & 0x3FFFFFFC) + 8);
          *a3 = v26;
        }

        while (v33 >> 29 != 3);
      }
    }
  }

  return v3 != v37;
}

void sub_274D2B068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

BOOL dmlc::io::IndexedRecordIOSplitter::ReadChunk(dmlc::io::IndexedRecordIOSplitter *this, char *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = dmlc::io::InputSplitBase::Read(this, a2, *a3);
  if (v5 != v4 && v5 != 0)
  {
    *a3 = v5;
  }

  return v5 != 0;
}

uint64_t dmlc::io::IndexedRecordIOSplitter::NextBatchEx(dmlc::io::IndexedRecordIOSplitter *this, std::vector<unsigned int> *a2, uint64_t a3)
{
  v5 = *(this + 35);
  if (*(this + 240) == 1)
  {
    if (v5)
    {
      v6 = *(this + 35);
    }

    else
    {
      v6 = a3;
    }

    if (v6)
    {
      v7 = 0;
      v8 = *(this + 31);
      while (1)
      {
        v9 = *(this + 27);
        if (v8 >= (*(this + 28) - v9) >> 3)
        {
          break;
        }

        v10 = *(this + 24);
        v11 = *(v10 + 16 * *(v9 + 8 * v8));
        *(this + 5) = v11;
        *(this + 19) = *(v10 + 16 * *(v9 + 8 * v8) + 8) >> 2;
        v12 = *(this + 2);
        v13 = *(this + 3);
        if (v13 != v12)
        {
          v14 = v13 - v12;
          v13 = *(this + 2);
          do
          {
            v15 = v14 >> 1;
            v16 = &v13[v14 >> 1];
            v18 = *v16;
            v17 = v16 + 1;
            v14 += ~(v14 >> 1);
            if (v11 < v18)
            {
              v14 = v15;
            }

            else
            {
              v13 = v17;
            }
          }

          while (v14);
        }

        v19 = v13 - v12 - 1;
        v20 = *(this + 11);
        if (v19 != *(this + 12))
        {
          if (v20)
          {
            (*(*v20 + 24))(v20);
          }

          *(this + 12) = v19;
          v20 = (*(**(this + 1) + 48))(*(this + 1), *(this + 8) + 88 * v19, 0);
          *(this + 11) = v20;
          v11 = *(this + 5);
          v19 = *(this + 12);
          v12 = *(this + 2);
        }

        (*(*v20 + 32))(v20, v11 - v12[v19]);
        v21 = *(this + 19);
        if (v7)
        {
          if (!dmlc::io::InputSplitBase::Chunk::Append(a2, this, v21))
          {
            goto LABEL_32;
          }
        }

        else if ((dmlc::io::InputSplitBase::Chunk::Load(a2, this, v21) & 1) == 0)
        {
          return 0;
        }

        ++v7;
        v8 = *(this + 31) + 1;
        *(this + 31) = v8;
        if (v7 == v6)
        {
          v7 = v6;
          goto LABEL_32;
        }
      }

      if (!v7)
      {
        return 0;
      }

LABEL_32:
      *(this + 35) = v6 - v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v22 = *(this + 31);
    v23 = *(this + 33);
    if (!v5)
    {
      v5 = a3;
    }

    v24 = v22 + v5;
    if (v23 >= v24)
    {
      v23 = v24;
    }

    *(this + 35) = v24 - v23;
    v25 = (*(*(this + 24) + 16 * v23) - *(*(this + 24) + 16 * v22)) >> 2;
    *(this + 19) = v25;
    *(this + 31) = v23;

    return dmlc::io::InputSplitBase::Chunk::Load(a2, this, v25);
  }
}

BOOL dmlc::io::IndexedRecordIOSplitter::NextBatch(void *a1, void *a2, uint64_t a3)
{
  while (1)
  {
    v6 = a1[14];
    v7 = a1[15];
    if (v6 != v7)
    {
      break;
    }

    if (((*(*a1 + 104))(a1, a1 + 14, a3) & 1) == 0)
    {
      return v6 != v7;
    }
  }

  *a2 = v6;
  a2[1] = v7 - v6;
  a1[14] = v7;
  return v6 != v7;
}

void *dmlc::io::IndexedRecordIOSplitter::BeforeFirst(dmlc::io::IndexedRecordIOSplitter *this)
{
  if (*(this + 240) == 1)
  {
    v2 = *(this + 27);
    *(this + 28) = v2;
    v3 = *(this + 33);
    *&v14 = *(this + 32);
    v4 = v2;
    if (v14 < v3)
    {
      do
      {
        std::vector<unsigned long>::push_back[abi:ne200100](this + 27, &v14);
        *&v14 = v14 + 1;
      }

      while (v14 < *(this + 33));
      v4 = *(this + 27);
      v2 = *(this + 28);
    }

    v5 = v2 - v4;
    if (v5 >= 2)
    {
      v14 = xmmword_274E200B0;
      v6 = (v2 - 1);
      if (v2 - 1 > v4)
      {
        v7 = v5 - 1;
        v8 = v4;
        do
        {
          v13[0] = 0;
          v13[1] = v7;
          v9 = std::uniform_int_distribution<long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v14, this + 296, v13);
          if (v9)
          {
            v10 = *v4;
            *v4 = v8[v9];
            v8[v9] = v10;
          }

          ++v4;
          --v7;
          ++v8;
        }

        while (v4 < v6);
      }
    }

    v11 = 0;
  }

  else
  {
    v11 = *(this + 32);
  }

  *(this + 31) = v11;
  return dmlc::io::InputSplitBase::BeforeFirst(this);
}

uint64_t dmlc::io::InputSplitBase::HintChunkSize(uint64_t this, unint64_t a2)
{
  v2 = a2 >> 2;
  if (a2 >> 2 <= *(this + 152))
  {
    v2 = *(this + 152);
  }

  *(this + 152) = v2;
  return this;
}

uint64_t dmlc::io::IndexedRecordIOSplitter::NextRecord(uint64_t *a1, uint64_t a2)
{
  v4 = (a1 + 14);
  if ((*(*a1 + 80))(a1, a2, a1 + 14))
  {
    return 1;
  }

  do
  {
    v5 = dmlc::io::InputSplitBase::Chunk::Load(v4, a1, a1[19]);
    if (!v5)
    {
      break;
    }

    ++a1[31];
  }

  while (!(*(*a1 + 80))(a1, a2, v4));
  return v5;
}

void dmlc::io::IndexedRecordIOSplitter::~IndexedRecordIOSplitter(dmlc::io::IndexedRecordIOSplitter *this)
{
  *this = &unk_2883E1408;
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  dmlc::io::InputSplitBase::~InputSplitBase(this);
}

{
  *this = &unk_2883E1408;
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  dmlc::io::InputSplitBase::~InputSplitBase(this);

  JUMPOUT(0x277C69180);
}

void dmlc::istream::InBuf::~InBuf(std::locale *this)
{
  this->__locale_ = &unk_2883E1590;
  locale = this[10].__locale_;
  if (locale)
  {
    this[11].__locale_ = locale;
    operator delete(locale);
  }

  this->__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 1);
}

{
  this->__locale_ = &unk_2883E1590;
  locale = this[10].__locale_;
  if (locale)
  {
    this[11].__locale_ = locale;
    operator delete(locale);
  }

  this->__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 1);

  JUMPOUT(0x277C69180);
}

{
  this->__locale_ = &unk_2883E1590;
  locale = this[10].__locale_;
  if (locale)
  {
    this[11].__locale_ = locale;
    operator delete(locale);
  }

  this->__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 1);
}

void virtual thunk todmlc::istream::~istream(dmlc::istream *this)
{

  JUMPOUT(0x277C690D0);
}

{
  dmlc::istream::~istream((this + *(*this - 24)));
}

dmlc::istream::InBuf *dmlc::istream::InBuf::InBuf(dmlc::istream::InBuf *this, uint64_t a2)
{
  *this = MEMORY[0x277D82868] + 16;
  MEMORY[0x277C69050](this + 8);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  *this = &unk_2883E1590;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<char>::vector[abi:ne200100](this + 10, a2);
  if (!a2)
  {
    v4 = *(this + 10);
    v5 = *(this + 11) - v4;
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        *(this + 11) = v4 + 2;
      }
    }

    else
    {
      std::vector<char>::__append((this + 80), 2 - v5);
    }
  }

  return this;
}

void sub_274D2B994(_Unwind_Exception *a1)
{
  locale = v1[10].__locale_;
  if (locale)
  {
    v1[11].__locale_ = locale;
    operator delete(locale);
  }

  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t dmlc::istream::InBuf::underflow(dmlc::istream::InBuf *this)
{
  v2 = *(this + 3);
  v1 = *(this + 4);
  if (v2 == v1)
  {
    v2 = *(this + 10);
    v4 = (***(this + 8))(*(this + 8), *(this + 10), *(this + 11) - v2);
    v1 = &v2[v4];
    *(this + 2) = v2;
    *(this + 3) = v2;
    *(this + 4) = &v2[v4];
    *(this + 9) += v4;
  }

  if (v2 == v1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *v2;
  }
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274D2BB3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void dmlc::istream::~istream(std::locale *this, std::locale::__imp **a2)
{
  v3 = *a2;
  this->__locale_ = *a2;
  *(&this->__locale_ + *(v3 - 3)) = a2[3];
  this[2].__locale_ = &unk_2883E1590;
  locale = this[12].__locale_;
  if (locale)
  {
    this[13].__locale_ = locale;
    operator delete(locale);
  }

  this[2].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 3);

  std::istream::~istream();
}

void std::vector<dmlc::io::URI>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        if (*(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
        }

        v6 = v4 - 9;
        if (*(v4 - 49) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 9;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *xgboost::EllpackPage::EllpackPage(void *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void *xgboost::EllpackPage::EllpackPage(void *a1)
{
  *a1 = 0;
  Entry = dmlc::LogMessageFatal::GetEntry(&v5);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/ellpack_page.cc", 16);
  v3 = dmlc::LogMessageFatal::GetEntry(&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Internal Error: XGBoost is not compiled with CUDA but EllpackPage is required", 77);
  dmlc::LogMessageFatal::~LogMessageFatal(&v5);
  return a1;
}

void sub_274D2BFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  v15 = *v13;
  *v13 = 0;
  if (v15)
  {
    MEMORY[0x277C69180](v15, 0xC400A2AC0F1);
  }

  _Unwind_Resume(a1);
}

void xgboost::EllpackPage::~EllpackPage(xgboost::EllpackPage *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v5);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/ellpack_page.cc", 21);
  v3 = dmlc::LogMessageFatal::GetEntry(&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Internal Error: XGBoost is not compiled with CUDA but EllpackPage is required", 77);
  dmlc::LogMessageFatal::~LogMessageFatal(&v5);
  v4 = *this;
  *this = 0;
  if (v4)
  {
    MEMORY[0x277C69180](v4, 0xC400A2AC0F1);
  }
}

void xgboost::EllpackPage::SetBaseRowId(xgboost::EllpackPage *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/ellpack_page.cc", 26);
  v2 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Internal Error: XGBoost is not compiled with CUDA but EllpackPage is required", 77);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
}

uint64_t xgboost::EllpackPage::Size(xgboost::EllpackPage *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/ellpack_page.cc", 30);
  v2 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Internal Error: XGBoost is not compiled with CUDA but EllpackPage is required", 77);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
  return 0;
}

dmlc::Config *dmlc::Config::Config(dmlc::Config *this, char a2)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 48) = a2;
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 2) = 0;
  std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100](this + 3);
  return this;
}

{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 48) = a2;
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 2) = 0;
  std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100](this + 3);
  return this;
}

void dmlc::Config::Clear(dmlc::Config *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::destroy(*(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;

  std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100](this + 3);
}

uint64_t dmlc::Config::Config(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a3;
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100]((a1 + 24));
  dmlc::Config::LoadFromStream(a1, a2);
  return a1;
}

void sub_274D2C298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,unsigned long>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

void dmlc::Config::LoadFromStream(uint64_t a1, uint64_t a2)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v25 = a2;
  v26 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  __p = 0uLL;
  v17 = 0;
  while (1)
  {
    dmlc::Tokenizer::GetNextToken(&v25, &v22);
    v3 = HIBYTE(v24);
    if (v24 < 0)
    {
      v3 = v23;
    }

    if (!v3)
    {
      break;
    }

    dmlc::Tokenizer::GetNextToken(&v25, &v19);
    dmlc::Tokenizer::GetNextToken(&v25, &__p);
    if (SHIBYTE(v21) < 0)
    {
      if (v20 == 1)
      {
        v4 = v19;
LABEL_10:
        if (*v4 == 61)
        {
          goto LABEL_30;
        }
      }
    }

    else if (SHIBYTE(v21) == 1)
    {
      v4 = &v19;
      goto LABEL_10;
    }

    dmlc::LogMessage::LogMessage(v27, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/config.cc", 155);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27[0], "Parsing error: expect format k = v; but got ", 47);
    if (v24 >= 0)
    {
      v6 = &v22;
    }

    else
    {
      v6 = v22;
    }

    if (v24 >= 0)
    {
      v7 = HIBYTE(v24);
    }

    else
    {
      v7 = v23;
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
    if (v21 >= 0)
    {
      v9 = &v19;
    }

    else
    {
      v9 = v19;
    }

    if (v21 >= 0)
    {
      v10 = HIBYTE(v21);
    }

    else
    {
      v10 = v20;
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
    if (v17 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v17 >= 0)
    {
      v13 = HIBYTE(v17);
    }

    else
    {
      v13 = *(&__p + 1);
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, p_p, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "", 1);
    dmlc::LogMessage::~LogMessage(v27);
LABEL_30:
    dmlc::Config::Insert(a1, &v22, &__p, v18);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v22);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_274D2C554()
{
  if (v1 < 0)
  {
    operator delete(v0);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  JUMPOUT(0x274D2C5B0);
}

void sub_274D2C5A8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x274D2C5B0);
  }

  __clang_call_terminate(a1);
}

void std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t dmlc::Tokenizer::GetNextToken(uint64_t *a1, uint64_t a2)
{
  *(a1 + 2) = 0;
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  *(a2 + 24) = 0;
  v4 = *a1;
  for (i = std::istream::peek(); i != -1; i = std::istream::peek())
  {
    v6 = *(a1 + 2);
    if (v6 == 2)
    {
      break;
    }

    if (i > 33)
    {
      switch(i)
      {
        case '""':
          while (1)
          {
            v13 = *a1;
            std::istream::get();
            v14 = *a1;
            v15 = std::istream::peek();
            if (v15 <= 91)
            {
              if (v15 <= 33)
              {
                if (v15 == -1 || v15 == 10 || v15 == 13)
                {
                  exception = __cxa_allocate_exception(0x20uLL);
                  std::string::basic_string[abi:ne200100]<0>(&v26, "quotation mark is not closed");
                  dmlc::TokenizeError::TokenizeError(exception, &v26);
                }
              }

              else if (v15 == 34)
              {
                v18 = *a1;
                std::istream::get();
                *(a1 + 2) = 2;
                *(a2 + 24) = 1;
                goto LABEL_38;
              }
            }

            else if (v15 == 92)
            {
              v16 = *a1;
              std::istream::get();
              v17 = *a1;
              v15 = std::istream::peek();
              if (v15 != 34)
              {
                v25 = __cxa_allocate_exception(0x20uLL);
                std::string::basic_string[abi:ne200100]<0>(&v26, "error parsing escape characters");
                dmlc::TokenizeError::TokenizeError(v25, &v26);
              }
            }

            std::string::push_back(a2, v15);
          }

        case '=':
          if (v6 != 1)
          {
            std::string::operator=(a2, 61);
            v21 = *a1;
            std::istream::get();
          }

LABEL_11:
          *(a1 + 2) = 2;
          goto LABEL_38;
        case '#':
          while (1)
          {
            v7 = *a1;
            v8 = std::istream::peek();
            if ((v8 + 1) <= 0xE && ((1 << (v8 + 1)) & 0x4803) != 0)
            {
              break;
            }

            v10 = *a1;
            std::istream::get();
          }

          goto LABEL_38;
      }
    }

    else if ((i - 9) < 2 || i == 13 || i == 32)
    {
      if (v6 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_37;
    }

    *(a1 + 2) = 1;
    std::string::push_back(a2, i);
LABEL_37:
    v19 = *a1;
    std::istream::get();
LABEL_38:
    v20 = *a1;
  }

  v22 = *a1;

  return std::istream::peek();
}

void sub_274D2C89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::Config::Insert(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  if ((*(a1 + 48) & 1) == 0)
  {
    v45 = 0;
    v46 = a2;
    memset(v44, 0, sizeof(v44));
    *__p = 0u;
    v10 = std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2);
    std::vector<std::string>::__vdeallocate((v10 + 7));
    *(v10 + 7) = 0u;
    v11 = v10[10];
    v10[9] = *&v44[0];
    __p[1] = 0;
    *&v44[0] = 0;
    __p[0] = 0;
    if (v11)
    {
      v10[11] = v11;
      operator delete(v11);
      v10[10] = 0;
      v10[11] = 0;
      v10[12] = 0;
    }

    *(v10 + 5) = *(v44 + 8);
    v10[12] = *(&v44[1] + 1);
    memset(v44 + 8, 0, 24);
    *(v10 + 104) = v45;
    v46 = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
  }

  v12 = (v8 - v9) >> 5;
  __p[0] = a2;
  v13 = std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2);
  v14 = v13[8];
  v15 = v13[7];
  std::vector<std::string>::push_back[abi:ne200100]((v13 + 7), a3);
  v17 = v13[11];
  v16 = v13[12];
  if (v17 >= v16)
  {
    v19 = v13[10];
    v20 = v17 - v19;
    v21 = (v17 - v19) >> 3;
    v22 = v21 + 1;
    if ((v21 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v23 = v16 - v19;
    if (v23 >> 2 > v22)
    {
      v22 = v23 >> 2;
    }

    v24 = v23 >= 0x7FFFFFFFFFFFFFF8;
    v25 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v24)
    {
      v25 = v22;
    }

    if (v25)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((v13 + 10), v25);
    }

    v26 = (v17 - v19) >> 3;
    v27 = (8 * v21);
    v28 = (8 * v21 - 8 * v26);
    *v27 = v12;
    v18 = v27 + 1;
    memcpy(v28, v19, v20);
    v29 = v13[10];
    v13[10] = v28;
    v13[11] = v18;
    v13[12] = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v17 = v12;
    v18 = v17 + 1;
  }

  v13[11] = v18;
  *(v13 + 104) = a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&v44[0] = *(a2 + 16);
  }

  *(&v44[0] + 1) = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3);
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  if (v30 >= v31)
  {
    v33 = *(a1 + 24);
    v34 = v30 - v33;
    v35 = (v30 - v33) >> 5;
    v36 = v35 + 1;
    if ((v35 + 1) >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v37 = v31 - v33;
    if (v37 >> 4 > v36)
    {
      v36 = v37 >> 4;
    }

    if (v37 >= 0x7FFFFFFFFFFFFFE0)
    {
      v38 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v38 = v36;
    }

    if (v38)
    {
      if (!(v38 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v39 = 32 * v35;
    *v39 = *__p;
    v40 = *&v44[0];
    __p[1] = 0;
    *&v44[0] = 0;
    __p[0] = 0;
    *(v39 + 16) = v40;
    *(v39 + 24) = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3);
    v41 = 32 * v35 + 32;
    memcpy(0, v33, v34);
    *(a1 + 24) = 0;
    *(a1 + 32) = v41;
    *(a1 + 40) = 0;
    if (v33)
    {
      operator delete(v33);
      v42 = SBYTE7(v44[0]);
      *(a1 + 32) = v41;
      if (v42 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *(a1 + 32) = v41;
    }
  }

  else
  {
    v32 = *__p;
    *(v30 + 16) = *&v44[0];
    *v30 = v32;
    *(v30 + 24) = *(&v44[0] + 1);
    *(a1 + 32) = v30 + 32;
  }
}

uint64_t dmlc::Config::GetParam(uint64_t a1, uint64_t a2)
{
  if (a1 + 8 == std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(a1, a2))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/config.cc", 166);
    v5 = dmlc::LogMessageFatal::GetEntry(&v14);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: config_map_.find(key) != config_map_.end()", 56);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "key ", 5);
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " not found in configure", 24);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  return *(std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(a1, a2) + 64) - 24;
}

uint64_t dmlc::Config::IsGenuineString(uint64_t a1, uint64_t a2)
{
  if (a1 + 8 == std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(a1, a2))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/config.cc", 173);
    v5 = dmlc::LogMessageFatal::GetEntry(&v14);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: config_map_.find(key) != config_map_.end()", 56);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "key ", 5);
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " not found in configure", 24);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  return *(std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(a1, a2) + 104);
}

std::string *dmlc::MakeProtoStringValue@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  v4 = *(a1 + 23);
  v5 = a1[1];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a1 + 23);
  }

  if (v5)
  {
    v6 = 0;
    v7 = v4 >> 63;
    do
    {
      if (v7)
      {
        v8 = *a1;
      }

      else
      {
        v8 = a1;
      }

      v9 = *(v8 + v6);
      if (v9 == 34)
      {
        std::string::append(a2, "\\"");
      }

      else
      {
        std::string::push_back(a2, v9);
      }

      ++v6;
      v10 = *(a1 + 23);
      v7 = v10 >> 63;
      if ((v10 & 0x80000000) != 0)
      {
        v10 = a1[1];
      }
    }

    while (v6 < v10);
  }

  return std::string::append(a2, "");
}

void sub_274D2CEC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t dmlc::Config::ToProtoString(dmlc::Config *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  v19 = 0;
  v20 = this;
  dmlc::Config::ConfigIterator::FindNextIndex(&v19);
  while (1)
  {
    v17.__r_.__value_.__r.__words[0] = (*(this + 4) - *(this + 3)) >> 5;
    v17.__r_.__value_.__l.__size_ = this;
    dmlc::Config::ConfigIterator::FindNextIndex(&v17);
    if (v19 == v17.__r_.__value_.__r.__words[0])
    {
      break;
    }

    v2 = v20;
LABEL_6:
    v3 = *(v2 + 24) + 32 * v19;
    v4 = *(v3 + 24);
    v5 = std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(v2, v3);
    std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(&v17, v3, (*(v5 + 56) + 24 * v4));
    IsGenuineString = dmlc::Config::IsGenuineString(this, &v17);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v17;
    }

    else
    {
      v7 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v7, size);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " : ", 3);
    if (IsGenuineString)
    {
      dmlc::MakeProtoStringValue(&v18, &__p);
    }

    else if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v18;
    }

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
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __p.__r_.__value_.__l.__size_;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, p_p, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    dmlc::Config::ConfigIterator::operator++(&v19);
  }

  v2 = v20;
  if (v20 != v17.__r_.__value_.__l.__size_)
  {
    goto LABEL_6;
  }

  std::stringbuf::str();
  v14 = *MEMORY[0x277D82828];
  v21 = *MEMORY[0x277D82828];
  *(&v21 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v25);
}

unint64_t *dmlc::Config::begin@<X0>(dmlc::Config *this@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = this;
  return dmlc::Config::ConfigIterator::FindNextIndex(a2);
}

unint64_t *dmlc::Config::end@<X0>(dmlc::Config *this@<X0>, unint64_t *a2@<X8>)
{
  *a2 = (*(this + 4) - *(this + 3)) >> 5;
  a2[1] = this;
  return dmlc::Config::ConfigIterator::FindNextIndex(a2);
}

std::string *dmlc::Config::ConfigIterator::operator*@<X0>(void *a1@<X0>, std::string *a2@<X8>)
{
  v3 = *(a1[1] + 24) + 32 * *a1;
  v4 = *(v3 + 24);
  v5 = (*(std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(a1[1], v3) + 56) + 24 * v4);

  return std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(a2, v3, v5);
}

dmlc::Config::ConfigIterator *dmlc::Config::ConfigIterator::operator++(dmlc::Config::ConfigIterator *this)
{
  if (*this < ((*(*(this + 1) + 32) - *(*(this + 1) + 24)) >> 5))
  {
    ++*this;
  }

  dmlc::Config::ConfigIterator::FindNextIndex(this);
  return this;
}

dmlc::Config::ConfigIterator *dmlc::Config::ConfigIterator::ConfigIterator(dmlc::Config::ConfigIterator *this, uint64_t a2, const dmlc::Config *a3)
{
  *this = a2;
  *(this + 1) = a3;
  dmlc::Config::ConfigIterator::FindNextIndex(this);
  return this;
}

{
  *this = a2;
  *(this + 1) = a3;
  dmlc::Config::ConfigIterator::FindNextIndex(this);
  return this;
}

unint64_t *dmlc::Config::ConfigIterator::FindNextIndex(unint64_t *this)
{
  v2 = *this;
  v1 = this[1];
  v3 = *(v1 + 24);
  v4 = *(v1 + 32) - v3;
  if (*this < v4 >> 5)
  {
    v5 = this;
    v6 = v4 >> 5;
    v7 = v3 + 32 * v2;
    do
    {
      v8 = *(v7 + 24);
      this = std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(v1, v7);
      if (v2 == *(this[10] + 8 * v8))
      {
        break;
      }

      *v5 = ++v2;
      v7 += 32;
    }

    while (v2 < v6);
  }

  return this;
}

void *dmlc::Config::ConfigIterator::ConfigIterator(void *this, const dmlc::Config::ConfigIterator *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  return this;
}

{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  return this;
}

dmlc::Config::ConfigIterator *dmlc::Config::ConfigIterator::operator++@<X0>(dmlc::Config::ConfigIterator *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 1);
  *a2 = *this;
  a2[1] = v2;
  return dmlc::Config::ConfigIterator::operator++(this);
}

void *dmlc::TokenizeError::TokenizeError(void *a1, __int128 *a2)
{
  *a1 = &unk_2883E1640;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void dmlc::TokenizeError::~TokenizeError(std::exception *this)
{
  dmlc::TokenizeError::~TokenizeError(this);

  JUMPOUT(0x277C69180);
}

{
  this->__vftable = &unk_2883E1640;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t dmlc::TokenizeError::what(dmlc::TokenizeError *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void dmlc::Config::ConfigValue::~ConfigValue(dmlc::Config::ConfigValue *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_274D2D654(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 10);
    if (v2)
    {
      *(a1 + 11) = v2;
      operator delete(v2);
    }

    v3 = (a1 + 56);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::vector<std::pair<std::string,unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_26:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_26;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_26;
    }
  }
}

void xgboost::gbm::GBLinearModel::SaveModel(xgboost::gbm::GBLinearModel *this, xgboost::Json *a2)
{
  xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::JsonTypedArray(v7, (*(this + 21) - *(this + 20)) >> 2);
  v4 = *(this + 20);
  v5 = *(this + 21);
  if (v5 != v4)
  {
    memmove(v7[2], v4, v5 - v4);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weights");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=<float,(xgboost::Value::ValueKind)7>();
}

void sub_274D2DAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (atomic_fetch_add_explicit(v22 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v22 + 8))(v22);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::~JsonTypedArray(void *a1)
{
  *a1 = &unk_2883E16B0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void xgboost::gbm::GBLinearModel::LoadModel(xgboost::gbm::GBLinearModel *this, char ***a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "weights");
  v4 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v3 + 16), __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(v4 + 56);
  if (*(v5 + 12) == 7)
  {
    v6 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value const>(v5);
    std::vector<float>::resize((this + 160), (v6[3] - v6[2]) >> 2);
    v7 = v6[2];
    v8 = v6[3];
    if (v8 != v7)
    {
      memmove(*(this + 20), v7, v8 - v7);
    }
  }

  else
  {
    v9 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(v5);
    v11 = v9[2];
    v10 = v9[3];
    v12 = (v10 - v11) >> 3;
    std::vector<float>::resize((this + 160), v12);
    if (v10 != v11)
    {
      v13 = 0;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        *(*(this + 20) + 4 * v13) = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v9[2] + 8 * v13)) + 4);
        ++v13;
      }

      while (v12 != v13);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "boosted_rounds");
  v14 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v3 + 16), __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v3 + 24 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v14 + 56)) + 4);
  }

  *(this + 36) = v15;
}

void sub_274D2DE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBLinearModel::~GBLinearModel(xgboost::gbm::GBLinearModel *this)
{
  *this = &unk_2883E1668;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_2883E1668;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::~JsonTypedArray(void *a1)
{
  *a1 = &unk_2883E16B0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::JsonTypedArray(uint64_t a1, std::vector<unsigned int>::size_type a2)
{
  *(a1 + 8) = 0x700000000;
  *a1 = &unk_2883E16B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::vector<float>::resize((a1 + 16), a2);
  return a1;
}

void sub_274D2DFF0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value const>(char **a1)
{
  if (*(a1 + 3) == 7)
  {
    v2 = **a1;
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v28);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v5 = dmlc::LogMessageFatal::GetEntry(&v28);
    xgboost::Value::TypeStr(a1, &v23);
    v6 = std::string::insert(&v23, 0, "Invalid cast, from ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v24, " to ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v17[1] = 0x700000000;
    v17[0] = &unk_2883E16B0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    xgboost::Value::TypeStr(v17, __p);
    if ((v22 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v11 = v22;
    }

    else
    {
      v11 = __p[1];
    }

    v12 = std::string::append(&v25, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v27 = v12->__r_.__value_.__r.__words[2];
    v26 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v27 >= 0)
    {
      v14 = &v26;
    }

    else
    {
      v14 = v26;
    }

    if (v27 >= 0)
    {
      v15 = HIBYTE(v27);
    }

    else
    {
      v15 = *(&v26 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v14, v15);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v17[0] = &unk_2883E16B0;
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v28);
    v16 = **a1;
  }
}

void sub_274D2E284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (*(v32 - 73) < 0)
  {
    operator delete(*(v32 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v32 - 33));
  _Unwind_Resume(a1);
}

void *xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(char **a1)
{
  if (*(a1 + 3) == 4)
  {
    v2 = **a1;
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v5 = dmlc::LogMessageFatal::GetEntry(&v26);
    xgboost::Value::TypeStr(a1, &v21);
    v6 = std::string::insert(&v21, 0, "Invalid cast, from ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v22, " to ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v17[1] = 0x400000000;
    v17[0] = &unk_2883E6E98;
    memset(v18, 0, sizeof(v18));
    xgboost::Value::TypeStr(v17, __p);
    if ((v20 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = __p[1];
    }

    v12 = std::string::append(&v23, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v25 = v12->__r_.__value_.__r.__words[2];
    v24 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v25 >= 0)
    {
      v14 = &v24;
    }

    else
    {
      v14 = v24;
    }

    if (v25 >= 0)
    {
      v15 = HIBYTE(v25);
    }

    else
    {
      v15 = *(&v24 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v14, v15);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v17[0] = &unk_2883E6E98;
    v27 = v18;
    std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&v27);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
    v16 = **a1;
  }
}

void sub_274D2E5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  *(v40 - 56) = v39;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100]((v40 - 56));
  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v40 - 57));
  _Unwind_Resume(a1);
}

void std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<xgboost::Json>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

atomic_uint *std::vector<xgboost::Json>::__base_destruct_at_end[abi:ne200100](atomic_uint *result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 1); i != a2; i -= 8)
  {
    v5 = *(i - 8);
    result = v5;
    if (v5 && atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      result = (*(*result + 8))(result);
    }
  }

  *(v3 + 1) = a2;
  return result;
}

void *xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(char **a1)
{
  if (*(a1 + 3) == 1)
  {
    v2 = **a1;
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v5 = dmlc::LogMessageFatal::GetEntry(&v26);
    xgboost::Value::TypeStr(a1, &v21);
    v6 = std::string::insert(&v21, 0, "Invalid cast, from ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v22, " to ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v17[1] = 0x100000000;
    v17[0] = &unk_2883E6FC8;
    v18 = 0;
    xgboost::Value::TypeStr(v17, __p);
    if ((v20 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = __p[1];
    }

    v12 = std::string::append(&v23, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v25 = v12->__r_.__value_.__r.__words[2];
    v24 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v25 >= 0)
    {
      v14 = &v24;
    }

    else
    {
      v14 = v24;
    }

    if (v25 >= 0)
    {
      v15 = HIBYTE(v25);
    }

    else
    {
      v15 = *(&v24 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v14, v15);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
    v16 = **a1;
  }
}

void sub_274D2E98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v30 - 33));
  _Unwind_Resume(a1);
}

size_t xgboost::common::PeekableInStream::Read(xgboost::common::PeekableInStream *this, void *__dst, size_t __n)
{
  v3 = __n;
  if (*(this + 47) < 0)
  {
    v5 = *(this + 4);
  }

  else
  {
    v5 = *(this + 47);
  }

  v6 = *(this + 2);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = ***(this + 1);

    return v8();
  }

  else
  {
    v10 = *(this + 47);
    v11 = this + 24;
    if (__n <= v7)
    {
      if ((*(this + 47) & 0x80) != 0)
      {
        if (*(this + 4))
        {
          v11 = *(this + 3);
        }

        else
        {
          v11 = 0;
        }
      }

      else if (!*(this + 47))
      {
        v11 = 0;
      }

      memcpy(__dst, &v11[v6], __n);
      *(this + 2) += v3;
    }

    else
    {
      if ((*(this + 47) & 0x80) != 0)
      {
        if (*(this + 4))
        {
          v11 = *(this + 3);
        }

        else
        {
          v11 = 0;
        }
      }

      else if (!*(this + 47))
      {
        v11 = 0;
      }

      memcpy(__dst, &v11[v6], v7);
      v12 = *(this + 1);
      *(this + 2) += v7;
      return (**v12)() + v7;
    }

    return v3;
  }
}

size_t xgboost::common::PeekableInStream::PeekRead(xgboost::common::PeekableInStream *this, void *__dst, size_t __n)
{
  v6 = (this + 24);
  v7 = *(this + 47);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = *(this + 4);
    v8 = *(this + 2);
    v9 = v7 - v8;
    if (v7 - v8 >= __n)
    {
      v10 = v6->__r_.__value_.__r.__words[0];
      if (!v7)
      {
        v10 = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v8 = *(this + 2);
    v9 = v7 - v8;
    if (v7 - v8 >= __n)
    {
      if (*(this + 47))
      {
        v10 = this + 24;
      }

      else
      {
        v10 = 0;
      }

LABEL_15:
      memcpy(__dst, &v10[v8], __n);
      return __n;
    }
  }

  std::string::basic_string(&v17, v6, v8, v7, &v18);
  if (*(this + 47) < 0)
  {
    operator delete(v6->__r_.__value_.__l.__data_);
  }

  *v6 = v17;
  *(this + 2) = 0;
  std::string::resize(v6, __n, 0);
  if (*(this + 47) < 0)
  {
    if (*(this + 4))
    {
      v11 = *(this + 3);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (*(this + 47))
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  v12 = (***(this + 1))(*(this + 1), v11 + v9, __n - v9);
  std::string::resize(v6, v12 + v9, 0);
  v13 = *(this + 47);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v15 = *(this + 3);
    v13 = *(this + 4);
    if (v13)
    {
      v14 = *(this + 3);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (*(this + 47))
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  memcpy(__dst, v14, v13);
  __n = *(this + 47);
  if ((__n & 0x8000000000000000) != 0)
  {
    return *(this + 4);
  }

  return __n;
}

xgboost::common::FixedSizeStream *xgboost::common::FixedSizeStream::FixedSizeStream(xgboost::common::FixedSizeStream *this, xgboost::common::PeekableInStream *a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = &unk_2883E1710;
  *(this + 1) = a2;
  v4 = (this + 56);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v5 = 4096;
  do
  {
    std::string::resize(v4, v5, 0);
    v6 = v4;
    if (*(this + 79) < 0)
    {
      v6 = v4->__r_.__value_.__r.__words[0];
    }

    v7 = (*(*a2 + 32))(a2, v6, v5);
    v8 = v7 >= v5;
    v5 *= 2;
  }

  while (v8);
  std::string::resize(v4, v7, 0);
  return this;
}

void sub_274D2EDFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::common::FixedSizeStream::Read(xgboost::common::FixedSizeStream *this, void *a2)
{
  result = (*(*this + 32))(this, a2);
  *(this + 6) += result;
  return result;
}

char *xgboost::common::FixedSizeStream::PeekRead(xgboost::common::FixedSizeStream *this, void *__dst, size_t __len)
{
  v3 = __len;
  v5 = this + 56;
  v6 = *(this + 79);
  if (v6 < 0)
  {
    v8 = (this + 48);
    v7 = *(this + 6);
    v9 = *(this + 7);
    v10 = *(this + 8);
    if (v10 - v7 <= __len)
    {
      goto LABEL_8;
    }

    v5 = *(this + 7);
  }

  else
  {
    v8 = (this + 48);
    v7 = *(this + 6);
    if (v6 - v7 <= __len)
    {
      v9 = this + 56;
      v10 = *(this + 79);
LABEL_8:
      if (v7 != v10)
      {
        memmove(__dst, &v9[v7], v10 - v7);
        LOBYTE(v6) = *(this + 79);
      }

      if ((v6 & 0x80) != 0)
      {
        v5 = *(this + 7);
        v11 = &v5[*(this + 6)];
        v6 = *(this + 8);
      }

      else
      {
        v11 = &v5[*v8];
        v6 = v6;
      }

      return (&v5[v6] - v11);
    }
  }

  if (__len)
  {
    memmove(__dst, &v5[v7], __len);
  }

  return v3;
}

uint64_t xgboost::common::FixedSizeStream::Seek(xgboost::common::FixedSizeStream *this, unint64_t a2)
{
  *(this + 6) = a2;
  result = this + 48;
  v4 = *(result + 31);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(this + 8);
  }

  v5 = v4;
  if (v4 < a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(result, &v5);
  }

  return result;
}

void sub_274D2F048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v11);
  }

  _Unwind_Resume(exception_object);
}

__n128 xgboost::common::FixedSizeStream::Take(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/io.cc", 93);
    v6 = dmlc::LogMessageFatal::GetEntry(&v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: out", 17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *(a1 + 56);
  *(a2 + 16) = *(a1 + 72);
  *a2 = result;
  *(a1 + 79) = 0;
  *(a1 + 56) = 0;
  return result;
}

void xgboost::common::LoadSequentialFile(char *a1@<X0>, char a2@<W1>, std::string *a3@<X8>)
{
  v4 = a1;
  v48[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  if (a1[23] < 0)
  {
    v6 = *a1;
  }

  dmlc::io::URI::URI(&v35, v6);
  v7 = v37;
  if ((v37 & 0x8000000000000000) != 0)
  {
    v7 = v36;
    if (v36 != 7)
    {
      goto LABEL_14;
    }

    if (*v35 ^ 0x656C6966 | *(v35 + 3) ^ 0x2F2F3A65)
    {
      goto LABEL_39;
    }
  }

  else if (v37 != 7 || (v35 == 1701603686 ? (v8 = *(&v35 + 3) == 791624293) : (v8 = 0), !v8))
  {
LABEL_14:
    if (v7)
    {
      goto LABEL_39;
    }
  }

  if ((a2 & 1) == 0)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    v47[6] = 0;
    v9 = MEMORY[0x277D82858] + 64;
    v47[0] = MEMORY[0x277D82858] + 64;
    v10 = MEMORY[0x277D82808];
    v11 = *(MEMORY[0x277D82808] + 16);
    v45[0] = *(MEMORY[0x277D82808] + 8);
    *(v45 + *(v45[0] - 24)) = v11;
    v45[1] = 0;
    v12 = (v45 + *(v45[0] - 24));
    std::ios_base::init(v12, v46);
    v13 = MEMORY[0x277D82858] + 24;
    v12[1].__vftable = 0;
    v12[1].__fmtflags_ = -1;
    v45[0] = v13;
    v47[0] = v9;
    MEMORY[0x277C68CA0](v46);
    if (v4[23] < 0)
    {
      v14 = *v4;
    }

    if (!std::filebuf::open())
    {
      std::ios_base::clear((v45 + *(v45[0] - 24)), *&v46[*(v45[0] - 24) + 16] | 4);
    }

    if ((v46[*(v45[0] - 24) + 16] & 5) != 0)
    {
      memset(&v43, 0, sizeof(v43));
      std::operator+<char>();
      v15 = std::string::append(&v42, " failed: ");
      v16 = v15->__r_.__value_.__r.__words[0];
      v48[0] = v15->__r_.__value_.__l.__size_;
      *(v48 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
      v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      *(&v43.__r_.__value_.__r.__words[1] + 7) = *(v48 + 7);
      v43.__r_.__value_.__r.__words[0] = v16;
      v43.__r_.__value_.__l.__size_ = v48[0];
      *(&v43.__r_.__value_.__s + 23) = v17;
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      v18 = __error();
      v19 = strerror(*v18);
      std::string::append(&v43, v19);
      Entry = dmlc::LogMessageFatal::GetEntry(&v42);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/io.cc", 102);
      v21 = dmlc::LogMessageFatal::GetEntry(&v42);
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v43;
      }

      else
      {
        v22 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v43.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, size);
      dmlc::LogMessageFatal::~LogMessageFatal(&v42);
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }
    }

    std::istream::seekg();
    std::istream::tellg();
    v24 = v44;
    std::istream::seekg();
    std::string::resize(a3, v24 + 1, 0);
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = a3->__r_.__value_.__r.__words[0];
    }

    std::istream::read();
    v26 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    if ((v26 & 0x80u) == 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = a3->__r_.__value_.__r.__words[0];
    }

    if ((v26 & 0x80u) != 0)
    {
      v26 = a3->__r_.__value_.__l.__size_;
    }

    v27->__r_.__value_.__s.__data_[v26 - 1] = 0;
    v45[0] = *v10;
    *(v45 + *(v45[0] - 24)) = v10[3];
    MEMORY[0x277C68CB0](v46);
    std::istream::~istream();
    MEMORY[0x277C690D0](v47);
    goto LABEL_47;
  }

LABEL_39:
  if (v4[23] < 0)
  {
    v4 = *v4;
  }

  v28 = dmlc::Stream::Create(v4, "r", 0);
  v29 = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  v30 = 4096;
  a3->__r_.__value_.__r.__words[2] = 0;
  do
  {
    std::string::resize(a3, v29 + v30, 0);
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = a3;
    }

    else
    {
      v31 = a3->__r_.__value_.__r.__words[0];
    }

    v32 = (**v28)(v28, v31 + v29, v30);
    v29 += v32;
    v33 = v32 >= v30;
    v30 *= 2;
  }

  while (v33);
  std::string::resize(a3, v29, 0);
  (*(*v28 + 24))(v28);
LABEL_47:
  if (v41 < 0)
  {
    operator delete(__p);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 < 0)
  {
    operator delete(v35);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_274D2F6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::ifstream::~ifstream(&a44);
  MEMORY[0x277C690D0](v45);
  if (*(v44 + 23) < 0)
  {
    operator delete(*v44);
  }

  dmlc::io::FileInfo::~FileInfo(&a9);
  _Unwind_Resume(a1);
}

void xgboost::common::FileExtension(uint64_t a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2)
  {
    v5 = *(a1 + 23);
    if (v5 < 0)
    {
      v7 = *a1;
      v6 = (*a1 + *(a1 + 8));
    }

    else
    {
      v6 = (a1 + v5);
      v7 = a1;
    }

    while (v7 != v6)
    {
      *v7 = __tolower(*v7);
      ++v7;
    }
  }

  xgboost::common::Split(a1, 0x2Eu, &v9);
  if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3) < 2)
  {
    std::string::basic_string[abi:ne200100]<0>(a3, &str_7_0);
  }

  else if (*(v10 - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *(v10 - 24), *(v10 - 16));
  }

  else
  {
    v8 = *(v10 - 24);
    a3->__r_.__value_.__r.__words[2] = *(v10 - 8);
    *&a3->__r_.__value_.__l.__data_ = v8;
  }

  v11 = &v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_274D2F8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void xgboost::common::Split(const std::string *a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v11 = 0uLL;
  v12 = 0;
  std::istringstream::basic_istringstream[abi:ne200100](v6, a1, 8);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  while (1)
  {
    v5 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, &v11, a2);
    if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::vector<std::string>::push_back[abi:ne200100](a3, &v11);
  }

  v6[0] = *MEMORY[0x277D82820];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::istream::~istream();
  MEMORY[0x277C690D0](&v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_274D2FA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v25 - 40) = v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v25 - 40));
  std::istringstream::~istringstream(&a9, MEMORY[0x277D82820]);
  MEMORY[0x277C690D0](&a24);
  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  _Unwind_Resume(a1);
}

void xgboost::common::PeekableInStream::Write(xgboost::common::PeekableInStream *this, const void *a2)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/io.h", 36);
  v3 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Not implemented", 15);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
}

void xgboost::common::PeekableInStream::~PeekableInStream(void **this)
{
  *this = &unk_2883E1748;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_2883E1748;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::common::FixedSizeStream::Write(xgboost::common::FixedSizeStream *this, const void *a2)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/io.h", 64);
  v3 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Not implemented", 15);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
}

void xgboost::common::FixedSizeStream::~FixedSizeStream(void **this)
{
  xgboost::common::FixedSizeStream::~FixedSizeStream(this);

  JUMPOUT(0x277C69180);
}

{
  *this = &unk_2883E1710;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  *this = &unk_2883E1748;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

dmlc::io::URI *dmlc::io::URI::URI(dmlc::io::URI *this, char *__s1)
{
  *(this + 3) = 0u;
  v4 = (this + 48);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v5 = strstr(__s1, "://");
  if (v5)
  {
    v6 = v5;
    std::string::basic_string[abi:ne200100](&__dst, __s1, v5 - __s1 + 3);
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = __dst;
    *(this + 2) = v12;
    v7 = v6 + 3;
    v8 = strchr(v7, 47);
    if (v8)
    {
      v9 = v8;
      std::string::basic_string[abi:ne200100](&__dst, v7, v8 - v7);
      if (*(this + 47) < 0)
      {
        operator delete(*(this + 3));
      }

      *(this + 24) = __dst;
      *(this + 5) = v12;
      MEMORY[0x277C68BE0](v4, v9);
    }

    else
    {
      MEMORY[0x277C68BE0](this + 24, v7);
      std::string::operator=(v4, 47);
    }
  }

  else
  {
    MEMORY[0x277C68BE0](v4, __s1);
  }

  return this;
}

void sub_274D2FDDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x277D82808];
  v2 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x277C68CB0](a1 + 2);

  return std::istream::~istream();
}

void xgboost::obj::AFTObj::LoadConfig(xgboost::obj::AFTObj *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "aft_loss_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::common::AFTParam>(v4, (this + 16), v7);
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D301CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::AFTObj::SaveConfig(xgboost::obj::AFTObj *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "survival:aft");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::obj::AFTObj::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::AFTObj::GetGradient(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t **a5)
{
  v5 = a5;
  v284 = *MEMORY[0x277D85DE8];
  v281 = ((*a2)[1] - **a2) >> 2;
  v280 = (*(a3[13] + 8) - *a3[13]) >> 2;
  if (v280 != v281)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v280, &v281);
  }

  v280 = (*(a3[14] + 8) - *a3[14]) >> 2;
  if (v280 != v281)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v280, &v281);
  }

  v282.__ptr_ = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v281, &v282);
  v8 = *(*(a1 + 8) + 24);
  v9 = *(a1 + 24);
  v10 = a3[9];
  v11 = *v10;
  v278 = v10[1];
  v12 = v278 - *v10;
  if (v278 != v11)
  {
    v280 = v12 >> 2;
    if (v12 >> 2 != v281)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v280, &v281);
    }
  }

  v13 = *(a1 + 20);
  __asm { FMOV            V0.2D, #15.0 }

  v277 = _Q0;
  v276 = v5;
  if (v13 == 2)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v282.__ptr_ = 0;
    v283.__m_.__sig = 850045863;
    memset(v283.__m_.__opaque, 0, sizeof(v283.__m_.__opaque));
    v259 = v281;
    if (!v281)
    {
      goto LABEL_296;
    }

    v98 = 0;
    v99 = v9;
    v257 = v99 * v99;
    v254 = 1.0 / v99;
    v265 = v99;
    while (1)
    {
      v101 = **v5;
      v100 = (*v5)[1];
      if (v101)
      {
        v102 = 1;
      }

      else
      {
        v102 = v100 == 0;
      }

      if (!v102)
      {
        goto LABEL_298;
      }

      v103 = **a2;
      v104 = (*a2)[1];
      if (!v103 && v104 != 0)
      {
        goto LABEL_298;
      }

      v106 = a3[13];
      v107 = *v106;
      v108 = v106[1];
      if (!*v106 && v108 != 0)
      {
        goto LABEL_298;
      }

      v110 = a3[14];
      v111 = *v110;
      v112 = v110[1];
      if (!v111 && v112 != 0)
      {
        goto LABEL_298;
      }

      v114 = a3[9];
      v116 = *v114;
      v115 = v114[1];
      v117 = *v114 || v115 == 0;
      if (!v117 || (v104 - v103) >> 2 <= v98 || (v108 - v107) >> 2 <= v98 || (v112 - v111) >> 2 <= v98)
      {
        goto LABEL_298;
      }

      v118 = *(v103 + 4 * v98);
      v119 = *(v107 + 4 * v98);
      v120 = *(v111 + 4 * v98);
      v121 = v120;
      v122 = log(v119);
      v123 = log(v120);
      v262 = v123;
      if (v119 == v120)
      {
        v124 = exp((v122 - v118) / v99);
        v125 = 0.0;
        v126 = 0.0;
        if (fabs(v124) != INFINITY)
        {
          v125 = v124 * exp(-v124);
          v126 = (1.0 - v124) * v125;
        }

        v127 = 0;
        v128 = (v122 - v118) / v99 > 0.0;
      }

      else
      {
        v267 = v122;
        v129 = 0.0;
        if (fabs(v121) == INFINITY)
        {
          v130 = 0;
          v131 = 1.0;
          v127 = 1;
          v132 = 0.0;
        }

        else
        {
          v133 = (v123 - v118) / v99;
          v134 = exp(v133);
          v135 = exp(-v134);
          v132 = fabs(v134) == INFINITY ? 0.0 : v134 * v135;
          v131 = 1.0 - v135;
          v130 = v133 > 0.0;
          v127 = 3;
        }

        if (v119 <= 0.0)
        {
          v141 = 0;
          v127 = 2;
          v140 = 0.0;
          v99 = v265;
        }

        else
        {
          v136 = (v267 - v118) / v265;
          v272 = v118;
          v251 = v131;
          v137 = v132;
          v138 = exp(v136);
          v139 = exp(-v138);
          v132 = v137;
          v99 = v265;
          v129 = fabs(v138) == INFINITY ? 0.0 : v138 * v139;
          v131 = v251;
          v118 = v272;
          v140 = 1.0 - v139;
          v141 = v136 > 0.0;
        }

        v128 = v130 || v141;
        v126 = v132 - v129;
        v125 = v131 - v140;
        v5 = v276;
        v122 = v267;
      }

      v142 = v125 * v99;
      v143 = v126 / v142;
      v144 = COERCE__INT64(fabs(v126 / v142)) > 0x7FEFFFFFFFFFFFFFLL;
      if (v142 < 1.0e-12 && v144)
      {
        break;
      }

LABEL_173:
      v273 = v143;
      if (v119 == v120)
      {
        v148 = (v122 - v118) / v99;
        v149 = exp(v148);
        v150 = 0.0;
        if (fabs(v149) == INFINITY)
        {
          v151 = 0.0;
          v152 = 0.0;
        }

        else
        {
          v152 = v149 * exp(-v149);
          v151 = (1.0 - v149) * v152;
          if (fabs(v149 * v149) != INFINITY)
          {
            v150 = v152 * (v149 * -3.0 + v149 * v149 + 1.0);
          }
        }

        v159.f64[0] = v273;
        v155 = 0;
        v160 = -(v152 * v150 - v151 * v151);
        v161 = v152 * (v257 * v152);
        v162 = v148 > 0.0;
        v99 = v265;
      }

      else
      {
        v268 = v122;
        v153 = 0.0;
        if (fabs(v121) == INFINITY)
        {
          v154 = 0;
          v155 = 1;
          v156 = 1.0;
          v157 = 0.0;
          v158 = 0.0;
        }

        else
        {
          v163 = (v262 - v118) / v99;
          v164 = exp(v163);
          v165 = fabs(v164);
          v166 = exp(-v164);
          if (v165 == INFINITY)
          {
            v158 = 0.0;
          }

          else
          {
            v158 = v164 * v166;
          }

          if (v165 == INFINITY)
          {
            v157 = 0.0;
          }

          else
          {
            v157 = (1.0 - v164) * (v164 * v166);
          }

          v156 = 1.0 - v166;
          v154 = v163 > 0.0;
          v155 = 3;
        }

        if (v119 <= 0.0)
        {
          v173 = 0;
          v155 = 2;
          v170 = 0.0;
          v171 = 0.0;
          v99 = v265;
        }

        else
        {
          v167 = (v268 - v118) / v265;
          v168 = exp(v167);
          v169 = exp(-v168);
          v170 = v168 * v169;
          if (fabs(v168) == INFINITY)
          {
            v170 = 0.0;
            v153 = 0.0;
          }

          else
          {
            v153 = (1.0 - v168) * (v168 * v169);
          }

          v171 = 1.0 - v169;
          v172 = v167 <= 0.0;
          v99 = v265;
          v173 = !v172;
        }

        v159.f64[0] = v273;
        v174 = v156 - v171;
        v162 = v154 | v173;
        v160 = -(v174 * (v157 - v153) - (v158 - v170) * (v158 - v170));
        v161 = v174 * v99 * (v174 * v99);
        v5 = v276;
      }

      v175 = v160 / v161;
      v176 = COERCE__INT64(fabs(v160 / v161)) > 0x7FEFFFFFFFFFFFFFLL;
      if (v161 < 1.0e-12 && v176)
      {
        if (v155 == 2)
        {
          v175 = 1.0e-16;
        }

        else
        {
          v175 = 1.0e-16;
          if (v162)
          {
            v175 = 15.0;
          }
        }
      }

      if (v278 == v11)
      {
        v177 = 1.0;
      }

      else
      {
        if ((v115 - v116) >> 2 <= v98)
        {
          goto LABEL_298;
        }

        v177 = *(v116 + 4 * v98);
      }

      if ((v100 - v101) >> 3 <= v98)
      {
        goto LABEL_298;
      }

      v159.f64[1] = v175;
      *(v101 + 8 * v98++) = vmul_n_f32(vcvt_f32_f64(vbslq_s8(vcgtq_f64(xmmword_274E22C60, v159), xmmword_274E22C60, vbslq_s8(vcgtq_f64(v159, v277), v277, v159))), v177);
      if (v259 == v98)
      {
        goto LABEL_296;
      }
    }

    if (v127 > 1)
    {
      if (v127 == 2)
      {
        v145 = v128 == 0;
        v146 = 0.0;
LABEL_169:
        v147 = v254;
LABEL_170:
        if (v145)
        {
          v143 = v147;
        }

        else
        {
          v143 = v146;
        }

        goto LABEL_173;
      }
    }

    else if (v127)
    {
      v145 = v128 == 0;
      v146 = -15.0;
      v147 = 0.0;
      goto LABEL_170;
    }

    v145 = v128 == 0;
    v146 = -15.0;
    goto LABEL_169;
  }

  if (v13 == 1)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v282.__ptr_ = 0;
    v283.__m_.__sig = 850045863;
    memset(v283.__m_.__opaque, 0, sizeof(v283.__m_.__opaque));
    v261 = v281;
    if (v281)
    {
      v22 = 0;
      v23 = v9;
      v24 = 1.0;
      v256 = 1.0 / v9;
      v258 = v23 * v23;
      v253 = -1.0 / v9;
      v264 = v9;
      do
      {
        v26 = **v5;
        v25 = (*v5)[1];
        if (v26)
        {
          _ZF = 1;
        }

        else
        {
          _ZF = v25 == 0;
        }

        if (!_ZF)
        {
          goto LABEL_298;
        }

        v28 = **a2;
        v29 = (*a2)[1];
        if (!v28 && v29 != 0)
        {
          goto LABEL_298;
        }

        v31 = a3[13];
        v32 = *v31;
        v33 = v31[1];
        if (!*v31 && v33 != 0)
        {
          goto LABEL_298;
        }

        v35 = a3[14];
        v36 = *v35;
        v37 = v35[1];
        if (!v36 && v37 != 0)
        {
          goto LABEL_298;
        }

        v39 = a3[9];
        v40 = *v39;
        v41 = v39[1];
        v42 = *v39 || v41 == 0;
        if (!v42 || (v29 - v28) >> 2 <= v22 || (v33 - v32) >> 2 <= v22 || (v37 - v36) >> 2 <= v22)
        {
          goto LABEL_298;
        }

        v43 = *(v28 + 4 * v22);
        v44 = *(v32 + 4 * v22);
        v45 = *(v36 + 4 * v22);
        v46 = v45;
        v47 = log(v44);
        v266 = log(v45);
        if (v44 == v45)
        {
          v48 = exp((v47 - v43) / v23);
          v49 = 0.0;
          v50 = 0.0;
          if (fabs(v48) != INFINITY)
          {
            v51 = v48 + v24;
            v49 = 0.0;
            if (fabs(v48 * v48) != INFINITY)
            {
              v49 = v48 / (v51 * v51);
            }

            v50 = (v24 - v48) * v49 / v51;
          }

          v52 = 0;
          v53 = (v47 - v43) / v23 > 0.0;
        }

        else
        {
          v54 = 0.0;
          if (fabs(v46) == INFINITY)
          {
            v55 = 0;
            v56 = 1.0;
            v52 = 1;
            v57 = 0.0;
          }

          else
          {
            v58 = (v266 - v43) / v23;
            v59 = exp(v58);
            v56 = 1.0;
            v57 = 0.0;
            if (fabs(v59) != INFINITY)
            {
              v60 = v59 + 1.0;
              v57 = 0.0;
              if (fabs(v59 * v59) != INFINITY)
              {
                v57 = v59 / (v60 * v60);
              }

              v56 = v59 / v60;
            }

            v55 = v58 > 0.0;
            v52 = 3;
          }

          if (v44 <= 0.0)
          {
            v64 = 0;
            v52 = 2;
            v62 = 0.0;
          }

          else
          {
            v270 = v57;
            v61 = exp((v47 - v43) / v264);
            v62 = 1.0;
            if (fabs(v61) != INFINITY)
            {
              v63 = v61 + 1.0;
              if (fabs(v61 * v61) == INFINITY)
              {
                v54 = 0.0;
              }

              else
              {
                v54 = v61 / (v63 * v63);
              }

              v62 = v61 / v63;
            }

            v57 = v270;
            v64 = (v47 - v43) / v264 > 0.0;
          }

          v53 = v55 || v64;
          v50 = v57 - v54;
          v49 = v56 - v62;
          v5 = v276;
          v23 = v264;
          v24 = 1.0;
        }

        v65 = v50 / (v49 * v23);
        if (v49 * v23 < 1.0e-12 && (*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v52 > 1)
          {
            if (v52 == 2)
            {
              v66 = v53 == 0;
              v67 = v256;
              v68 = 0.0;
LABEL_77:
              if (v66)
              {
                v65 = v67;
              }

              else
              {
                v65 = v68;
              }

              goto LABEL_83;
            }
          }

          else if (v52)
          {
            v66 = v53 == 0;
            v67 = 0.0;
            v68 = v253;
            goto LABEL_77;
          }

          v69 = -1.0;
          if (!v53)
          {
            v69 = v24;
          }

          v65 = v69 / v23;
        }

LABEL_83:
        v271 = v65;
        if (v44 == v45)
        {
          v70 = exp((v47 - v43) / v23);
          v71 = 0.0;
          v72 = 0.0;
          v73 = 0.0;
          if (fabs(v70) != INFINITY)
          {
            v74 = v70 + v24;
            v75 = v24 - v70;
            if (fabs(v70 * v70) == INFINITY)
            {
              v72 = 0.0;
              v76 = v75 * 0.0;
              v73 = 0.0;
              v71 = v76 / v74;
            }

            else
            {
              v87 = v74 * v74;
              v72 = v70 / (v74 * v74);
              v71 = v75 * v72 / v74;
              v73 = v72 * (v70 * -4.0 + v70 * v70 + v24) / v87;
            }
          }

          v88 = -(v72 * v73 - v71 * v71);
          v89 = v72 * (v258 * v72);
        }

        else
        {
          v77 = fabs(v46);
          v78 = 1.0;
          v79 = 0.0;
          v80 = 0.0;
          v81 = 0.0;
          if (v77 != INFINITY)
          {
            v82 = exp((v266 - v43) / v264);
            if (fabs(v82) != INFINITY)
            {
              v83 = v82 + 1.0;
              if (fabs(v82 * v82) != INFINITY)
              {
                v81 = v82 / (v83 * v83);
              }

              v78 = v82 / v83;
              v80 = (1.0 - v82) * v81 / v83;
            }
          }

          if (v44 <= 0.0)
          {
            v86 = 0.0;
            v85 = 0.0;
          }

          else
          {
            v84 = exp((v47 - v43) / v264);
            v85 = 1.0;
            if (fabs(v84) == INFINITY)
            {
              v86 = 0.0;
            }

            else
            {
              v90 = v84 + 1.0;
              v86 = 0.0;
              if (fabs(v84 * v84) != INFINITY)
              {
                v86 = v84 / (v90 * v90);
              }

              v85 = v84 / v90;
              v79 = (1.0 - v84) * v86 / v90;
            }
          }

          v91 = v78 - v85;
          v92 = v80 - v79;
          v23 = v264;
          v88 = -(v91 * v92 - (v81 - v86) * (v81 - v86));
          v89 = v91 * v264 * (v91 * v264);
          v24 = 1.0;
        }

        if (v278 == v11)
        {
          v93 = 1.0;
        }

        else
        {
          if ((v41 - v40) >> 2 <= v22)
          {
            goto LABEL_298;
          }

          v93 = *(v40 + 4 * v22);
        }

        if ((v25 - v26) >> 3 <= v22)
        {
          goto LABEL_298;
        }

        v94 = v88 / v89;
        _NF = (*&v94 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL && v89 < 1.0e-12;
        v96 = 1.0e-16;
        if (!_NF)
        {
          v96 = v94;
        }

        v97.f64[0] = v271;
        v97.f64[1] = v96;
        *(v26 + 8 * v22++) = vmul_n_f32(vcvt_f32_f64(vbslq_s8(vcgtq_f64(xmmword_274E22C60, v97), xmmword_274E22C60, vbslq_s8(vcgtq_f64(v97, v277), v277, v97))), v93);
      }

      while (v261 != v22);
    }

LABEL_296:
    dmlc::OMPException::Rethrow(&v282);
    std::mutex::~mutex(&v283);
    std::exception_ptr::~exception_ptr(&v282);
    goto LABEL_297;
  }

  if (v13)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v282);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/aft_obj.cu", 103);
    v21 = dmlc::LogMessageFatal::GetEntry(&v282);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Unrecognized distribution", 25);
    dmlc::LogMessageFatal::~LogMessageFatal(&v282);
    goto LABEL_297;
  }

  if (v8 < 0)
  {
    v178 = v281;
    v282.__ptr_ = 0;
    v283.__m_.__sig = 850045863;
    memset(v283.__m_.__opaque, 0, sizeof(v283.__m_.__opaque));
    if (v281)
    {
      v179 = 0;
      v180 = v9;
      v255 = v180 * v180;
      v260 = v9;
      v263 = 1.0 / (v180 * v180);
      while (1)
      {
        v181 = **v5;
        v182 = (*v5)[1];
        if (!v181 && v182 != 0)
        {
          break;
        }

        v184 = **a2;
        v185 = (*a2)[1];
        if (!v184 && v185 != 0)
        {
          break;
        }

        v187 = a3[13];
        v188 = *v187;
        v189 = v187[1];
        if (!*v187 && v189 != 0)
        {
          break;
        }

        v191 = a3[14];
        v192 = *v191;
        v193 = v191[1];
        if (!v192 && v193 != 0)
        {
          break;
        }

        v195 = a3[9];
        v197 = *v195;
        v196 = v195[1];
        v198 = *v195 || v196 == 0;
        if (!v198 || (v185 - v184) >> 2 <= v179 || (v189 - v188) >> 2 <= v179 || (v193 - v192) >> 2 <= v179)
        {
          break;
        }

        v199 = *(v184 + 4 * v179);
        v200 = *(v188 + 4 * v179);
        v201 = *(v192 + 4 * v179);
        v202 = v201;
        v203 = log(v200);
        v269 = log(v201);
        if (v200 == v201)
        {
          v204 = (v203 - v199) / v180;
          v205 = 0;
          v206 = exp(v204 * v204 * -0.5) / 2.50662827;
          v207 = -(v204 * v206);
          v208 = v204 > 0.0;
        }

        else
        {
          v209 = 0.0;
          if (fabs(v202) == INFINITY)
          {
            v210 = 0;
            v211 = 1.0;
            v205 = 1;
            v274 = 0.0;
          }

          else
          {
            v212 = (v269 - v199) / v180;
            v274 = exp(-(v212 * v212) * 0.5) / 2.50662827;
            v213 = erf(v212 / 1.41421356);
            v209 = 0.0;
            v211 = (v213 + 1.0) * 0.5;
            v210 = v212 > 0.0;
            v205 = 3;
          }

          if (v200 <= 0.0)
          {
            v220 = 0;
            v205 = 2;
            v219 = 0.0;
            v180 = v260;
          }

          else
          {
            v214 = (v203 - v199) / v260;
            v252 = v211;
            v215 = v199;
            v216 = v203;
            v217 = exp(-(v214 * v214) * 0.5) / 2.50662827;
            v218 = erf(v214 / 1.41421356);
            v211 = v252;
            v209 = v217;
            v203 = v216;
            v199 = v215;
            v219 = (v218 + 1.0) * 0.5;
            v172 = v214 <= 0.0;
            v180 = v260;
            v220 = !v172;
          }

          v208 = v210 | v220;
          v207 = v274 - v209;
          v206 = v211 - v219;
          v5 = v276;
        }

        v221 = v206 * v180;
        v222 = v207 / v221;
        if (v221 < 1.0e-12 && (*&v222 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v208)
          {
            v222 = 0.0;
          }

          else
          {
            v222 = 15.0;
          }

          if (v208)
          {
            v223 = -15.0;
          }

          else
          {
            v223 = 15.0;
          }

          if (v205 != 2)
          {
            v222 = v223;
          }

          if (v208)
          {
            v224 = -15.0;
          }

          else
          {
            v224 = 15.0;
          }

          if (v208)
          {
            v225 = -15.0;
          }

          else
          {
            v225 = 0.0;
          }

          if (v205)
          {
            v224 = v225;
          }

          if (v205 <= 1)
          {
            v222 = v224;
          }
        }

        v275 = v222;
        if (v200 == v201)
        {
          v226 = (v203 - v199) / v180;
          v227 = 0;
          v228 = exp(v226 * v226 * -0.5) / 2.50662827;
          v229 = -(v228 * ((v226 * v226 + -1.0) * v228) - -(v226 * v228) * -(v226 * v228));
          v230 = v228 * (v255 * v228);
          v231 = v226 > 0.0;
        }

        else
        {
          v232 = fabs(v202);
          v233 = 0.0;
          if (v232 == INFINITY)
          {
            v234 = 0;
            v227 = 1;
            v235 = 1.0;
            v236 = 0.0;
            v237 = 0.0;
          }

          else
          {
            v238 = (v269 - v199) / v180;
            v237 = exp(-(v238 * v238) * 0.5) / 2.50662827;
            v235 = (erf(v238 / 1.41421356) + 1.0) * 0.5;
            v236 = -(v238 * v237);
            v234 = v238 > 0.0;
            v227 = 3;
          }

          if (v200 <= 0.0)
          {
            v244 = 0;
            v227 = 2;
            v242 = 0.0;
            v243 = 0.0;
            v240 = v260;
          }

          else
          {
            v239 = v203 - v199;
            v240 = v260;
            v241 = v239 / v260;
            v242 = exp(-(v241 * v241) * 0.5) / 2.50662827;
            v243 = (erf(v241 / 1.41421356) + 1.0) * 0.5;
            v233 = -(v241 * v242);
            v244 = v241 > 0.0;
          }

          v245 = v235 - v243;
          v246 = v245 * v240;
          v231 = v234 || v244;
          v229 = -(v245 * (v236 - v233) - (v237 - v242) * (v237 - v242));
          v230 = v246 * v246;
          v5 = v276;
          v180 = v240;
        }

        v247 = v229 / v230;
        if (v230 < 1.0e-12 && (*&v247 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v227 > 1)
          {
            v247 = v263;
            if (v227 == 2)
            {
              v247 = 1.0e-16;
              if (!v231)
              {
                v247 = v263;
              }
            }
          }

          else
          {
            v247 = v263;
            if (v227)
            {
              v247 = 1.0e-16;
              if (v231)
              {
                v247 = v263;
              }
            }
          }
        }

        if (v278 == v11)
        {
          v248 = 1.0;
        }

        else
        {
          if ((v196 - v197) >> 2 <= v179)
          {
            break;
          }

          v248 = *(v197 + 4 * v179);
        }

        if ((v182 - v181) >> 3 <= v179)
        {
          break;
        }

        v249.f64[0] = v275;
        v249.f64[1] = v247;
        *(v181 + 8 * v179++) = vmul_n_f32(vcvt_f32_f64(vbslq_s8(vcgtq_f64(xmmword_274E22C60, v249), xmmword_274E22C60, vbslq_s8(vcgtq_f64(v249, v277), v277, v249))), v248);
        if (v178 == v179)
        {
          goto LABEL_296;
        }
      }

LABEL_298:
      std::terminate();
    }

    goto LABEL_296;
  }

LABEL_16:
  v17 = dmlc::LogMessageFatal::GetEntry(&v282);
  dmlc::LogMessageFatal::Entry::Init(v17, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
  v18 = dmlc::LogMessageFatal::GetEntry(&v282);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Not part of device code. WITH_CUDA: ", 36);
  MEMORY[0x277C68DF0](v19, 0);
  dmlc::LogMessageFatal::~LogMessageFatal(&v282);
LABEL_297:
  v250 = *MEMORY[0x277D85DE8];
}

void sub_274D31938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, std::exception_ptr a30)
{
  std::mutex::~mutex((v30 + 8));
  std::exception_ptr::~exception_ptr(&a30);
  _Unwind_Resume(a1);
}

void xgboost::obj::AFTObj::PredTransform(uint64_t a1, float ***a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = **a2;
  v2 = (*a2)[1];
  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  if (v2 != v3)
  {
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 == 0;
    }

    if (v4)
    {
      v5 = v2 - v3;
      while (v5)
      {
        *v3 = expf(*v3);
        ++v3;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }
    }

    std::terminate();
  }

LABEL_10:
  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_274D31AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::mutex::~mutex((v9 + 8));
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

void xgboost::FromJson<xgboost::common::AFTParam>(char ***a1@<X0>, xgboost::common::AFTParam *a2@<X1>, void *a3@<X8>)
{
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a1);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6 = v5[2];
  v7 = v5 + 3;
  if (v6 != v5 + 3)
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v14[3] = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v13, v6 + 4);
      std::string::operator=((v9 + 56), (v8 + 16));
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(a2, &v13, a3);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
}

void xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::common::AFTParam *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::common::AFTParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, this, *a2, (a2 + 8), a3, 0);
    *this = 1;
  }
}

void sub_274D31CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dmlc::Parameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::common::AFTParam *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::common::AFTParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, a1, *a2, (a2 + 8), 0, a3, 0);
}

void sub_274D31D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::ToJson<xgboost::common::AFTParam>(xgboost::common::AFTParam *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0x300000000;
  *a2 = &unk_2883E6E50;
  a2[3] = 0;
  a2[2] = a2 + 3;
  a2[4] = 0;
  v3 = xgboost::common::AFTParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::GetDict(v3, v5);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v6, v5[0], v5[1]);
  v8 = v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v4 = v6;
  if (v6 != &v7)
  {
    xgboost::JsonString::JsonString(v5, (v6 + 56));
    v8 = (v4 + 32);
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 2), (v4 + 32));
    xgboost::Json::operator=();
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v6, v7);
}

void sub_274D31EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a21);
  *v21 = v22;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23, *(v21 + 24));
  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::common::AFTParam *this@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::common::AFTParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, this, *a2, a2[1], a3, 0);
    *this = 1;
  }
}

void sub_274D31FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *dmlc::Parameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>@<X0>(xgboost::common::AFTParam *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::common::AFTParam::__MANAGER__(a1);
  return dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, a1, *a2, a2[1], 0, a3, 0);
}

void sub_274D32054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<xgboost::metric::$_0,std::allocator<xgboost::metric::$_0>,xgboost::Metric * ()(char const*)>::operator()()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

double xgboost::metric::EvalEWiseBase<xgboost::metric::EvalRowRMSE>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v50[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v50[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v50, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v50[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v50[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v50, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v45 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v45) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v45 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v52 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v53 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v45 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v52 = 0;
    v53 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v56 = v7;
  v51[0] = v15;
  v51[1] = v16;
  v50[0] = v16;
  v50[1] = 1;
  v54 = v13;
  v55 = v14;
  if (v17 == -1)
  {
    v58.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v44 = a4;
    v58.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v46, 1uLL);
    v25 = **(a3 + 24);
    v26 = *(*(a3 + 24) + 8);
    v58.__ptr_ = 0;
    v59.__m_.__sig = 850045863;
    v27 = 0.0;
    memset(v59.__m_.__opaque, 0, sizeof(v59.__m_.__opaque));
    v28 = v26 - v25;
    if (v28)
    {
      v29 = 0;
      v30 = v28 >> 2;
      do
      {
        v57[0] = 2;
        v57[1] = v51;
        v31 = xgboost::linalg::UnravelIndex<2ul>(v29, v57, *&v27);
        if (v12)
        {
          if (v12 <= v31)
          {
            goto LABEL_42;
          }

          v33 = *(v45 + 4 * v31);
        }

        else
        {
          v33 = 1.0;
        }

        v34 = v32 + v31 * v16;
        if (v34 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v29)
        {
LABEL_42:
          std::terminate();
        }

        v35 = *(v10 + 4 * v34) - *(v9 + 4 * v29);
        *__p = *__p + (v33 * (v35 * v35));
        v27 = *v46 + v33;
        *v46 = v27;
        ++v29;
      }

      while (v30 != v29);
    }

    dmlc::OMPException::Rethrow(&v58);
    std::mutex::~mutex(&v59);
    std::exception_ptr::~exception_ptr(&v58);
    v22 = __p;
    v23 = 0.0;
    v24 = 0.0;
    a4 = v44;
    if (__p != v49)
    {
      v36 = __p;
      do
      {
        v37 = *v36++;
        v24 = v24 + v37;
      }

      while (v36 != v49);
    }

    if (v46 != v47)
    {
      v23 = 0.0;
      v38 = v46;
      do
      {
        v39 = *v38++;
        v23 = v23 + v39;
      }

      while (v38 != v47);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
      v22 = __p;
    }

    if (v22)
    {
      v49 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v58);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v58);
    v23 = 0.0;
    v24 = 0.0;
  }

  v58.__ptr_ = *&v24;
  *&v59.__m_.__sig = v23;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22);
    (*(*Engine + 8))(Engine, &v58, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
    v24 = *&v58.__ptr_;
    v23 = *&v59.__m_.__sig;
  }

  v41 = v24 / v23;
  if (v23 == 0.0)
  {
    v41 = v24;
  }

  v42 = *MEMORY[0x277D85DE8];
  return sqrt(v41);
}

void sub_274D32788()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D327BCLL);
}

void sub_274D327D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D32828(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<xgboost::metric::$_1,std::allocator<xgboost::metric::$_1>,xgboost::Metric * ()(char const*)>::operator()()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

double xgboost::metric::EvalEWiseBase<xgboost::metric::EvalRowRMSLE>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v52[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v52[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v52, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v52[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v52[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v52, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v47 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v47) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v47 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v54 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v55 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v47 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v54 = 0;
    v55 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v58 = v7;
  v53[0] = v15;
  v53[1] = v16;
  v52[0] = v16;
  v52[1] = 1;
  v56 = v13;
  v57 = v14;
  if (v17 == -1)
  {
    *&v60.__ptr_ = 0.0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v46 = a4;
    *&v60.__ptr_ = 0.0;
    std::vector<double>::vector[abi:ne200100](&v48, 1uLL);
    v25 = **(a3 + 24);
    v26 = *(*(a3 + 24) + 8);
    *&v60.__ptr_ = 0.0;
    v61.__m_.__sig = 850045863;
    v27 = 0.0;
    memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
    v28 = v26 - v25;
    if (v28)
    {
      v29 = 0;
      v30 = v28 >> 2;
      do
      {
        v59[0] = 2;
        v59[1] = v53;
        v31 = xgboost::linalg::UnravelIndex<2ul>(v29, v59, *&v27);
        if (v12)
        {
          if (v12 <= v31)
          {
            goto LABEL_42;
          }

          v33 = *(v47 + 4 * v31);
        }

        else
        {
          v33 = 1.0;
        }

        v34 = v32 + v31 * v16;
        if (v34 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v29)
        {
LABEL_42:
          std::terminate();
        }

        v35 = *(v9 + 4 * v29);
        v36 = log1pf(*(v10 + 4 * v34));
        v37 = log1pf(v35);
        *__p = *__p + (v33 * ((v36 - v37) * (v36 - v37)));
        v27 = *v48 + v33;
        *v48 = v27;
        ++v29;
      }

      while (v30 != v29);
    }

    dmlc::OMPException::Rethrow(&v60);
    std::mutex::~mutex(&v61);
    std::exception_ptr::~exception_ptr(&v60);
    v22 = __p;
    v23 = 0.0;
    v24 = 0.0;
    a4 = v46;
    if (__p != v51)
    {
      v38 = __p;
      do
      {
        v39 = *v38++;
        v24 = v24 + v39;
      }

      while (v38 != v51);
    }

    if (v48 != v49)
    {
      v23 = 0.0;
      v40 = v48;
      do
      {
        v41 = *v40++;
        v23 = v23 + v41;
      }

      while (v40 != v49);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
      v22 = __p;
    }

    if (v22)
    {
      v51 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v60);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v60);
    v23 = 0.0;
    v24 = 0.0;
  }

  *&v60.__ptr_ = v24;
  *&v61.__m_.__sig = v23;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22);
    (*(*Engine + 8))(Engine, &v60, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
    v24 = *&v60.__ptr_;
    v23 = *&v61.__m_.__sig;
  }

  v43 = v24 / v23;
  if (v23 == 0.0)
  {
    v43 = v24;
  }

  v44 = *MEMORY[0x277D85DE8];
  return sqrt(v43);
}

void sub_274D32F74()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D32FA8);
}

void sub_274D32FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D33014(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalRowMAE>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v47[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v47[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v47, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v47[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v47[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v47, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v42 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v42) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v42 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v49 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v50 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v42 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v49 = 0;
    v50 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v53 = v7;
  v48[0] = v15;
  v48[1] = v16;
  v47[0] = v16;
  v47[1] = 1;
  v51 = v13;
  v52 = v14;
  if (v17 == -1)
  {
    v55.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v41 = a4;
    v55.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v43, 1uLL);
    v25 = **(a3 + 24);
    v26 = *(*(a3 + 24) + 8);
    v55.__ptr_ = 0;
    v56.__m_.__sig = 850045863;
    v27 = 0.0;
    memset(v56.__m_.__opaque, 0, sizeof(v56.__m_.__opaque));
    v28 = v26 - v25;
    if (v28)
    {
      v29 = 0;
      v30 = v28 >> 2;
      do
      {
        v54[0] = 2;
        v54[1] = v48;
        v31 = xgboost::linalg::UnravelIndex<2ul>(v29, v54, *&v27);
        if (v12)
        {
          if (v12 <= v31)
          {
            goto LABEL_40;
          }

          v33 = *(v42 + 4 * v31);
        }

        else
        {
          v33 = 1.0;
        }

        v34 = v32 + v31 * v16;
        if (v34 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v29)
        {
LABEL_40:
          std::terminate();
        }

        *__p = *__p + (v33 * vabds_f32(*(v10 + 4 * v34), *(v9 + 4 * v29)));
        v27 = *v43 + v33;
        *v43 = v27;
        ++v29;
      }

      while (v30 != v29);
    }

    dmlc::OMPException::Rethrow(&v55);
    std::mutex::~mutex(&v56);
    std::exception_ptr::~exception_ptr(&v55);
    v22 = __p;
    v23 = 0.0;
    v24 = 0.0;
    a4 = v41;
    if (__p != v46)
    {
      v35 = __p;
      do
      {
        v36 = *v35++;
        v24 = v24 + v36;
      }

      while (v35 != v46);
    }

    if (v43 != v44)
    {
      v23 = 0.0;
      v37 = v43;
      do
      {
        v38 = *v37++;
        v23 = v23 + v38;
      }

      while (v37 != v44);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
      v22 = __p;
    }

    if (v22)
    {
      v46 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v55);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v55);
    v23 = 0.0;
    v24 = 0.0;
  }

  v55.__ptr_ = *&v24;
  *&v56.__m_.__sig = v23;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22);
    (*(*Engine + 8))(Engine, &v55, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_274D33740()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D33774);
}

void sub_274D3378C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D337E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalRowMAPE>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v47[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v47[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v47, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v47[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v47[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v47, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v42 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v42) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v42 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v49 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v50 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v42 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v49 = 0;
    v50 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v53 = v7;
  v48[0] = v15;
  v48[1] = v16;
  v47[0] = v16;
  v47[1] = 1;
  v51 = v13;
  v52 = v14;
  if (v17 == -1)
  {
    v55.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v41 = a4;
    v55.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v43, 1uLL);
    v25 = **(a3 + 24);
    v26 = *(*(a3 + 24) + 8);
    v55.__ptr_ = 0;
    v56.__m_.__sig = 850045863;
    v27 = 0.0;
    memset(v56.__m_.__opaque, 0, sizeof(v56.__m_.__opaque));
    v28 = v26 - v25;
    if (v28)
    {
      v29 = 0;
      v30 = v28 >> 2;
      do
      {
        v54[0] = 2;
        v54[1] = v48;
        v31 = xgboost::linalg::UnravelIndex<2ul>(v29, v54, *&v27);
        if (v12)
        {
          if (v12 <= v31)
          {
            goto LABEL_40;
          }

          v33 = *(v42 + 4 * v31);
        }

        else
        {
          v33 = 1.0;
        }

        v34 = v32 + v31 * v16;
        if (v34 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v29)
        {
LABEL_40:
          std::terminate();
        }

        *__p = *__p + (v33 * fabsf((*(v10 + 4 * v34) - *(v9 + 4 * v29)) / *(v10 + 4 * v34)));
        v27 = *v43 + v33;
        *v43 = v27;
        ++v29;
      }

      while (v30 != v29);
    }

    dmlc::OMPException::Rethrow(&v55);
    std::mutex::~mutex(&v56);
    std::exception_ptr::~exception_ptr(&v55);
    v22 = __p;
    v23 = 0.0;
    v24 = 0.0;
    a4 = v41;
    if (__p != v46)
    {
      v35 = __p;
      do
      {
        v36 = *v35++;
        v24 = v24 + v36;
      }

      while (v35 != v46);
    }

    if (v43 != v44)
    {
      v23 = 0.0;
      v37 = v43;
      do
      {
        v38 = *v37++;
        v23 = v23 + v38;
      }

      while (v37 != v44);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
      v22 = __p;
    }

    if (v22)
    {
      v46 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v55);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v55);
    v23 = 0.0;
    v24 = 0.0;
  }

  v55.__ptr_ = *&v24;
  *&v56.__m_.__sig = v23;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22);
    (*(*Engine + 8))(Engine, &v55, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_274D33F14()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D33F48);
}

void sub_274D33F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D33FB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalRowLogLoss>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v54[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v54[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v54, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v54[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v54[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v54, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v49 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v49) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v49 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v56 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v57 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v49 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v56 = 0;
    v57 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v60 = v7;
  v55[0] = v15;
  v55[1] = v16;
  v54[0] = v16;
  v54[1] = 1;
  v58 = v13;
  v59 = v14;
  if (v17 == -1)
  {
    v62.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v48 = a4;
    v62.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v50, 1uLL);
    v25 = **(a3 + 24);
    v26 = *(*(a3 + 24) + 8);
    v62.__ptr_ = 0;
    v63.__m_.__sig = 850045863;
    v27 = 0.0;
    memset(v63.__m_.__opaque, 0, sizeof(v63.__m_.__opaque));
    v28 = v26 - v25;
    if (v28)
    {
      v29 = 0;
      v30 = v28 >> 2;
      do
      {
        v61[0] = 2;
        v61[1] = v55;
        v31 = xgboost::linalg::UnravelIndex<2ul>(v29, v61, *&v27);
        if (v12)
        {
          if (v12 <= v31)
          {
            goto LABEL_49;
          }

          v33 = *(v49 + 4 * v31);
        }

        else
        {
          v33 = 1.0;
        }

        v34 = v32 + v31 * v16;
        if (v34 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v29)
        {
LABEL_49:
          std::terminate();
        }

        v35 = *(v10 + 4 * v34);
        v36 = *(v9 + 4 * v29);
        v37 = 0.0;
        v38 = 0.0;
        if (v35 != 0.0)
        {
          if (v36 >= 1.0e-16)
          {
            v39 = *(v9 + 4 * v29);
          }

          else
          {
            v39 = 1.0e-16;
          }

          v38 = -(v35 * logf(v39));
        }

        v40 = 1.0 - v35;
        if (v40 != 0.0)
        {
          v41 = 1.0 - v36;
          if ((1.0 - v36) < 1.0e-16)
          {
            v41 = 1.0e-16;
          }

          v37 = -(v40 * logf(v41));
        }

        *__p = *__p + (v33 * (v38 + v37));
        v27 = *v50 + v33;
        *v50 = v27;
        ++v29;
      }

      while (v30 != v29);
    }

    dmlc::OMPException::Rethrow(&v62);
    std::mutex::~mutex(&v63);
    std::exception_ptr::~exception_ptr(&v62);
    v22 = __p;
    v23 = 0.0;
    v24 = 0.0;
    a4 = v48;
    if (__p != v53)
    {
      v42 = __p;
      do
      {
        v43 = *v42++;
        v24 = v24 + v43;
      }

      while (v42 != v53);
    }

    if (v50 != v51)
    {
      v23 = 0.0;
      v44 = v50;
      do
      {
        v45 = *v44++;
        v23 = v23 + v45;
      }

      while (v44 != v51);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
      v22 = __p;
    }

    if (v22)
    {
      v53 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v62);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v62);
    v23 = 0.0;
    v24 = 0.0;
  }

  v62.__ptr_ = *&v24;
  *&v63.__m_.__sig = v23;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22);
    (*(*Engine + 8))(Engine, &v62, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_274D34744()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D34778);
}

void sub_274D34790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D347E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_5,std::allocator<xgboost::metric::$_5>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::metric::PseudoErrorLoss::LoadConfig(xgboost::metric::PseudoErrorLoss *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "pseduo_huber_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::PesudoHuberParam>(v4, (this + 16), v7);
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D349BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::metric::PseudoErrorLoss::SaveConfig(xgboost::metric::PseudoErrorLoss *this, xgboost::Json *a2)
{
  v3 = (*(*this + 48))(this);
  std::string::basic_string[abi:ne200100]<0>(v5, v3);
  v7 = &unk_2883E6F38;
  v8 = 0;
  *v9 = *v5;
  v10 = v6;
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::metric::PseudoErrorLoss::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::PesudoHuberParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::metric::PseudoErrorLoss::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v51[0] = *(a3 + 32);
  if (*&v51[0] != *a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long long>(v51, a3);
  }

  v6 = *(*(a1 + 8) + 24);
  if (v6 < 0)
  {
    v12 = *(a3 + 24);
    v9 = *v12;
    v45 = (v12[1] - *v12) >> 2;
    v11 = *(a3 + 40);
    if (v6 == -1)
    {
      v7 = **a2;
      v8 = ((*a2)[1] - v7) >> 2;
      v44 = **(a3 + 72);
      v10 = (*(*(a3 + 72) + 8) - v44) >> 2;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v44 = 0;
      v10 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v44 = 0;
    v45 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *(a3 + 40);
  }

  v46 = *(a1 + 20);
  v51[0] = 0.0;
  if (v46 == 0.0)
  {
    dmlc::LogCheckFormat<float,double>(&v46, v51);
  }

  v13 = *(a1 + 8);
  v14 = *(v13 + 24);
  if (v14 < 0)
  {
    v17 = *(a3 + 32);
    v15 = **(a3 + 24);
    v20 = *(*(a3 + 24) + 8) == v15;
    v53 = (*(*(a3 + 24) + 8) - v15) >> 2;
    v54 = v15;
    v18 = *(a3 + 40);
    v16 = *&v18 * v17;
    if (v20)
    {
      v16 = 0;
    }

    v19 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v53 = 0;
    v54 = 0;
    v17 = *(a3 + 32);
    v18 = *(a3 + 40);
    v19 = *(v13 + 24);
  }

  v21 = v46;
  v57 = v14;
  v52[0] = v17;
  *&v52[1] = v18;
  v51[0] = v18;
  *&v51[1] = 1;
  v55 = v15;
  v56 = v16;
  if (v19 == -1)
  {
    v59.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v59.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v47, 1uLL);
    v27 = **(a3 + 24);
    v28 = *(*(a3 + 24) + 8);
    v59.__ptr_ = 0;
    v60.__m_.__sig = 850045863;
    v29 = 0.0;
    memset(v60.__m_.__opaque, 0, sizeof(v60.__m_.__opaque));
    v30 = v28 - v27;
    if (v30)
    {
      v31 = 0;
      v32 = v30 >> 2;
      do
      {
        v58[0] = 2;
        v58[1] = v52;
        v33 = xgboost::linalg::UnravelIndex<2ul>(v31, v58, *&v29);
        if (v10)
        {
          if (v10 <= v33)
          {
            goto LABEL_41;
          }

          v35 = *(v44 + 4 * v33);
        }

        else
        {
          v35 = 1.0;
        }

        v36 = v34 + v33 * v11;
        if (v36 >= v45)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v31)
        {
LABEL_41:
          std::terminate();
        }

        v37 = (*(v9 + 4 * v36) - *(v7 + 4 * v31)) / v21;
        *__p = *__p + (v35 * ((v21 * v21) * (sqrtf((v37 * v37) + 1.0) + -1.0)));
        v29 = *v47 + v35;
        *v47 = v29;
        ++v31;
      }

      while (v32 != v31);
    }

    dmlc::OMPException::Rethrow(&v59);
    std::mutex::~mutex(&v60);
    std::exception_ptr::~exception_ptr(&v59);
    v24 = __p;
    v25 = 0.0;
    v26 = 0.0;
    if (__p != v50)
    {
      v38 = __p;
      do
      {
        v39 = *v38++;
        v26 = v26 + v39;
      }

      while (v38 != v50);
    }

    if (v47 != v48)
    {
      v25 = 0.0;
      v40 = v47;
      do
      {
        v41 = *v40++;
        v25 = v25 + v41;
      }

      while (v40 != v48);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
      v24 = __p;
    }

    if (v24)
    {
      v50 = v24;
      operator delete(v24);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v59);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v23 = dmlc::LogMessageFatal::GetEntry(&v59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v59);
    v25 = 0.0;
    v26 = 0.0;
  }

  v59.__ptr_ = *&v26;
  *&v60.__m_.__sig = v25;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v24);
    (*(*Engine + 8))(Engine, &v59, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void sub_274D35260()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D35294);
}

void sub_274D352B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v33 = a32;
  a32 = 0;
  if (v33)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a32, v33);
  }

  _Unwind_Resume(a1);
}

void sub_274D35310(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_6,std::allocator<xgboost::metric::$_6>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalPoissonNegLogLik>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v50[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v50[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v50, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v50[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v50[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v50, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v45 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v45) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v45 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v52 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v53 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v45 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v52 = 0;
    v53 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v56 = v7;
  v51[0] = v15;
  v51[1] = v16;
  v50[0] = v16;
  v50[1] = 1;
  v54 = v13;
  v55 = v14;
  if (v17 == -1)
  {
    v58.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v44 = a4;
    v58.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v46, 1uLL);
    v25 = **(a3 + 24);
    v26 = *(*(a3 + 24) + 8);
    v58.__ptr_ = 0;
    v59.__m_.__sig = 850045863;
    v27 = 0.0;
    memset(v59.__m_.__opaque, 0, sizeof(v59.__m_.__opaque));
    v28 = v26 - v25;
    if (v28)
    {
      v29 = 0;
      v30 = v28 >> 2;
      do
      {
        v57[0] = 2;
        v57[1] = v51;
        v31 = xgboost::linalg::UnravelIndex<2ul>(v29, v57, *&v27);
        if (v12)
        {
          if (v12 <= v31)
          {
            goto LABEL_43;
          }

          v33 = *(v45 + 4 * v31);
        }

        else
        {
          v33 = 1.0;
        }

        v34 = v32 + v31 * v16;
        if (v34 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v29)
        {
LABEL_43:
          std::terminate();
        }

        v35 = *(v10 + 4 * v34);
        if (*(v9 + 4 * v29) >= 1.0e-16)
        {
          v36 = *(v9 + 4 * v29);
        }

        else
        {
          v36 = 1.0e-16;
        }

        v37 = lgammaf(v35 + 1.0) + v36;
        *__p = *__p + (v33 * (v37 - (logf(v36) * v35)));
        v27 = *v46 + v33;
        *v46 = v27;
        ++v29;
      }

      while (v30 != v29);
    }

    dmlc::OMPException::Rethrow(&v58);
    std::mutex::~mutex(&v59);
    std::exception_ptr::~exception_ptr(&v58);
    v22 = __p;
    v23 = 0.0;
    v24 = 0.0;
    a4 = v44;
    if (__p != v49)
    {
      v38 = __p;
      do
      {
        v39 = *v38++;
        v24 = v24 + v39;
      }

      while (v38 != v49);
    }

    if (v46 != v47)
    {
      v23 = 0.0;
      v40 = v46;
      do
      {
        v41 = *v40++;
        v23 = v23 + v41;
      }

      while (v40 != v47);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
      v22 = __p;
    }

    if (v22)
    {
      v49 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v58);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v58);
    v23 = 0.0;
    v24 = 0.0;
  }

  v58.__ptr_ = *&v24;
  *&v59.__m_.__sig = v23;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22);
    (*(*Engine + 8))(Engine, &v58, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void sub_274D35A74()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D35AA8);
}

void sub_274D35AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D35B14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_7,std::allocator<xgboost::metric::$_7>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double xgboost::metric::EvalEWiseBase<xgboost::metric::EvalGammaDeviance>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v52[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v52[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v52, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v52[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v52[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v52, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v47 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v47) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v47 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v54 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v55 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v47 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v54 = 0;
    v55 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v58 = v7;
  v53[0] = v15;
  v53[1] = v16;
  v52[0] = v16;
  v52[1] = 1;
  v56 = v13;
  v57 = v14;
  if (v17 == -1)
  {
    v60.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v46 = a4;
    v60.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v48, 1uLL);
    v25 = **(a3 + 24);
    v26 = *(*(a3 + 24) + 8);
    v60.__ptr_ = 0;
    v61.__m_.__sig = 850045863;
    v27 = 0.0;
    memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
    v28 = v26 - v25;
    if (v28)
    {
      v29 = 0;
      v30 = v28 >> 2;
      do
      {
        v59[0] = 2;
        v59[1] = v53;
        v31 = xgboost::linalg::UnravelIndex<2ul>(v29, v59, *&v27);
        if (v12)
        {
          if (v12 <= v31)
          {
            goto LABEL_42;
          }

          v33 = *(v47 + 4 * v31);
        }

        else
        {
          v33 = 1.0;
        }

        v34 = v32 + v31 * v16;
        if (v34 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v29)
        {
LABEL_42:
          std::terminate();
        }

        v35 = *(v9 + 4 * v29) + 0.000001;
        v36 = *(v10 + 4 * v34) + 0.000001;
        v37 = logf(v35 / v36);
        *__p = *__p + (v33 * (((v36 / v35) + v37) + -1.0));
        v27 = *v48 + v33;
        *v48 = v27;
        ++v29;
      }

      while (v30 != v29);
    }

    dmlc::OMPException::Rethrow(&v60);
    std::mutex::~mutex(&v61);
    std::exception_ptr::~exception_ptr(&v60);
    v22 = __p;
    v23 = 0.0;
    v24 = 0.0;
    a4 = v46;
    if (__p != v51)
    {
      v38 = __p;
      do
      {
        v39 = *v38++;
        v24 = v24 + v39;
      }

      while (v38 != v51);
    }

    if (v48 != v49)
    {
      v23 = 0.0;
      v40 = v48;
      do
      {
        v41 = *v40++;
        v23 = v23 + v41;
      }

      while (v40 != v49);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
      v22 = __p;
    }

    if (v22)
    {
      v51 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v60);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v60);
    v23 = 0.0;
    v24 = 0.0;
  }

  v60.__ptr_ = *&v24;
  *&v61.__m_.__sig = v23;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22);
    (*(*Engine + 8))(Engine, &v60, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
    v24 = *&v60.__ptr_;
    v23 = *&v61.__m_.__sig;
  }

  v43 = 0.000000999999997;
  if (v23 > 0.0)
  {
    v43 = v23;
  }

  v44 = *MEMORY[0x277D85DE8];
  return (v24 + v24) / v43;
}

void sub_274D36280()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D362B4);
}

void sub_274D362CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D36320(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_8,std::allocator<xgboost::metric::$_8>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalGammaNLogLik>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v51[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v51[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v51, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v51[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v51[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v51, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v46 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v46) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v46 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v53 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v54 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v46 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v53 = 0;
    v54 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v57 = v7;
  v52[0] = v15;
  v52[1] = v16;
  v51[0] = v16;
  v51[1] = 1;
  v55 = v13;
  v56 = v14;
  if (v17 == -1)
  {
    v59.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v45 = a4;
    v59.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v47, 1uLL);
    v25 = **(a3 + 24);
    v26 = *(*(a3 + 24) + 8);
    v59.__ptr_ = 0;
    v60.__m_.__sig = 850045863;
    v27 = 0.0;
    memset(v60.__m_.__opaque, 0, sizeof(v60.__m_.__opaque));
    v28 = v26 - v25;
    if (v28)
    {
      v29 = 0;
      v30 = v28 >> 2;
      do
      {
        v58[0] = 2;
        v58[1] = v52;
        v31 = xgboost::linalg::UnravelIndex<2ul>(v29, v58, *&v27);
        if (v12)
        {
          if (v12 <= v31)
          {
            goto LABEL_42;
          }

          v33 = *(v46 + 4 * v31);
        }

        else
        {
          v33 = 1.0;
        }

        v34 = v32 + v31 * v16;
        if (v34 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v29)
        {
LABEL_42:
          std::terminate();
        }

        v35 = *(v10 + 4 * v34);
        v36 = *(v9 + 4 * v29);
        if (v36 < 0.000001)
        {
          v36 = 0.000001;
        }

        v37 = -1.0 / v36;
        v38 = logf(-(-1.0 / v36));
        *__p = *__p - (v33 * ((v38 + (v35 * v37)) + 0.0));
        v27 = *v47 + v33;
        *v47 = v27;
        ++v29;
      }

      while (v30 != v29);
    }

    dmlc::OMPException::Rethrow(&v59);
    std::mutex::~mutex(&v60);
    std::exception_ptr::~exception_ptr(&v59);
    v22 = __p;
    v23 = 0.0;
    v24 = 0.0;
    a4 = v45;
    if (__p != v50)
    {
      v39 = __p;
      do
      {
        v40 = *v39++;
        v24 = v24 + v40;
      }

      while (v39 != v50);
    }

    if (v47 != v48)
    {
      v23 = 0.0;
      v41 = v47;
      do
      {
        v42 = *v41++;
        v23 = v23 + v42;
      }

      while (v41 != v48);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
      v22 = __p;
    }

    if (v22)
    {
      v50 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v59);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v59);
    v23 = 0.0;
    v24 = 0.0;
  }

  v59.__ptr_ = *&v24;
  *&v60.__m_.__sig = v23;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22);
    (*(*Engine + 8))(Engine, &v59, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void sub_274D36A84()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D36AB8);
}

void sub_274D36AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D36B24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_9,std::allocator<xgboost::metric::$_9>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalError>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v49[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v49[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v49, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v49[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v49[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v49, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v19 = *(a3 + 24);
    v10 = *v19;
    v11 = (v19[1] - *v19) >> 2;
    v17 = *(a3 + 40);
    if (v7 == -1)
    {
      v44 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v44) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v44 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a1 + 16);
    v16 = *(a3 + 32);
    v13 = **(a3 + 24);
    v20 = *(*(a3 + 24) + 8) == v13;
    v51 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v52 = v13;
    v14 = v17 * v16;
    if (v20)
    {
      v14 = 0;
    }

    v18 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v44 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *(a1 + 16);
    v51 = 0;
    v52 = 0;
    v16 = *(a3 + 32);
    v17 = *(a3 + 40);
    v18 = *(v6 + 24);
  }

  v55 = v7;
  v50[0] = v16;
  v50[1] = v17;
  v49[0] = v17;
  v49[1] = 1;
  v53 = v13;
  v54 = v14;
  if (v18 == -1)
  {
    v57.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v43 = a4;
    v57.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v45, 1uLL);
    v26 = **(a3 + 24);
    v27 = *(*(a3 + 24) + 8);
    v57.__ptr_ = 0;
    v58.__m_.__sig = 850045863;
    v28 = 0.0;
    memset(v58.__m_.__opaque, 0, sizeof(v58.__m_.__opaque));
    v29 = v27 - v26;
    if (v29)
    {
      v30 = 0;
      v31 = v29 >> 2;
      do
      {
        v56[0] = 2;
        v56[1] = v50;
        v32 = xgboost::linalg::UnravelIndex<2ul>(v30, v56, *&v28);
        if (v12)
        {
          if (v12 <= v32)
          {
            goto LABEL_42;
          }

          v34 = *(v44 + 4 * v32);
        }

        else
        {
          v34 = 1.0;
        }

        v35 = v33 + v32 * v17;
        if (v35 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v30)
        {
LABEL_42:
          std::terminate();
        }

        v36 = *(v10 + 4 * v35);
        if (v15 < *(v9 + 4 * v30))
        {
          v36 = 1.0 - v36;
        }

        *__p = *__p + (v34 * v36);
        v28 = *v45 + v34;
        *v45 = v28;
        ++v30;
      }

      while (v31 != v30);
    }

    dmlc::OMPException::Rethrow(&v57);
    std::mutex::~mutex(&v58);
    std::exception_ptr::~exception_ptr(&v57);
    v23 = __p;
    v24 = 0.0;
    v25 = 0.0;
    a4 = v43;
    if (__p != v48)
    {
      v37 = __p;
      do
      {
        v38 = *v37++;
        v25 = v25 + v38;
      }

      while (v37 != v48);
    }

    if (v45 != v46)
    {
      v24 = 0.0;
      v39 = v45;
      do
      {
        v40 = *v39++;
        v24 = v24 + v40;
      }

      while (v39 != v46);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
      v23 = __p;
    }

    if (v23)
    {
      v48 = v23;
      operator delete(v23);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v57);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v22 = dmlc::LogMessageFatal::GetEntry(&v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v57);
    v24 = 0.0;
    v25 = 0.0;
  }

  v57.__ptr_ = *&v25;
  *&v58.__m_.__sig = v24;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v23);
    (*(*Engine + 8))(Engine, &v57, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_274D373C8()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D373FCLL);
}

void sub_274D37414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D37468(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const char *xgboost::metric::EvalEWiseBase<xgboost::metric::EvalError>::Name(uint64_t a1)
{
  if ((atomic_load_explicit(&_MergedGlobals_6, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_6))
  {
    unk_280AF6320 = 0;
    xmmword_280AF6310 = 0uLL;
    __cxa_atexit(MEMORY[0x277D82640], &xmmword_280AF6310, &dword_274CA4000);
    __cxa_guard_release(&_MergedGlobals_6);
  }

  if (*(a1 + 20) != 1)
  {
    return "error";
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "error", 5);
  if (*(a1 + 16) != 0.5)
  {
    LOBYTE(v5) = 64;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, &v5, 1);
    v2 = *(a1 + 16);
    std::ostream::operator<<();
  }

  std::stringbuf::str();
  if (byte_280AF6327 < 0)
  {
    operator delete(xmmword_280AF6310);
  }

  xmmword_280AF6310 = v5;
  unk_280AF6320 = v6;
  if (v6 >= 0)
  {
    v3 = &xmmword_280AF6310;
  }

  else
  {
    v3 = v5;
  }

  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  MEMORY[0x277C690D0](&v11);
  return v3;
}

void sub_274D376C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_274D37890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a12);
  MEMORY[0x277C69180](v13, v12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_10,std::allocator<xgboost::metric::$_10>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalTweedieNLogLik>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v54[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v54[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v54, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v54[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v54[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v54, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v19 = *(a3 + 24);
    v10 = *v19;
    v11 = (v19[1] - *v19) >> 2;
    v17 = *(a3 + 40);
    if (v7 == -1)
    {
      v49 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v49) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v49 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a1 + 16);
    v16 = *(a3 + 32);
    v13 = **(a3 + 24);
    v20 = *(*(a3 + 24) + 8) == v13;
    v56 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v57 = v13;
    v14 = v17 * v16;
    if (v20)
    {
      v14 = 0;
    }

    v18 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v49 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *(a1 + 16);
    v56 = 0;
    v57 = 0;
    v16 = *(a3 + 32);
    v17 = *(a3 + 40);
    v18 = *(v6 + 24);
  }

  v60 = v7;
  v55[0] = v16;
  v55[1] = v17;
  v54[0] = v17;
  v54[1] = 1;
  v58 = v13;
  v59 = v14;
  if (v18 == -1)
  {
    v62.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v48 = a4;
    v62.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v50, 1uLL);
    v26 = **(a3 + 24);
    v27 = *(*(a3 + 24) + 8);
    v62.__ptr_ = 0;
    v63.__m_.__sig = 850045863;
    HIDWORD(v28) = 0;
    memset(v63.__m_.__opaque, 0, sizeof(v63.__m_.__opaque));
    v29 = v27 - v26;
    if (v29)
    {
      v30 = 0;
      v31 = v29 >> 2;
      v32 = 1.0 - v15;
      LODWORD(v28) = 2.0;
      v33 = 2.0 - v15;
      do
      {
        v61[0] = 2;
        v61[1] = v55;
        v34 = xgboost::linalg::UnravelIndex<2ul>(v30, v61, *&v28);
        if (v12)
        {
          if (v12 <= v34)
          {
            goto LABEL_40;
          }

          v36 = *(v49 + 4 * v34);
        }

        else
        {
          v36 = 1.0;
        }

        v37 = v35 + v34 * v17;
        if (v37 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v30)
        {
LABEL_40:
          std::terminate();
        }

        v38 = *(v10 + 4 * v37);
        v39 = logf(*(v9 + 4 * v30));
        v40 = expf(v32 * v39);
        v41 = expf(v33 * v39);
        *__p = *__p + (v36 * ((v41 / v33) - ((v38 * v40) / v32)));
        v28 = *v50 + v36;
        *v50 = v28;
        ++v30;
      }

      while (v31 != v30);
    }

    dmlc::OMPException::Rethrow(&v62);
    std::mutex::~mutex(&v63);
    std::exception_ptr::~exception_ptr(&v62);
    v23 = __p;
    v24 = 0.0;
    v25 = 0.0;
    a4 = v48;
    if (__p != v53)
    {
      v42 = __p;
      do
      {
        v43 = *v42++;
        v25 = v25 + v43;
      }

      while (v42 != v53);
    }

    if (v50 != v51)
    {
      v24 = 0.0;
      v44 = v50;
      do
      {
        v45 = *v44++;
        v24 = v24 + v45;
      }

      while (v44 != v51);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
      v23 = __p;
    }

    if (v23)
    {
      v53 = v23;
      operator delete(v23);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v62);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v22 = dmlc::LogMessageFatal::GetEntry(&v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v62);
    v24 = 0.0;
    v25 = 0.0;
  }

  v62.__ptr_ = *&v25;
  *&v63.__m_.__sig = v24;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v23);
    (*(*Engine + 8))(Engine, &v62, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_274D37F70()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D37FA4);
}

void sub_274D37FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D38010(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__int128 *xgboost::metric::EvalEWiseBase<xgboost::metric::EvalTweedieNLogLik>::Name(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280AF6308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6308))
  {
    unk_280AF6338 = 0;
    xmmword_280AF6328 = 0uLL;
    __cxa_atexit(MEMORY[0x277D82640], &xmmword_280AF6328, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6308);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "tweedie-nloglik@", 16);
  v2 = *(a1 + 16);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (byte_280AF633F < 0)
  {
    operator delete(xmmword_280AF6328);
  }

  v3 = &xmmword_280AF6328;
  xmmword_280AF6328 = v5;
  unk_280AF6338 = v6;
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  if (v6 < 0)
  {
    v3 = v5;
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  MEMORY[0x277C690D0](&v11);
  return v3;
}

void sub_274D38234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep xgboost::common::Monitor::Start()
{
  result = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst();
  if (*(result + 4) >= 3)
  {
    v3 = std::__tree<std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::common::Monitor::Statistics>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2 + 24, v1);
    result = std::chrono::steady_clock::now().__d_.__rep_;
    *(v3 + 56) = result;
  }

  return result;
}

int64x2_t xgboost::common::Monitor::Stop()
{
  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst() + 4) >= 3)
  {
    v3 = std::__tree<std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::common::Monitor::Statistics>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v1 + 24, v0);
    v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v5 = vdupq_n_s64(1uLL);
    v5.i64[0] = v4.__d_.__rep_ - v3[3].i64[1];
    result = vaddq_s64(v5, v3[4]);
    v3[4] = result;
  }

  return result;
}

void xgboost::common::Monitor::PrintStatistics(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v4 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst();
    v5 = MEMORY[0x277D82680];
    do
    {
      if (v3[7])
      {
        xgboost::BaseLogger::BaseLogger(v22);
        v23 = 4;
        v6 = *(v3 + 55);
        if (v6 >= 0)
        {
          v7 = (v3 + 4);
        }

        else
        {
          v7 = v3[4];
        }

        if (v6 >= 0)
        {
          v8 = *(v3 + 55);
        }

        else
        {
          v8 = v3[5];
        }

        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v7, v8);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": ", 2);
        v11 = MEMORY[0x277C68E00](v10, v3[8] / 1000000.0);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "s, ", 3);
        v13 = MEMORY[0x277C68E50](v12, v3[7]);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " calls @ ", 9);
        v15 = MEMORY[0x277C68E50](v14, v3[8]);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "us", 2);
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v17 = std::locale::use_facet(&v21, v5);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(&v21);
        std::ostream::put();
        std::ostream::flush();
        xgboost::ConsoleLogger::~ConsoleLogger(v22);
      }

      else if (*(v4 + 4) >= 1)
      {
        operator new();
      }

      v18 = v3[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v3[2];
          v20 = *v19 == v3;
          v3 = v19;
        }

        while (!v20);
      }

      v3 = v19;
    }

    while (v19 != v2);
  }
}

void sub_274D385F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::Monitor::Print(xgboost::common::Monitor *this)
{
  v2 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst();
  if (v2[1] >= 3)
  {
    Engine = rabit::engine::GetEngine(v2);
    v15 = (*(*Engine + 64))(Engine);
    v19[0] = 0;
    v19[1] = 0;
    v18 = v19;
    v4 = *(this + 3);
    if (v4 != (this + 32))
    {
      v6 = v4[8];
      v5 = v4[9];
      operator new();
    }

    xgboost::BaseLogger::BaseLogger(v16);
    v17 = 4;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "======== Monitor (", 18);
    v8 = MEMORY[0x277C68E20](v7, v15);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "): ", 3);
    v10 = *(this + 23);
    if (v10 >= 0)
    {
      v11 = this;
    }

    else
    {
      v11 = *this;
    }

    if (v10 >= 0)
    {
      v12 = *(this + 23);
    }

    else
    {
      v12 = *(this + 1);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ========", 9);
    xgboost::ConsoleLogger::~ConsoleLogger(v16);
    xgboost::common::Monitor::PrintStatistics(v14, &v18);
    std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(v19[0]);
  }
}

uint64_t std::__tree<std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::common::Monitor::Statistics>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::common::Monitor::Statistics>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_274D38A20(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN7xgboost6common7Monitor10StatisticsEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSG_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSP_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[1].__r_.__value_.__l.__data_ = 0u;
  this[1].__r_.__value_.__l.__data_ = std::chrono::steady_clock::now().__d_.__rep_;
  this[1].__r_.__value_.__r.__words[2] = 0;
  return this;
}

uint64_t rabit::engine::Init(rabit::engine *this, int a2, char **a3)
{
  {
    v6 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
    _tlv_atexit(rabit::engine::ThreadLocalEntry::~ThreadLocalEntry, v6);
  }

  v4 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
  if (!*v4)
  {
    *(v4 + 8) = 1;
    operator new();
  }

  return 1;
}

uint64_t rabit::engine::Finalize(rabit::engine *this)
{
  {
    v5 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
    _tlv_atexit(rabit::engine::ThreadLocalEntry::~ThreadLocalEntry, v5);
  }

  v2 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
  if (*v2)
  {
    result = (*(**v2 + 128))(*v2);
    if (!result)
    {
      return result;
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 112))(v4);
    }

    v2[8] = 0;
  }

  return 1;
}

void *rabit::engine::GetEngine(rabit::engine *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_7))
  {
    rabit::engine::AllreduceBase::AllreduceBase(&unk_280AF6348);
    __cxa_atexit(rabit::engine::AllreduceBase::~AllreduceBase, &unk_280AF6348, &dword_274CA4000);
    __cxa_guard_release(&_MergedGlobals_7);
  }

  {
    v5 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
    _tlv_atexit(rabit::engine::ThreadLocalEntry::~ThreadLocalEntry, v5);
  }

  v3 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
  result = *v3;
  if (!*v3)
  {
    rabit::utils::Check((*(v3 + 8) & 1) == 0, "the rabit has not been initialized", v2);
    return &unk_280AF6348;
  }

  return result;
}

uint64_t rabit::utils::Check(uint64_t this, uint64_t a2, const char *a3, ...)
{
  if ((this & 1) == 0)
  {
    operator new();
  }

  return this;
}

void sub_274D38F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a12);
  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::Allgather(rabit::engine *this, void *a2)
{
  v2 = **rabit::engine::GetEngine(this);

  return v2();
}

uint64_t rabit::engine::Allreduce_(rabit::engine *a1)
{
  v1 = *(*rabit::engine::GetEngine(a1) + 8);

  return v1();
}

void *rabit::engine::ReduceHandle::ReduceHandle(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

uint64_t rabit::engine::ReduceHandle::Init(uint64_t a1, uint64_t a2, const char *a3)
{
  result = rabit::utils::Assert(*(a1 + 8) == 0, "cannot initialize reduce handle twice", a3);
  *(a1 + 8) = a2;
  return result;
}

uint64_t rabit::engine::ReduceHandle::Allreduce(rabit::engine::ReduceHandle *this, void *a2, const char *a3, unint64_t a4, void (*a5)(void *), void *a6)
{
  v7 = rabit::utils::Assert(*(this + 1) != 0, "must initialize handle to call AllReduce", a3);
  Engine = rabit::engine::GetEngine(v7);
  v9 = *(this + 1);
  v10 = *(*Engine + 8);

  return v10();
}

void rabit::engine::AllreduceBase::~AllreduceBase(void **this)
{
  *this = &unk_2883E7B40;
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  v3 = this + 13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  v3 = this + 4;
  std::vector<rabit::engine::AllreduceBase::LinkRecord>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  rabit::engine::AllreduceBase::~AllreduceBase(this);

  JUMPOUT(0x277C69180);
}

void std::vector<rabit::engine::AllreduceBase::LinkRecord>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<rabit::engine::AllreduceBase::LinkRecord>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<rabit::engine::AllreduceBase::LinkRecord>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void rabit::engine::ThreadLocalEntry::~ThreadLocalEntry(rabit::engine::ThreadLocalEntry *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 112))(v2);
  }
}

uint64_t dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SparsePage>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::SparsePage> * ()(void)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::CSCPage>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::CSCPage> * ()(void)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::SortedCSCPage> * ()(void)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

__int128 *dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::EllpackPage>>::Get()
{
  if ((atomic_load_explicit(&qword_280AF6490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6490))
  {
    xmmword_280AF6638 = 0u;
    unk_280AF6648 = 0u;
    xmmword_280AF6658 = 0u;
    qword_280AF6668 = &qword_280AF6670;
    qword_280AF6670 = 0;
    qword_280AF6678 = 0;
    unk_280AF6680 = 850045863;
    qword_280AF66B8 = 0;
    xmmword_280AF6688 = 0u;
    unk_280AF6698 = 0u;
    xmmword_280AF66A8 = 0u;
    __cxa_atexit(dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::EllpackPage>>::~Registry, &xmmword_280AF6638, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6490);
  }

  return &xmmword_280AF6638;
}

uint64_t dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::EllpackPage>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        v6 = *(v5 + 96);
        if (v6 == v5 + 72)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v10 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v10);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::GHistIndexMatrix> * ()(void)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void xgboost::DMatrix::Create<void *,void *,void ()(void *),int ()(void *)>()
{
  operator new();
}

{
  operator new();
}

void sub_274D399D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  xgboost::DMatrix::~DMatrix(v13);
  MEMORY[0x277C69180]();
  _Unwind_Resume(a1);
}

void xgboost::DMatrix::Create<xgboost::data::DenseAdapter>()
{
  operator new();
}

{
    ;
  }
}

void xgboost::DMatrix::Create<xgboost::data::CSCAdapter>()
{
  operator new();
}

{
    ;
  }
}

void xgboost::DMatrix::Create<xgboost::data::FileAdapter>()
{
  operator new();
}

{
    ;
  }
}

unint64_t xgboost::SparsePage::Push<xgboost::data::DenseAdapterBatch>(uint64_t **a1, void *a2, int a3, float a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[1];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) >> 3) - 1;
  }

  v53 = v8;
  v50 = v5;
  memset(v51, 0, sizeof(v51));
  v52 = v8;
  v9 = a2[1];
  if (v9)
  {
    v11 = a2;
    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitBudget(&v50, a2[1], a3);
    v57 = 0;
    v56.__m_.__sig = 0;
    *v56.__m_.__opaque = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v57, &v58, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v48, a3);
    if (__p)
    {
      v56.__m_.__sig = __p;
      operator delete(__p);
    }

    __p = 0;
    v56.__m_.__sig = 850045863;
    memset(v56.__m_.__opaque, 0, sizeof(v56.__m_.__opaque));
    v47 = v9 / a3;
    v44 = a3;
    v45 = v9;
    if (v9 >= a3)
    {
      v15 = 0;
      v16 = 0;
      v13 = 1;
      v17 = *v48;
      v18 = fabsf(a4);
      v46 = v11;
      do
      {
        v19 = v11[2];
        if (v19)
        {
          v20 = (*v11 + v19 * v15);
          v21 = 1;
          do
          {
            v22 = *v20;
            if (fabsf(*v20) == INFINITY && v18 != INFINITY)
            {
              v13 = 0;
            }

            v57 = v16 - a1[2];
            if (v57 < v53)
            {
              dmlc::LogCheckFormat<unsigned long,unsigned long>(&v57, &v53);
            }

            v24 = *v17;
            if (*v17 <= v21)
            {
              v24 = v21;
            }

            *v17 = v24;
            if (v22 != a4)
            {
              xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v51[0], v52, v57);
            }

            ++v21;
            ++v20;
            --v19;
          }

          while (v19);
        }

        ++v16;
        v15 += 4;
        v11 = v46;
      }

      while (v16 != v47);
    }

    else
    {
      v13 = 1;
    }

    dmlc::OMPException::Rethrow(&__p);
    if ((v13 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(v54);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v41 = dmlc::LogMessageFatal::GetEntry(v54);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Check failed: valid", 19);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(v54);
    }

    v25 = v48;
    if (v48 == v49)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v26 = *v25;
        v25 += 3;
        v27 = *v26;
        if (v14 <= *v26)
        {
          v14 = v27;
        }
      }

      while (v25 != v49);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitStorage(&v50);
    if (v45 >= v44)
    {
      v28 = 0;
      v29 = 0;
      do
      {
        v30 = v11[2];
        if (v30)
        {
          v31 = 0;
          v32 = *v11 + v30 * v28;
          do
          {
            v33 = *(v32 + 4 * v31);
            if (v33 != a4)
            {
              v34 = v29 - (a1[2] + v52);
              v35 = *(&v50 + 1);
              v36 = *(*v51[0] + 8 * v34);
              *(*v51[0] + 8 * v34) = v36 + 1;
              v37 = *v35 + 8 * v36;
              *v37 = v31;
              *(v37 + 4) = v33;
            }

            ++v31;
          }

          while (v30 != v31);
        }

        ++v29;
        v28 += 4;
      }

      while (v29 != v47);
    }

    dmlc::OMPException::Rethrow(&__p);
    std::mutex::~mutex(&v56);
    std::exception_ptr::~exception_ptr(&__p);
    __p = &v48;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v14 = 0;
  }

  __p = v51;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v38 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_274D3A3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::exception_ptr a25, uint64_t a26, std::exception_ptr a27, uint64_t a28)
{
  std::mutex::~mutex(&a28);
  std::exception_ptr::~exception_ptr(&a27);
  a27.__ptr_ = &a14;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a27);
  a27.__ptr_ = v28;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitBudget(void *a1, unint64_t a2, int a3)
{
  v6 = a3;
  std::vector<std::vector<unsigned long>>::resize((a1 + 2), a3);
  v7 = a2 / v6;
  a1[6] = a2 / v6;
  v8 = a1[2];
  if (a1[3] - v8 != 24)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = a1[6];
      v12 = 0;
      std::vector<unsigned long>::resize((v8 + v9), v11, &v12);
      ++v10;
      v8 = a1[2];
      v9 += 24;
    }

    while (v10 < -1 - 0x5555555555555555 * ((a1[3] - v8) >> 3));
    v7 = a1[6];
  }

  v12 = 0;
  std::vector<unsigned long>::resize((v8 + 24 * (a3 - 1)), a2 - v7 * (a3 - 1), &v12);
}

void xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitStorage(uint64_t **a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = v2 - v3;
  if (v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = v3 + 8;
    do
    {
      v5 += (*v7 - *(v7 - 1)) >> 3;
      v7 += 3;
      --v6;
    }

    while (v6);
    v8 = v5 + 1;
  }

  v9 = *a1;
  v10 = (*a1)[1];
  if (**a1 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 - 8);
  }

  v25 = v11;
  std::vector<unsigned long>::resize(v9, a1[5] + v8, &v25);
  v12 = a1[2];
  v13 = a1[3];
  v14 = v13 - v12;
  if (v13 != v12)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
    v18 = a1[5] + 1;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    do
    {
      v19 = *&v12[24 * v15];
      v20 = *&v12[24 * v15 + 8] - v19;
      if (v20)
      {
        v21 = v20 >> 3;
        v22 = **a1;
        v23 = ((*a1)[1] - v22) >> 3;
        if (v21 <= 1)
        {
          v21 = 1;
        }

        do
        {
          v24 = *v19;
          *v19 = v25 + v16;
          v16 += v24;
          if (v18 < v23)
          {
            *(v22 + 8 * v18++) += v16;
          }

          ++v19;
          --v21;
        }

        while (v21);
      }

      ++v15;
    }

    while (v15 != v17);
  }

  std::vector<xgboost::Entry>::resize(a1[1], *((*a1)[1] - 8));
}

unint64_t xgboost::SparsePage::Push<xgboost::data::ArrayAdapterBatch>(uint64_t **a1, uint64_t a2, int a3, float a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[1];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) >> 3) - 1;
  }

  v60 = v8;
  v57 = v5;
  memset(v58, 0, sizeof(v58));
  v59 = v8;
  v9 = *(a2 + 32);
  if (!v9)
  {
    goto LABEL_11;
  }

  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v65 = *(a2 + 32);
  v64 = v15;
  v16 = *(a2 + 48);
  v66 = v16;
  v67 = *(a2 + 64);
  __p = v13;
  v63 = v14;
  v68 = v9 - 1;
  if (!*(&v65 + 1) || (p_p = &__p, v73 = v9 - 1, *&v74 = *(&v65 + 1) - 1, xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long const&,unsigned long &>(unsigned long const&,unsigned long &)::{lambda(float const*)#1}>(&__p, &p_p, *&v16), (v9 = *(a2 + 32)) != 0))
  {
    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitBudget(&v57, v9, a3);
    p_p = 0;
    v63 = 0;
    *&v64 = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &p_p, &v73, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v55, a3);
    if (__p)
    {
      v63 = __p;
      operator delete(__p);
    }

    v70.__ptr_ = 0;
    v71.__m_.__sig = 850045863;
    memset(v71.__m_.__opaque, 0, sizeof(v71.__m_.__opaque));
    v54 = v9 / a3;
    v53 = a3;
    if (v9 >= a3)
    {
      v52 = v9;
      v19 = 0;
      v17 = 1;
      v20 = *v55;
      v21 = fabsf(a4);
      do
      {
        v22 = *a2;
        v23 = *(a2 + 8);
        v77 = *(a2 + 64);
        v24 = *(a2 + 32);
        v25 = *(a2 + 48);
        v75 = v24;
        v76 = v25;
        v74 = *(a2 + 16);
        p_p = v22;
        v73 = v23;
        v78 = v19;
        if (*(&v24 + 1))
        {
          v26 = 0;
          do
          {
            v27 = v78;
            v61[0] = &p_p;
            v61[1] = v78;
            v61[2] = v26;
            v28 = xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long const&,unsigned long &>(unsigned long const&,unsigned long &)::{lambda(float const*)#1}>(&p_p, v61, *&v24);
            *&v24 = fabsf(v28);
            if (*&v24 == INFINITY && v21 != INFINITY)
            {
              v17 = 0;
            }

            v61[0] = v27 - a1[2];
            if (v61[0] < v60)
            {
              dmlc::LogCheckFormat<unsigned long,unsigned long>(v61, &v60);
            }

            v30 = v26 + 1;
            v31 = *v20;
            if (*v20 <= (v26 + 1))
            {
              v31 = v26 + 1;
            }

            *v20 = v31;
            if (v28 != a4)
            {
              xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v58[0], v59, v61[0]);
            }

            ++v26;
          }

          while (v30 < *(&v75 + 1));
        }

        ++v19;
      }

      while (v19 != v54);
      v9 = v52;
    }

    else
    {
      v17 = 1;
    }

    dmlc::OMPException::Rethrow(&v70);
    if ((v17 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&__p);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v49 = dmlc::LogMessageFatal::GetEntry(&__p);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "Check failed: valid", 19);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    }

    v32 = v55;
    if (v55 == v56)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      do
      {
        v33 = *v32;
        v32 += 3;
        v34 = *v33;
        if (v18 <= *v33)
        {
          v18 = v34;
        }
      }

      while (v32 != v56);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitStorage(&v57);
    if (v9 >= v53)
    {
      v35 = 0;
      do
      {
        v36 = *a2;
        v37 = *(a2 + 8);
        v67 = *(a2 + 64);
        v38 = *(a2 + 32);
        v39 = *(a2 + 48);
        v65 = v38;
        v66 = v39;
        v64 = *(a2 + 16);
        __p = v36;
        v63 = v37;
        v68 = v35;
        if (*(&v38 + 1))
        {
          v40 = 0;
          do
          {
            v41 = v68;
            v69[0] = &__p;
            v69[1] = v68;
            v69[2] = v40;
            *&v38 = xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long const&,unsigned long &>(unsigned long const&,unsigned long &)::{lambda(float const*)#1}>(&__p, v69, *&v38);
            if (*&v38 != a4)
            {
              v42 = v41 - (a1[2] + v59);
              v43 = *(&v57 + 1);
              v44 = *(*v58[0] + 8 * v42);
              *(*v58[0] + 8 * v42) = v44 + 1;
              v45 = (*v43 + 8 * v44);
              *v45 = v40;
              v45[1] = v38;
            }

            ++v40;
          }

          while (v40 < *(&v65 + 1));
        }

        ++v35;
      }

      while (v35 != v54);
    }

    dmlc::OMPException::Rethrow(&v70);
    std::mutex::~mutex(&v71);
    std::exception_ptr::~exception_ptr(&v70);
    v70.__ptr_ = &v55;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v70);
  }

  else
  {
LABEL_11:
    v18 = 0;
  }

  v70.__ptr_ = v58;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v70);
  v46 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_274D3ACB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::exception_ptr a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::exception_ptr a43, uint64_t a44)
{
  std::mutex::~mutex(&a44);
  std::exception_ptr::~exception_ptr(&a43);
  a43.__ptr_ = &a14;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a43);
  a43.__ptr_ = a12;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

unint64_t xgboost::SparsePage::Push<xgboost::data::CSRAdapterBatch>(uint64_t **a1, void *a2, int a3, float a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[1];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) >> 3) - 1;
  }

  v58 = v8;
  v55 = v5;
  memset(v56, 0, sizeof(v56));
  v57 = v8;
  v9 = a2[3];
  if (v9)
  {
    v11 = a2;
    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitBudget(&v55, a2[3], a3);
    v62 = 0;
    v61.__m_.__sig = 0;
    *v61.__m_.__opaque = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v62, &v63, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v53, a3);
    if (__p)
    {
      v61.__m_.__sig = __p;
      operator delete(__p);
    }

    __p = 0;
    v61.__m_.__sig = 850045863;
    memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
    v52 = v9 / a3;
    v50 = a3;
    if (v9 >= a3)
    {
      v15 = 0;
      v13 = 1;
      v16 = *v53;
      v17 = fabsf(a4);
      v51 = v11;
      do
      {
        v18 = (*v11 + 8 * v15);
        v19 = *v18;
        v20 = v18[1];
        v21 = v20 - v19;
        if (v20 != v19)
        {
          v22 = (v11[1] + 4 * v19);
          v23 = (v11[2] + 4 * v19);
          do
          {
            v24 = *v23;
            v25 = fabsf(*v23) != INFINITY || v17 == INFINITY;
            v27 = *v22++;
            v26 = v27;
            if (!v25)
            {
              v13 = 0;
            }

            v62 = v15 - a1[2];
            if (v62 < v58)
            {
              dmlc::LogCheckFormat<unsigned long,unsigned long>(&v62, &v58);
            }

            if (*v16 <= (v26 + 1))
            {
              v28 = v26 + 1;
            }

            else
            {
              v28 = *v16;
            }

            *v16 = v28;
            if (v24 != a4)
            {
              xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v56[0], v57, v62);
            }

            ++v23;
            --v21;
          }

          while (v21);
        }

        ++v15;
        v11 = v51;
      }

      while (v15 != v52);
    }

    else
    {
      v13 = 1;
    }

    dmlc::OMPException::Rethrow(&__p);
    if ((v13 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(v59);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v47 = dmlc::LogMessageFatal::GetEntry(v59);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Check failed: valid", 19);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(v59);
    }

    v29 = v53;
    if (v53 == v54)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v30 = *v29;
        v29 += 3;
        v31 = *v30;
        if (v14 <= *v30)
        {
          v14 = v31;
        }
      }

      while (v29 != v54);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitStorage(&v55);
    if (v9 >= v50)
    {
      v32 = 0;
      do
      {
        v33 = (*v11 + 8 * v32);
        v34 = *v33;
        v35 = v33[1] - *v33;
        if (v35)
        {
          v36 = (v11[1] + 4 * v34);
          v37 = (v11[2] + 4 * v34);
          do
          {
            v38 = *v37;
            if (*v37 != a4)
            {
              v39 = *v36;
              v40 = v32 - (a1[2] + v57);
              v41 = *(&v55 + 1);
              v42 = *(*v56[0] + 8 * v40);
              *(*v56[0] + 8 * v40) = v42 + 1;
              v43 = (*v41 + 8 * v42);
              *v43 = v39;
              v43[1] = v38;
            }

            ++v37;
            ++v36;
            --v35;
          }

          while (v35);
        }

        ++v32;
      }

      while (v32 != v52);
    }

    dmlc::OMPException::Rethrow(&__p);
    std::mutex::~mutex(&v61);
    std::exception_ptr::~exception_ptr(&__p);
    __p = &v53;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v14 = 0;
  }

  __p = v56;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v44 = *MEMORY[0x277D85DE8];
  return v14;
}