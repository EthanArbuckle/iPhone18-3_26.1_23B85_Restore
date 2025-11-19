uint64_t std::unordered_map<sentencepiece::unigram::anonymous namespace::Hypothesis const*,sentencepiece::unigram::anonymous namespace::Hypothesis*>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sentencepiece::model::FreeList<sentencepiece::unigram::anonymous namespace::Hypothesis>::~FreeList(void *a1)
{
  *a1 = &unk_1F1CAC0E8;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1AC57D170](*v2, 0x1020C8062D53EE8);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sentencepiece::unigram::Lattice::Sample(sentencepiece::unigram::Lattice *this@<X0>, float a2@<S0>, unint64_t *a3@<X8>)
{
  if ((((*(this + 4) - *(this + 3)) >> 3) - 1) <= 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v6 = *(this + 16) + *(this + 17) * *(this + 18);
    LODWORD(__src[0]) = 0;
    std::vector<float>::vector[abi:ne200100](__p, v6);
    sentencepiece::unigram::Lattice::ForwardAlgorithm(this, a2, __src);
    v7 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *__src;
    v43 = v41;
    RandomGenerator = sentencepiece::random::GetRandomGenerator(v7);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    __src[0] = 0;
    __src[1] = 0;
    v41 = 0;
    v9 = ((*(this + 4) - *(this + 3)) >> 3) - 1;
    v10 = **(*(this + 6) + 24 * (v9 & ~(v9 >> 31)));
    v11 = *(__p[0] + *(v10 + 24));
    v39 = v10;
    do
    {
      v12 = __src[0];
      __src[1] = __src[0];
      v13 = (*(this + 9) + 24 * *(v39 + 16));
      v14 = *v13;
      v15 = v13[1];
      v16 = __src[0];
      if (*v13 != v15)
      {
        do
        {
          v17 = exp(((*(__p[0] + *(*v14 + 24)) + (a2 * *(*v14 + 32))) - v11));
          if (v12 >= v41)
          {
            v18 = __src[0];
            v19 = v12 - __src[0];
            v20 = (v12 - __src[0]) >> 2;
            v21 = v20 + 1;
            if ((v20 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v22 = v41 - __src[0];
            if ((v41 - __src[0]) >> 1 > v21)
            {
              v21 = v22 >> 1;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v23 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v21;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__src, v23);
            }

            v24 = v20;
            v25 = (4 * v20);
            v26 = &v25[-v24];
            *v25 = v17;
            v12 = v25 + 1;
            memcpy(v26, v18, v19);
            v27 = __src[0];
            __src[0] = v26;
            __src[1] = v12;
            v41 = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v12++ = v17;
          }

          __src[1] = v12;
          v14 += 8;
        }

        while (v14 != v15);
        v16 = __src[0];
      }

      std::discrete_distribution<int>::param_type::param_type[abi:ne200100]<std::__wrap_iter<float *>>(v38, v16, v12);
      v28 = *(v39 + 16);
      v29 = *(this + 9);
      v30 = *(*(v29 + 24 * v28) + 8 * std::discrete_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v38, RandomGenerator, v38));
      v39 = v30;
      v31 = ***(this + 9);
      if (v30 != v31)
      {
        v11 = *(__p[0] + *(v30 + 24));
        std::vector<sentencepiece::unigram::Lattice::Node *>::push_back[abi:ne200100](a3, &v39);
      }

      if (v38[0])
      {
        v38[1] = v38[0];
        operator delete(v38[0]);
      }
    }

    while (v30 != v31);
    v33 = *a3;
    v32 = a3[1];
    if (*a3 != v32)
    {
      v34 = (v32 - 8);
      if (v34 > v33)
      {
        v35 = v33 + 8;
        do
        {
          v36 = *(v35 - 8);
          *(v35 - 8) = *v34;
          *v34-- = v36;
          v37 = v35 >= v34;
          v35 += 8;
        }

        while (!v37);
      }
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1A8F9D59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::unigram::Model::PopulateNodes(sentencepiece::unigram::Model *this, sentencepiece::unigram::Lattice *a2)
{
  v4 = *(this + 26);
  v5 = ((*(a2 + 4) - *(a2 + 3)) >> 3) - 1;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  std::vector<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type,std::allocator<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>>::vector[abi:ne200100](&__p, *(this + 23) + 1);
  v43 = v5;
  if (v5 < 1)
  {
    goto LABEL_40;
  }

  v44 = 0;
  v8 = 0;
  v9 = v4 + -10.0;
  v42 = v6 + v7;
  do
  {
    v10 = *(*(a2 + 3) + 8 * v8);
    v11 = __p;
    v12 = (v47 - __p) >> 4;
    v13 = *(this + 5);
    v14 = (*v13 >> 10 << ((*v13 >> 6) & 8));
    if ((v42 - v10) << 32)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v10[v15];
        v18 = v14 ^ v17;
        v19 = v13[v18];
        if ((v19 & 0x800000FF) != v17)
        {
          break;
        }

        v14 = v18 ^ (v19 >> 10 << ((v19 >> 6) & 8));
        if ((v19 & 0x100) != 0)
        {
          if (v16 < v12)
          {
            v20 = &v11[16 * v16];
            *v20 = v13[v14] & 0x7FFFFFFF;
            *(v20 + 1) = v15 + 1;
          }

          ++v16;
        }

        ++v15;
      }

      while (v42 - v10 != v15);
    }

    else
    {
      v21 = *v10;
      if (*v10)
      {
        v16 = 0;
        v22 = 1;
        do
        {
          v23 = v14 ^ v21;
          v24 = v13[v23];
          if ((v24 & 0x800000FF) != v21)
          {
            break;
          }

          v14 = v23 ^ (v24 >> 10 << ((v24 >> 6) & 8));
          if ((v24 & 0x100) != 0)
          {
            if (v16 < v12)
            {
              v25 = &v11[16 * v16];
              *v25 = v13[v14] & 0x7FFFFFFF;
              *(v25 + 1) = v22;
            }

            ++v16;
          }

          v21 = v10[v22++];
        }

        while (v21);
      }

      else
      {
        v16 = 0;
      }
    }

    if (v16 >= v12)
    {
      v45 = 1;
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "(", 1);
      v28 = MEMORY[0x1AC57D010](v27, 572);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ") [", 3);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "(num_nodes) < (trie_results.size())", 35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "] ", 2);
      sentencepiece::error::Die::~Die(&v45);
    }

    if (!v16)
    {
LABEL_38:
      v41 = sentencepiece::unigram::Lattice::Insert(a2, v8, 1);
      *(v41 + 28) = *(this + 22);
      *(v41 + 32) = v9;
      goto LABEL_39;
    }

    v31 = 0;
    v32 = 0;
    do
    {
      while (1)
      {
        v33 = (__p + 16 * v31);
        v34 = (*(a2 + 3) + v44);
        v35 = -1;
        do
        {
          v36 = *v34++;
          ++v35;
        }

        while (v36 < &v10[*(v33 + 1)]);
        v37 = *v33;
        if ((*(**(this + 1) + 128))(*(this + 1), v37))
        {
          break;
        }

        v38 = v8;
        v39 = sentencepiece::unigram::Lattice::Insert(a2, v8, v35);
        *(v39 + 28) = v37;
        if ((*(**(this + 1) + 136))(*(this + 1), v37))
        {
          v40 = (*(this + 27) * v35) + -0.1;
        }

        else
        {
          v40 = (*(**(this + 1) + 96))(*(this + 1), v37);
        }

        *(v39 + 32) = v40;
        if (!v32)
        {
          v32 = *(v39 + 20) == 1;
          v8 = v38;
          break;
        }

        ++v31;
        v32 = 1;
        v8 = v38;
        if (v31 == v16)
        {
          goto LABEL_39;
        }
      }

      ++v31;
    }

    while (v31 != v16);
    if (!v32)
    {
      goto LABEL_38;
    }

LABEL_39:
    ++v8;
    v44 += 8;
  }

  while (v8 != v43);
LABEL_40:
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void sub_1A8F9D9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

sentencepiece::unigram::Model *sentencepiece::unigram::Model::Model(sentencepiece::unigram::Model *this, const sentencepiece::ModelProto *a2)
{
  v4 = sentencepiece::ModelInterface::ModelInterface(this);
  *(v4 + 13) = 0;
  *(v4 + 28) = 0;
  *v4 = &unk_1F1CABF90;
  *(v4 + 1) = a2 + 16;
  sentencepiece::ModelInterface::InitializePieces(v4);
  v5 = 0;
  *(this + 13) = 0x8000007F7FFFFFLL;
  while (v5 < (*(**(this + 1) + 16))(*(this + 1)))
  {
    if ((*(**(this + 1) + 104))(*(this + 1), v5))
    {
      v6 = (*(**(this + 1) + 96))(*(this + 1), v5);
      if (v6 >= *(this + 26))
      {
        v6 = *(this + 26);
      }

      *(this + 26) = v6;
      v7 = (*(**(this + 1) + 96))(*(this + 1), v5);
      if (*(this + 27) >= v7)
      {
        v7 = *(this + 27);
      }

      *(this + 27) = v7;
    }

    ++v5;
  }

  return this;
}

sentencepiece::ModelInterface *sentencepiece::ModelInterface::ModelInterface(sentencepiece::ModelInterface *this)
{
  *this = &unk_1F1CAB9B0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = &unk_1F1CABAD0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = &unk_1F1CABAD0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  sentencepiece::util::Status::Status(this + 12);
  return this;
}

void sub_1A8F9DC14(_Unwind_Exception *a1)
{
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v3);
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v2);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](v1, v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sentencepiece::unigram::Model::Model(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v7 = a4 > 7;
  if (a4 <= 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4 - 8;
  }

  if (v7)
  {
    v9 = (a3 + 2);
  }

  else
  {
    v9 = "";
  }

  v10 = sentencepiece::ModelInterface::ModelInterface(a1, a2, v9, v8);
  *v10 = &unk_1F1CABF90;
  *(v10 + 104) = 0;
  v11 = (v10 + 104);
  *(v10 + 108) = 0;
  v12 = (v10 + 108);
  *(v10 + 112) = 0;
  sentencepiece::util::Status::Status(&v16, (a1 + 96));
  v13 = v16;
  sentencepiece::util::Status::~Status(&v16);
  if (!v13)
  {
    sentencepiece::mmap_util::DecodePrefix<float>(a3, a4, v11, &v16);
    sentencepiece::util::Status::operator=((a1 + 96), &v16);
    sentencepiece::util::Status::~Status(&v16);
    (*(*a1 + 16))(&v16, a1);
    v14 = v16;
    sentencepiece::util::Status::~Status(&v16);
    if (!v14)
    {
      sentencepiece::mmap_util::DecodePrefix<float>(a3 + 1, a4 - 4, v12, &v16);
      sentencepiece::util::Status::operator=((a1 + 96), &v16);
      sentencepiece::util::Status::~Status(&v16);
    }
  }

  return a1;
}

void sub_1A8F9DD84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  sentencepiece::ModelInterface::~ModelInterface(v2);
  _Unwind_Resume(a1);
}

void *sentencepiece::mmap_util::DecodePrefix<float>@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
    MEMORY[0x1AC57D010](&v8, 448);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "string.size() >= sizeof(T)", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v7, a4);
    v8 = *MEMORY[0x1E69E54E8];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v9 = MEMORY[0x1E69E5548] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x1AC57D130](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
  }
}

void sentencepiece::unigram::Model::~Model(sentencepiece::unigram::Model *this)
{
  sentencepiece::ModelInterface::~ModelInterface(this);

  JUMPOUT(0x1AC57D1A0);
}

void sentencepiece::unigram::Model::Encode(sentencepiece::unigram::Model *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 28))
  {
    (*(*a1 + 16))(&v23, a1);
    if (v23)
    {
      sentencepiece::util::Status::~Status(&v23);
LABEL_4:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return;
    }

    sentencepiece::util::Status::~Status(&v23);
    if (!a3)
    {
      goto LABEL_4;
    }

    v23 = &unk_1F1CABF70;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v30 = &unk_1F1CAC0B8;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    v34 = 1024;
    sentencepiece::unigram::Lattice::SetSentence(&v23, a2, a3);
    sentencepiece::unigram::Model::PopulateNodes(a1, &v23);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    sentencepiece::unigram::Lattice::Viterbi(&v23, &v21);
    v8 = v21;
    v9 = v22;
    if (v21 != v22)
    {
      v10 = *(a4 + 8);
      do
      {
        v11 = *v8;
        v12 = *(a4 + 16);
        if (v10 >= v12)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a4, v16);
          }

          v17 = 24 * v13;
          *v17 = *v11;
          *(v17 + 16) = *(v11 + 28);
          v10 = 24 * v13 + 24;
          v18 = *(a4 + 8) - *a4;
          v19 = v17 - v18;
          memcpy((v17 - v18), *a4, v18);
          v20 = *a4;
          *a4 = v19;
          *(a4 + 8) = v10;
          *(a4 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v10 = *v11;
          *(v10 + 16) = *(v11 + 28);
          v10 += 24;
        }

        *(a4 + 8) = v10;
        ++v8;
      }

      while (v8 != v9);
      v8 = v21;
    }

    if (v8)
    {
      v22 = v8;
      operator delete(v8);
    }

    sentencepiece::unigram::Lattice::~Lattice(&v23);
  }

  else
  {

    sentencepiece::unigram::Model::EncodeOptimized(a1, a2, a3, a4);
  }
}

void sub_1A8F9E2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  sentencepiece::unigram::Lattice::~Lattice(&a13);
  _Unwind_Resume(a1);
}

void sentencepiece::unigram::Model::EncodeOptimized(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  (*(*a1 + 16))(&v52);
  if (v52)
  {
    sentencepiece::util::Status::~Status(&v52);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  sentencepiece::util::Status::~Status(&v52);
  if (!a3)
  {
    goto LABEL_3;
  }

  if (a3 << 32 != 0xFFFFFFFF00000000)
  {
    if ((((a3 << 32) + 0x100000000) >> 32) < 0x1555555555555556)
    {
      operator new();
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (a3 <= 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 104) + -10.0;
    v10 = a3 & 0x7FFFFFFF;
    v49 = -v10;
    v50 = a4;
    v51 = a3;
    v47 = v10;
    v48 = a2;
    do
    {
      v11 = *(12 * v8 + 4);
      if (a3 - v8 >= asc_1A8FDAE6D[*(a2 + v8) >> 4])
      {
        v12 = asc_1A8FDAE6D[*(a2 + v8) >> 4];
      }

      else
      {
        v12 = a3 - v8;
      }

      if (v10 <= v8)
      {
        goto LABEL_27;
      }

      v13 = 0;
      v14 = 0;
      v15 = (12 * v8 + 20);
      v16 = 1;
      do
      {
        v17 = *(a1 + 40);
        v18 = *(a2 + v8 + v16 - 1);
        LODWORD(v14) = (*(v17 + 4 * v14) >> 10 << ((*(v17 + 4 * v14) >> 6) & 8)) ^ v14 ^ v18;
        v19 = *(v17 + 4 * v14);
        if ((v19 & 0x800000FF) != v18)
        {
          break;
        }

        if ((v19 & 0x100) != 0)
        {
          v20 = *(v17 + 4 * ((v19 >> 10 << ((v19 >> 6) & 8)) ^ v14)) & 0x7FFFFFFF;
          if (((*(**(a1 + 8) + 128))(*(a1 + 8), v20) & 1) == 0)
          {
            if ((*(**(a1 + 8) + 136))(*(a1 + 8), v20))
            {
              v21 = (*(a1 + 108) * v16) + -0.1;
            }

            else
            {
              v21 = (*(**(a1 + 8) + 96))(*(a1 + 8), v20);
            }

            v22 = v21 + v11;
            if (*v15 == -1 || v22 > *(v15 - 1))
            {
              v23 = v22;
              *(v15 - 1) = v23;
              *v15 = v8;
              *(v15 - 2) = v20;
            }

            v13 |= v12 == v16;
          }
        }

        ++v16;
        v15 += 3;
      }

      while (v49 + v8 + v16 != 1);
      a3 = v51;
      v10 = v47;
      a2 = v48;
      if ((v13 & 1) == 0)
      {
LABEL_27:
        v24 = v9 + v11;
        if (*(12 * (v12 + v8) + 8) == -1 || v24 > *(12 * (v12 + v8) + 4))
        {
          *(12 * (v12 + v8) + 4) = v24;
          *(12 * (v12 + v8) + 8) = v8;
          *(12 * (v12 + v8)) = *(a1 + 88);
        }
      }

      v8 += v12;
    }

    while (v8 < a3);
    v26 = 0;
    v27 = v50;
    *v50 = 0;
    v50[1] = 0;
    v50[2] = 0;
    v28 = a3;
    do
    {
      v29 = 12 * v28;
      v30 = *(v29 + 8);
      if (a3 < v30)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v31 = v28 - v30;
      v32 = a2 + v30;
      if (a3 - v30 >= v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = a3 - v30;
      }

      v34 = v27[2];
      if (v26 >= v34)
      {
        v35 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v27) >> 3);
        v36 = v35 + 1;
        if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v37 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *v27) >> 3);
        if (2 * v37 > v36)
        {
          v36 = 2 * v37;
        }

        if (v37 >= 0x555555555555555)
        {
          v38 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(v27, v38);
        }

        v39 = 24 * v35;
        *v39 = v32;
        *(v39 + 8) = v33;
        *(v39 + 16) = *v29;
        v26 = 24 * v35 + 24;
        v40 = v50[1] - *v50;
        v41 = v39 - v40;
        memcpy((v39 - v40), *v50, v40);
        v42 = *v50;
        *v50 = v41;
        v50[1] = v26;
        v50[2] = 0;
        v27 = v50;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v26 = v32;
        *(v26 + 8) = v33;
        *(v26 + 16) = *v29;
        v26 += 24;
      }

      a3 = v51;
      v27[1] = v26;
      v28 = *(v29 + 8);
    }

    while (v28 > 0);
    v43 = *v27;
    if (*v27 == v26 || (v44 = v26 - 24, v26 - 24 <= v43))
    {
      operator delete(0);
    }

    else
    {
      do
      {
        v52 = *v43;
        v45 = v52;
        *v43 = *v44;
        *v44 = v45;
        v46 = *(v43 + 16);
        *(v43 + 16) = *(v44 + 16);
        *(v44 + 16) = v46;
        v43 += 24;
        v44 -= 24;
      }

      while (v43 < v44);
    }
  }
}

void sub_1A8F9E810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  v17 = *a13;
  if (*a13)
  {
    *(a13 + 8) = v17;
    operator delete(v17);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sentencepiece::unigram::Model::NBestEncode(sentencepiece::unigram::Model *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(__p);
  if (__p[0])
  {
    sentencepiece::util::Status::~Status(__p);
    goto LABEL_3;
  }

  sentencepiece::util::Status::~Status(__p);
  if (!a3)
  {
LABEL_3:
    memset(__p, 0, 24);
    std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(__p, 0, 0, 0);
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*>(a5, __p, &__p[4], 1uLL);
    v10 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
LABEL_5:
      operator delete(v10);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (a4 >= 1024)
  {
    v12 = 1024;
  }

  else
  {
    v12 = a4;
  }

  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (a4 > 1)
  {
    __p[0] = &unk_1F1CABF70;
    memset(&__p[1], 0, 88);
    __p[12] = &unk_1F1CAC0B8;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v37 = 1024;
    sentencepiece::unigram::Lattice::SetSentence(__p, a2, a3);
    sentencepiece::unigram::Model::PopulateNodes(a1, __p);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sentencepiece::unigram::Lattice::NBest(__p, 0.0, v13, 0, &v31);
    v27 = *(&v31 + 1);
    for (i = v31; i != v27; i += 32)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v15 = *i;
      v16 = *(i + 8);
      if (*i != v16)
      {
        v17 = 0;
        do
        {
          v18 = *v15;
          if (v17 >= v30)
          {
            v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v28) >> 3);
            v20 = v19 + 1;
            if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v30 - v28) >> 3) > v20)
            {
              v20 = 0x5555555555555556 * ((v30 - v28) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v30 - v28) >> 3) >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(&v28, v21);
            }

            v22 = 24 * v19;
            *v22 = *v18;
            *(v22 + 16) = *(v18 + 28);
            v17 = 24 * v19 + 24;
            v23 = (v22 - (v29 - v28));
            memcpy(v23, v28, v29 - v28);
            v24 = v28;
            v28 = v23;
            v29 = v17;
            v30 = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v17 = *v18;
            *(v17 + 16) = *(v18 + 28);
            v17 += 24;
          }

          v29 = v17;
          ++v15;
        }

        while (v15 != v16);
      }

      v25 = a5[1];
      if (v25 >= a5[2])
      {
        v26 = std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,float const&>(a5, &v28, (i + 24));
      }

      else
      {
        std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<std::string_view,int>>&,float const&>(a5, &v28, (i + 24));
        v26 = (v25 + 32);
      }

      a5[1] = v26;
      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }
    }

    v28 = &v31;
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&v28);
    sentencepiece::unigram::Lattice::~Lattice(__p);
  }

  else
  {
    (*(*a1 + 40))(&v31, a1, a2, a3);
    *__p = v31;
    __p[2] = v32;
    v32 = 0;
    v31 = 0uLL;
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<std::pair<std::string_view,int>>,float> const*,std::pair<std::vector<std::pair<std::string_view,int>>,float> const*>(a5, __p, &__p[4], 1uLL);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10 = v31;
    if (v31)
    {
      *(&v31 + 1) = v31;
      goto LABEL_5;
    }
  }

LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1A8F9EC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  a12 = a11;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  sentencepiece::unigram::Lattice::~Lattice(&__p);
  _Unwind_Resume(a1);
}

void sentencepiece::unigram::Model::SampleEncode(sentencepiece::unigram::Model *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  (*(*a1 + 16))(&v25);
  if (v25)
  {
    sentencepiece::util::Status::~Status(&v25);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sentencepiece::util::Status::~Status(&v25);
  if (!a3)
  {
    goto LABEL_3;
  }

  v25 = &unk_1F1CABF70;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v32 = &unk_1F1CAC0B8;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v36 = 1024;
  sentencepiece::unigram::Lattice::SetSentence(&v25, a2, a3);
  sentencepiece::unigram::Model::PopulateNodes(a1, &v25);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sentencepiece::unigram::Lattice::Sample(&v25, a5, &v23);
  v10 = v23;
  v11 = v24;
  if (v23 != v24)
  {
    v12 = 0;
    do
    {
      v13 = *v10;
      v14 = *(a4 + 16);
      if (v12 >= v14)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a4) >> 3);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0x555555555555555)
        {
          v18 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a4, v18);
        }

        v19 = 24 * v15;
        *v19 = *v13;
        *(v19 + 16) = *(v13 + 28);
        v12 = 24 * v15 + 24;
        v20 = *(a4 + 8) - *a4;
        v21 = v19 - v20;
        memcpy((v19 - v20), *a4, v20);
        v22 = *a4;
        *a4 = v21;
        *(a4 + 8) = v12;
        *(a4 + 16) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v12 = *v13;
        *(v12 + 16) = *(v13 + 28);
        v12 += 24;
      }

      *(a4 + 8) = v12;
      ++v10;
    }

    while (v10 != v11);
    v10 = v23;
  }

  if (v10)
  {
    v24 = v10;
    operator delete(v10);
  }

  sentencepiece::unigram::Lattice::~Lattice(&v25);
}

void sentencepiece::unigram::Model::SampleEncodeAndScore(sentencepiece::unigram::Model *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, uint64_t *j@<X8>, float a8@<S0>)
{
  v14 = a1;
  (*(*a1 + 16))(&v124);
  if (v124)
  {
    sentencepiece::util::Status::~Status(&v124);
LABEL_3:
    *j = 0;
    j[1] = 0;
    j[2] = 0;
    return;
  }

  sentencepiece::util::Status::~Status(&v124);
  if (!a3)
  {
    goto LABEL_3;
  }

  v136 = 0;
  v137 = 0;
  v138 = 0;
  v124 = &unk_1F1CABF70;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0;
  v131 = &unk_1F1CAC0B8;
  v132 = 0u;
  v133 = 0u;
  v134 = 0;
  v135 = 1024;
  sentencepiece::unigram::Lattice::SetSentence(&v124, a2, a3);
  sentencepiece::unigram::Model::PopulateNodes(v14, &v124);
  sentencepiece::unigram::Lattice::ForwardAlgorithm(&v124, a8, v123);
  v17 = *(v123[0] + *(**(*(&v127 + 1) + 24 * ((((*(&v126 + 1) - v126) >> 3) - 1) & ~((((*(&v126 + 1) - v126) >> 3) - 1) >> 31))) + 24));
  if (!a6)
  {
    goto LABEL_31;
  }

  if (a5)
  {
    v98 = a2;
    v100 = a3;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    sentencepiece::unigram::Lattice::Viterbi(&v124, &__p);
    v102 = v14;
    v18 = __p;
    v19 = v107;
    if (__p != v107)
    {
      v20 = v121;
      do
      {
        v21 = *v18;
        if (v20 >= v122)
        {
          v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v120) >> 3);
          v23 = v22 + 1;
          if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v122 - v120) >> 3) > v23)
          {
            v23 = 0x5555555555555556 * ((v122 - v120) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v122 - v120) >> 3) >= 0x555555555555555)
          {
            v24 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(&v120, v24);
          }

          v25 = 24 * v22;
          *v25 = *v21;
          *(v25 + 16) = v21[1].n128_u32[3];
          v20 = (24 * v22 + 24);
          v26 = (v25 - (v121 - v120));
          memcpy(v26, v120, v121 - v120);
          v27 = v120;
          v120 = v26;
          v121 = v20;
          v122 = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v20 = *v21;
          v20[1].n128_u32[0] = v21[1].n128_u32[3];
          v20 = (v20 + 24);
        }

        v121 = v20;
        ++v18;
      }

      while (v18 != v19);
    }

    v118 = 0.0;
    v28 = v137;
    if (v137 >= v138)
    {
      v30 = std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,double>(&v136, &v120, &v118);
    }

    else
    {
      *v137 = 0;
      *(v28 + 8) = 0;
      *(v28 + 16) = 0;
      std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v28, v120, v121, 0xAAAAAAAAAAAAAAABLL * ((v121 - v120) >> 3));
      v29 = v118;
      *(v28 + 24) = v29;
      v30 = (v28 + 32);
    }

    a2 = v98;
    a3 = v100;
    v14 = v102;
    v137 = v30;
    if (__p)
    {
      *&v107 = __p;
      operator delete(__p);
    }

    if (v120)
    {
      v121 = v120;
      operator delete(v120);
    }

LABEL_31:
    if (a5)
    {
      sentencepiece::unigram::Lattice::NBest(&v124, a8, a4 + 1, 1, &v120);
      v97 = j;
      if (a6)
      {
        std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::vector[abi:ne200100](&v118, (v121 - v120) >> 5);
        v39 = v120;
        v38 = v121;
        if (v121 != v120)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          do
          {
            if (&v39[v40] != (*&v118 + v41))
            {
              std::vector<sentencepiece::unigram::Lattice::Node *>::__assign_with_size[abi:ne200100]<sentencepiece::unigram::Lattice::Node **,sentencepiece::unigram::Lattice::Node **>((*&v118 + v41), v39[v40].n128_u64[0], v39[v40].n128_u64[1], (v39[v40].n128_u64[1] - v39[v40].n128_u64[0]) >> 3);
              v39 = v120;
              v38 = v121;
            }

            ++v42;
            v41 += 24;
            v40 += 2;
          }

          while (v42 < (v38 - v39) >> 5);
        }

        sentencepiece::unigram::Lattice::Viterbi(&v124, &__p);
        v43 = v118;
        v44 = v119;
        if (*&v118 == *&v119)
        {
          v47 = v118;
        }

        else
        {
          v45 = __p;
          v46 = v107 - __p;
          v47 = v118;
          while (*(*&v47 + 8) - **&v47 != v46 || memcmp(**&v47, v45, v46))
          {
            *&v47 += 24;
            if (*&v47 == *&v44)
            {
              v47 = v44;
              break;
            }
          }
        }

        v63 = 0xAAAAAAAAAAAAAAABLL * ((*&v47 - *&v43) >> 3);
        v64 = v121;
        if (v63 == (v121 - v120) >> 5)
        {
          v66 = v121 - 2;
          v65 = v121[-2].n128_u64[0];
          if (v65)
          {
            v121[-2].n128_u64[1] = v65;
            operator delete(v65);
          }
        }

        else
        {
          v66 = &v120[2 * v63];
          if (&v66[2] != v121)
          {
            do
            {
              v67 = v66 + 2;
              std::vector<sentencepiece::unigram::Lattice::Node *>::__move_assign(v66, v66 + 2);
              v66[1].n128_u32[2] = v66[3].n128_u32[2];
              v68 = v66 + 4;
              v66 += 2;
            }

            while (v68 != v64);
            v64 = v121;
            v66 = v67;
          }

          if (v64 != v66)
          {
            v69 = v64;
            do
            {
              v71 = v69[-2].n128_u64[0];
              v69 -= 2;
              v70 = v71;
              if (v71)
              {
                v64[-2].n128_u64[1] = v70;
                operator delete(v70);
              }

              v64 = v69;
            }

            while (v69 != v66);
          }
        }

        v121 = v66;
        if (__p)
        {
          *&v107 = __p;
          operator delete(__p);
        }

        __p = &v118;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      v72 = v121[-2].n128_u64[0];
      v104 = v121 - 2;
      v73 = v121[-1].n128_f32[2];
      if (v72)
      {
        v121[-2].n128_u64[1] = v72;
        operator delete(v72);
      }

      v121 = v104;
      for (i = v120; i != v104; i += 2)
      {
        __p = 0;
        v107 = 0uLL;
        v75 = i->n128_u64[0];
        v76 = i->n128_i64[1];
        if (i->n128_u64[0] == v76)
        {
          v78 = 0.0;
        }

        else
        {
          v77 = 0;
          v78 = 0.0;
          do
          {
            v79 = *v75;
            v80 = *(*v75 + 32);
            if (v77 >= *(&v107 + 1))
            {
              v81 = 0xAAAAAAAAAAAAAAABLL * ((v77 - __p) >> 3);
              v82 = v81 + 1;
              if (v81 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((*(&v107 + 1) - __p) >> 3) > v82)
              {
                v82 = 0x5555555555555556 * ((*(&v107 + 1) - __p) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(&v107 + 1) - __p) >> 3) >= 0x555555555555555)
              {
                v83 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v83 = v82;
              }

              if (v83)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(&__p, v83);
              }

              v84 = 24 * v81;
              *v84 = *v79;
              *(v84 + 16) = *(v79 + 28);
              v77 = 24 * v81 + 24;
              v85 = (v84 - (v107 - __p));
              memcpy(v85, __p, v107 - __p);
              v86 = __p;
              __p = v85;
              v107 = v77;
              if (v86)
              {
                operator delete(v86);
              }
            }

            else
            {
              *v77 = *v79;
              *(v77 + 16) = *(v79 + 28);
              v77 += 24;
            }

            *&v107 = v77;
            v78 = v78 + (a8 * v80);
            ++v75;
          }

          while (v75 != v76);
        }

        *&v118 = v78 - v17;
        v87 = v137;
        if (v137 >= v138)
        {
          v88 = std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,float>(&v136, &__p, &v118);
        }

        else
        {
          *v137 = 0;
          *(v87 + 8) = 0;
          *(v87 + 16) = 0;
          std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v87, __p, v107, 0xAAAAAAAAAAAAAAABLL * ((v107 - __p) >> 3));
          *(v87 + 24) = LODWORD(v118);
          v88 = (v87 + 32);
        }

        v137 = v88;
        if (__p)
        {
          *&v107 = __p;
          operator delete(__p);
        }
      }

      v89 = v136;
      v90 = v137;
      for (j = v97; v89 != v90; v89 += 32)
      {
        v91 = *(v89 + 24);
        if (v91 != 0.0)
        {
          v92 = v91 - v73;
          v93 = exp(v92);
          if (v92 <= -10.0)
          {
            v95 = v92 + v93 * -0.5 + v93 * v93 / 24.0 + pow(v93, 4.0) / -2880.0;
          }

          else
          {
            v94 = expm1(-v93);
            v95 = log(-v94);
          }

          v96 = v95;
          *(v89 + 24) = v96;
        }
      }

      __p = &v120;
      std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
      v49 = v136;
      v48 = v137;
    }

    else
    {
      v49 = v136;
      v48 = v137;
      if (a4 > (&v137[-v136] >> 5))
      {
        v99 = a2;
        v101 = a3;
        v103 = v14;
        do
        {
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v112 = 0;
          __p = &unk_1F1CABF70;
          v113 = &unk_1F1CAC0B8;
          v114 = 0u;
          v115 = 0u;
          v116 = 0;
          v117 = 1024;
          sentencepiece::unigram::Lattice::SetSentence(&__p, a2, a3);
          sentencepiece::unigram::Model::PopulateNodes(v14, &__p);
          v120 = 0;
          v121 = 0;
          v122 = 0;
          sentencepiece::unigram::Lattice::Sample(&__p, a8, &v118);
          v51 = v118;
          v50 = v119;
          v52 = 0.0;
          if (*&v118 != *&v119)
          {
            v53 = v121;
            do
            {
              v54 = **&v51;
              if (v53 >= v122)
              {
                v55 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v120) >> 3);
                v56 = v55 + 1;
                if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v122 - v120) >> 3) > v56)
                {
                  v56 = 0x5555555555555556 * ((v122 - v120) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v122 - v120) >> 3) >= 0x555555555555555)
                {
                  v57 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v57 = v56;
                }

                if (v57)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(&v120, v57);
                }

                v58 = 24 * v55;
                *v58 = *v54;
                *(v58 + 16) = v54[1].n128_u32[3];
                v53 = (24 * v55 + 24);
                v59 = (v58 - (v121 - v120));
                memcpy(v59, v120, v121 - v120);
                v60 = v120;
                v120 = v59;
                v121 = v53;
                v122 = 0;
                if (v60)
                {
                  operator delete(v60);
                }
              }

              else
              {
                *v53 = *v54;
                v53[1].n128_u32[0] = v54[1].n128_u32[3];
                v53 = (v53 + 24);
              }

              v121 = v53;
              v52 = v52 + (a8 * v54[2].n128_f32[0]);
              *&v51 += 8;
            }

            while (*&v51 != *&v50);
          }

          v105 = v52 - v17;
          v61 = v137;
          if (v137 >= v138)
          {
            v62 = std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,float>(&v136, &v120, &v105);
            v14 = v103;
          }

          else
          {
            *v137 = 0;
            *(v61 + 8) = 0;
            *(v61 + 16) = 0;
            std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v61, v120, v121, 0xAAAAAAAAAAAAAAABLL * ((v121 - v120) >> 3));
            v14 = v103;
            *(v61 + 24) = v105;
            v62 = (v61 + 32);
          }

          a2 = v99;
          a3 = v101;
          v137 = v62;
          if (v118 != 0.0)
          {
            v119 = v118;
            operator delete(*&v118);
          }

          if (v120)
          {
            v121 = v120;
            operator delete(v120);
          }

          sentencepiece::unigram::Lattice::~Lattice(&__p);
          v49 = v136;
          v48 = v137;
        }

        while (a4 > (&v137[-v136] >> 5));
      }
    }

    *j = v49;
    j[1] = v48;
    j[2] = v138;
    j = &v136;
    goto LABEL_120;
  }

  if (sentencepiece::logging::GetMinLogLevel(v16) <= 2)
  {
    LOBYTE(__p) = 0;
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "(", 1);
    v33 = MEMORY[0x1AC57D010](v32, 717);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ") ", 2);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "LOG(", 4);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "ERROR", 5);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ") ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "include_best not supported for wor false", 40);
    sentencepiece::error::Die::~Die(&__p);
  }

LABEL_120:
  *j = 0;
  j[1] = 0;
  j[2] = 0;
  if (v123[0])
  {
    v123[1] = v123[0];
    operator delete(v123[0]);
  }

  sentencepiece::unigram::Lattice::~Lattice(&v124);
  v124 = &v136;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&v124);
}

void sub_1A8F9FAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  v49 = v46[22];
  if (v49)
  {
    v46[23] = v49;
    operator delete(v49);
  }

  v50 = v46[25];
  if (v50)
  {
    v46[26] = v50;
    operator delete(v50);
  }

  sentencepiece::unigram::Lattice::~Lattice(&a46);
  a46 = (v47 - 160);
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a46);
  _Unwind_Resume(a1);
}

float sentencepiece::unigram::Model::CalculateEntropy(sentencepiece::unigram::Model *a1, unsigned __int8 *a2, uint64_t a3, float a4)
{
  v8 = &unk_1F1CABF70;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = &unk_1F1CAC0B8;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v19 = 1024;
  sentencepiece::unigram::Lattice::SetSentence(&v8, a2, a3);
  sentencepiece::unigram::Model::PopulateNodes(a1, &v8);
  v6 = sentencepiece::unigram::Lattice::CalculateEntropy(&v8, a4);
  sentencepiece::unigram::Lattice::~Lattice(&v8);
  return v6;
}

void sub_1A8F9FCC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::unigram::Lattice::~Lattice(va);
  _Unwind_Resume(a1);
}

BOOL sentencepiece::unigram::Model::VerifyOutputsEquivalent(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  strcpy(__s, " ");
  v10 = strlen(__s);
  absl::internal::Splitter::Splitter(&v45, a2, a3, __s, v10, 0);
  v48 = 0;
  v49 = 0;
  __p = 0;
  std::vector<std::string_view>::__init_with_size[abi:ne200100]<std::string_view*,std::string_view*>(&__p, v45, v46, (v46 - v45) >> 4);
  v11 = __p;
  v12 = v48;
  if (__p == v48)
  {
    v14 = 0.0;
    if (__p)
    {
LABEL_11:
      v48 = v11;
      operator delete(v11);
    }
  }

  else
  {
    v13 = *(a1 + 104) + -10.0;
    v14 = 0.0;
    do
    {
      v15 = v11[1];
      v16 = (*(*a1 + 112))(a1, *v11, v15);
      if (v16 == *(a1 + 88))
      {
        v14 = v13 + v14;
      }

      else
      {
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v16))
        {
          v17 = (*(a1 + 108) * v15) + -0.1;
        }

        else
        {
          v17 = (*(**(a1 + 8) + 96))(*(a1 + 8), v16);
        }

        v14 = v17 + v14;
      }

      v11 += 2;
    }

    while (v11 != v12);
    v11 = __p;
    if (__p)
    {
      goto LABEL_11;
    }
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  strcpy(__s, " ");
  v18 = strlen(__s);
  absl::internal::Splitter::Splitter(&v45, a4, a5, __s, v18, 0);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  std::vector<std::string_view>::__init_with_size[abi:ne200100]<std::string_view*,std::string_view*>(&v42, v45, v46, (v46 - v45) >> 4);
  v19 = v42;
  v20 = v43;
  if (v42 != v43)
  {
    v21 = *(a1 + 104) + -10.0;
    v22 = 0.0;
    do
    {
      v23 = v19[1];
      v24 = (*(*a1 + 112))(a1, *v19, v23);
      if (v24 == *(a1 + 88))
      {
        v22 = v21 + v22;
      }

      else
      {
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v24))
        {
          v25 = (*(a1 + 108) * v23) + -0.1;
        }

        else
        {
          v25 = (*(**(a1 + 8) + 96))(*(a1 + 8), v24);
        }

        v22 = v25 + v22;
      }

      v19 += 2;
    }

    while (v19 != v20);
    v19 = v42;
    if (!v42)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v22 = 0.0;
  if (v42)
  {
LABEL_24:
    v43 = v19;
    operator delete(v19);
  }

LABEL_25:
  v26 = v45;
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  v27 = vabds_f32(v14, v22);
  if (v27 > 0.0000001 && sentencepiece::logging::GetMinLogLevel(v26) <= 1)
  {
    LOBYTE(v45) = 0;
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "(", 1);
    v30 = MEMORY[0x1AC57D010](v29, 840);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ") ", 2);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "LOG(", 4);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "WARNING", 7);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ") ", 2);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Two sentence piece sequences are not equivalent! Left: ", 55);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, a2, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", Score: ", 9);
    v37 = std::ostream::operator<<();
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ". Right: ", 9);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, a4, a5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", Score: ", 9);
    v40 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ".", 1);
    sentencepiece::error::Die::~Die(&v45);
  }

  return v27 <= 0.0000001;
}

void sub_1A8FA0144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::unigram::Model::MemoryMappableString(sentencepiece::unigram::Model *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sentencepiece::ModelInterface::MemoryMappableString(this, &v13);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = *(this + 26);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(this + 27);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v13;
  }

  else
  {
    v10 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v13.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v10, v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1A8FA02E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<sentencepiece::unigram::Lattice::Node *>::__init_with_size[abi:ne200100]<sentencepiece::unigram::Lattice::Node **,sentencepiece::unigram::Lattice::Node **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<sentencepiece::unigram::Lattice::Node *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A8FA03B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<sentencepiece::unigram::Lattice::Node *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long Darts::DoubleArrayImpl<void,void,int,void>::predictiveSearch<Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type>(char const*,Darts::DoubleArrayImpl<void,void,int,void>::result_pair_type *,unsigned long,unsigned long,int)::State *>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::string_view>::__init_with_size[abi:ne200100]<std::string_view*,std::string_view*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string_view>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A8FA0470(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::~FreeList(void *a1)
{
  sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::~FreeList(a1);

  JUMPOUT(0x1AC57D1A0);
}

void *sentencepiece::model::FreeList<sentencepiece::unigram::Lattice::Node>::~FreeList(void *a1)
{
  *a1 = &unk_1F1CAC0B8;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1AC57D170](*v2, 0x1070C8005A2B047);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<sentencepiece::unigram::Lattice::Node *>>>(a1, v9);
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
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<int>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<sentencepiece::unigram::Lattice::Node *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<sentencepiece::unigram::anonymous namespace::Hypothesis *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::__init_with_size[abi:ne200100]<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float> const*,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A8FA0884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float> const*,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float> const*,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<sentencepiece::unigram::Lattice::Node *>::__init_with_size[abi:ne200100]<sentencepiece::unigram::Lattice::Node **,sentencepiece::unigram::Lattice::Node **>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>,std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>,std::pair<std::vector<std::pair<std::string_view,int>>,float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void sentencepiece::model::FreeList<sentencepiece::unigram::anonymous namespace::Hypothesis>::~FreeList(void *a1)
{

  JUMPOUT(0x1AC57D1A0);
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::unigram::Lattice::NBest(unsigned long,BOOL,float)::HypothesisComparator &,std::__wrap_iter<sentencepiece::unigram::anonymous namespace::Hypothesis **>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 8 * v3);
    v5 = *v4;
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *(v8 + 16);
    if (*(*v4 + 16) < v9)
    {
      do
      {
        v10 = v4;
        *v6 = v5;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 8 * v3);
        v5 = *v4;
        v6 = v10;
      }

      while (*(*v4 + 16) < v9);
      *v10 = v7;
    }
  }

  return result;
}

uint64_t std::vector<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = 32 * a2;
      v12 = v4 + 32 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 24) = 0;
        *(v4 + 16) = 0;
        v4 += 32;
        v11 -= 32;
      }

      while (v11);
      v4 = v12;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

    v21[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<sentencepiece::unigram::Lattice::Node *>,float>>>(result, v10);
    }

    v13 = 32 * v8;
    v14 = 32 * a2;
    v15 = 32 * v8;
    v16 = 32 * v8 + 32 * a2;
    do
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 24) = 0;
      *(v15 + 16) = 0;
      v15 += 32;
      v14 -= 32;
    }

    while (v14);
    v17 = *(result + 8) - *result;
    v18 = v13 - v17;
    memcpy((v13 - v17), *result, v17);
    v19 = *v3;
    *v3 = v18;
    v3[1] = v16;
    v20 = v3[2];
    v3[2] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    return std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(v21);
  }

  return result;
}

void sub_1A8FA0C94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<std::string_view,int>>&,float const&>(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,float const&>(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(&v17);
  return v11;
}

void sub_1A8FA0E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

char *std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,double>(uint64_t a1, uint64_t *a2, double *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v22 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(a1, v9);
  }

  v10 = 32 * v3;
  v18 = 0;
  v19 = v10;
  v20 = v10;
  v21 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v11 = *a3;
  *(v10 + 24) = v11;
  v12 = v20 + 32;
  v13 = *(a1 + 8) - *a1;
  v14 = &v19[-v13];
  memcpy(&v19[-v13], *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v21;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(&v18);
  return v12;
}

void sub_1A8FA0F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<sentencepiece::unigram::Lattice::Node *>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<sentencepiece::unigram::Lattice::Node *>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<sentencepiece::unigram::Lattice::Node *>::__assign_with_size[abi:ne200100]<sentencepiece::unigram::Lattice::Node **,sentencepiece::unigram::Lattice::Node **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<sentencepiece::unigram::Lattice::Node *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

__n128 std::vector<sentencepiece::unigram::Lattice::Node *>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

char *std::vector<std::pair<std::vector<std::pair<std::string_view,int>>,float>>::__emplace_back_slow_path<std::vector<std::pair<std::string_view,int>>&,float>(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<std::pair<std::string_view,int>>,float>>>(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  std::vector<std::pair<std::string_view,int>>::__init_with_size[abi:ne200100]<std::pair<std::string_view,int>*,std::pair<std::string_view,int>*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(&v17);
  return v11;
}

void sub_1A8FA12FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::vector<int>,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

sentencepiece::character::Model *sentencepiece::character::Model::Model(sentencepiece::character::Model *this, const sentencepiece::ModelProto *a2)
{
  v4 = sentencepiece::ModelInterface::ModelInterface(this);
  *v4 = &unk_1F1CAC118;
  *(v4 + 1) = a2 + 16;
  sentencepiece::ModelInterface::InitializePieces(v4);
  return this;
}

void sentencepiece::character::Model::~Model(sentencepiece::character::Model *this)
{
  sentencepiece::ModelInterface::~ModelInterface(this);

  JUMPOUT(0x1AC57D1A0);
}

void sentencepiece::character::Model::Encode(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a1 + 16))(&v21);
  if (v21)
  {
    sentencepiece::util::Status::~Status(&v21);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sentencepiece::util::Status::~Status(&v21);
  if (!a3)
  {
    goto LABEL_3;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  do
  {
    v8 = sentencepiece::normalizer::PrefixMatcher::PrefixMatch(a1[2], a2, a3, 0);
    v9 = (*(*a1 + 112))(a1, a2, v8);
    v11 = *(a4 + 8);
    v10 = *(a4 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a4) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a4, v16);
      }

      v17 = 24 * v13;
      *v17 = a2;
      *(v17 + 8) = v8;
      *(v17 + 16) = v9;
      v12 = 24 * v13 + 24;
      v18 = *(a4 + 8) - *a4;
      v19 = v17 - v18;
      memcpy((v17 - v18), *a4, v18);
      v20 = *a4;
      *a4 = v19;
      *(a4 + 8) = v12;
      *(a4 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = a2;
      *(v11 + 8) = v8;
      v12 = v11 + 24;
      *(v11 + 16) = v9;
    }

    *(a4 + 8) = v12;
    a2 += v8;
    a3 -= v8;
  }

  while (a3);
}

void sub_1A8FA1590(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

sentencepiece::word::Model *sentencepiece::word::Model::Model(sentencepiece::word::Model *this, const sentencepiece::ModelProto *a2)
{
  v4 = sentencepiece::ModelInterface::ModelInterface(this);
  *v4 = &unk_1F1CAC230;
  *(v4 + 1) = a2 + 16;
  sentencepiece::ModelInterface::InitializePieces(v4);
  return this;
}

void sentencepiece::word::Model::~Model(sentencepiece::word::Model *this)
{
  sentencepiece::ModelInterface::~ModelInterface(this);

  JUMPOUT(0x1AC57D1A0);
}

void sentencepiece::word::Model::Encode(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a1 + 16))(&v22);
  if (v22)
  {
    sentencepiece::util::Status::~Status(&v22);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sentencepiece::util::Status::~Status(&v22);
  if (!a3)
  {
    goto LABEL_3;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sentencepiece::SplitIntoWords(a2, a3, 0, 0, &v22);
  v8 = v22;
  v9 = v23;
  if (v22 != v23)
  {
    do
    {
      v10 = (*(*a1 + 112))(a1, *v8, v8[1]);
      v12 = *(a4 + 8);
      v11 = *(a4 + 16);
      if (v12 >= v11)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a4) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a4, v17);
        }

        v18 = 24 * v14;
        *v18 = *v8;
        *(v18 + 16) = v10;
        v13 = 24 * v14 + 24;
        v19 = *(a4 + 8) - *a4;
        v20 = v18 - v19;
        memcpy((v18 - v19), *a4, v19);
        v21 = *a4;
        *a4 = v20;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = *v8;
        *(v12 + 16) = v10;
        v13 = v12 + 24;
      }

      *(a4 + 8) = v13;
      v8 += 2;
    }

    while (v8 != v9);
    v8 = v22;
  }

  if (v8)
  {
    v23 = v8;
    operator delete(v8);
  }
}

void sub_1A8FA1850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void InitDefaultsscc_info_NBestSentencePieceText_sentencepiece_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", a4);
  sentencepiece::NBestSentencePieceText::NBestSentencePieceText(&sentencepiece::_NBestSentencePieceText_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_NBestSentencePieceText_default_instance_, v4);
}

void InitDefaultsscc_info_SentencePieceText_sentencepiece_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", a4);
  sentencepiece::SentencePieceText::SentencePieceText(&sentencepiece::_SentencePieceText_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_SentencePieceText_default_instance_, v4);
}

void InitDefaultsscc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", a4);
  sentencepiece::SentencePieceText_SentencePiece::SentencePieceText_SentencePiece(&sentencepiece::_SentencePieceText_SentencePiece_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_SentencePieceText_SentencePiece_default_instance_, v4);
}

uint64_t sentencepiece::SentencePieceText_SentencePiece::SentencePieceText_SentencePiece(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1CAC348;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto);
  }

  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sentencepiece::SentencePieceText_SentencePiece::~SentencePieceText_SentencePiece(sentencepiece::SentencePieceText_SentencePiece *this)
{
  sentencepiece::SentencePieceText_SentencePiece::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::SentencePieceText_SentencePiece::~SentencePieceText_SentencePiece(this);

  JUMPOUT(0x1AC57D1A0);
}

google::protobuf::internal::ArenaStringPtr *sentencepiece::SentencePieceText_SentencePiece::SharedDtor(sentencepiece::SentencePieceText_SentencePiece *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 140);
    v3 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  result = (this + 48);
  if (*(this + 6) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v5 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x1AC57D1A0](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 7);
  v7 = (this + 56);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v9 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v7);
    v10 = v9;
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    return MEMORY[0x1AC57D1A0](v10, 0x1012C40EC159624);
  }

  return result;
}

void sub_1A8FA1BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::InternalMetadata::Delete<std::string>(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      if (*(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      JUMPOUT(0x1AC57D1A0);
    }
  }

  return result;
}

void sentencepiece::SentencePieceText_SentencePiece::Clear(sentencepiece::SentencePieceText_SentencePiece *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v2 = *(this + 10);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v3 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v2 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v3 = 0;
      *(v3 + 23) = 0;
    }

    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v4 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

LABEL_11:
  if ((v2 & 0x1C) != 0)
  {
    *(this + 18) = 0;
    *(this + 8) = 0;
  }

  *(this + 10) = 0;
  v5 = *(this + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 31) < 0)
    {
      **(v6 + 8) = 0;
      *(v6 + 16) = 0;
    }

    else
    {
      *(v6 + 8) = 0;
      *(v6 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::SentencePieceText_SentencePiece::_InternalParse(sentencepiece::SentencePieceText_SentencePiece *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v36 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v36, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v36 + 1);
      v8 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v9 - 128));
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_62;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(this + 10) |= 1u;
            v18 = *(this + 1);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = (this + 48);
LABEL_39:
            v23 = google::protobuf::internal::ArenaStringPtr::Mutable(v19, v18);
            v24 = google::protobuf::internal::InlineGreedyStringParser(v23, v36, a3);
LABEL_40:
            v36 = v24;
            if (!v24)
            {
              goto LABEL_62;
            }

            goto LABEL_41;
          }

LABEL_43:
          if (v8)
          {
            v25 = (v8 & 7) == 4;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x640)
          {
            v28 = *(this + 1);
            if (v28)
            {
              v29 = ((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v29 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
              v7 = v36;
            }

            v24 = google::protobuf::internal::UnknownFieldParse(v8, v29, v7, a3);
          }

          else
          {
            v24 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v8, v7, &sentencepiece::_SentencePieceText_SentencePiece_default_instance_, this + 1, a3);
          }

          goto LABEL_40;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_43;
        }

        v5 |= 4u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_25:
          v36 = v15;
          *(this + 16) = v16;
          goto LABEL_41;
        }

        v34 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v36 = v34;
        *(this + 16) = v35;
        if (!v34)
        {
LABEL_62:
          v36 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(this + 10) |= 2u;
            v18 = *(this + 1);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = (this + 56);
            goto LABEL_39;
          }

          goto LABEL_43;
        }

        if (v10 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_43;
          }

          v5 |= 8u;
          v20 = (v7 + 1);
          LODWORD(v21) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          v22 = *v20;
          v21 = (v21 + (v22 << 7) - 128);
          if ((v22 & 0x80000000) == 0)
          {
            v20 = (v7 + 2);
LABEL_34:
            v36 = v20;
            *(this + 17) = v21;
            goto LABEL_41;
          }

          v30 = google::protobuf::internal::VarintParseSlow32(v7, v21);
          v36 = v30;
          *(this + 17) = v31;
          if (!v30)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v10 != 5 || v8 != 40)
          {
            goto LABEL_43;
          }

          v5 |= 0x10u;
          v11 = (v7 + 1);
          LODWORD(v12) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          v13 = *v11;
          v12 = (v12 + (v13 << 7) - 128);
          if ((v13 & 0x80000000) == 0)
          {
            v11 = (v7 + 2);
LABEL_15:
            v36 = v11;
            *(this + 18) = v12;
            goto LABEL_41;
          }

          v32 = google::protobuf::internal::VarintParseSlow32(v7, v12);
          v36 = v32;
          *(this + 18) = v33;
          if (!v32)
          {
            goto LABEL_62;
          }
        }
      }

LABEL_41:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v36, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v36 + 2);
LABEL_6:
    v36 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v5;
  return v36;
}

unsigned __int8 *sentencepiece::SentencePieceText_SentencePiece::_InternalSerialize(sentencepiece::SentencePieceText_SentencePiece *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 16);
    *v4 = 16;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v13 = v10 >> 7;
          ++v4;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if ((v6 & 2) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_6;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 17);
  *v4 = 32;
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v16 = v15 >> 7;
    if (v15 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v4;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v4 - 1) = v17;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v4[2] = v16;
      v4 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v4[1] = v15;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_6:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 18);
  *v4 = 40;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[2] = v9;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_39:
  v19 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 200, 0x20000000, v4, a3);
  v20 = v19;
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return v20;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if (*a3 - v19 >= v24)
  {
    v26 = v24;
    memcpy(v19, v25, v24);
    v20 += v26;
    return v20;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v25, v24, v19);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(google::protobuf::io::EpsCopyOutputStream *a1, int a2, const void **a3, char *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = (a4 + 2);
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = (a4 + 2);
        }

LABEL_18:
        *v7 = v4;
        v14 = (v7 + 1);
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return &v14[v4];
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = (a4 + 1);
      goto LABEL_18;
    }
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a1, a2, a3, a4);
}

uint64_t sentencepiece::SentencePieceText_SentencePiece::ByteSizeLong(sentencepiece::SentencePieceText_SentencePiece *this)
{
  result = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 10);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v5 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    result += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      result += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 8) == 0)
      {
LABEL_6:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  v10 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  result += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  result += ((9 * (__clz(*(this + 17) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) != 0)
  {
LABEL_7:
    result += ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v4 = *(this + 1);
  if (v4)
  {
    v11 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(this + 11) = result;
  return result;
}

void sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom(sentencepiece::SentencePieceText_SentencePiece *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::SentencePieceText_SentencePiece::MergeFrom(this, lpsrc);
}

void sentencepiece::SentencePieceText_SentencePiece::MergeFrom(sentencepiece::SentencePieceText_SentencePiece *this, const sentencepiece::SentencePieceText_SentencePiece *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 375);
    v4 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 10);
  if ((v13 & 0x1F) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 6);
      *(this + 10) |= 1u;
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 7);
    *(this + 10) |= 2u;
    v17 = *(this + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 56), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(this + 16) = *(a2 + 16);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
LABEL_20:
        *(this + 10) |= v13;
        return;
      }

LABEL_19:
      *(this + 18) = *(a2 + 18);
      goto LABEL_20;
    }

LABEL_29:
    *(this + 17) = *(a2 + 17);
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }
}

void sub_1A8FA27A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *sentencepiece::SentencePieceText_SentencePiece::InternalSwap(sentencepiece::SentencePieceText_SentencePiece *this, sentencepiece::SentencePieceText_SentencePiece *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  v4 = (this + 8);
  v5 = *(this + 1);
  v6 = *(a2 + 1);
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_6;
      }

LABEL_21:
      v10 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = 0;
    v8 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v8;
    goto LABEL_9;
  }

  v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v10 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
  v11 = *(v10 + 2);
  v12 = *v10;
  v13 = *(v9 + 2);
  *v10 = *v9;
  *(v10 + 2) = v13;
  *v9 = v12;
  *(v9 + 2) = v11;
  v5 = *(this + 1);
  LODWORD(v11) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v11;
  if (v5)
  {
    v14 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v7 = 1;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v14 = v5;
LABEL_10:
  result = (this + 48);
  if (*(this + 6) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 6) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v16 = google::protobuf::internal::ArenaStringPtr::Mutable(result, v14);
    result = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 6, v14);
    v17 = v16[2];
    v18 = *v16;
    v19 = result[2];
    *v16 = *result;
    v16[2] = v19;
    *result = v18;
    result[2] = v17;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  if (v7)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 7) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 7) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v20 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 7, v5);
    result = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 7, v5);
    v21 = v20[2];
    v22 = *v20;
    v23 = result[2];
    *v20 = *result;
    v20[2] = v23;
    *result = v22;
    result[2] = v21;
  }

  v24 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v24;
  LODWORD(v24) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v24;
  return result;
}

void sentencepiece::SentencePieceText::~SentencePieceText(sentencepiece::SentencePieceText *this)
{
  sentencepiece::SentencePieceText::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::~RepeatedPtrField(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::SentencePieceText::~SentencePieceText(this);

  JUMPOUT(0x1AC57D1A0);
}

void sentencepiece::SentencePieceText::SharedDtor(sentencepiece::SentencePieceText *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 486);
    v3 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  v5 = *(this + 9);
  v4 = (this + 72);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v6 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v4);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x1AC57D1A0](v7, 0x1012C40EC159624);
  }
}

void sub_1A8FA2AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::SentencePieceText::default_instance(sentencepiece::SentencePieceText *this)
{
  if (atomic_load_explicit(scc_info_SentencePieceText_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SentencePieceText_sentencepiece_2eproto);
  }

  return &sentencepiece::_SentencePieceText_default_instance_;
}

void sentencepiece::SentencePieceText::Clear(sentencepiece::SentencePieceText *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 16));
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(this + 48);
  if (*(this + 40))
  {
    v2 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  *(this + 20) = 0;
  *(this + 10) = 0;
  v3 = *(this + 1);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 31) < 0)
    {
      **(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    else
    {
      *(v4 + 8) = 0;
      *(v4 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::SentencePieceText::_InternalParse(sentencepiece::SentencePieceText *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v28 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v28, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v28 + 1);
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_48;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 29)
        {
          v5 |= 2u;
          *(this + 20) = *v7;
          v28 = (v7 + 4);
          goto LABEL_44;
        }

        goto LABEL_13;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          v14 = v7 - 1;
          while (1)
          {
            v15 = (v14 + 1);
            v28 = (v14 + 1);
            v16 = *(this + 8);
            if (!v16)
            {
              break;
            }

            v21 = *(this + 14);
            v17 = *v16;
            if (v21 < *v16)
            {
              *(this + 14) = v21 + 1;
              v18 = *&v16[2 * v21 + 2];
              goto LABEL_27;
            }

            if (v17 == *(this + 15))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(*(this + 6));
            v19 = *(this + 14);
            v20 = *(this + 8) + 8 * v19;
            *(this + 14) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v28;
LABEL_27:
            v14 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText_SentencePiece>(a3, v18, v15);
            v28 = v14;
            if (!v14)
            {
              goto LABEL_48;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_44;
            }
          }

          v17 = *(this + 15);
LABEL_23:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v17 + 1);
          v16 = *(this + 8);
          v17 = *v16;
          goto LABEL_24;
        }

LABEL_13:
        if (v8)
        {
          v12 = (v8 & 7) == 4;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          *(a3 + 20) = v8 - 1;
          goto LABEL_2;
        }

        if (v8 < 0x640)
        {
          v26 = *(this + 1);
          if (v26)
          {
            v27 = ((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v27 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
            v7 = v28;
          }

          v13 = google::protobuf::internal::UnknownFieldParse(v8, v27, v7, a3);
        }

        else
        {
          v13 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v8, v7, &sentencepiece::_SentencePieceText_default_instance_, this + 1, a3);
        }

        goto LABEL_43;
      }

      if (v10 != 1 || v8 != 10)
      {
        goto LABEL_13;
      }

      *(this + 10) |= 1u;
      v22 = *(this + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 9, v22);
      v13 = google::protobuf::internal::InlineGreedyStringParser(v23, v28, a3);
LABEL_43:
      v28 = v13;
      if (!v13)
      {
LABEL_48:
        v28 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v28, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v28 + 2);
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v5;
  return v28;
}

unsigned __int8 *sentencepiece::SentencePieceText::_InternalSerialize(sentencepiece::SentencePieceText *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(this + 14);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(this + 48, i);
      *v4 = 18;
      v10 = *(v9 + 11);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = sentencepiece::SentencePieceText_SentencePiece::_InternalSerialize(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 20);
    *v4 = 29;
    *(v4 + 1) = v15;
    v4 += 5;
  }

  v16 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 200, 0x20000000, v4, a3);
  v17 = v16;
  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return v17;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if (*a3 - v16 >= v21)
  {
    v23 = v21;
    memcpy(v16, v22, v21);
    v17 += v23;
    return v17;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v22, v21, v16);
}

uint64_t sentencepiece::SentencePieceText::ByteSizeLong(sentencepiece::SentencePieceText *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 14);
  v4 = v2 + v3;
  v5 = *(this + 8);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sentencepiece::SentencePieceText_SentencePiece::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 10);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      v4 += 5;
    }
  }

  v14 = *(this + 1);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v4 += v17;
  }

  *(this + 11) = v4;
  return v4;
}

void sentencepiece::SentencePieceText::CheckTypeAndMergeFrom(sentencepiece::SentencePieceText *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::SentencePieceText::MergeFrom(this, lpsrc);
}

void sentencepiece::SentencePieceText::MergeFrom(sentencepiece::SentencePieceText *this, const sentencepiece::SentencePieceText *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 674);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(this + 48, a2 + 48);
  v13 = *(a2 + 10);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 9);
      *(this + 10) |= 1u;
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 72), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v13 & 2) != 0)
    {
      *(this + 20) = *(a2 + 20);
    }

    *(this + 10) |= v13;
  }
}

void sub_1A8FA3330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::SentencePieceText::IsInitialized(sentencepiece::SentencePieceText *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return google::protobuf::internal::AllAreInitialized<sentencepiece::SentencePieceText_SentencePiece>(this + 48);
  }

  return result;
}

BOOL google::protobuf::internal::AllAreInitialized<sentencepiece::SentencePieceText_SentencePiece>(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(a1, v2);
  }

  while ((google::protobuf::internal::ExtensionSet::IsInitialized((v5 + 16)) & 1) != 0);
  return v3 < 1;
}

uint64_t sentencepiece::NBestSentencePieceText::NBestSentencePieceText(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1CAC448;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_NBestSentencePieceText_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_NBestSentencePieceText_sentencepiece_2eproto);
  }

  return a1;
}

void sentencepiece::NBestSentencePieceText::~NBestSentencePieceText(sentencepiece::NBestSentencePieceText *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v2)
  {
    if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 755);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  google::protobuf::internal::InternalMetadata::Delete<std::string>(v3);
  google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::~RepeatedPtrField(this + 2);
}

{
  sentencepiece::NBestSentencePieceText::~NBestSentencePieceText(this);

  JUMPOUT(0x1AC57D1A0);
}

void sub_1A8FA351C(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  __clang_call_terminate(a1);
}

void sentencepiece::NBestSentencePieceText::Clear(sentencepiece::NBestSentencePieceText *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(this + 16);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 31) < 0)
    {
      **(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    else
    {
      *(v3 + 8) = 0;
      *(v3 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::NBestSentencePieceText::_InternalParse(sentencepiece::NBestSentencePieceText *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v22 = a2;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v22, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v5 = (v22 + 1);
      v6 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v7 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v20;
LABEL_6:
      if (v6 == 10)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v22 = (v11 + 1);
          v13 = *(this + 4);
          if (!v13)
          {
            break;
          }

          v18 = *(this + 6);
          v14 = *v13;
          if (v18 < *v13)
          {
            *(this + 6) = v18 + 1;
            v15 = *&v13[2 * v18 + 2];
            goto LABEL_23;
          }

          if (v14 == *(this + 7))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v13 = v14 + 1;
          v15 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText>(*(this + 2));
          v16 = *(this + 6);
          v17 = *(this + 4) + 8 * v16;
          *(this + 6) = v16 + 1;
          *(v17 + 8) = v15;
          v12 = v22;
LABEL_23:
          v11 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText>(a3, v15, v12);
          v22 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_14;
          }
        }

        v14 = *(this + 7);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v14 + 1);
        v13 = *(this + 4);
        v14 = *v13;
        goto LABEL_20;
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 20) = v6 - 1;
        return v22;
      }

      v9 = *(this + 1);
      if (v9)
      {
        v10 = ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v10 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
        v5 = v22;
      }

      v22 = google::protobuf::internal::UnknownFieldParse(v6, v10, v5, a3);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v22, *(a3 + 23)))
      {
        return v22;
      }
    }

    v5 = (v22 + 2);
LABEL_5:
    v22 = v5;
    goto LABEL_6;
  }

  return v22;
}

unsigned __int8 *sentencepiece::NBestSentencePieceText::_InternalSerialize(sentencepiece::NBestSentencePieceText *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(this + 16, i);
      *a2 = 10;
      v9 = *(v8 + 11);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = (a2 + 3);
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = (a2 + 3);
        }
      }

      else
      {
        a2[1] = v9;
        v10 = (a2 + 2);
      }

      a2 = sentencepiece::SentencePieceText::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - a2 >= v17)
  {
    v19 = v17;
    memcpy(a2, v18, v17);
    a2 += v19;
    return a2;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, a2);
}

uint64_t sentencepiece::NBestSentencePieceText::ByteSizeLong(sentencepiece::NBestSentencePieceText *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sentencepiece::SentencePieceText::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 1);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(this + 10) = v2;
  return v2;
}

void sentencepiece::NBestSentencePieceText::CheckTypeAndMergeFrom(sentencepiece::NBestSentencePieceText *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::NBestSentencePieceText::MergeFrom(this, lpsrc);
}

void sentencepiece::NBestSentencePieceText::MergeFrom(sentencepiece::NBestSentencePieceText *this, const sentencepiece::NBestSentencePieceText *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 877);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(this + 16, a2 + 16);
}

void sub_1A8FA3AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::internal::AllAreInitialized<sentencepiece::SentencePieceText>(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(a1, v2);
    if (!google::protobuf::internal::ExtensionSet::IsInitialized((v5 + 16)))
    {
      break;
    }
  }

  while (google::protobuf::internal::AllAreInitialized<sentencepiece::SentencePieceText_SentencePiece>(v5 + 48));
  return v3 < 1;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x50uLL);
  sentencepiece::SentencePieceText_SentencePiece::SentencePieceText_SentencePiece(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x58uLL);
  sentencepiece::SentencePieceText::SentencePieceText(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NBestSentencePieceText>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x30uLL);
  sentencepiece::NBestSentencePieceText::NBestSentencePieceText(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(google::protobuf::internal::ArenaStringPtr *this)
{
  result = *this;
  if (result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 363);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: !tagged_ptr_.IsTagged(): ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    result = *this;
  }

  if (!result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 364);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: tagged_ptr_.UnsafeGet() != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    return *this;
  }

  return result;
}

void sub_1A8FA3F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(google::protobuf::internal::EpsCopyInputStream *this, const char **a2, int a3)
{
  v6 = *a2;
  if (!*a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 209);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: *ptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v6 = *a2;
  }

  if (v6 >= *this)
  {
    v10 = v6 - *(this + 2);
    if (v10 >= 17)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 212);
      v11 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (overrun) <= (kSlopBytes): ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    if (*(this + 7) == v10)
    {
      if (v10 >= 1 && !*(this + 2))
      {
        *a2 = 0;
      }

      v8 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v10, a3);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1A8FA4048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(unint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 1) == 0)
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator new();
  }

  v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(v2 + 24))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v2, 0x20, google::protobuf::internal::arena_destruct_object<google::protobuf::internal::InternalMetadata::Container<std::string>>);
  *AlignedAndAddCleanup = 0u;
  *(AlignedAndAddCleanup + 16) = 0u;
  *a1 = AlignedAndAddCleanup | 1;
  *AlignedAndAddCleanup = v2;
  return (AlignedAndAddCleanup + 8);
}

void google::protobuf::internal::arena_destruct_object<google::protobuf::internal::InternalMetadata::Container<std::string>>(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      sentencepiece::SentencePieceText_SentencePiece::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_1A8FA41DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      sentencepiece::SentencePieceText::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_1A8FA428C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sentencepiece::SentencePieceText_SentencePiece::~SentencePieceText_SentencePiece(*v3);
          MEMORY[0x1AC57D1A0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(google::protobuf::internal::ArenaImpl **this)
{
  v1 = *this;
  if (v1)
  {
    google::protobuf::internal::ArenaImpl::SpaceAllocated(v1);
  }
}

uint64_t google::protobuf::internal::EpsCopyInputStream::PushLimit(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, unsigned int a3)
{
  v4 = a2;
  if (a3 >= 0x7FFFFFF0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 128);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: limit >= 0 && limit <= INT_MAX - kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v7 = *(this + 1);
  v8 = v4 - v7 + a3;
  *this = v7 + (v8 & (v8 >> 31));
  LODWORD(v7) = *(this + 7);
  *(this + 7) = v8;
  return (v7 - v8);
}

void sub_1A8FA443C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v5);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_1A8FA4528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(uint64_t *a1, sentencepiece::SentencePieceText_SentencePiece **a2, sentencepiece::SentencePieceText_SentencePiece **a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SentencePieceText_SentencePiece>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText_SentencePiece>(v18);
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SentencePieceText_SentencePiece>::Merge(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sentencepiece::SentencePieceText::~SentencePieceText(*v3);
          MEMORY[0x1AC57D1A0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v5);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_1A8FA4794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText>::TypeHandler>(uint64_t *a1, sentencepiece::SentencePieceText **a2, sentencepiece::SentencePieceText **a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SentencePieceText>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SentencePieceText>(v18);
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SentencePieceText>::Merge(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void InitDefaultsscc_info_ModelProto_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::ModelProto::ModelProto(&sentencepiece::_ModelProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_ModelProto_default_instance_, v4);
}

void InitDefaultsscc_info_ModelProto_SentencePiece_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::ModelProto_SentencePiece::ModelProto_SentencePiece(sentencepiece::_ModelProto_SentencePiece_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, sentencepiece::_ModelProto_SentencePiece_default_instance_, v4);
}

void InitDefaultsscc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::NormalizerSpec::NormalizerSpec(&sentencepiece::_NormalizerSpec_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_NormalizerSpec_default_instance_, v4);
}

void InitDefaultsscc_info_SelfTestData_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::SelfTestData::SelfTestData(&sentencepiece::_SelfTestData_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_SelfTestData_default_instance_, v4);
}

void InitDefaultsscc_info_SelfTestData_Sample_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::SelfTestData_Sample::SelfTestData_Sample(sentencepiece::_SelfTestData_Sample_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, sentencepiece::_SelfTestData_Sample_default_instance_, v4);
}

void InitDefaultsscc_info_TrainerSpec_sentencepiece_5fmodel_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", a4);
  sentencepiece::TrainerSpec::TrainerSpec(&sentencepiece::_TrainerSpec_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &sentencepiece::_TrainerSpec_default_instance_, v4);
}

uint64_t sentencepiece::TrainerSpec::TrainerSpec(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1CAC538;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 128) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (atomic_load_explicit(scc_info_TrainerSpec_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_TrainerSpec_sentencepiece_5fmodel_2eproto);
  }

  *(a1 + 152) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 160) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 168) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0x1F4000000001;
  *(a1 + 280) = 0xF42403F7FDF3BLL;
  *(a1 + 288) = 1061158912;
  *(a1 + 292) = xmmword_1A8FD36B0;
  *(a1 + 308) = 16843009;
  *(a1 + 312) = 257;
  *(a1 + 316) = 1;
  *(a1 + 320) = 0xFFFFFFFF00000002;
  return a1;
}

void sub_1A8FA4C74(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v5);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v4);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void sentencepiece::TrainerSpec::~TrainerSpec(sentencepiece::TrainerSpec *this)
{
  sentencepiece::TrainerSpec::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 128);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 104);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 80);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 56);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::TrainerSpec::~TrainerSpec(this);

  JUMPOUT(0x1AC57D1A0);
}

google::protobuf::internal::ArenaStringPtr *sentencepiece::TrainerSpec::SharedDtor(sentencepiece::TrainerSpec *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 519);
    v3 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v25, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  if (*(this + 19) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v4 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 152));
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1AC57D1A0](v5, 0x1012C40EC159624);
  }

  if (*(this + 20) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v6 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 160));
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x1AC57D1A0](v7, 0x1012C40EC159624);
  }

  if (*(this + 21) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v8 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 168));
    v9 = v8;
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x1AC57D1A0](v9, 0x1012C40EC159624);
  }

  if (*(this + 22))
  {
    v10 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 176));
    v11 = v10;
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    MEMORY[0x1AC57D1A0](v11, 0x1012C40EC159624);
  }

  if (*(this + 23))
  {
    v12 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 184));
    v13 = v12;
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    MEMORY[0x1AC57D1A0](v13, 0x1012C40EC159624);
  }

  if (*(this + 24))
  {
    v14 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 192));
    v15 = v14;
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    MEMORY[0x1AC57D1A0](v15, 0x1012C40EC159624);
  }

  if (*(this + 25))
  {
    v16 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 200));
    v17 = v16;
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    MEMORY[0x1AC57D1A0](v17, 0x1012C40EC159624);
  }

  result = (this + 208);
  if (*(this + 26))
  {
    v19 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    v20 = v19;
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    result = MEMORY[0x1AC57D1A0](v20, 0x1012C40EC159624);
  }

  v22 = *(this + 27);
  v21 = (this + 216);
  if (v22 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v23 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v21);
    v24 = v23;
    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    return MEMORY[0x1AC57D1A0](v24, 0x1012C40EC159624);
  }

  return result;
}

void sub_1A8FA4F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::TrainerSpec::Clear(sentencepiece::TrainerSpec *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 16));
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 56);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128);
  v2 = *(this + 10);
  if (!v2)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    v3 = *(this + 19) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v5 = *(this + 21) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v4 = *(this + 20) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  v6 = *(this + 1);
  if (v6)
  {
    v14 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::ClearToDefault((this + 176), &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_surface_);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_27:
  v7 = *(this + 1);
  if (v7)
  {
    v15 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::ClearToDefault((this + 184), &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_piece_);
  if ((v2 & 0x20) == 0)
  {
LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_30:
  v8 = *(this + 1);
  if (v8)
  {
    v16 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::ClearToDefault(this + 8, &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_bos_piece_);
  if ((v2 & 0x40) != 0)
  {
LABEL_33:
    v9 = *(this + 1);
    if (v9)
    {
      v17 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::ClearToDefault((this + 200), &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_eos_piece_);
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_36;
    }

LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_9:
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_36:
  v10 = *(this + 1);
  if (v10)
  {
    v18 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::ClearToDefault((this + 208), &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_pad_piece_);
  if ((v2 & 0x100) != 0)
  {
LABEL_39:
    v11 = *(this + 27) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
    }
  }

LABEL_42:
  if ((v2 & 0xFE00) != 0)
  {
    *(this + 28) = 0;
    *(this + 29) = 0;
    *(this + 239) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 247) = 0;
    *(this + 271) = 0;
    *(this + 255) = 0;
    *(this + 263) = 0;
    *(this + 68) = 1;
  }

  if (HIBYTE(v2))
  {
    *(this + 276) = 0x3F7FDF3B00001F40;
    *(this + 284) = 0x3F400000000F4240;
    *(this + 292) = xmmword_1A8FD36B0;
  }

  if (*(this + 44))
  {
    *(this + 156) = 257;
    *(this + 77) = 16843009;
    *(this + 316) = 0x200000001;
  }

  *(this + 81) = -1;
  *(this + 5) = 0;
  v12 = *(this + 1);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 31) < 0)
    {
      **(v13 + 8) = 0;
      *(v13 + 16) = 0;
    }

    else
    {
      *(v13 + 8) = 0;
      *(v13 + 31) = 0;
    }
  }
}

unsigned __int8 *sentencepiece::TrainerSpec::_InternalSerialize(sentencepiece::TrainerSpec *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 16);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 56, i);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = *(v8 + 8), v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        memcpy(a2 + 2, v10, v9);
        a2 += v9 + 2;
      }
    }
  }

  v11 = *(this + 10);
  if (v11)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, (*(this + 19) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v11 & 0x800000) == 0)
    {
LABEL_15:
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }
  }

  else if ((v11 & 0x800000) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 68);
  *a2 = 24;
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v15 | 0x80;
        v18 = v15 >> 7;
        ++a2;
        v19 = v15 >> 14;
        v15 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    a2[1] = v13;
    a2 += 2;
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 69);
  *a2 = 32;
  if (v12 > 0x7F)
  {
    a2[1] = v12 | 0x80;
    v14 = v12 >> 7;
    if (v12 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v14 | 0x80;
        v16 = v14 >> 7;
        ++a2;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
      *(a2 - 1) = v16;
    }

    else
    {
      a2[2] = v14;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v12;
    a2 += 2;
  }

LABEL_37:
  v20 = *(this + 22);
  if (v20 >= 1)
  {
    for (j = 0; j != v20; ++j)
    {
      v22 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80, j);
      v23 = *(v22 + 23);
      if (v23 < 0 && (v23 = *(v22 + 8), v23 > 127) || *a3 - a2 + 14 < v23)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 5, v22, a2);
      }

      else
      {
        *a2 = 42;
        a2[1] = v23;
        if (*(v22 + 23) >= 0)
        {
          v24 = v22;
        }

        else
        {
          v24 = *v22;
        }

        memcpy(a2 + 2, v24, v23);
        a2 += v23 + 2;
      }
    }
  }

  if ((v11 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 56);
    *a2 = 48;
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v28 | 0x80;
          v31 = v28 >> 7;
          ++a2;
          v32 = v28 >> 14;
          v28 >>= 7;
        }

        while (v32);
        *(a2 - 1) = v31;
        if ((v11 & 2) != 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        a2[2] = v28;
        a2 += 3;
        if ((v11 & 2) != 0)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      a2[1] = v26;
      a2 += 2;
      if ((v11 & 2) != 0)
      {
        goto LABEL_80;
      }
    }

LABEL_51:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_81;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_51;
  }

LABEL_80:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 7, (*(this + 20) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_52:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_84;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 70);
  *a2 = 85;
  *(a2 + 1) = v33;
  a2 += 5;
  if ((v11 & 0x800) == 0)
  {
LABEL_53:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_54;
    }

LABEL_95:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v38 = *(this + 57);
    *a2 = 96;
    if (v38 > 0x7F)
    {
      a2[1] = v38 | 0x80;
      v39 = v38 >> 7;
      if (v38 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v39 | 0x80;
          v40 = v39 >> 7;
          ++a2;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
        *(a2 - 1) = v40;
        if ((v11 & 0x1000) != 0)
        {
          goto LABEL_106;
        }
      }

      else
      {
        a2[2] = v39;
        a2 += 3;
        if ((v11 & 0x1000) != 0)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      a2[1] = v38;
      a2 += 2;
      if ((v11 & 0x1000) != 0)
      {
        goto LABEL_106;
      }
    }

LABEL_55:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_117:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v46 = *(this + 71);
    *a2 = 112;
    if (v46 > 0x7F)
    {
      a2[1] = v46 | 0x80;
      v47 = v46 >> 7;
      if (v46 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v47 | 0x80;
          v48 = v47 >> 7;
          ++a2;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
        *(a2 - 1) = v48;
        if ((v11 & 0x8000000) != 0)
        {
          goto LABEL_128;
        }
      }

      else
      {
        a2[2] = v47;
        a2 += 3;
        if ((v11 & 0x8000000) != 0)
        {
          goto LABEL_128;
        }
      }
    }

    else
    {
      a2[1] = v46;
      a2 += 2;
      if ((v11 & 0x8000000) != 0)
      {
        goto LABEL_128;
      }
    }

LABEL_57:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_131:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v51 = *(this + 73);
    *a2 = 384;
    if (v51 > 0x7F)
    {
      a2[2] = v51 | 0x80;
      v52 = v51 >> 7;
      if (v51 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v52 | 0x80;
          v53 = v52 >> 7;
          ++a2;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
        *(a2 - 1) = v53;
        if ((v11 & 0x20000000) != 0)
        {
          goto LABEL_142;
        }
      }

      else
      {
        a2[3] = v52;
        a2 += 4;
        if ((v11 & 0x20000000) != 0)
        {
          goto LABEL_142;
        }
      }
    }

    else
    {
      a2[2] = v51;
      a2 += 3;
      if ((v11 & 0x20000000) != 0)
      {
        goto LABEL_142;
      }
    }

LABEL_59:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_60;
  }

LABEL_84:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 29);
  *a2 = 88;
  if (v34 > 0x7F)
  {
    a2[1] = v34 | 0x80;
    v35 = v34 >> 7;
    if (v34 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++a2;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(a2 - 1) = v36;
      if ((v11 & 0x400) != 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      a2[2] = v35;
      a2 += 3;
      if ((v11 & 0x400) != 0)
      {
        goto LABEL_95;
      }
    }
  }

  else
  {
    a2[1] = v34;
    a2 += 2;
    if ((v11 & 0x400) != 0)
    {
      goto LABEL_95;
    }
  }

LABEL_54:
  if ((v11 & 0x1000) == 0)
  {
    goto LABEL_55;
  }

LABEL_106:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 60);
  *a2 = 104;
  if (v42 > 0x7F)
  {
    a2[1] = v42 | 0x80;
    v43 = v42 >> 7;
    if (v42 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++a2;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(a2 - 1) = v44;
      if ((v11 & 0x4000000) != 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      a2[2] = v43;
      a2 += 3;
      if ((v11 & 0x4000000) != 0)
      {
        goto LABEL_117;
      }
    }
  }

  else
  {
    a2[1] = v42;
    a2 += 2;
    if ((v11 & 0x4000000) != 0)
    {
      goto LABEL_117;
    }
  }

LABEL_56:
  if ((v11 & 0x8000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_128:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(this + 72);
  *a2 = 125;
  *(a2 + 1) = v50;
  a2 += 5;
  if ((v11 & 0x10000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_58:
  if ((v11 & 0x20000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_142:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v55 = *(this + 74);
  *a2 = 392;
  if (v55 > 0x7F)
  {
    a2[2] = v55 | 0x80;
    v56 = v55 >> 7;
    if (v55 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++a2;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(a2 - 1) = v57;
      if ((v11 & 0x40000000) == 0)
      {
        goto LABEL_153;
      }
    }

    else
    {
      a2[3] = v56;
      a2 += 4;
      if ((v11 & 0x40000000) == 0)
      {
        goto LABEL_153;
      }
    }
  }

  else
  {
    a2[2] = v55;
    a2 += 3;
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }
  }

LABEL_60:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 75);
  *a2 = 400;
  if (v25 > 0x7F)
  {
    a2[2] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v27 | 0x80;
        v29 = v27 >> 7;
        ++a2;
        v30 = v27 >> 14;
        v27 >>= 7;
      }

      while (v30);
      *(a2 - 1) = v29;
    }

    else
    {
      a2[3] = v27;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v25;
    a2 += 3;
  }

LABEL_153:
  if (*(this + 44))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v59 = *(this + 308);
    *a2 = 408;
    a2[2] = v59;
    a2 += 3;
  }

  if ((*(this + 10) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v60 = *(this + 76);
    *a2 = 416;
    if (v60 > 0x7F)
    {
      a2[2] = v60 | 0x80;
      v61 = v60 >> 7;
      if (v60 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v61 | 0x80;
          v62 = v61 >> 7;
          ++a2;
          v63 = v61 >> 14;
          v61 >>= 7;
        }

        while (v63);
        *(a2 - 1) = v62;
      }

      else
      {
        a2[3] = v61;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v60;
      a2 += 3;
    }
  }

  v64 = *(this + 11);
  if ((v64 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v65 = *(this + 309);
    *a2 = 424;
    a2[2] = v65;
    a2 += 3;
    if ((v64 & 8) == 0)
    {
LABEL_169:
      if ((v64 & 4) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_177;
    }
  }

  else if ((v64 & 8) == 0)
  {
    goto LABEL_169;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v66 = *(this + 311);
  *a2 = 432;
  a2[2] = v66;
  a2 += 3;
  if ((v64 & 4) != 0)
  {
LABEL_177:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v67 = *(this + 310);
    *a2 = 440;
    a2[2] = v67;
    a2 += 3;
  }

LABEL_180:
  v68 = *(this + 10);
  if ((v68 & 0x4000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v69 = *(this + 245);
    *a2 = 448;
    a2[2] = v69;
    a2 += 3;
    if ((v68 & 0x10000) == 0)
    {
LABEL_182:
      if ((v68 & 0x8000) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_190;
    }
  }

  else if ((v68 & 0x10000) == 0)
  {
    goto LABEL_182;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v70 = *(this + 247);
  *a2 = 456;
  a2[2] = v70;
  a2 += 3;
  if ((v68 & 0x8000) != 0)
  {
LABEL_190:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v71 = *(this + 246);
    *a2 = 464;
    a2[2] = v71;
    a2 += 3;
  }

LABEL_193:
  v72 = *(this + 28);
  if (v72 >= 1)
  {
    for (k = 0; k != v72; ++k)
    {
      v74 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104, k);
      v75 = *(v74 + 23);
      if (v75 < 0 && (v75 = *(v74 + 8), v75 > 127) || *a3 - a2 + 13 < v75)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 30, v74, a2);
      }

      else
      {
        *a2 = 498;
        a2[2] = v75;
        if (*(v74 + 23) >= 0)
        {
          v76 = v74;
        }

        else
        {
          v76 = *v74;
        }

        memcpy(a2 + 3, v76, v75);
        a2 += v75 + 3;
      }
    }
  }

  v77 = *(this + 34);
  if (v77 >= 1)
  {
    for (m = 0; m != v77; ++m)
    {
      v79 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128, m);
      v80 = *(v79 + 23);
      if (v80 < 0 && (v80 = *(v79 + 8), v80 > 127) || *a3 - a2 + 13 < v80)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 31, v79, a2);
      }

      else
      {
        *a2 = 506;
        a2[2] = v80;
        if (*(v79 + 23) >= 0)
        {
          v81 = v79;
        }

        else
        {
          v81 = *v79;
        }

        memcpy(a2 + 3, v81, v80);
        a2 += v80 + 3;
      }
    }
  }

  v82 = *(this + 11);
  if ((v82 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v83 = *(this + 312);
    *a2 = 640;
    a2[2] = v83;
    a2 += 3;
  }

  if ((v82 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v84 = *(this + 313);
    *a2 = 648;
    a2[2] = v84;
    a2 += 3;
  }

  v85 = *(this + 10);
  if ((v85 & 0x40000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v86 = *(this + 249);
    *a2 = 656;
    a2[2] = v86;
    a2 += 3;
    if ((v85 & 0x20000) == 0)
    {
LABEL_227:
      if ((v85 & 4) == 0)
      {
        goto LABEL_228;
      }

      goto LABEL_236;
    }
  }

  else if ((v85 & 0x20000) == 0)
  {
    goto LABEL_227;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v87 = *(this + 248);
  *a2 = 664;
  a2[2] = v87;
  a2 += 3;
  if ((v85 & 4) == 0)
  {
LABEL_228:
    if ((v85 & 0x100000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_237;
  }

LABEL_236:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 36, (*(this + 21) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v85 & 0x100000) == 0)
  {
    goto LABEL_246;
  }

LABEL_237:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v88 = *(this + 63);
  *a2 = 704;
  if (v88 > 0x7F)
  {
    a2[2] = v88 | 0x80;
    v89 = v88 >> 7;
    if (v88 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++a2;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(a2 - 1) = v90;
    }

    else
    {
      a2[3] = v89;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v88;
    a2 += 3;
  }

LABEL_246:
  v92 = *(this + 11);
  if ((v92 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v94 = *(this + 79);
    *a2 = 712;
    if (v94 > 0x7F)
    {
      a2[2] = v94 | 0x80;
      v96 = v94 >> 7;
      if (v94 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v96 | 0x80;
          v99 = v96 >> 7;
          ++a2;
          v100 = v96 >> 14;
          v96 >>= 7;
        }

        while (v100);
        *(a2 - 1) = v99;
        if ((v92 & 0x80) != 0)
        {
          goto LABEL_269;
        }
      }

      else
      {
        a2[3] = v96;
        a2 += 4;
        if ((v92 & 0x80) != 0)
        {
          goto LABEL_269;
        }
      }
    }

    else
    {
      a2[2] = v94;
      a2 += 3;
      if ((v92 & 0x80) != 0)
      {
        goto LABEL_269;
      }
    }

LABEL_248:
    if ((v92 & 0x100) == 0)
    {
      goto LABEL_280;
    }

    goto LABEL_249;
  }

  if ((v92 & 0x80) == 0)
  {
    goto LABEL_248;
  }

LABEL_269:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v101 = *(this + 80);
  *a2 = 720;
  if (v101 > 0x7F)
  {
    a2[2] = v101 | 0x80;
    v102 = v101 >> 7;
    if (v101 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v102 | 0x80;
        v103 = v102 >> 7;
        ++a2;
        v104 = v102 >> 14;
        v102 >>= 7;
      }

      while (v104);
      *(a2 - 1) = v103;
      if ((v92 & 0x100) == 0)
      {
        goto LABEL_280;
      }
    }

    else
    {
      a2[3] = v102;
      a2 += 4;
      if ((v92 & 0x100) == 0)
      {
        goto LABEL_280;
      }
    }
  }

  else
  {
    a2[2] = v101;
    a2 += 3;
    if ((v92 & 0x100) == 0)
    {
      goto LABEL_280;
    }
  }

LABEL_249:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v93 = *(this + 81);
  *a2 = 728;
  if (v93 > 0x7F)
  {
    a2[2] = v93 | 0x80;
    v95 = v93 >> 7;
    if (v93 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v95 | 0x80;
        v97 = v95 >> 7;
        ++a2;
        v98 = v95 >> 14;
        v95 >>= 7;
      }

      while (v98);
      *(a2 - 1) = v97;
    }

    else
    {
      a2[3] = v95;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v93;
    a2 += 3;
  }

LABEL_280:
  v105 = *(this + 10);
  if ((v105 & 8) != 0)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 44, (*(this + 22) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v105 & 0x10) == 0)
    {
LABEL_282:
      if ((v105 & 0x20) == 0)
      {
        goto LABEL_283;
      }

      goto LABEL_295;
    }
  }

  else if ((v105 & 0x10) == 0)
  {
    goto LABEL_282;
  }

  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 45, (*(this + 23) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x20) == 0)
  {
LABEL_283:
    if ((v105 & 0x40) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_296;
  }

LABEL_295:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 46, (*(this + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x40) == 0)
  {
LABEL_284:
    if ((v105 & 0x80) == 0)
    {
      goto LABEL_285;
    }

    goto LABEL_297;
  }

LABEL_296:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 47, (*(this + 25) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x80) == 0)
  {
LABEL_285:
    if ((v105 & 0x80000) == 0)
    {
      goto LABEL_286;
    }

    goto LABEL_298;
  }

LABEL_297:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 48, (*(this + 26) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x80000) == 0)
  {
LABEL_286:
    if ((v105 & 0x2000) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_301;
  }

LABEL_298:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v110 = *(this + 250);
  *a2 = 904;
  a2[2] = v110;
  a2 += 3;
  if ((v105 & 0x2000) == 0)
  {
LABEL_287:
    if ((v105 & 0x200000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_304;
  }

LABEL_301:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v111 = *(this + 244);
  *a2 = 912;
  a2[2] = v111;
  a2 += 3;
  if ((v105 & 0x200000) == 0)
  {
LABEL_288:
    if ((v105 & 0x400000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_307;
  }

LABEL_304:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v112 = *(this + 64);
  *a2 = 925;
  *(a2 + 2) = v112;
  a2 += 6;
  if ((v105 & 0x400000) == 0)
  {
LABEL_289:
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_291;
    }

    goto LABEL_290;
  }

LABEL_307:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v113 = *(this + 33);
  *a2 = 928;
  if (v113 <= 0x7F)
  {
    a2[2] = v113;
    a2 += 3;
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_291;
    }

LABEL_290:
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 53, (*(this + 27) & 0xFFFFFFFFFFFFFFFELL), a2);
    goto LABEL_291;
  }

  a2[2] = v113 | 0x80;
  v114 = v113 >> 7;
  if (v113 >> 14)
  {
    a2 += 4;
    do
    {
      *(a2 - 1) = v114 | 0x80;
      v115 = v114 >> 7;
      ++a2;
      v116 = v114 >> 14;
      v114 >>= 7;
    }

    while (v116);
    *(a2 - 1) = v115;
    if ((v105 & 0x100) != 0)
    {
      goto LABEL_290;
    }
  }

  else
  {
    a2[3] = v114;
    a2 += 4;
    if ((v105 & 0x100) != 0)
    {
      goto LABEL_290;
    }
  }

LABEL_291:
  v106 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 200, 0x20000000, a2, a3);
  v107 = v106;
  v108 = *(this + 1);
  if ((v108 & 1) == 0)
  {
    return v107;
  }

  v117 = v108 & 0xFFFFFFFFFFFFFFFELL;
  v118 = *(v117 + 31);
  if (v118 < 0)
  {
    v119 = *(v117 + 8);
    v118 = *(v117 + 16);
  }

  else
  {
    v119 = (v117 + 8);
  }

  if (*a3 - v106 >= v118)
  {
    v120 = v118;
    memcpy(v106, v119, v118);
    v107 += v120;
    return v107;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v119, v118, v106);
}

uint64_t sentencepiece::TrainerSpec::ByteSizeLong(sentencepiece::TrainerSpec *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 16);
  v4 = v2 + v3;
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 56, v5);
      v7 = *(v6 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v6 + 8);
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      ++v5;
    }

    while (v3 != v5);
  }

  v8 = *(this + 22);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80, v10);
      v12 = *(v11 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v11 + 8);
      }

      v9 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      ++v10;
    }

    while (v8 != v10);
  }

  v13 = *(this + 28);
  v14 = v9 + 2 * v13;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104, v15);
      v17 = *(v16 + 23);
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v16 + 8);
      }

      v14 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      ++v15;
    }

    while (v13 != v15);
  }

  v18 = *(this + 34);
  v19 = v14 + 2 * v18;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128, v20);
      v22 = *(v21 + 23);
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v21 + 8);
      }

      v19 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      ++v20;
    }

    while (v18 != v20);
  }

  v23 = *(this + 10);
  if (!v23)
  {
    goto LABEL_33;
  }

  if (v23)
  {
    v58 = *(this + 19) & 0xFFFFFFFFFFFFFFFELL;
    v59 = *(v58 + 23);
    v60 = *(v58 + 8);
    if ((v59 & 0x80u) == 0)
    {
      v60 = v59;
    }

    v19 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_24:
      if ((v23 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_131;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_24;
  }

  v61 = *(this + 20) & 0xFFFFFFFFFFFFFFFELL;
  v62 = *(v61 + 23);
  v63 = *(v61 + 8);
  if ((v62 & 0x80u) == 0)
  {
    v63 = v62;
  }

  v19 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) == 0)
  {
LABEL_25:
    if ((v23 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_134;
  }

LABEL_131:
  v64 = *(this + 21) & 0xFFFFFFFFFFFFFFFELL;
  v65 = *(v64 + 23);
  v66 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v66 = v65;
  }

  v19 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 8) == 0)
  {
LABEL_26:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_137;
  }

LABEL_134:
  v67 = *(this + 22) & 0xFFFFFFFFFFFFFFFELL;
  v68 = *(v67 + 23);
  v69 = *(v67 + 8);
  if ((v68 & 0x80u) == 0)
  {
    v69 = v68;
  }

  v19 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x10) == 0)
  {
LABEL_27:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_140:
    v73 = *(this + 24) & 0xFFFFFFFFFFFFFFFELL;
    v74 = *(v73 + 23);
    v75 = *(v73 + 8);
    if ((v74 & 0x80u) == 0)
    {
      v75 = v74;
    }

    v19 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x40) == 0)
    {
LABEL_29:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    goto LABEL_143;
  }

LABEL_137:
  v70 = *(this + 23) & 0xFFFFFFFFFFFFFFFELL;
  v71 = *(v70 + 23);
  v72 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v72 = v71;
  }

  v19 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_140;
  }

LABEL_28:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_143:
  v76 = *(this + 25) & 0xFFFFFFFFFFFFFFFELL;
  v77 = *(v76 + 23);
  v78 = *(v76 + 8);
  if ((v77 & 0x80u) == 0)
  {
    v78 = v77;
  }

  v19 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x80) != 0)
  {
LABEL_30:
    v24 = *(this + 26) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v19 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_50;
  }

  if ((v23 & 0x100) != 0)
  {
    v79 = *(this + 27) & 0xFFFFFFFFFFFFFFFELL;
    v80 = *(v79 + 23);
    v81 = *(v79 + 8);
    if ((v80 & 0x80u) == 0)
    {
      v81 = v80;
    }

    v19 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x200) == 0)
    {
LABEL_36:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_154;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_36;
  }

  v82 = *(this + 56);
  v83 = ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v82 >= 0)
  {
    v84 = v83;
  }

  else
  {
    v84 = 11;
  }

  v19 += v84;
  if ((v23 & 0x400) == 0)
  {
LABEL_37:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_38;
    }

LABEL_158:
    v19 += ((9 * (__clz(*(this + 29) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v23 & 0x1000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

LABEL_154:
  v85 = *(this + 57);
  v86 = ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v85 >= 0)
  {
    v87 = v86;
  }

  else
  {
    v87 = 11;
  }

  v19 += v87;
  if ((v23 & 0x800) != 0)
  {
    goto LABEL_158;
  }

LABEL_38:
  if ((v23 & 0x1000) != 0)
  {
LABEL_39:
    v27 = *(this + 60);
    v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v27 >= 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 11;
    }

    v19 += v29;
  }

LABEL_43:
  v30 = v19 + 3;
  if ((v23 & 0x2000) == 0)
  {
    v30 = v19;
  }

  if ((v23 & 0x4000) != 0)
  {
    v30 += 3;
  }

  if ((v23 & 0x8000) != 0)
  {
    v19 = v30 + 3;
  }

  else
  {
    v19 = v30;
  }

LABEL_50:
  if ((v23 & 0xFF0000) != 0)
  {
    v31 = v19 + 3;
    if ((v23 & 0x10000) == 0)
    {
      v31 = v19;
    }

    if ((v23 & 0x20000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x40000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x80000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x100000) != 0)
    {
      v32 = *(this + 63);
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v32 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 12;
      }

      v31 += v34;
    }

    if ((v23 & 0x200000) != 0)
    {
      v19 = v31 + 6;
    }

    else
    {
      v19 = v31;
    }

    if ((v23 & 0x400000) != 0)
    {
      v19 += ((9 * (__clz(*(this + 33) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v23 & 0x800000) != 0)
    {
      v35 = *(this + 68);
      v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v35 >= 0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 11;
      }

      v19 += v37;
    }
  }

  if (!HIBYTE(v23))
  {
    goto LABEL_94;
  }

  if ((v23 & 0x1000000) != 0)
  {
    v38 = *(this + 69);
    v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v38 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 11;
    }

    v19 += v40;
  }

  v41 = v19 + 5;
  if ((v23 & 0x2000000) == 0)
  {
    v41 = v19;
  }

  if ((v23 & 0x4000000) != 0)
  {
    v42 = *(this + 71);
    v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v42 >= 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 11;
    }

    v41 += v44;
  }

  if ((v23 & 0x8000000) != 0)
  {
    v19 = v41 + 5;
  }

  else
  {
    v19 = v41;
  }

  if ((v23 & 0x10000000) == 0)
  {
    if ((v23 & 0x20000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_164:
    v91 = *(this + 74);
    v92 = ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v91 >= 0)
    {
      v93 = v92;
    }

    else
    {
      v93 = 12;
    }

    v19 += v93;
    if ((v23 & 0x40000000) == 0)
    {
LABEL_93:
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_172;
    }

    goto LABEL_168;
  }

  v88 = *(this + 73);
  v89 = ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v88 >= 0)
  {
    v90 = v89;
  }

  else
  {
    v90 = 12;
  }

  v19 += v90;
  if ((v23 & 0x20000000) != 0)
  {
    goto LABEL_164;
  }

LABEL_92:
  if ((v23 & 0x40000000) == 0)
  {
    goto LABEL_93;
  }

LABEL_168:
  v94 = *(this + 75);
  v95 = ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v94 >= 0)
  {
    v96 = v95;
  }

  else
  {
    v96 = 12;
  }

  v19 += v96;
  if ((v23 & 0x80000000) != 0)
  {
LABEL_172:
    v97 = *(this + 76);
    v98 = ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v97 >= 0)
    {
      v99 = v98;
    }

    else
    {
      v99 = 12;
    }

    v19 += v99;
  }

LABEL_94:
  v45 = *(this + 11);
  if (v45)
  {
    v46 = v19 + 3;
    if ((v45 & 1) == 0)
    {
      v46 = v19;
    }

    if ((v45 & 2) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 4) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 8) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x10) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x20) != 0)
    {
      v19 = v46 + 3;
    }

    else
    {
      v19 = v46;
    }

    if ((v45 & 0x40) != 0)
    {
      v47 = *(this + 79);
      v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v47 >= 0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 12;
      }

      v19 += v49;
    }

    if ((v45 & 0x80) != 0)
    {
      v50 = *(this + 80);
      v51 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v50 >= 0)
      {
        v52 = v51;
      }

      else
      {
        v52 = 12;
      }

      v19 += v52;
    }
  }

  if ((v45 & 0x100) != 0)
  {
    v53 = *(this + 81);
    v54 = ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v53 >= 0)
    {
      v55 = v54;
    }

    else
    {
      v55 = 12;
    }

    v19 += v55;
  }

  v56 = *(this + 1);
  if (v56)
  {
    v100 = v56 & 0xFFFFFFFFFFFFFFFELL;
    v101 = *((v56 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v101 < 0)
    {
      v101 = *(v100 + 16);
    }

    v19 += v101;
  }

  *(this + 12) = v19;
  return v19;
}

void sentencepiece::TrainerSpec::CheckTypeAndMergeFrom(sentencepiece::TrainerSpec *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::TrainerSpec::MergeFrom(this, lpsrc);
}

void sentencepiece::TrainerSpec::MergeFrom(sentencepiece::TrainerSpec *this, const sentencepiece::TrainerSpec *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v35, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1671);
    v4 = google::protobuf::internal::LogMessage::operator<<(v35, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v34, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v35[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 56, a2 + 56);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80, a2 + 80);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104, a2 + 104);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128, a2 + 128);
  v13 = *(a2 + 10);
  if (!v13)
  {
    goto LABEL_47;
  }

  if (v13)
  {
    v14 = *(a2 + 19);
    *(this + 10) |= 1u;
    v15 = *(this + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 152), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v13 & 2) == 0)
    {
LABEL_16:
      if ((v13 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 20);
  *(this + 10) |= 2u;
  v17 = *(this + 1);
  if (v17)
  {
    v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 160), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
  if ((v13 & 4) == 0)
  {
LABEL_17:
    if ((v13 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_29:
  v18 = *(a2 + 21);
  *(this + 10) |= 4u;
  v19 = *(this + 1);
  if (v19)
  {
    v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 168), (v18 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v13 & 8) == 0)
  {
LABEL_18:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_32:
  v20 = *(a2 + 22);
  *(this + 10) |= 8u;
  v21 = *(this + 1);
  if (v21)
  {
    v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 176), (v20 & 0xFFFFFFFFFFFFFFFELL), v21);
  if ((v13 & 0x10) == 0)
  {
LABEL_19:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_38:
    v24 = *(a2 + 24);
    *(this + 10) |= 0x20u;
    v25 = *(this + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 192), (v24 & 0xFFFFFFFFFFFFFFFELL), v25);
    if ((v13 & 0x40) == 0)
    {
LABEL_21:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_35:
  v22 = *(a2 + 23);
  *(this + 10) |= 0x10u;
  v23 = *(this + 1);
  if (v23)
  {
    v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 184), (v22 & 0xFFFFFFFFFFFFFFFELL), v23);
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_20:
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_41:
  v26 = *(a2 + 25);
  *(this + 10) |= 0x40u;
  v27 = *(this + 1);
  if (v27)
  {
    v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 200), (v26 & 0xFFFFFFFFFFFFFFFELL), v27);
  if ((v13 & 0x80) != 0)
  {
LABEL_44:
    v28 = *(a2 + 26);
    *(this + 10) |= 0x80u;
    v29 = *(this + 1);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 208), (v28 & 0xFFFFFFFFFFFFFFFELL), v29);
  }

LABEL_47:
  if ((v13 & 0xFF00) == 0)
  {
    goto LABEL_58;
  }

  if ((v13 & 0x100) != 0)
  {
    v32 = *(a2 + 27);
    *(this + 10) |= 0x100u;
    v33 = *(this + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 216), (v32 & 0xFFFFFFFFFFFFFFFELL), v33);
    if ((v13 & 0x200) == 0)
    {
LABEL_50:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_97;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  *(this + 56) = *(a2 + 56);
  if ((v13 & 0x400) == 0)
  {
LABEL_51:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(this + 57) = *(a2 + 57);
  if ((v13 & 0x800) == 0)
  {
LABEL_52:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(this + 29) = *(a2 + 29);
  if ((v13 & 0x1000) == 0)
  {
LABEL_53:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(this + 60) = *(a2 + 60);
  if ((v13 & 0x2000) == 0)
  {
LABEL_54:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

LABEL_101:
    *(this + 245) = *(a2 + 245);
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_100:
  *(this + 244) = *(a2 + 244);
  if ((v13 & 0x4000) != 0)
  {
    goto LABEL_101;
  }

LABEL_55:
  if ((v13 & 0x8000) != 0)
  {
LABEL_56:
    *(this + 246) = *(a2 + 246);
  }

LABEL_57:
  *(this + 10) |= v13;
LABEL_58:
  if ((v13 & 0xFF0000) == 0)
  {
    goto LABEL_69;
  }

  if ((v13 & 0x10000) != 0)
  {
    *(this + 247) = *(a2 + 247);
    if ((v13 & 0x20000) == 0)
    {
LABEL_61:
      if ((v13 & 0x40000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_105;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_61;
  }

  *(this + 248) = *(a2 + 248);
  if ((v13 & 0x40000) == 0)
  {
LABEL_62:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(this + 249) = *(a2 + 249);
  if ((v13 & 0x80000) == 0)
  {
LABEL_63:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(this + 250) = *(a2 + 250);
  if ((v13 & 0x100000) == 0)
  {
LABEL_64:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(this + 63) = *(a2 + 63);
  if ((v13 & 0x200000) == 0)
  {
LABEL_65:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

LABEL_109:
    *(this + 33) = *(a2 + 33);
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_108:
  *(this + 64) = *(a2 + 64);
  if ((v13 & 0x400000) != 0)
  {
    goto LABEL_109;
  }

LABEL_66:
  if ((v13 & 0x800000) != 0)
  {
LABEL_67:
    *(this + 68) = *(a2 + 68);
  }

LABEL_68:
  *(this + 10) |= v13;
LABEL_69:
  if (!HIBYTE(v13))
  {
    goto LABEL_79;
  }

  if ((v13 & 0x1000000) != 0)
  {
    *(this + 69) = *(a2 + 69);
    if ((v13 & 0x2000000) == 0)
    {
LABEL_72:
      if ((v13 & 0x4000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_121;
    }
  }

  else if ((v13 & 0x2000000) == 0)
  {
    goto LABEL_72;
  }

  *(this + 70) = *(a2 + 70);
  if ((v13 & 0x4000000) == 0)
  {
LABEL_73:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(this + 71) = *(a2 + 71);
  if ((v13 & 0x8000000) == 0)
  {
LABEL_74:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(this + 72) = *(a2 + 72);
  if ((v13 & 0x10000000) == 0)
  {
LABEL_75:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(this + 73) = *(a2 + 73);
  if ((v13 & 0x20000000) == 0)
  {
LABEL_76:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_125:
    *(this + 75) = *(a2 + 75);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_126:
    *(this + 76) = *(a2 + 76);
    goto LABEL_78;
  }

LABEL_124:
  *(this + 74) = *(a2 + 74);
  if ((v13 & 0x40000000) != 0)
  {
    goto LABEL_125;
  }

LABEL_77:
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

LABEL_78:
  *(this + 10) |= v13;
LABEL_79:
  v30 = *(a2 + 11);
  if (!v30)
  {
    goto LABEL_90;
  }

  if (v30)
  {
    *(this + 308) = *(a2 + 308);
    if ((v30 & 2) == 0)
    {
LABEL_82:
      if ((v30 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_113;
    }
  }

  else if ((v30 & 2) == 0)
  {
    goto LABEL_82;
  }

  *(this + 309) = *(a2 + 309);
  if ((v30 & 4) == 0)
  {
LABEL_83:
    if ((v30 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(this + 310) = *(a2 + 310);
  if ((v30 & 8) == 0)
  {
LABEL_84:
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(this + 311) = *(a2 + 311);
  if ((v30 & 0x10) == 0)
  {
LABEL_85:
    if ((v30 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(this + 312) = *(a2 + 312);
  if ((v30 & 0x20) == 0)
  {
LABEL_86:
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_87;
    }

LABEL_117:
    *(this + 79) = *(a2 + 79);
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_116:
  *(this + 313) = *(a2 + 313);
  if ((v30 & 0x40) != 0)
  {
    goto LABEL_117;
  }

LABEL_87:
  if ((v30 & 0x80) != 0)
  {
LABEL_88:
    *(this + 80) = *(a2 + 80);
  }

LABEL_89:
  *(this + 11) |= v30;
LABEL_90:
  if ((v30 & 0x100) != 0)
  {
    v31 = *(a2 + 81);
    *(this + 11) |= 0x100u;
    *(this + 81) = v31;
  }
}

void sub_1A8FA7288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::NormalizerSpec::NormalizerSpec(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1CAC5B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_1F1CAC658;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 24, a2);
  *(a1 + 48) = 0;
  if (atomic_load_explicit(scc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto);
  }

  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = 16843008;
  return a1;
}

void sentencepiece::NormalizerSpec::~NormalizerSpec(sentencepiece::NormalizerSpec *this)
{
  sentencepiece::NormalizerSpec::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 24));
}

{
  sentencepiece::NormalizerSpec::~NormalizerSpec(this);

  JUMPOUT(0x1AC57D1A0);
}

google::protobuf::internal::ArenaStringPtr *sentencepiece::NormalizerSpec::SharedDtor(sentencepiece::NormalizerSpec *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1972);
    v3 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  if (*(this + 7) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v4 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 56));
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1AC57D1A0](v5, 0x1012C40EC159624);
  }

  result = (this + 64);
  if (*(this + 8) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v7 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    v8 = v7;
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x1AC57D1A0](v8, 0x1012C40EC159624);
  }

  v10 = *(this + 9);
  v9 = (this + 72);
  if (v10 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v11 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v9);
    v12 = v11;
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    return MEMORY[0x1AC57D1A0](v12, 0x1012C40EC159624);
  }

  return result;
}

void sub_1A8FA74EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void non-virtual thunk tosentencepiece::NormalizerSpec::~NormalizerSpec(sentencepiece::NormalizerSpec *this)
{
  sentencepiece::NormalizerSpec::~NormalizerSpec((this - 16));
}

{
  sentencepiece::NormalizerSpec::~NormalizerSpec((this - 16));

  JUMPOUT(0x1AC57D1A0);
}

void sentencepiece::NormalizerSpec::Clear(sentencepiece::NormalizerSpec *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 24));
  v2 = *(this + 12);
  if ((v2 & 7) != 0)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v4 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    v3 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v5 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

LABEL_17:
  if ((v2 & 0x78) != 0)
  {
    *(this + 20) = 16843008;
  }

  *(this + 12) = 0;
  v6 = *(this + 1);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 31) < 0)
    {
      **(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    else
    {
      *(v7 + 8) = 0;
      *(v7 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::NormalizerSpec::_InternalParse(sentencepiece::NormalizerSpec *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v41, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v41 + 1);
      v8 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v9 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_76;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_57;
          }

          *(this + 12) |= 1u;
          v23 = *(this + 1);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (this + 56);
LABEL_53:
          v28 = google::protobuf::internal::ArenaStringPtr::Mutable(v24, v23);
          v29 = google::protobuf::internal::InlineGreedyStringParser(v28, v41, a3);
          goto LABEL_54;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_57;
          }

          *(this + 12) |= 2u;
          v23 = *(this + 1);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (this + 64);
          goto LABEL_53;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_57;
        }

        v5 |= 0x10u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_26:
          v41 = v16;
          *(this + 81) = v15 != 0;
          goto LABEL_55;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v41 = v39;
        *(this + 81) = v40 != 0;
        if (!v39)
        {
LABEL_76:
          v41 = 0;
          goto LABEL_2;
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 == 50)
          {
            *(this + 12) |= 4u;
            v23 = *(this + 1);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = (this + 72);
            goto LABEL_53;
          }

LABEL_57:
          if (v8)
          {
            v30 = (v8 & 7) == 4;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x648)
          {
            v31 = *(this + 1);
            if (v31)
            {
              v32 = ((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v32 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
              v7 = v41;
            }

            v29 = google::protobuf::internal::UnknownFieldParse(v8, v32, v7, a3);
          }

          else
          {
            v29 = google::protobuf::internal::ExtensionSet::ParseField((this + 24), v8, v7, &sentencepiece::_NormalizerSpec_default_instance_, this + 1, a3);
          }

LABEL_54:
          v41 = v29;
          if (!v29)
          {
            goto LABEL_76;
          }

          goto LABEL_55;
        }

        if (v10 != 200 || v8 != 64)
        {
          goto LABEL_57;
        }

        v5 |= 8u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_33:
          v41 = v19;
          *(this + 80) = v18 != 0;
          goto LABEL_55;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v41 = v37;
        *(this + 80) = v38 != 0;
        if (!v37)
        {
          goto LABEL_76;
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_57;
        }

        v5 |= 0x20u;
        v26 = (v7 + 1);
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_44:
          v41 = v26;
          *(this + 82) = v25 != 0;
          goto LABEL_55;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v7, v25);
        v41 = v33;
        *(this + 82) = v34 != 0;
        if (!v33)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_57;
        }

        v5 |= 0x40u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_15:
          v41 = v12;
          *(this + 83) = v11 != 0;
          goto LABEL_55;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v41 = v35;
        *(this + 83) = v36 != 0;
        if (!v35)
        {
          goto LABEL_76;
        }
      }

LABEL_55:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v41, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v41 + 2);
LABEL_6:
    v41 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 12) |= v5;
  return v41;
}

unsigned __int8 *sentencepiece::NormalizerSpec::_InternalSerialize(sentencepiece::NormalizerSpec *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 12);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 81);
  *v4 = 24;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(this + 82);
  *v4 = 32;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 83);
  *v4 = 40;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 6, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v10 = *(this + 80);
  *v4 = 3264;
  v4[2] = v10;
  v4 += 3;
LABEL_24:
  v11 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 24), 201, 0x20000000, v4, a3);
  v12 = v11;
  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if (*a3 - v11 >= v16)
  {
    v18 = v16;
    memcpy(v11, v17, v16);
    v12 += v18;
    return v12;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v17, v16, v11);
}